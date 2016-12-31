<?php
//----------------------------------------------------------
//---- Author: Dirk van der Walt
//---- License: GPL v3
//---- Description: A component that makes use of tho sub-components to determine Authentication and Authorization of a request
//---- Date: 24-12-2016
//------------------------------------------------------------

namespace App\Controller\Component;
use Cake\Controller\Component;

use Cake\Core\Configure;
use Cake\Core\Configure\Engine\PhpConfig;

use Cake\ORM\TableRegistry;


class AaComponent extends Component {

    public $components = array('TokenAuth', 'TokenAcl');
    
    protected $parents  = false;
    protected $children = false;

    public function user_for_token($controller){
        return $this->TokenAuth->check_if_valid($controller);
    }

    public function fail_no_rights($controller){
        $this->TokenAcl->fail_no_rights($controller);
    }


    public function admin_check($controller,$hard_fail=true){

        //Check if the supplied token belongs to a user that is part of the Configure::read('group.admin') group
        //-- Authenticate check --
        $token_check = $this->TokenAuth->check_if_valid($controller);
        if(!$token_check){
            return false;
        }else{

            if($token_check['group_name'] == Configure::read('group.admin')){ 
                return true;
            }else{
                if($hard_fail){
                    $this->TokenAcl->fail_no_rights($controller);
                }
                return false;
            }
        }
    }

    public function ap_check($controller,$hard_fail=true){
        //-- Authenticate check --
        $token_check = $this->TokenAuth->check_if_valid($controller);
        if(!$token_check){
            return false;
        }else{

            if($token_check['group_name'] == Configure::read('group.ap')){ 
                return true;
            }else{
                if($hard_fail){
                    $this->TokenAcl->fail_no_rights($controller);
                }
                return false;
            }
        }
    }

    public function aa_check($controller,$realm_id){

        //-- Authenticate check --
        $token_check = $this->TokenAuth->check_if_valid($controller);
        if(!$token_check){
            return false;
        }

        //-- Authorisation check --
        //::A::- Can the person do this action for this realm? --
        if($token_check['group_name'] == Configure::read('group.ap')){    //This is an access provider
            if(!$this->TokenAcl->can_manage_realm($token_check['user']['id'],$realm_id)){ //Does this AP have rights for this realm?

                $this->TokenAcl->fail_no_rights($controller);
                return false;

            }
        }elseif($token_check['group_name'] == Configure::read('group.user')){ //This is a user
                $this->TokenAcl->fail_no_rights($controller);
                return false;
        }

        //::B::-- Can this person do this action? --
        if(!$this->TokenAcl->action_check($controller->name,$controller->request->action)){
            $this->TokenAcl->fail_no_rights($controller);
            return false;
        }
        //-> Authorization check complete - continuie --
        return true;
    }
    
    
    public function get_action_flags($owner_id,$user){
    
        if($user['group_name'] == Configure::read('group.admin')){  //Admin
            return array('update' => true, 'delete' => true);
        }

        if($user['group_name'] == Configure::read('group.ap')){  //AP
            $user_id = $user['id'];

            //test for self
            if($owner_id == $user_id){
                return array('update' => true, 'delete' => true );
            }
            
            //Test for Parents
            //NOTE If parents does not exist -> Get it
            if(!$this->parents){
                $users          = TableRegistry::get('Users')->find();
                $this->parents  = $users->find('path',['for' => $user_id]);
            }
            
            foreach($this->parents as $i){
                if($i->id == $owner_id){
                    return array('update' => false, 'delete' => false );
                }
            }

            //Test for Children
            //NOTE If parents does not exist -> Get it
            if(!$this->children){
                $users          = TableRegistry::get('Users')->find();
                $this->children = $this->find('children', ['for' => $user_id]);
            }
             
            foreach($this->children as $i){
                if($i->id == $owner_id){
                    return array('update' => true, 'delete' => true);
                }
            }  
        }
    
    }

}
