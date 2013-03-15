<?php
App::uses('AppController', 'Controller');

class DesktopController extends AppController {

    public $name       = 'Desktop';
    public $components = array('Aa');   //We'll use the Aa component to determine certain rights


    public function authenticate(){

        $this->Auth = $this->Components->load('Auth');
        $this->request->data['User']['username']     = $this->request->data['username'];
        $this->request->data['User']['password']     = $this->request->data['password'];

        if($this->Auth->identify($this->request,$this->response)){
            
            //We can get the detail for the user
            $data = $this->_get_user_detail($this->request->data['User']['username']);
            $this->set(array(
                'data'          => $data,
                'success'       => true,
                '_serialize' => array('data','success')
            ));

        }else{
            //We can get the detail for the user

            $this->set(array(
                'errors'        => array('username' => __('Confirm this name'),'password'=> __('Type the password again')),
                'success'       => false,
                'message'       => array('message'  => __('Authentication failed')),
                '_serialize' => array('errors','success','message')
            ));
        }
    }

    public function check_token(){

        if((isset($this->request->query['token']))&&($this->request->query['token'] != '')){

            $token      = $this->request->query['token'];
            $this->User = ClassRegistry::init('User');
            $q_r        = $this->User->find('first',array(
                'conditions'    => array('User.token' => $token)
            ));

            if($q_r == ''){

                $this->set(array(
                    'errors'        => array('token'=>'invalid'),
                    'success'       => false,
                    '_serialize'    => array('errors','success')
                ));
  
            }else{

                $data = $this->_get_user_detail($q_r['User']['username']);
                $this->set(array(
                    'data'          => $data,
                    'success'       => true,
                    '_serialize'    => array('data','success')
                ));
            }
        }else{

            $this->set(array(
                'errors'        => array('token'=>'missing'),
                'success'       => false,
                '_serialize'    => array('errors','success')
            ));
        }
    }

    public function list_wallpapers(){


        $items = array();

        //List all the wallpapres in the wallpaper directory:
        $wp_document_root   = "/var/www";
        $r_wp_dir           = "/rd/resources/images/wallpapers/";
        $wp_dir             = "$wp_document_root"."$r_wp_dir";

        $id = 1;

        if ($handle = opendir($wp_dir)) {
            while (false !== ($entry = readdir($handle))) {
                if ($entry != "." && $entry != "..") {
                    $regexp = "/^[0-9a-zA-z\.]+\.(gif|jpg|png|jpeg)$/"; //Match only images
                    if(preg_match($regexp, $entry)){
                      //  echo "$entry\n";
                        array_push($items, array(
                            'id'    => $id,
                            'file'  => $entry,
                            'r_dir' => $r_wp_dir,
                            'img'   => "/cake2/rd_cake/webroot/files/image.php/image-name.jpg?width=200&height=200&image=".$r_wp_dir.$entry
                        ));
                        $id++;
                    }     
                }
            }
            closedir($handle);
        }
        $this->set(array(
            'items'          => $items,
            'success'       => true,
            '_serialize'    => array('items','success')
        ));
    }


    private function _get_user_detail($username){

        $this->User = ClassRegistry::init('User');
        $this->User->contain('Group');
        $q_r        = $this->User->find('first',array('conditions'    => array('User.username' => $username)));
        $token      = $q_r['User']['token'];
        $id         = $q_r['User']['id'];
        $group      = $q_r['Group']['name'];
        $username   = $q_r['User']['username'];

        $cls        = 'user';
        $menu       = array();
        if( $group == Configure::read('group.admin')){  //Admin
            $cls = 'admin';
            $menu= $this->_build_admin_menus();  //We do not care for rights here;
        }
        if( $group == Configure::read('group.ap')){  //Or AP
            $cls = 'access_provider';
            $menu= $this->_build_ap_menus($id);  //We DO care for rights here!
        }

        return array(
            'token'         =>  $q_r['User']['token'],
            'menu'          =>  $menu,
            'user'          =>  array('id' => $id, 'username' => $username,'group' => $group,'cls' => $cls),
            'urlWallpaper'  =>  'resources/images/wallpapers/9.jpg',
            'shortcuts'     =>  array() 
        );
    }

