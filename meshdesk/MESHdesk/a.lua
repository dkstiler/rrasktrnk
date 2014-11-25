#!/usr/bin/lua

--[[--

Startup script to get the config of the device from the config server

--]]--

-- Include libraries
package.path = "libs/?.lua;" .. package.path
require "socket"
require("rdLogger")
--External programs object
require("rdExternal")
--Configure object
require("rdConfig")
--Alfred object
require("rdAlfred")



function fetch_config_value(item)
	local handle = io.popen('uci get '..item)
	local result = handle:read("*a")
	handle:close()
	result = string.gsub(result, "[\r\n]+$", "")
	return result
end


-- Some constants -- Replace later with uci values
previous_config_file 	= fetch_config_value('meshdesk.settings.previous_config_file')
sleep_time		        = 1
config_file		        = fetch_config_value('meshdesk.settings.config_file')
lan_timeout		        = tonumber(fetch_config_value('meshdesk.settings.lan_timeout'))
wifi_timeout		    = tonumber(fetch_config_value('meshdesk.settings.wifi_timeout'))
debug			        = true
l			            = rdLogger()
ext 			        = rdExternal()
alfred                  = rdAlfred()

--Keep track of the radios
current_radio			= 0
radio_count				= 1

--Reboot on SOS
sos_reboot_timeout		= 30


--======================================
---- Some general functions ------------
--======================================

function log(m,p)
	if(debug)then
		l:log(m,p)
	end
end

function sleep(sec)
    socket.select(nil, nil, sec)
end

function file_exists(name)                                                          
        local f=io.open(name,"r")                                                   
        if f~=nil then io.close(f) return true else return false end                
end                                                                                 
                                                                                                    
function file_not_exists(name)                                                      
	local f=io.open(name,"r")                                                   
        if f~=nil then io.close(f) return false else return true end                        
end

-- Read file; return contents              
function readAll(file)                     
	local f = io.open(file, "rb")      
        local content = f:read("*all")     
        f:close()                          
        return content                     
end

function getMac(interface)
	interface = interface or "eth0"
	io.input("/sys/class/net/" .. interface .. "/address")
	t = io.read("*line")
	dashes, count = string.gsub(t, ":", "-")
	dashes = string.upper(dashes)
	return dashes
end

--==============================
-- End Some general functions --
--==============================


--======================================
---- Some test functions ---------------
--======================================
function did_lan_came_up()
	local lan_up_file=fetch_config_value('meshdesk.settings.lan_up_file')
	if(file_exists(lan_up_file))then
		return true		
	else
		return false
	end
end

function did_wifi_came_up()
	local wifi_up_file=fetch_config_value('meshdesk.settings.wifi_up_file')
	if(file_exists(wifi_up_file))then
		return true		
	else
		return false
	end
end

function reboot_on_sos()
    --When the device is in SOS mode we might as well just reboot it again to keep on trying
	local start_time	= os.time()
	local loop			= true

	--**********LOOP**********
	while (loop) do
		sleep(sleep_time)
		local time_diff = os.difftime(os.time(), start_time)
		if(time_diff >= sos_reboot_timeout)then
			os.execute("reboot")
			break
		end
	end
	--**********LOOP END**********
end


--==============================
-- End Some test functions -----
--==============================

--===========================
-- Firmware Configuration ---
--===========================
function do_fw_config()
    --kill potential existing batman_neighbours.lua instance
	ext:stop('batman_neighbours.lua')

	-- Break down the gateways --
	require("rdGateway")
	local a = rdGateway()
	a:disable()
	a:restartServices()

    require("rdNetwork")

	-- LAN we flash "I"
	log("Do Firmware configuration - if server running")
	os.execute("/etc/MESHdesk/main_led.lua start i")
    --Set eth0 (and eth1) to a known IP Address
    local network = rdNetwork()
	network:frmwrStart()
    sleep(4) --jus so it eases out
    require("rdFirmwareConfig")
    local f = rdFirmwareConfig()
    f:runConfig()
end

