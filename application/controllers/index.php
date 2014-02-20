<?php

class Index extends CI_Controller
{

    /**
     * __construct
     */
    function __construct()
    {
        parent::__construct();
        $this->siteurl = $this->config->item('base_url');
        $this->load->model(array('UserModel'));
    }
    
    function index(){
        $this->UserModel->checkDatabase();
        $this->load->view('index');
    }
    
}