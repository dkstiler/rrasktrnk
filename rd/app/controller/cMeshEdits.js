Ext.define('Rd.controller.cMeshEdits', {
    extend: 'Ext.app.Controller',
    views:  [
        'components.pnlBanner',  	'meshes.winMeshEdit',
        'meshes.gridMeshEntries',   'meshes.winMeshAddEntry',   'meshes.cmbEncryptionOptions',
        'meshes.winMeshEditEntry',  'meshes.pnlMeshSettings',   'meshes.gridMeshExits',
        'meshes.winMeshAddExit',    'meshes.cmbMeshEntryPoints','meshes.winMeshEditExit',
        'meshes.pnlNodeCommonSettings', 'meshes.gridNodes',     'meshes.winMeshAddNode',
        'meshes.cmbHardwareOptions', 'meshes.cmbStaticEntries', 'meshes.cmbStaticExits',
        'meshes.winMeshEditNode',	'meshes.pnlMeshEditGMap',	'meshes.winMeshMapPreferences',
		'meshes.winMeshMapNodeAdd'
    ],
    stores      : [	
		'sMeshEntries', 'sMeshExits', 	'sMeshEntryPoints',	'sNodes'
    ],
    models      : [ 
		'mMeshEntry',  	'mMeshExit', 	'mMeshEntryPoint',  'mNode'
    ],
    config      : {  
        urlAddEntry:        '/cake2/rd_cake/meshes/mesh_entry_add.json',
        urlViewEntry:       '/cake2/rd_cake/meshes/mesh_entry_view.json',
        urlEditEntry:       '/cake2/rd_cake/meshes/mesh_entry_edit.json',
        urlViewMeshSettings:'/cake2/rd_cake/meshes/mesh_settings_view.json',
        urlEditMeshSettings:'/cake2/rd_cake/meshes/mesh_settings_edit.json',
        urlAddExit:         '/cake2/rd_cake/meshes/mesh_exit_add.json',
        urlViewExit:        '/cake2/rd_cake/meshes/mesh_exit_view.json',
        urlEditExit:        '/cake2/rd_cake/meshes/mesh_exit_edit.json',
        urlViewNodeCommonSettings:'/cake2/rd_cake/meshes/node_common_settings_view.json',
        urlEditNodeCommonSettings:'/cake2/rd_cake/meshes/node_common_settings_edit.json',
        urlAddNode:         '/cake2/rd_cake/meshes/mesh_node_add.json',
        urlViewNode:        '/cake2/rd_cake/meshes/mesh_node_view.json',
        urlEditNode:        '/cake2/rd_cake/meshes/mesh_node_edit.json',
		urlMapPrefView: 	'/cake2/rd_cake/meshes/map_pref_view.json',
		urlMapPrefEdit:		'/cake2/rd_cake/meshes/map_pref_edit.json',
		urlMapSave:			'/cake2/rd_cake/meshes/map_node_save.json',
		urlMapDelete:		'/cake2/rd_cake/meshes/map_node_delete.json'
    },
    refs: [
    	{  ref: 'editEntryWin', 	selector: 'winMeshEditEntry'},
        {  ref: 'editExitWin',  	selector: 'winMeshEditExit'}  
    ],
    init: function() {
        var me = this;
        if (me.inited) {
            return;
        }
        me.inited = true;

        me.control({
			'gridMeshEntries #reload': {
                click:  me.reloadEntry
            },
            'gridMeshEntries #add': {
                click:  me.addEntry
            },
            'gridMeshEntries #edit': {
                click:  me.editEntry
            },
            'winMeshAddEntry cmbEncryptionOptions': {
                change: me.cmbEncryptionChange
            },
            'winMeshAddEntry #save': {
                click: me.btnAddEntrySave
            },
            'gridMeshEntries #delete': {
                click: me.delEntry
            },
            'winMeshEditEntry': {
                beforeshow:      me.loadEntry
            },
             'winMeshEditEntry cmbEncryptionOptions': {
                change: me.cmbEncryptionChange
            },
            'winMeshEditEntry #save': {
                click: me.btnEditEntrySave
            },
            'winMeshEdit #tabMeshSettings' : {
                activate:      me.frmMeshSettingsLoad
            },
            'pnlMeshSettings #save': {
                click:  me.btnMeshSettingsSave
            },
            'gridMeshExits #reload': {
                click:  me.reloadExit
            },
            'gridMeshExits #add': {
                click:  me.addExit
            },
            'winMeshAddExit #btnTypeNext' : {
                click:  me.btnExitTypeNext
            },
            'winMeshAddExit #btnDataPrev' : {
                click:  me.btnExitDataPrev
            },
            'winMeshAddExit #save' : {
                click:  me.btnAddExitSave
            },
            'gridMeshExits #delete': {
                click: me.delExit
            },
            'gridMeshExits #edit': {
                click:  me.editExit
            },
            'winMeshEditExit': {
                beforeshow:      me.loadExit
            },
            'winMeshEditExit #save': {
                click: me.btnEditExitSave
            },//Common node settings
            'winMeshEdit #tabNodeCommonSettings' : {
                activate:      me.frmNodeCommonSettingsLoad
            },
            'pnlNodeCommonSettings #save': {
                click:  me.btnNodeCommonSettingsSave
            },
            //Here nodes start
            'gridNodes #reload': {
                click:  me.reloadNodes
            },
            'gridNodes #add': {
                click:  me.addNode
            },
            'winMeshAddNode #save' : {
                click:  me.btnAddNodeSave
            },
            'gridNodes #delete': {
                click: me.delNode
            },
            'gridNodes #edit': {
                click:  me.editNode
            },
			'gridNodes #map' : {
                click: 	me.mapLoadApi
            },
            'winMeshEditNode': {
                beforeshow:      me.loadNode
            },
            'winMeshEditNode #save': {
                click: me.btnEditNodeSave
            },
			//---- MAP Starts here..... -----

			'pnlMeshEditGMap #preferences': {
                click: me.mapPreferences
            },
			'winMeshMapPreferences #snapshot': {
                click:      me.mapPreferencesSnapshot
            },
            'winMeshMapPreferences #save': {
                click:      me.mapPreferencesSave
            },
            'pnlMeshEditGMap #add': {
                click: me.mapNodeAdd
            },
           'winMeshMapNodeAdd #save': {
                click: me.meshMapNodeAddSubmit
            },
            'pnlMeshEditGMap #edit': {
                click:  function(){
                    Ext.Msg.alert(
                        i18n('sEdit_a_marker'), 
                        i18n('sSimply_drag_a_marker_to_a_different_postition_and_click_the_save_button_in_the_info_window')
                    );
                }
            },
            'pnlMeshEditGMap #delete': {
                click:  function(){
                    Ext.Msg.alert(
                        i18n('sDelete_a_marker'), 
                        i18n('sSimply_drag_a_marker_to_a_different_postition_and_click_the_delete_button_in_the_info_window')
                    );
                }
            },
            '#pnlMapsEdit #cancel': {
                click: me.btnMapCancel
            },
            '#pnlMapsEdit #delete': {
                click: me.btnMapDelete
            },
            '#pnlMapsEdit #save': {
                click: me.btnMapSave
            }
        });
    },
    actionIndex: function(mesh_id,name){
        var me      = this; 
		var id		= 'winMeshEdit'+ mesh_id;
        if(!me.application.runAction('cDesktop','AlreadyExist',id)){
			var w = Ext.widget('winMeshEdit',{id:id, name:name, stateId:id,title: 'MESHdesk edit '+name, itemId: mesh_id});;
            me.application.runAction('cDesktop','Add',w);      
        }
    },
	reloadEntry: function(button){
        var me      = this;
        var win     = button.up("winMeshEdit");
        var entGrid = win.down("gridMeshEntries");
        entGrid.getStore().reload();
    },
    addEntry: function(button){
        var me      = this;
        var win     = button.up("winMeshEdit");
        var store   = win.down("gridMeshEntries").getStore();
        if(!me.application.runAction('cDesktop','AlreadyExist','winMeshAddEntryId')){
            var w = Ext.widget('winMeshAddEntry',
            {
                id          :'winMeshAddEntryId',
                store       : store,
                meshId      : win.getItemId()
            });
            me.application.runAction('cDesktop','Add',w);         
        }
    },
    cmbEncryptionChange: function(cmb){
        var me      = this;
        var form    = cmb.up('form');
        var key     = form.down('#key');
        var srv     = form.down('#auth_server');
        var scrt    = form.down('#auth_secret'); 
        var val     = cmb.getValue();
        if(val == 'none'){
            key.setVisible(false);
            key.setDisabled(true); 
            srv.setVisible(false);
            srv.setDisabled(true);
            scrt.setVisible(false);
            scrt.setDisabled(true);  
        }

        if((val == 'wep')|(val == 'psk')|(val =='psk2')){
            key.setVisible(true);
            key.setDisabled(false); 
            srv.setVisible(false);
            srv.setDisabled(true);
            scrt.setVisible(false);
            scrt.setDisabled(true);  
        }

        if((val == 'wpa')|(val == 'wpa2')){
            key.setVisible(false);
            key.setDisabled(true); 
            srv.setVisible(true);
            srv.setDisabled(false);
            scrt.setVisible(true);
            scrt.setDisabled(false);  
        }

    },
    btnAddEntrySave:  function(button){
        var me      = this;
        var win     = button.up("winMeshAddEntry");
        var form    = win.down('form');
        form.submit({
            clientValidation: true,
            url: me.urlAddEntry,
            success: function(form, action) {
                win.close();
                win.store.load();
                Ext.ux.Toaster.msg(
                    i18n('sNew_mesh_entry_point_added'),
                    i18n('sNew_mesh_enty_point_created_fine'),
                    Ext.ux.Constants.clsInfo,
                    Ext.ux.Constants.msgInfo
                );
            },
            failure: Ext.ux.formFail
        });
    },
    editEntry: function(button){
        var me      = this;
        var win     = button.up("winMeshEdit");
        var store   = win.down("gridMeshEntries").getStore();

        if(win.down("gridMeshEntries").getSelectionModel().getCount() == 0){
             Ext.ux.Toaster.msg(
                        i18n('sSelect_an_item'),
                        i18n('sFirst_select_an_item'),
                        Ext.ux.Constants.clsWarn,
                        Ext.ux.Constants.msgWarn
            );
        }else{
            var sr      = win.down("gridMeshEntries").getSelectionModel().getLastSelected();
            var id      = sr.getId();
            if(!me.application.runAction('cDesktop','AlreadyExist','winMeshEditEntryId')){
                var w = Ext.widget('winMeshEditEntry',
                {
                    id          :'winMeshEditEntryId',
                    store       : store,
                    entryId     : id
                });
                me.application.runAction('cDesktop','Add',w);         
            }else{
                var w       = me.getEditEntryWin();
                w.entryId   = id; 
                me.loadEntry(w)
            } 
        }     
    },
    loadEntry: function(win){
        var me      = this; 
        var form    = win.down('form');
        var entryId = win.entryId;
        form.load({url:me.urlViewEntry, method:'GET',params:{entry_id:entryId}});
    },
    btnEditEntrySave:  function(button){
        var me      = this;
        var win     = button.up("winMeshEditEntry");
        var form    = win.down('form');
        form.submit({
            clientValidation: true,
            url: me.urlEditEntry,
            success: function(form, action) {
                win.close();
                win.store.load();
                Ext.ux.Toaster.msg(
                    i18n('sItem_updated'),
                    i18n('sItem_updated_fine'),
                    Ext.ux.Constants.clsInfo,
                    Ext.ux.Constants.msgInfo
                );
            },
            failure: Ext.ux.formFail
        });
    },
    delEntry:   function(btn){
        var me      = this;
        var win     = btn.up("window");
        var grid    = win.down("gridMeshEntries");
    
        //Find out if there was something selected
        if(grid.getSelectionModel().getCount() == 0){
             Ext.ux.Toaster.msg(
                        i18n('sSelect_an_item'),
                        i18n('sFirst_select_an_item_to_delete'),
                        Ext.ux.Constants.clsWarn,
                        Ext.ux.Constants.msgWarn
            );
        }else{
            Ext.MessageBox.confirm(i18n('sConfirm'), i18n('sAre_you_sure_you_want_to_do_that_qm'), function(val){
                if(val== 'yes'){
                    grid.getStore().remove(grid.getSelectionModel().getSelection());
                    grid.getStore().sync({
                        success: function(batch,options){
                            Ext.ux.Toaster.msg(
                                i18n('sItem_deleted'),
                                i18n('sItem_deleted_fine'),
                                Ext.ux.Constants.clsInfo,
                                Ext.ux.Constants.msgInfo
                            );  
                        },
                        failure: function(batch,options,c,d){
                            Ext.ux.Toaster.msg(
                                i18n('sProblems_deleting_item'),
                                batch.proxy.getReader().rawData.message.message,
                                Ext.ux.Constants.clsWarn,
                                Ext.ux.Constants.msgWarn
                            );
                            grid.getStore().load(); //Reload from server since the sync was not good
                        }
                    });
                }
            });
        }
    },
    frmMeshSettingsLoad: function(tab){
        var me      = this;
        var form    = tab.down('form');
        var meshId  = tab.meshId;
        form.load({url:me.urlViewMeshSettings, method:'GET',params:{mesh_id:meshId}});
    },
    btnMeshSettingsSave: function(button){
        var me      = this;
        var form    = button.up('form');
        var tab     = button.up('#tabMeshSettings');
        var meshId  = tab.meshId;
        form.submit({
            clientValidation    : true,
            url                 : me.urlEditMeshSettings,
            params              : {mesh_id: meshId},
            success: function(form, action) {
                Ext.ux.Toaster.msg(
                    i18n('sItem_updated'),
                    i18n('sItem_updated_fine'),
                    Ext.ux.Constants.clsInfo,
                    Ext.ux.Constants.msgInfo
                );
            },
            failure: Ext.ux.formFail
        });
    },
    reloadExit: function(button){
        var me      = this;
        var win     = button.up("winMeshEdit");
        var exit    = win.down("gridMeshExits");
        exit.getStore().reload();
    },
    addExit: function(button){
        var me      = this;

        var win             = button.up("winMeshEdit");

        //If there are NO entry points defined; we will NOT pop up this window.
        var entries_count   = win.down("gridMeshEntries").getStore().count();
        if(entries_count == 0){
            Ext.ux.Toaster.msg(
                i18n('sNo_entry_points_defined'),
                i18n('sDefine_some_entry_points_first'),
                Ext.ux.Constants.clsWarn,
                Ext.ux.Constants.msgWarn
            );
            return;
        }
        
        //Entry points present; continue 
        var store   = win.down("gridMeshExits").getStore();
        if(!me.application.runAction('cDesktop','AlreadyExist','winMeshAddExitId')){
            var w = Ext.widget('winMeshAddExit',
            {
                id          :'winMeshAddExitId',
                store       : store,
                meshId      : win.getItemId()
            });
            me.application.runAction('cDesktop','Add',w);         
        }
    },
    btnExitTypeNext: function(button){
        var me      = this;
        var win     = button.up('winMeshAddExit');
        var type    = win.down('radiogroup').getValue().exit_type;
        var vlan    = win.down('#vlan');
        var tab_capt= win.down('#tabCaptivePortal');
        var sel_type= win.down('#type');
        sel_type.setValue(type);
 
        if(type == 'tagged_bridge'){
            vlan.setVisible(true);
            vlan.setDisabled(false);
        }else{
            vlan.setVisible(false);
            vlan.setDisabled(true);
        }

        if(type == 'captive_portal'){
            tab_capt.setDisabled(false);
        }else{
            tab_capt.setDisabled(true); 
        }
        win.getLayout().setActiveItem('scrnData');
    },
    btnExitDataPrev: function(button){
        var me      = this;
        var win     = button.up('winMeshAddExit');
        win.getLayout().setActiveItem('scrnType');
    },
    btnAddExitSave: function(button){
        var me      = this;
        var win     = button.up("winMeshAddExit");
        var form    = win.down('#scrnData');
        form.submit({
            clientValidation: true,
            url: me.urlAddExit,
            success: function(form, action) {
                win.close();
                win.store.load();
                Ext.ux.Toaster.msg(
                    i18n('sItem_added'),
                    i18n('sItem_added_fine'),
                    Ext.ux.Constants.clsInfo,
                    Ext.ux.Constants.msgInfo
                );
            },
            failure: Ext.ux.formFail
        });
    },
    delExit:   function(btn){
        var me      = this;
        var win     = btn.up("window");
        var grid    = win.down("gridMeshExits");
    
        //Find out if there was something selected
        if(grid.getSelectionModel().getCount() == 0){
             Ext.ux.Toaster.msg(
                        i18n('sSelect_an_item'),
                        i18n('sFirst_select_an_item_to_delete'),
                        Ext.ux.Constants.clsWarn,
                        Ext.ux.Constants.msgWarn
            );
        }else{
            Ext.MessageBox.confirm(i18n('sConfirm'), i18n('sAre_you_sure_you_want_to_do_that_qm'), function(val){
                if(val== 'yes'){
                    grid.getStore().remove(grid.getSelectionModel().getSelection());
                    grid.getStore().sync({
                        success: function(batch,options){
                            Ext.ux.Toaster.msg(
                                i18n('sItem_deleted'),
                                i18n('sItem_deleted_fine'),
                                Ext.ux.Constants.clsInfo,
                                Ext.ux.Constants.msgInfo
                            );  
                        },
                        failure: function(batch,options,c,d){
                            Ext.ux.Toaster.msg(
                                i18n('sProblems_deleting_item'),
                                batch.proxy.getReader().rawData.message.message,
                                Ext.ux.Constants.clsWarn,
                                Ext.ux.Constants.msgWarn
                            );
                            grid.getStore().load(); //Reload from server since the sync was not good
                        }
                    });
                }
            });
        }
    },
    editExit: function(button){
        var me      = this;
        var win     = button.up("winMeshEdit");
        var store   = win.down("gridMeshExits").getStore();

        if(win.down("gridMeshExits").getSelectionModel().getCount() == 0){
             Ext.ux.Toaster.msg(
                        i18n('sSelect_an_item'),
                        i18n('sFirst_select_an_item'),
                        Ext.ux.Constants.clsWarn,
                        Ext.ux.Constants.msgWarn
            );
        }else{
            var sr      = win.down("gridMeshExits").getSelectionModel().getLastSelected();
            var id      = sr.getId();
            var meshId  = sr.get('mesh_id');
            var type    = sr.get('type');
            if(!me.application.runAction('cDesktop','AlreadyExist','winMeshEditExitId')){
                var w = Ext.widget('winMeshEditExit',
                {
                    id          :'winMeshEditExitId',
                    store       : store,
                    exitId      : id,
                    meshId      : meshId,
                    type        : type
                });
                me.application.runAction('cDesktop','Add',w);         
            }else{
                var w       = me.getEditExitWin();
                var vlan    = w.down('#vlan');
                var tab_capt= w.down('#tabCaptivePortal');
                w.exitId    = id;
                w.meshId    = meshId;

                if(type == 'tagged_bridge'){
                    vlan.setVisible(true);
                    vlan.setDisabled(false);
                }else{
                    vlan.setVisible(false);
                    vlan.setDisabled(true);
                }

                if(type == 'captive_portal'){
                    tab_capt.setDisabled(false);
                }else{
                    tab_capt.setDisabled(true); 
                }
                me.loadExit(w)
            } 
        }     
    },
    loadExit: function(win){
        var me      = this; 
        var form    = win.down('form');
        var exitId = win.exitId;
        form.load({
            url         :me.urlViewExit, 
            method      :'GET',
            params      :{exit_id:exitId},
            success     : function(a,b,c){
                var t     = form.down("#type");
                var t_val = t.getValue();
                var vlan  = form.down('#vlan');
                if(t_val == 'tagged_bridge'){
                    vlan.setVisible(true);
                    vlan.setDisabled(false);
                }else{
                    vlan.setVisible(false);
                    vlan.setDisabled(true);
                }
            }
        });
    },
    btnEditExitSave:  function(button){
        var me      = this;
        var win     = button.up("winMeshEditExit");
        var form    = win.down('form');
        form.submit({
            clientValidation: true,
            url: me.urlEditExit,
            success: function(form, action) {
                win.close();
                win.store.load();
                Ext.ux.Toaster.msg(
                    i18n('sItem_updated'),
                    i18n('sItem_updated_fine'),
                    Ext.ux.Constants.clsInfo,
                    Ext.ux.Constants.msgInfo
                );
            },
            failure: Ext.ux.formFail
        });
    },//Common node settings
    frmNodeCommonSettingsLoad: function(tab){
        var me      = this;
        var form    = tab.down('form');
        var meshId  = tab.meshId;
        form.load({url:me.urlViewNodeCommonSettings, method:'GET',params:{mesh_id:meshId}});
    },
    btnNodeCommonSettingsSave: function(button){
        var me      = this;
        var form    = button.up('form');
        var tab     = button.up('#tabNodeCommonSettings');
        var meshId  = tab.meshId;
        form.submit({
            clientValidation    : true,
            url                 : me.urlEditNodeCommonSettings,
            params              : {mesh_id: meshId},
            success: function(form, action) {
                Ext.ux.Toaster.msg(
                    i18n('sItem_updated'),
                    i18n('sItem_updated_fine'),
                    Ext.ux.Constants.clsInfo,
                    Ext.ux.Constants.msgInfo
                );
            },
            failure: Ext.ux.formFail
        });
    },//Nodes related
    reloadNodes: function(button){
        var me      = this;
        var win     = button.up("winMeshEdit");
        var nodes   = win.down("gridNodes");
        nodes.getStore().reload();
    },
    addNode: function(button){
        var me      = this;
        var win     = button.up("winMeshEdit");
        
        //Entry points present; continue 
        var store   	= win.down("gridNodes").getStore();
		var hide_power 	= win.down("pnlNodeCommonSettings #all_power").getValue();
        if(!me.application.runAction('cDesktop','AlreadyExist','winMeshAddNodeId')){
            var w = Ext.widget('winMeshAddNode',
            {
                id          :'winMeshAddNodeId',
                store       : store,
                meshId      : win.getItemId(),
				hidePower	: hide_power	
            });
            me.application.runAction('cDesktop','Add',w);         
        }
    },
    btnAddNodeSave: function(button){
        var me      = this;
        var win     = button.up("winMeshAddNode");
        var form    = win.down('form');
        form.submit({
            clientValidation: true,
            url: me.urlAddNode,
            success: function(form, action) {
                win.close();
                win.store.load();
                Ext.ux.Toaster.msg(
                    i18n('sItem_added'),
                    i18n('sItem_added_fine'),
                    Ext.ux.Constants.clsInfo,
                    Ext.ux.Constants.msgInfo
                );
            },
            failure: Ext.ux.formFail
        });
    },
    delNode:   function(btn){
        var me      = this;
        var win     = btn.up("window");
        var grid    = win.down("gridNodes");
    
        //Find out if there was something selected
        if(grid.getSelectionModel().getCount() == 0){
             Ext.ux.Toaster.msg(
                        i18n('sSelect_an_item'),
                        i18n('sFirst_select_an_item_to_delete'),
                        Ext.ux.Constants.clsWarn,
                        Ext.ux.Constants.msgWarn
            );
        }else{
            Ext.MessageBox.confirm(i18n('sConfirm'), i18n('sAre_you_sure_you_want_to_do_that_qm'), function(val){
                if(val== 'yes'){
                    grid.getStore().remove(grid.getSelectionModel().getSelection());
                    grid.getStore().sync({
                        success: function(batch,options){
                            Ext.ux.Toaster.msg(
                                i18n('sItem_deleted'),
                                i18n('sItem_deleted_fine'),
                                Ext.ux.Constants.clsInfo,
                                Ext.ux.Constants.msgInfo
                            );  
                        },
                        failure: function(batch,options,c,d){
                            Ext.ux.Toaster.msg(
                                i18n('sProblems_deleting_item'),
                                batch.proxy.getReader().rawData.message.message,
                                Ext.ux.Constants.clsWarn,
                                Ext.ux.Constants.msgWarn
                            );
                            grid.getStore().load(); //Reload from server since the sync was not good
                        }
                    });
                }
            });
        }
    },
    editNode: function(button){
        var me      = this;
        var win     = button.up("winMeshEdit");
        var store   = win.down("gridNodes").getStore();
        if(win.down("gridNodes").getSelectionModel().getCount() == 0){
             Ext.ux.Toaster.msg(
                        i18n('sSelect_an_item'),
                        i18n('sFirst_select_an_item'),
                        Ext.ux.Constants.clsWarn,
                        Ext.ux.Constants.msgWarn
            );
        }else{
            var sr      = win.down("gridNodes").getSelectionModel().getLastSelected();
            var id      = sr.getId();
            var meshId  = sr.get('mesh_id');
			//Determine if we can show a power bar or not.
			var hide_power = win.down("pnlNodeCommonSettings #all_power").getValue();
            if(!me.application.runAction('cDesktop','AlreadyExist','winMeshEditNodeId')){
                var w = Ext.widget('winMeshEditNode',
                {
                    id          :'winMeshEditNodeId',
                    store       : store,
                    nodeId      : id,
                    meshId      : meshId,
					hidePower	: hide_power
                });
                me.application.runAction('cDesktop','Add',w);         
            }
        }
    },
    loadNode: function(win){
        var me      = this; 
        var form    = win.down('form');
        var nodeId  = win.nodeId;
        form.load({url:me.urlViewNode, method:'GET',params:{node_id:nodeId}});
    },
    btnEditNodeSave:  function(button){
        var me      = this;
        var win     = button.up("winMeshEditNode");
        var form    = win.down('form');
        form.submit({
            clientValidation: true,
            url: me.urlEditNode,
            success: function(form, action) {
                win.close();
                win.store.load();
                Ext.ux.Toaster.msg(
                    i18n('sItem_updated'),
                    i18n('sItem_updated_fine'),
                    Ext.ux.Constants.clsInfo,
                    Ext.ux.Constants.msgInfo
                );
            },
            failure: Ext.ux.formFail
        });
    },
	//____ MAP ____

    mapLoadApi:   function(button){
        var me 	= this;
		Ext.ux.Toaster.msg(
	        'Loading Google Maps API',
	        'Please be patient....',
	        Ext.ux.Constants.clsInfo,
	        Ext.ux.Constants.msgInfo
	    );
	    Ext.Loader.loadScriptFile('https://www.google.com/jsapi',function(){
	        google.load("maps", "3", {
	            other_params	:"sensor=false",
	            callback 		: function(){
	            	// Google Maps are loaded. Place your code here
	                me.mapCreatePanel(button);
	        	}
	    	});
	    },Ext.emptyFn,null,false);
    },
    mapCreatePanel : function(button){
        var me = this
        var tp          = button.up('tabpanel');
        var map_tab_id  = 'mapTab';
        var nt          = tp.down('#'+map_tab_id);
        if(nt){
            tp.setActiveTab(map_tab_id); //Set focus on  Tab
            return;
        }

        var map_tab_name = i18n("sGoogle_Maps");
		var win 		= tp.up('winMeshEdit');
		var mesh_id		= win.getItemId();

        //We need to fetch the Preferences for this user's Google Maps map
        Ext.Ajax.request({
            url		: me.urlMapPrefView,
            method	: 'GET',
			params	: {
				mesh_id	: mesh_id
			},
            success: function(response){
                var jsonData    = Ext.JSON.decode(response.responseText);
                if(jsonData.success){     
                   	//console.log(jsonData);
					//___Build this tab based on the preferences returned___
                    tp.add({ 
                        title 		: map_tab_name,
                        itemId		: map_tab_id,
                        closable	: true,
                        glyph		: Rd.config.icnMap, 
                        layout		: 'fit', 
                        xtype		: 'pnlMeshEditGMap',
                        mapOptions	: {zoom: jsonData.data.zoom, mapTypeId: google.maps.MapTypeId[jsonData.data.type] },	//Required for map
                       	centerLatLng: {lat:jsonData.data.lat,lng:jsonData.data.lng},										//Required for map
                       	markers		: [],
						meshId		: mesh_id
                    });
                    tp.setActiveTab(map_tab_id); //Set focus on Add Tab
                    //____________________________________________________   
                }   
            },
			failure: function(batch,options){
                Ext.ux.Toaster.msg(
                    'Problems getting the map preferences',
                    'Map preferences could not be fetched',
                    Ext.ux.Constants.clsWarn,
                    Ext.ux.Constants.msgWarn
                );
            },
			scope: me
        });
    },
    dragStart: function(node_id,map_panel,sel_marker){
        var me = this;
        me.lastMovedMarker  = sel_marker;
        me.lastOrigPosition = sel_marker.getPosition();
        me.editWindow 		= map_panel.editwindow;
    },
    dragEnd: function(node_id,map_panel,sel_marker){
        var me = this;
        var l_l = sel_marker.getPosition();
        map_panel.new_lng = l_l.lng();
        map_panel.new_lat = l_l.lat();
        map_panel.editwindow.open(map_panel.gmap, sel_marker);
        me.lastLng    = l_l.lng();
        me.lastLat    = l_l.lat();
        me.lastDragId = node_id;
    },
    btnMapCancel: function(button){
        var me = this;
		console.log("Cancel pappie");
        me.editWindow.close();
        me.lastMovedMarker.setPosition(me.lastOrigPosition);
    },
    btnMapDelete: function(button){
        var me = this;
        Ext.Ajax.request({
            url: me.urlMapDelete,
            method: 'GET',
            params: {
                id: me.lastDragId
            },
            success: function(response){
                var jsonData    = Ext.JSON.decode(response.responseText);
                if(jsonData.success){     
                    me.editWindow.close();
                    Ext.ux.Toaster.msg(
                        i18n('sItem_deleted'),
                        i18n('sItem_deleted_fine'),
                        Ext.ux.Constants.clsInfo,
                        Ext.ux.Constants.msgInfo
                    );
                }   
            },
            scope: me
        });
    },
    btnMapSave: function(button){
        var me = this;
        Ext.Ajax.request({
            url: me.urlMapSave,
            method: 'GET',
            params: {
                id: me.lastDragId,
                lat: me.lastLat,
                lon: me.lastLng
            },
            success: function(response){
                var jsonData    = Ext.JSON.decode(response.responseText);
                if(jsonData.success){     
                    me.editWindow.close();
                    Ext.ux.Toaster.msg(
                        i18n('sItem_updated'),
                        i18n('sItem_updated_fine'),
                        Ext.ux.Constants.clsInfo,
                        Ext.ux.Constants.msgInfo
                    );
                }   
            },
            scope: me
        });
    },
	mapPreferences: function(button){
       	var me 		= this;
		var win		= button.up('winMeshEdit');
		var mesh_id	= win.getItemId();
		var pref_id = 'winMeshMapPreferences_'+mesh_id;
		var map_p	= win.down('pnlMeshEditGMap');

       	if(!me.application.runAction('cDesktop','AlreadyExist',pref_id)){
            var w = Ext.widget('winMeshMapPreferences',{id:pref_id,mapPanel: map_p,meshId: mesh_id});
            me.application.runAction('cDesktop','Add',w);
            //We need to load this widget's form with the latest data:
            w.down('form').load({
				url		: me.urlMapPrefView,
            	method	: 'GET',
				params	: {
					mesh_id	: mesh_id
				}
			});
       }   
    },
   	mapNodeAdd: function(button){
        var me 		= this;
		var win		= button.up('winMeshEdit');
		var mesh_id	= win.getItemId();
		var add_id  = 'winMeshMapNodeAdd_'+mesh_id;
		var map_p	= win.down('pnlMeshEditGMap');

        if(!me.application.runAction('cDesktop','AlreadyExist',add_id)){
            var w = Ext.widget('winMeshMapNodeAdd',{id: add_id,mapPanel: map_p,meshId:mesh_id});
            me.application.runAction('cDesktop','Add',w);       
       }   
    },
    meshMapNodeAddSubmit: function(button){
        var me      = this;
        var win     = button.up('winMeshMapNodeAdd');
        var node    = win.down('cmbMeshAddMapNodes');
        var id      = node.getValue();
		var pnl		= win.mapPanel
        win.close();
        var m_center 	= pnl.gmap.getCenter();
        var sel_marker 	= pnl.addMarker({
            lat: m_center.lat(), 
            lng: m_center.lng(),
            icon: "resources/images/map_markers/yellow-dot.png",
            draggable: true, 
            title: "New Marker",
            listeners: {
                dragend: function(){
                    me.dragEnd(id,pnl,sel_marker);
                },
                dragstart: function(){
                    pnl.addwindow.close();
                    me.dragStart(id,pnl,sel_marker);
                }
            }
        });
		//Show the add infowinfow on the pnl's gmap at the marker
		pnl.addwindow.open(pnl.gmap, sel_marker);
    },
    mapPreferencesSnapshot: function(button){

        var me      = this;
        var form    = button.up('form');
		var w		= button.up('winMeshMapPreferences');
        var pnl     = w.mapPanel;
        var zoom    = pnl.gmap.getZoom();
        var type    = pnl.gmap.getMapTypeId();
        var ll      = pnl.gmap.getCenter();
        var lat     = ll.lat();
        var lng     = ll.lng();

        form.down('#lat').setValue(lat);
        form.down('#lng').setValue(lng);
        form.down('#zoom').setValue(zoom);
        form.down('#type').setValue(type.toUpperCase());
        console.log(" zoom "+zoom+" type "+type+ " lat "+lat+" lng "+lng);
    },
    mapPreferencesSave: function(button){

        var me      = this;
        var form    = button.up('form');
        var win     = button.up('winMeshMapPreferences');
		var mesh_id = win.meshId;
       
        form.submit({
            clientValidation: true,
            url: me.urlMapPrefEdit,
			params: {
				mesh_id: mesh_id
			},
            success: function(form, action) {
                win.close();
                Ext.ux.Toaster.msg(
                    i18n('sItem_updated'),
                    i18n('sItem_updated_fine'),
                    Ext.ux.Constants.clsInfo,
                    Ext.ux.Constants.msgInfo
                );
            },
            failure: Ext.ux.formFail
        });
    }
});