--=====================
-- Start-up function --
--=====================
function wait_for_lan()
	                 
	--kill potential existing batman_neighbours.lua instance
	ext:stop('batman_neighbours.lua')
	ext:stop('heartbeat.lua')
	ext:stop('actions_checker')	
	os.execute("/etc/init.d/alfred stop")

	-- LAN we flash "A"
	log("Starting LAN wait")
	os.execute("/etc/MESHdesk/main_led.lua start a")
	local start_time	= os.time()
	local loop			= true
	local lan_is_up		= false
	
	--Do a clean start with the wireless--
	require("rdWireless")
	
	local wireless = rdWireless()
	wireless:newWireless()
	--After this we can fetch a count of the radios
	radio_count = wireless:getRadioCount()
	
    require("rdNetwork")
	
	local network = rdNetwork()
	network:dhcpStart()
	
	--**********LOOP**********
	while (loop) do
		sleep(sleep_time)
		-- If the lan came up we will try to get the settings
		if(did_lan_came_up())then
			lan_is_up 	= true
			break	--no need to continiue
		end
		local time_diff = os.difftime(os.time(), start_time)
		if(time_diff >= lan_timeout)then
			log("LAN is not coming up. Try the WiFi")
			print("LAN is not coming up. Try the WiFi")
			break
		else
			log("Waiting for LAN to come up now for " .. time_diff .. " seconds")
			print("Waiting for LAN to come up now for " .. time_diff .. " seconds")
		end
		
		--If it happens that the LAN comes up the time may be adjusted by a large amount due to NTP.
		--Then we can assume the LAN is up as set the flag
		--TODO This will be large on second runs! - fix this
		if((os.time() > 4000) and (start_time < 4000))then
			log('Detected a very lage value for os time asume the LAN and NTP working')
			lan_is_up 	= true
			break	--no need to continiue
		end
	end
	--*********LOOP END*********
	
	--See what happended and how we should handle it
	if(lan_is_up)then
		os.execute("/etc/MESHdesk/main_led.lua start b")
		log("sleep at least 10 seconds to make sure it got a DHCP addy")
		-- sleep at least 10 seconds to make sure it got a DHCP addy
		sleep(10)
		try_settings_through_lan()
	else
		--wait_for_wifi(0)
		try_wifi(0)		
	end	
end


function try_settings_through_lan() 
	log("LAN up now try fetch the settings")
	print("LAN up now try fetch the settings")
	
	-- See if we can ping it
	local server 			= fetch_config_value('meshdesk.internet1.ip')
	local c 				= rdConfig()
	local lan_config_fail	=true                                          
	if(c:pingTest(server))then
		print("Ping os server was OK try to fetch the settings")
		log("Ping os server was OK try to fetch the settings")
--		local id	= "A8-40-41-13-60-E3"
		local id		= getMac('eth0')
		local proto 	= fetch_config_value('meshdesk.internet1.protocol')
		local url   	= fetch_config_value('meshdesk.internet1.url')
		local query     = proto .. "://" .. server .. "/" .. url 
		print("Query url is " .. query )
		if(c:fetchSettings(query,id,true))then
			print("Funky -> got settings through LAN")
			lan_config_fail=false
		end
	else 
		log("Ping os server was NOT OK!")
	end

	if(lan_config_fail)then	
		log("Could not fetch settings through LAN")
		--wait_for_wifi(0) --We try the first radio (0)
		try_wifi(0)
	else
		--flash D--
		os.execute("/etc/MESHdesk/main_led.lua start d")
		configure_device(config_file)
	end
end

function try_wifi(radio)
	local next_radio = wait_for_wifi(radio)

	if(next_radio ~= nil)then --Normally nothing will be returned
		if(next_radio > 0)then
			wait_for_wifi(next_radio)
		end
	end
end


function wait_for_wifi(radio_number)

	if(radio_number == nil)then
		radio_number = 0
	end

	-- WiFi we flash "C"
	log("Try settings through WiFi network")
	os.execute("/etc/MESHdesk/main_led.lua start c")
	
	-- Start the WiF interface
	require("rdWireless")
	local w = rdWireless()
                             
	w:connectClient(radio_number)
	
	local start_time	= os.time()
	local loop			= true
	local wifi_is_up	= false --default
	
	while (loop) do
		sleep(sleep_time)
		
		-- If the wifi came up we will try to get the settings
		if(did_wifi_came_up())then
			wifi_is_up = true
			break
		end
		
		local time_diff = os.difftime(os.time(), start_time)
		if(time_diff >= wifi_timeout)then
			
			if(radio_count > (current_radio+1))then
				print("WiFi is not coming up on radio "..current_radio.."Try next radio")
				local next_radio = current_radio+1
				return(next_radio)
			else
				print("Failed to get settings through Wi-Fi see if older ones exists")
				log("Failed to get settings through Wi-Fi see if older ones exists")
				break
			end
		else
			print("Waiting for WIFI to come up now for " .. time_diff .. " seconds")
		end
		--If it happens that the WIFI comes up the time may be adjusted by a large amount due to NTP.
		--Then we can assume the WIFI is up as set the flag
		if((os.time() > 4000) and (start_time < 4000))then
			log('Detected a very lage value for os time assume the WiFi client and NTP working')
			loop = false
			wifi_is_up = true
		end
	end
	
	--See what happended and how we should handle it
	if(wifi_is_up)then
		-- sleep at least 10 seconds to make sure it got a DHCP addy
		sleep(10)
		print("Wifi is up try to get the settings through WiFi")
		log("Wifi is up try to get the settings through WiFi")
		try_settings_through_wifi()
	else
		print("Settings could not be fetched through WiFi see if older ones exists")
		log("Settings could not be fetched through WiFi see if older ones exists")
		check_for_previous_settings()
	end
end

function try_settings_through_wifi()
	print("Wifi up now try fetch the settings")
	log("Wifi up now try fetch the settings")
	
	-- See if we can ping it
	local server = fetch_config_value('meshdesk.internet1.ip')
	local c = rdConfig()
	local wifi_config_fail=true                                          
	if(c:pingTest(server))then
		print("Ping os server was OK try to fetch the settings")
		log("Ping os server was OK try to fetch the settings")
