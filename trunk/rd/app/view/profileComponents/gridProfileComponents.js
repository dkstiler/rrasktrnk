Ext.define('Rd.view.profileComponents.gridProfileComponents' ,{
    extend:'Ext.grid.Panel',
    alias : 'widget.gridProfileComponents',
    multiSelect: true,
    store : 'sProfileComponents',
    stateful: true,
    stateId: 'StateGridProfileComponents',
    stateEvents:['groupclick','columnhide'],
    border: false,
    requires: [
        'Rd.view.components.ajaxToolbar'
    ],
    viewConfig: {
        loadMask:true
    },
    urlMenu: '/cake2/rd_cake/profile_components/menu_for_grid.json',
    bbar: [
        {   xtype: 'component', itemId: 'count',   tpl: i18n('sResult_count_{count}'),   style: 'margin-right:5px', cls: 'lblYfi' }
    ],
    initComponent: function(){
        var me      = this;
        var filters = {
            ftype   : 'filters',
            encode  : true, 
            local   : false
        };
        me.tbar     = Ext.create('Rd.view.components.ajaxToolbar',{'url': me.urlMenu});
        me.features = [filters];

        me.columns  = [
            {xtype: 'rownumberer'},
            { text: i18n('sOwner'),        dataIndex: 'owner', tdCls: 'gridTree', flex: 1,filter: {type: 'string'}},
            { text: i18n('sName'),         dataIndex: 'name',  tdCls: 'gridTree', flex: 1,filter: {type: 'string'}},
            { text: i18n('sCheck_attribute_count'),  dataIndex: 'check_attribute_count',  tdCls: 'gridTree', flex: 1},
            { text: i18n('sReply_attribute_count'),  dataIndex: 'reply_attribute_count',  tdCls: 'gridTree', flex: 1},
            { 
                text:   i18n('sAvailable_to_sub_providers'),
                flex: 1,  
                xtype:  'templatecolumn', 
                tpl:    new Ext.XTemplate(
                            "<tpl if='available_to_siblings == true'><div class=\"hasRight\">"+i18n("sYes")+"</div></tpl>",
                            "<tpl if='available_to_siblings == false'><div class=\"noRight\">"+i18n("sNo")+"</div></tpl>"
                        ),
                dataIndex: 'available_to_siblings',
                filter  : {
                    type: 'boolean'    
                }
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
        ];

        //Create a mask and assign is as a property to the window
        me.mask = new Ext.LoadMask(me, {msg: i18n('sConnecting')+" ...."});
        
        me.callParent(arguments);
    }
});
