Ext.define('Rd.view.permanentUsers.gridUserDevices' ,{
    extend:'Ext.grid.Panel',
    alias : 'widget.gridUserDevices',
    multiSelect: true,
    stateful: true,
    stateId: 'StateGridUserRadaccts',
    stateEvents:['groupclick','columnhide'],
    border: false,
    requires: [
        'Rd.view.components.ajaxToolbar'
    ],
    viewConfig: {
        loadMask:true
    },
    urlMenu: '/cake2/rd_cake/permanent_users/menu_for_devices.json',
    bbar: [
        {   xtype: 'component', itemId: 'count',   tpl: i18n('sResult_count_{count}'),   style: 'margin-right:5px', cls: 'lblYfi' },
        '->',
        {   xtype: 'component', itemId: 'totals',  tpl: i18n('tpl_In_{in}_Out_{out}_Total_{total}'),   style: 'margin-right:5px', cls: 'lblRd' }
    ],
    columns: [
        {xtype: 'rownumberer'},
        { text: i18n('sMAC_address'),   dataIndex: 'name',      tdCls: 'gridTree', flex: 1,filter: {type: 'string'}},
        { text: i18n('sDescription'),   dataIndex: 'description',tdCls: 'gridTree', flex: 1,filter: {type: 'string'}},
           // { text: i18n('sVendor'),        dataIndex: 'vendor',    tdCls: 'gridTree', flex: 1,filter: {type: 'string'}},
        { text: i18n('sRealm'),         dataIndex: 'realm',     tdCls: 'gridTree', flex: 1,filter: {type: 'string'}},
        { text: i18n('sProfile'),       dataIndex: 'profile',   tdCls: 'gridTree', flex: 1,filter: {type: 'string'}},
        { 
            text        : i18n('sActive'),  
            xtype       : 'templatecolumn', 
            tpl         : new Ext.XTemplate(
                                "<tpl if='active == true'><div class=\"hasRight\">"+i18n("sYes")+"</div></tpl>",
                                "<tpl if='active == false'><div class=\"noRight\">"+i18n("sNo")+"</div></tpl>"
                            ),
            dataIndex   : 'active',
            filter      : { type: 'boolean'}
        },
        { 
            text    : i18n('sNotes'),
            sortable: false,
            width   : 130,
            xtype   : 'templatecolumn', 
            tpl     : new Ext.XTemplate(
                                "<tpl if='notes == true'><div class=\"note\">"+i18n("sExisting_Notes")+"</div></tpl>"
            ),
            dataIndex: 'notes'
        }      
    ],
    username: 'nobody', //dummy value
    initComponent: function(){
        var me      = this;

        var filters = {
            ftype   : 'filters',
            encode  : true, 
            local   : false
        };
        me.tbar     = Ext.create('Rd.view.components.ajaxToolbar',{'url': me.urlMenu});
        me.features = [filters];

        //Create a store specific to this Permanent User
        me.store = Ext.create(Ext.data.Store,{
            model: 'Rd.model.mDevice',
            buffered: true,
            leadingBufferZone: 450, 
            pageSize: 150,
            //To force server side sorting:
            remoteSort: true,
            proxy: {
                type    : 'ajax',
                format  : 'json',
                batchActions: true, 
                url     : '/cake2/rd_cake/devices/index.json',
                extraParams: { 'user_id' : me.user_id },
                reader: {
                    type: 'json',
                    root: 'items',
                    messageProperty: 'message',
                    totalProperty: 'totalCount' //Required for dynamic paging
                },
                api: {
                    destroy  : '/cake2/rd_cake/devices/delete.json'
                },
                simpleSortMode: true //This will only sort on one column (sort) and a direction(dir) value ASC or DESC
            },
            listeners: {
                load: function(store, records, successful) {
                    if(!successful){
                        Ext.ux.Toaster.msg(
                            'Error encountered',
                            store.getProxy().getReader().rawData.message.message,
                            Ext.ux.Constants.clsWarn,
                            Ext.ux.Constants.msgWarn
                        );
                        //console.log(store.getProxy().getReader().rawData.message.message);
                    }else{
                        var count       = me.getStore().getTotalCount();
                        me.down('#count').update({count: count});

                    }   
                },
                scope: this
            },
            //autoLoad: true    
        });
       
        //Create a mask and assign is as a property to the window
        me.mask = new Ext.LoadMask(me, {msg: i18n('sConnecting')+" ...."});
        me.callParent(arguments);
    }
});
