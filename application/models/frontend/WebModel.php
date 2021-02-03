<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class WebModel extends CI_Model { 

 public $v_fields=array('name','email','score');


function __construct()
    {
        parent::__construct();
        $this->load->database();
    }


    public function checkQuestions($table,$where)
    {
      $this->db->select('*');
      $this->db->from($table);
      $this->db->where($where);
      $query=$this->db->get();
      $result =$query->result();
      return $result;
    }
    public function getAll($table)
    {
      $this->db->select('*');
      $this->db->from($table);
      $query=$this->db->get();
      $result =$query->result();
      return $result;
    }
    public function add($table,$data)
    {
       $result = $this->db->insert($table, $data);
        if ($result) {
            return $result;
        } else {
            return false;
        }
    }
      function login($email,$password)
    {
   $this ->db-> select('*');
   $this->db-> from('admin_login');
   $this->db-> where('email', $email);
   $this->db-> where('password', $password);
   $this->db-> limit(1);
// echo $this->db->last_query();exit;
   $query = $this ->db-> get();
   if($query -> num_rows() == 1)
   {
     return $query->result_array();
   }
   else
   {
     return false;
   }
 }

   function getList($table, $pagination=array()) {

        if((isset($pagination['cur_page'])) and !empty($pagination['per_page']))

        {

          $this->db->limit($pagination['per_page'],$pagination['cur_page']);

        }

          $order_by = isset($_GET['sortBy']) && in_array($_GET['sortBy'], $this->v_fields)?$_GET['sortBy']:'';

          $order = isset($_GET['order']) && $_GET['order']=='asc'?'asc':'desc';

          if($order_by!=''){

            $this->db->order_by($order_by, $order);

          }

        if (!empty($_GET['searchValue']) && $_GET['searchValue']!="" && !empty($_GET['searchBy']) && $_GET['searchBy']!="" && in_array($_GET['searchBy'],$this->v_fields) ) {

            $this->db->like($_GET['searchBy'],$_GET['searchValue']);

        }

        $this->db->select("$table.* ");

        $this->db->from($table);

            

        $this->db->order_by("id","desc");

        $query = $this->db->get();

        return $result = $query->result();

    }

 function getCount($table, $key='', $value='') {

            $this->db->select("$table.*");

            if(isset($key) && isset($value) && !empty($key) && !empty($value))

            {

                $this->db->where($key,$value);

            }

            $this->db->from($table);

            

            $query = $this->db->get();

            return $query->num_rows();

    }
    
}
