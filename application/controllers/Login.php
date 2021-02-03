<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	
	 function __construct() {

        parent::__construct();


        $this->load->helper('form');
        $this->load->helper('html');
        $this->load->helper('url');
        //     $this->output->set_template('theme');
        $this->load->library('session');
        $this->load->library('form_validation');
        $this->load->helper('file');
        $this->load->library('email');
        $this->load->model('frontend/WebModel','web');
    }   
     function index()
	{
            $this->form_validation->set_rules('email', 'email', 'required|valid_email'); 
            $this->form_validation->set_rules('password', 'Password', 'required');

            if ($this->form_validation->run() == FALSE) 
            {  
                $this->load->view('frontend/login');
                
            }else
            {
              
                $email=$this->input->post('email');
                $password=md5($this->input->post('password'));
                $loginData =$this->web->login($email,$password);

                if($loginData)
                {   
                   // $this->loginStatus(true);
                    $data=[];
                    $this->session->set_userdata('id',$loginData[0]['id']);
                    $this->session->set_userdata('username',$loginData[0]['username']);
                    $this->session->set_userdata('email',$loginData[0]['email']);
                    $this->session->set_userdata('is_login',true);
                   
                    $this->session->set_flashdata('message', 'Login Successfully..');
                    redirect('guest');
                }else
                {
                    $this->session->set_flashdata('error', 'Login Unsuccessfully..');
                    redirect('login');
                }
            }

        }
        function logout()
        {
        	$this->session->sess_destroy();
            redirect('login');
        }
	}

?>