--		local id	="A8-40-41-13-60-E3"
		local id	= getMac('eth0')
		local proto 	= fetch_config_value('meshdesk.internet1.protocol')
		local url   	= fetch_config_value('meshdesk.internet1.url')
		local query     = proto .. "://" .. server .. "/" .. url 
		print("Query url is " .. query )
		if(c:fetchSettings(query,id,false))then
			print("Funky -> got settings through WIFI")
			wifi_config_fail=false
		end
	end
	if(wifi_config_fail)then	
		print("The radio count is "..radio_count.." The current radio is "..current_radio)
		--Here we need to specify the radio to try eg 0,1,2 etc to try all avaible radios of the device--
		--If we then exhausted all the radios on the device we use the previous settings--
		if(radio_count > (current_radio+1))then
			current_radio = current_radio+1
			try_wifi(current_radio)
		else
			print("Failed to get settings through Wi-Fi see if older ones exists")
		    log("Failed to get settings through Wi-Fi see if older ones exists")
			check_for_previous_settings()
		end
	else
		--flash D--
		os.execute("/etc/MESHdesk/main_led.lua start d")
		configure_device(config_file)
	end
end



function check_for_previous_settings()
	print("Checking for previous settings")
	if(file_exists(previous_config_file))then
		print("Using previous settings")
		os.execute("/etc/MESHdesk/main_led.lua start e")
		configure_device(previous_config_file)
	else
		--Nothing we can do but flash an SOS
		os.execute("/etc/MESHdesk/main_led.lua start sos")
		--This will result in a reboot to try again
		reboot_on_sos()
	end
end

function configure_device(config)

	print("Configuring device according to " .. config)
	
	local contents        = readAll(config) 
	local json            = require("json")           
	local o               = json.decode(contents)  
---[[--	

	-- Do we have any batman_adv settings? --
	if(o.config_settings.batman_adv ~= nil)then   
		--print("Doing Batman-adv")
        require("rdBatman")
	    local batman = rdBatman()
	    batman:configureFromTable(o.config_settings.batman_adv)             
	end 


	-- Is this perhaps a gateway node? --
	if(o.config_settings.gateways ~= nil)then
		-- Set up the gateways --	
		require("rdGateway")
		local a = rdGateway()
		a:enable(o.config_settings.gateways)
		
	else
		-- Break down the gateways --
		require("rdGateway")
		local a = rdGateway()
		a:disable()
	end

	-- Do we have some network settings?       
	if(o.config_settings.network ~= nil)then   
		print("Doing network")
        require("rdNetwork")
	    local network = rdNetwork()
	    network:configureFromTable(o.config_settings.network)             
	end 
	
	-- Do we have some wireless settings?      
	if(o.config_settings.wireless ~= nil)then  
		print("Doing wireless")
		require("rdWireless")           
	    local w = rdWireless()    
	    w:configureFromTable(o.config_settings.wireless) 
	end
	  
    os.execute("/etc/init.d/network reload")

	-- Do we have some system settings?
	if(o.config_settings.system ~= nil)then  
		print("Doing system")
		require("rdSystem")           
	    local s = rdSystem()    
	    s:configureFromTable(o.config_settings.system) 
	end

    -- Check if there are perhaps some captive portals to set up once everything has been done --
    sleep(5) -- Wait a bit before doing this part else the DHCP not work correct
    if(o.config_settings.captive_portals ~= nil)then
    	print("Doing Captive Portals")
    	require("rdCoovaChilli")
    	local a = rdCoovaChilli()
    	a:createConfigs(o.config_settings.captive_portals)                  
    	a:startPortals()	
    end
    
    -- Do the LED's we have configured in /etc/config/system
    os.execute("ifconfig bat0 up") 	--On the pico's it goes down
    
	if(o.config_settings.gateways ~= nil)then
		-- Set up the gateways --	
		require("rdGateway")
		local a = rdGateway()
		a:restartServices()
        --start alfred in master mode
        alfred:masterEnableAndStart()
		--Only the gateway node
		ext:startOne('/etc/MESHdesk/heartbeat.lua &','heartbeat.lua')
    else
        alfred:slaveEnableAndStart()
	end

	--Start the actions checker (on every node)
	ext:startOne('/etc/MESHdesk/actions_checker.lua &','actions_checker.lua')
	
    --os.execute("/etc/init.d/led start")
	log("Ensure mesh0 and/or mesh1 if present is added to bat0")
	os.execute("batctl if add mesh0")
    os.execute("batctl if add mesh1")

    log('Starting Batman neighbour scan')
    ext:startOne('/etc/MESHdesk/batman_neighbours.lua &','batman_neighbours.lua')
        
--]]--
end


--=====================
--Pre-setup: ----------
--Configure Firmware is there is a server running on the correct IP and port
--=====================
do_fw_config()

--=====================
-- Kick off by waiting for the LAN
--=====================
wait_for_lan()