    private function _build_admin_menus(){

          return array(
          //  array(  'text'  => __('Vouchers'),              'iconCls' => 'vouchers'),
          //  array(  'text'  => __('Permanent users'),       'iconCls' => 'group'),
          //  array(  'text'  => __('Accounting'),            'iconCls' => 'accounting'),
            array(  'text'  => __('Realms and Providers'),  'iconCls' => 'realms',  'menu'  =>
                 array( 'items' =>
                    array(
                        array('text' => __('Access Providers') ,'iconCls' => 'key',     'itemId' => 'cAccessProviders'),
                        array('text' => __('Realms') ,          'iconCls' => 'realms',  'itemId' => 'cRealms'),
                    )
                )
            ),
        //    array(  'text'  => __('Profiles'),              'iconCls' => 'profiles'),
          //  array(  'text'  => __('Activity/Stats'),        'iconCls' => 'stats'),
            array(  'text'  => __('NAS Devices'),  'iconCls' => 'nas',  'menu'  =>
                 array( 'items' =>
                    array(
                        array('text' => __('NAS Devices') ,     'iconCls' => 'nas',   'itemId' => 'cNas'),
                        array('text' => __('NAS Device tags') , 'iconCls' => 'tags',  'itemId' => 'cTags'),
                    )
                )
            ),
            array(  'text'  => __('Profiles'),  'iconCls' => 'profiles',  'menu'  =>
                 array( 'items' =>
                    array(
                        array('text' => __('Profile Components') ,  'iconCls' => 'components',  'itemId' => 'cProfileComponents'),
                        array('text' => __('Profiles') ,            'iconCls' => 'profiles',    'itemId' => 'cProfiles'),
                    )
                )
            ),
            array(  'text'  => __('Permanent Users'),       'iconCls' => 'users',       'itemId' => 'cPermanentUsers'),
            array(  'text'  => __('BYOD Manager'),          'iconCls' => 'devices',     'itemId' => 'cDevices'),
            array(  'text'  => __('Translation manager'),   'iconCls' => 'translate',   'itemId' => 'cI18n'),
            array(  'text'  => __('Rights manager'),        'iconCls' => 'rights',      'itemId' => 'cAcos'),
        );
    }

    private function _build_ap_menus($id){

        $menu   = array();
        $base   = "Access Providers/Controllers/";

        //____ Realms and Providers ____
        if($this->Acl->check(array('model' => 'User', 'foreign_key' => $id), $base."Realms/index")){    //Will not give an AP AP rigts without this

                //___Check the sub-menu rights___:
                $sm_r_p = array();
                if($this->Acl->check(array('model' => 'User', 'foreign_key' => $id), $base."AccessProviders/index")){
                    array_push($sm_r_p, array('text' => __('Access Providers') ,'iconCls' => 'key',     'itemId' => 'cAccessProviders'));
                }
                //Then the one we checked for ... realms
                array_push($sm_r_p, array('text' => __('Realms') , 'iconCls' => 'realms',  'itemId' => 'cRealms'));
                //___ END Sub Menu___

            array_push($menu, array(  'text'  => __('Realms and Providers'),  'iconCls' => 'realms',  'menu'  => array('items' =>$sm_r_p)));     
        }

        //____ NAS devices _____
        if($this->Acl->check(array('model' => 'User', 'foreign_key' => $id), $base."Nas/index")){    //Required to show the NAS Devices menu item

            $sm_nas_devices = array();
            array_push($sm_nas_devices, array(  'text'  => __('NAS Devices'),  'iconCls' => 'nas',  'itemId' => 'cNas'));

            //___Check the sub-menu rights___:
            if($this->Acl->check(array('model' => 'User', 'foreign_key' => $id), $base."Tags/index")){
                array_push($sm_nas_devices, array(  'text'  => __('NAS Device tags'),   'iconCls' => 'tags', 'itemId' => 'cTags'));
            } 
            //___ END Sub Menu___

            array_push($menu, array(  'text'  => __('NAS Devices'),  'iconCls' => 'nas',  'menu'  => array('items' =>$sm_nas_devices)));     
        }

        //___ What What ______
        return $menu;
    }

}
