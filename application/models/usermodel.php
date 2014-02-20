<?php

class UserModel extends CI_Model{
    function UserModel() {
        parent::__construct();
    }
    
    function checkDatabase(){
        $this->db->insert('ysb_users', array(
            'id' => 2,
            'ip_address' => '127.12.01.23'
        ));
    }
}