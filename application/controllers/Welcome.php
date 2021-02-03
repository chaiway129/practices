<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	// public function index()
	// {
	// 	$this->load->view('welcome_message');
	// }
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

    public function index()
    {
       
       $this->load->view('frontend/home');
    }
    public function quize()
    {
    	$data = file_get_contents('https://opentdb.com/api.php?amount=10');
    	$res['ques']=$data;
 
       $this->load->view('frontend/quize',$res);
    }
   
    public function StoredScore()
    {
    	$data['name'] = $_POST['name'];
    	$data['email'] = $_POST['email'];
    	$data['score'] = $_POST['score'];
    	$this->web->add('quest_with_score',$data);

    }

}
