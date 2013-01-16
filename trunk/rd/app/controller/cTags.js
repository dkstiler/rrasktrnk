Ext.define('Rd.controller.cTags', {
    extend: 'Ext.app.Controller',
    actionIndex: function(){

        var me = this;
        var desktop = this.application.getController('cDesktop');
        var win = desktop.getWindow('tagsWin');
        if(!win){
            win = desktop.createWindow({
                id: 'tagsWin',
                title:'Tags manager',
                width:800,
                height:400,
                iconCls: 'tags',
                animCollapse:false,
                border:false,
                constrainHeader:true,
                layout: 'border',
                stateful: true,
                stateId: 'tagsWin',
                items: [
                    {
                        region: 'north',
                        xtype:  'pnlBanner',
                        heading:'NAS device tags',
                        image:  'resources/images/48x48/tags.png'
                    },
                    {
                        region  : 'center',
                        layout  : 'fit',
                        xtype   : 'gridTags',
                        margins : '0 0 0 0',
                        border  : true
                    }
                ]
            });
        }
        desktop.restoreWindow(win);    
        return win;
    },

    views:  [
        'components.pnlBanner',             'tags.gridTags',        'tags.winTagAddWizard',     'tags.winTagEdit',
        'components.winCsvColumnSelect',    'components.winNote',   'components.winNoteAdd'
    ],
    stores: ['sTags','sAccessProviders'],
    models: ['mTag','mAccessProvider'],
    selectedRecord: null,
    config: {
        urlAdd:             '/cake2/rd_cake/tags/add.json',
        urlEdit:            '/cake2/rd_cake/tags/edit.json',
        urlApChildCheck:    '/cake2/rd_cake/access_providers/child_check.json',
        urlExportCsv:       '/cake2/rd_cake/tags/export_csv',
        urlNoteAdd:         '/cake2/rd_cake/tags/note_add.json'
    },
    refs: [
        {  ref: 'grid',  selector:   'gridTags'}       
    ],
    init: function() {
        me = this;
        if (me.inited) {
            return;
        }
        me.inited = true;

        me.getStore('sTags').addListener('load',me.onStoreTagsLoaded, me);
        me.control({
            'gridTags #reload': {
                click:      me.reload
            },
            'gridTags #add'   : {
                click:      me.add
            },
            'gridTags #delete'   : {
                click:      me.del
            },
            'gridTags #edit'   : {
                click:      me.edit
            },
            'gridTags #csv'  : {
                click:      me.csvExport
            },
            'gridTags #note'   : {
                click:      me.note
            },
            'gridTags'   : {
                select:      me.select
            },
            'winTagAddWizard #btnTreeNext' : {
                click:  me.btnTreeNext
            },
            'winTagAddWizard #btnDataPrev' : {
                click:  me.btnDataPrev
            },
            'winTagAddWizard #btnDataNext' : {
                click:  me.btnDataNext
            },
            'winTagEdit #save' : {
                click:  me.editSubmit
            },
            '#winCsvColumnSelectTags #save': {
                click:  me.csvExportSubmit
            },
            'gridNote[noteForGrid=tags] #reload' : {
                click:  me.noteReload
            },
            'gridNote[noteForGrid=tags] #add' : {
                click:  me.noteAdd
            },
            'gridNote[noteForGrid=tags] #delete' : {
                click:  me.noteDelete
            },
            'gridNote[noteForGrid=tags]' : {
                itemclick: me.gridNoteClick
            },
            'winNoteAdd[noteForGrid=tags] #btnNoteTreeNext' : {
                click:  me.btnNoteTreeNext
            },
            'winNoteAdd[noteForGrid=tags] #btnNoteAddPrev'  : {   
                click: me.btnNoteAddPrev
            },
            'winNoteAdd[noteForGrid=tags] #btnNoteAddNext'  : {   
                click: me.btnNoteAddNext
            }
        });
    },
    reload: function(){
        var me =this;
        me.getStore('sTags').load();
    },
    add: function(button){

        var me = this;
        //We need to do a check to determine if this user (be it admin or acess provider has the ability to add to children)
        //admin/root will always have, an AP must be checked if it is the parent to some sub-providers. If not we will 
        //simply show the nas connection typer selection 
        //if it does have, we will show the tree to select an access provider.
        Ext.Ajax.request({
            url: me.urlApChildCheck,
            method: 'GET',
            success: function(response){
                var jsonData    = Ext.JSON.decode(response.responseText);
                if(jsonData.success){
                        
                    if(jsonData.items.tree == true){
                        if(!me.application.runAction('cDesktop','AlreadyExist','winTagAddWizardId')){
                            var w = Ext.widget('winTagAddWizard',{id:'winTagAddWizardId'});
                            me.application.runAction('cDesktop','Add',w);         
                        }
                    }else{
                        if(!me.application.runAction('cDesktop','AlreadyExist','winTagAddWizardId')){
                            var w = Ext.widget('winTagAddWizard',
                                {id:'winTagAddWizardId',startScreen: 'scrnData',user_id:'0',owner: 'Logged in user', no_tree: true}
                            );
                            me.application.runAction('cDesktop','Add',w);         
                        }
                    }
                }   
            },
            scope: me
        });

    },
    btnTreeNext: function(button){
        var me = this;
        var tree = button.up('treepanel');
        //Get selection:
        var sr = tree.getSelectionModel().getLastSelected();
        if(sr){    
            var win = button.up('winTagAddWizard');
            win.down('#owner').setValue(sr.get('username'));
            win.down('#user_id').setValue(sr.getId());
            win.getLayout().setActiveItem('scrnData');
        }else{
            Ext.ux.Toaster.msg(
                        'Select a owner',
                        'First select an Access Provider who will be the owner',
                        Ext.ux.Constants.clsWarn,
                        Ext.ux.Constants.msgWarn
            );
        }
    },
    btnDataPrev:  function(button){
        var me      = this;
        var win     = button.up('winTagAddWizard');
        win.getLayout().setActiveItem('scrnApTree');
    },
    btnDataNext:  function(button){
        var win     = button.up('window');
        var form    = win.down('form');
        form.submit({
            clientValidation: true,
            url: me.urlAdd,
            success: function(form, action) {
                win.close();
                me.getStore('sTags').load();
                Ext.ux.Toaster.msg(
                    'New Tag Created',
                    'Tag created fine',
                    Ext.ux.Constants.clsInfo,
                    Ext.ux.Constants.msgInfo
                );
            },
            failure: Ext.ux.formFail
        });
    },
    select: function(grid,record){
        var me = this;
        //Adjust the Edit and Delete buttons accordingly...

        //Dynamically update the top toolbar
        tb = me.getGrid().down('toolbar[dock=top]');

        var edit = record.get('update');
        if(edit == true){
            if(tb.down('#edit') != null){
                tb.down('#edit').setDisabled(false);
            }
        }else{
            if(tb.down('#edit') != null){
                tb.down('#edit').setDisabled(true);
            }
        }

        var del = record.get('delete');
        if(del == true){
            if(tb.down('#delete') != null){
                tb.down('#delete').setDisabled(false);
            }
        }else{
            if(tb.down('#delete') != null){
                tb.down('#delete').setDisabled(true);
            }
        }
    },
    del:   function(){
        var me      = this;     
        //Find out if there was something selected
        if(me.getGrid().getSelectionModel().getCount() == 0){
             Ext.ux.Toaster.msg(
                        'Select an item',
                        'First select an item to delete',
                        Ext.ux.Constants.clsWarn,
                        Ext.ux.Constants.msgWarn
            );
        }else{
            Ext.MessageBox.confirm('Confirm', 'Are you sure you want to do that?', function(val){
                if(val== 'yes'){
                    me.getGrid().getStore().remove(me.getGrid().getSelectionModel().getSelection());
                    me.getGrid().getStore().sync({
                        success: function(batch,options){
                            Ext.ux.Toaster.msg(
                                'Item Deleted',
                                'Item deleted fine',
                                Ext.ux.Constants.clsInfo,
                                Ext.ux.Constants.msgInfo
                            );
                            me.onStoreTagsLoaded();   //Update the count   
                        },
                        failure: function(batch,options,c,d){
                            Ext.ux.Toaster.msg(
                                'Problems deleting item',
                                batch.proxy.getReader().rawData.message.message,
                                Ext.ux.Constants.clsWarn,
                                Ext.ux.Constants.msgWarn
                            );
                            me.getGrid().getStore().load(); //Reload from server since the sync was not good
                        }
                    });
                }
            });
        }
    },

    edit: function(button){
        var me      = this;     
        //Find out if there was something selected
        var selCount = me.getGrid().getSelectionModel().getCount();
        if(selCount == 0){
             Ext.ux.Toaster.msg(
                        'Select an item',
                        'First select an item to edit',
                        Ext.ux.Constants.clsWarn,
                        Ext.ux.Constants.msgWarn
            );
        }else{
            if(selCount > 1){
                Ext.ux.Toaster.msg(
                        'Limit the selection',
                        'Selection limited to one',
                        Ext.ux.Constants.clsWarn,
                        Ext.ux.Constants.msgWarn
                );
            }else{

                if(!me.application.runAction('cDesktop','AlreadyExist','winTagEditId')){
                    var w = Ext.widget('winTagEdit',{id:'winTagEditId'});
                    me.application.runAction('cDesktop','Add',w);
                    var sr      = me.getGrid().getSelectionModel().getLastSelected();
                    w.down('form').loadRecord(sr);         
                }
            }
        }
    },

    editSubmit: function(button){
        var me      = this;
        var win     = button.up('window');
        var form    = button.up('form');
        form.submit({
            clientValidation: true,
            url: me.urlEdit,
            success: function(form, action) {
                win.close();
                me.getStore('sTags').load();
                Ext.ux.Toaster.msg(
                    'Item updated',
                    'Item updated fine',
                    Ext.ux.Constants.clsInfo,
                    Ext.ux.Constants.msgInfo
                );
            },
            failure: Ext.ux.formFail
        });
    },

    onStoreTagsLoaded: function() {
        var me      = this;
        var count   = me.getStore('sTags').getTotalCount();
        me.getGrid().down('#count').update({count: count});
    },
    csvExport: function(button,format) {
        var me          = this;
        var columns     = me.getGrid().columns;
        var col_list    = [];
        Ext.Array.each(columns, function(item,index){
            if(item.dataIndex != ''){
                var chk = {boxLabel: item.text, name: item.dataIndex, checked: true};
                col_list[index] = chk;
            }
        }); 

        if(!me.application.runAction('cDesktop','AlreadyExist','winCsvColumnSelectTags')){
            var w = Ext.widget('winCsvColumnSelect',{id:'winCsvColumnSelectTags',columns: col_list});
            me.application.runAction('cDesktop','Add',w);         
        }
    },
    csvExportSubmit: function(button){

        var me      = this;
        var win     = button.up('window');
        var form    = win.down('form');

        var chkList = form.query('checkbox');
        var c_found = false;
        var columns = [];
        var c_count = 0;
        Ext.Array.each(chkList,function(item){
            if(item.getValue()){ //Only selected items
                c_found = true;
                columns[c_count] = {'name': item.getName()};
                c_count = c_count +1; //For next one
            }
        },me);

        if(!c_found){
            Ext.ux.Toaster.msg(
                        'Select one or more',
                        'Select one or more columns please',
                        Ext.ux.Constants.clsWarn,
                        Ext.ux.Constants.msgWarn
            );
        }else{     
            //next we need to find the filter values:
            var filters     = [];
            var f_count     = 0;
            var f_found     = false;
            var filter_json ='';
            me.getGrid().filters.filters.each(function(item) {
                if (item.active) {
                    f_found         = true;
                    var ser_item    = item.serialize();
                    ser_item.field  = item.dataIndex;
                    filters[f_count]= ser_item;
                    f_count         = f_count + 1;
                }
            });   
            var col_json        = "columns="+Ext.JSON.encode(columns);
            var extra_params    = Ext.Object.toQueryString(Ext.Ajax.extraParams);
            var append_url      = "?"+extra_params+'&'+col_json;
            if(f_found){
                filter_json = "filter="+Ext.JSON.encode(filters);
                append_url  = append_url+'&'+filter_json;
            }
            window.open(me.urlExportCsv+append_url);
            win.close();
        }
    },

    note: function(button,format) {
        var me      = this;     
        //Find out if there was something selected
        var sel_count = me.getGrid().getSelectionModel().getCount();
        if(sel_count == 0){
             Ext.ux.Toaster.msg(
                        'Select an item',
                        'First select an item',
                        Ext.ux.Constants.clsWarn,
                        Ext.ux.Constants.msgWarn
            );
        }else{
            if(sel_count > 1){
                Ext.ux.Toaster.msg(
                        'Limit the selection',
                        'Selection limited to one',
                        Ext.ux.Constants.clsWarn,
                        Ext.ux.Constants.msgWarn
                );
            }else{

                //Determine the selected record:
                var sr = me.getGrid().getSelectionModel().getLastSelected();
                
                if(!me.application.runAction('cDesktop','AlreadyExist','winNoteTags'+sr.getId())){
                    var w = Ext.widget('winNote',
                        {
                            id          : 'winNoteTags'+sr.getId(),
                            noteForId   : sr.getId(),
                            noteForGrid : 'tags',
                            noteForName : sr.get('name')
                        });
                    me.application.runAction('cDesktop','Add',w);       
                }
            }    
        }
    },
    noteReload: function(button){
        var me      = this;
        var grid    = button.up('gridNote');
        grid.getStore().load();
    },
    noteAdd: function(button){
        var me      = this;
        var grid    = button.up('gridNote');
        if(!me.application.runAction('cDesktop','AlreadyExist','winNoteTagsAdd'+grid.noteForId)){
            var w   = Ext.widget('winNoteAdd',
            {
                id          : 'winNoteTagsAdd'+grid.noteForId,
                noteForId   : grid.noteForId,
                noteForGrid : grid.noteForGrid,
                refreshGrid : grid
            });
            me.application.runAction('cDesktop','Add',w);       
        }
    },
    gridNoteClick: function(item,record){
        var me = this;
        //Dynamically update the top toolbar
        grid    = item.up('gridNote');
        tb      = grid.down('toolbar[dock=top]');
        var del = record.get('delete');
        if(del == true){
            if(tb.down('#delete') != null){
                tb.down('#delete').setDisabled(false);
            }
        }else{
            if(tb.down('#delete') != null){
                tb.down('#delete').setDisabled(true);
            }
        }
    },
    btnNoteTreeNext: function(button){
        var me = this;
        var tree = button.up('treepanel');
        //Get selection:
        var sr = tree.getSelectionModel().getLastSelected();
        if(sr){    
            var win = button.up('winNoteAdd');
            win.down('#owner').setValue(sr.get('username'));
            win.down('#user_id').setValue(sr.getId());
            win.getLayout().setActiveItem('scrnNote');
        }else{
            Ext.ux.Toaster.msg(
                        'Select a owner',
                        'First select an Access Provider who will be the owner',
                        Ext.ux.Constants.clsWarn,
                        Ext.ux.Constants.msgWarn
            );
        }
    },
    btnNoteAddPrev: function(button){
        var me = this;
        var win = button.up('winNoteAdd');
        win.getLayout().setActiveItem('scrnApTree');
    },
    btnNoteAddNext: function(button){
        var me      = this;
        var win     = button.up('winNoteAdd');
        console.log(win.noteForId);
        console.log(win.noteForGrid);
        win.refreshGrid.getStore().load();
        var form    = win.down('form');
        form.submit({
            clientValidation: true,
            url: me.urlNoteAdd,
            params: {for_id : win.noteForId},
            success: function(form, action) {
                win.close();
                win.refreshGrid.getStore().load();
                me.reload();
                Ext.ux.Toaster.msg(
                    'New Note Created',
                    'Note created fine',
                    Ext.ux.Constants.clsInfo,
                    Ext.ux.Constants.msgInfo
                );
            },
            failure: Ext.ux.formFail
        });
    },
    noteDelete: function(button){
        var me      = this;
        var grid    = button.up('gridNote');
        //Find out if there was something selected
        if(grid.getSelectionModel().getCount() == 0){
             Ext.ux.Toaster.msg(
                        'Select an item',
                        'First select an item to delete',
                        Ext.ux.Constants.clsWarn,
                        Ext.ux.Constants.msgWarn
            );
        }else{
            Ext.MessageBox.confirm('Confirm', 'Are you sure you want to do that?', function(val){
                if(val== 'yes'){
                    grid.getStore().remove(grid.getSelectionModel().getSelection());
                    grid.getStore().sync({
                        success: function(batch,options){
                            Ext.ux.Toaster.msg(
                                'Item Deleted',
                                'Item deleted fine',
                                Ext.ux.Constants.clsInfo,
                                Ext.ux.Constants.msgInfo
                            );
                            grid.getStore().load();   //Update the count
                            me.reload();   
                        },
                        failure: function(batch,options,c,d){
                            Ext.ux.Toaster.msg(
                                'Problems deleting item',
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
    }
});
