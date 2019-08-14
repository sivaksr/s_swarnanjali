<?php
defined('BASEPATH') OR exit('No direct script access allowed');
@include_once( APPPATH . 'controllers/In_frontend.php');
class Principal extends In_frontend {
public function __construct() 
	{
		parent::__construct();	
			$this->load->model('Principal_model');
	}
	public function index()
	{	
		if($this->session->userdata('userdetails'))
		{
			$login_details=$this->session->userdata('userdetails');
				if($login_details['role_id']==12){
					$detail=$this->School_model->get_resources_details($login_details['u_id']);
					//$data['teacher_type']=$this->School_model->get_teacher_modules($detail['s_id']);
					$data['teacher_modules']=$this->Principal_model->get_teacher_modules($detail['s_id']);
					//echo'<pre>';print_r($data);exit;
					$this->load->view('principal/add',$data);
					$this->load->view('html/footer');
				}else{
						$this->session->set_flashdata('error',"you don't have permission to access");
						redirect('dashboard');
				}
		}else{
			$this->session->set_flashdata('error',"you don't have permission to access");
			redirect('home');
		}
	}
	public  function addpost(){
		if($this->session->userdata('userdetails'))
		{
			$login_details=$this->session->userdata('userdetails');
			if($login_details['role_id']==12){
				$detail=$this->Student_model->get_resources_details($login_details['u_id']);
				$post=$this->input->post();
				//echo '<pre>';print_r($post);exit;
				$check=$this->Principal_model->get_teacher_list($post['teacher_modules'],$detail['s_id']);
			//echo '<pre>';print_r($check);exit;
			foreach($check as $list){
				$mobiles[]=$list['mobile'];
			}
			$los=implode(',', $mobiles);
			
			if($check!=array()){
			$otp=isset($post['instractions'])?$post['instractions']:'';
            $username = $this->config->item('smsusername');
            $pass     = $this->config->item('smspassword');
            $sender   = $this->config->item('sender');
            $msg      = "Principal Request : ".$otp;
			$save_data=array(
			's_id'=>isset($detail['s_id'])?$detail['s_id']:'',
			'teacher_modules'=>isset($post['teacher_modules'])?$post['teacher_modules']:'',
			'instractions'=>isset($post['instractions'])?$post['instractions']:'',
			'otp'=>isset($otp)?$otp:'',
			'opt_created_at'=>date('Y-m-d H:i:s'),
			'created_at'=>date('Y-m-d H:i:s'),
			'created_by'=>$login_details['u_id'],
			);
			$this->Principal_model->save_principal_assign_instractions($save_data);
            $ch2 = curl_init();
            curl_setopt($ch2, CURLOPT_URL, "http://trans.smsfresh.co/api/sendmsg.php");
            curl_setopt($ch2, CURLOPT_POST, 1);
            curl_setopt($ch2, CURLOPT_POSTFIELDS, 'user=' . $username . '&pass=' . $pass . '&sender=' . $sender . '&phone=' .$los. '&text=' . $msg . '&priority=ndnd&stype=normal');
            curl_setopt($ch2, CURLOPT_RETURNTRANSFER, true);
            $server_output = curl_exec($ch2);
			//echo '<pre>';print_r($server_output);exit;
            curl_close($ch2);
			$this->session->set_flashdata('success','Principal assign to teachers instructions sucessfully send');
			redirect('principal');	
		}else{
			$this->session->set_flashdata('error','technical problem will occurred. Please try again.');
			redirect('principal');	
		}
							
			}else{
					$this->session->set_flashdata('error',"you don't have permission to access");
					redirect('dashboard');
			}
		}else{
			$this->session->set_flashdata('error',"you don't have permission to access");
			redirect('home');
		}	
	}
	
	
	
	
	
	
	
	
	
	
	
  }