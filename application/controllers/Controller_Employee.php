<?php 

class Controller_Employee extends Admin_Controller 
{
	public function __construct()
	{
		parent::__construct();

		$this->not_logged_in();
		
		$this->data['page_title'] = 'Members';
		

		$this->load->model('model_employee');
	
	}

	
	public function index()
	{
		if(!in_array('viewUser', $this->permission)) {
			redirect('dashboard', 'refresh');
		}

		$employee_data = $this->model_employee->getEmployeeData();

		$result = array();
		foreach ($employee_data as $k => $v) {

			$result[$k]['user_info'] = $v;

			//$group = $this->model_users->getUserGroup($v['id']);
			
		}

		$this->data['user_data'] = $result;

		$this->render_template('employees/index', $this->data);
	}

	public function create()
	{
		if(!in_array('createUser', $this->permission)) {
			redirect('dashboard', 'refresh');
		}

		$this->form_validation->set_rules('nom', 'Nom', 'required');
		$this->form_validation->set_rules('prenom', 'Prenom', 'required');
		$this->form_validation->set_rules('no_employee', 'Numéro Emplpoyee', 'required');
		$this->form_validation->set_rules('credit', 'Credit', 'required');
		
        if ($this->form_validation->run() == TRUE) {
            // true case
            
        	$data = array(
        		'nom' => $this->input->post('nom'),
        		'prenom' => $this->input->post('prenom'),
        		'no_employee' => $this->input->post('no_employee'),
				'credit' => $this->input->post('credit')
        	        	);

        	$create = $this->model_employee->create($data);
        	if($create == true) {
        		$this->session->set_flashdata('success', 'Successfully created');
        		redirect('Controller_Employee/', 'refresh');
        	}
        	else {
        		$this->session->set_flashdata('errors', 'Error occurred!!');
        		redirect('Controller_Employee/create', 'refresh');
        	}
        }
        else {
            // false case
        	$group_data = $this->model_groups->getGroupData();
        	$this->data['group_data'] = $group_data;

            $this->render_template('employees/create', $this->data);
        }	

		
	}

	

	public function edit($id = null)
	{
		if(!in_array('updateUser', $this->permission)) {
			redirect('dashboard', 'refresh');
		}

		if($id) {
			if(empty($this->input->post('no_employee'))) {
			 // false case

			  // false case
			  $employee_data = $this->model_employee->getEmployeeData($id);
			  $this->data['user_data'] = $employee_data;
			  $this->render_template('employees/edit', $this->data);	
			}else {
				$data = array(
					'no_employee' => $this->input->post('no_employee'),
					'nom' => $this->input->post('nom'),
					'prenom' => $this->input->post('prenom'),
					'credit' => $this->input->post('credit')
				
				);

				$update = $this->model_employee->edit($data, $id);
				$employee_data = $this->model_employee->getEmployeeData($id);
				$this->data['user_data'] = $employee_data;
				$this->render_template('employees/edit', $this->data);		
			        }	
				}


	}

	public function delete($id)
	{
		if(!in_array('deleteUser', $this->permission)) {
			redirect('dashboard', 'refresh');
		}

		if($id) {
			if($this->input->post('confirm')) {
					$delete = $this->model_employee->delete($id);
					if($delete == true) {
		        		$this->session->set_flashdata('success', 'Successfully removed');
		        		redirect('Controller_employee/', 'refresh');
		        	}
		        	else {
		        		$this->session->set_flashdata('error', 'Error occurred!!');
		        		redirect('Controller_Employee/delete/'.$id, 'refresh');
		        	}

			}	
			else {
				$this->data['id'] = $id;
				$this->render_template('employee/delete', $this->data);
			}	
		}
	}

	public function profile()
	{
		if(!in_array('viewProfile', $this->permission)) {
			redirect('dashboard', 'refresh');
		}

		$user_id = $this->session->userdata('id');

		$user_data = $this->model_users->getUserData($user_id);
		$this->data['user_data'] = $user_data;

		$user_group = $this->model_users->getUserGroup($user_id);
		$this->data['user_group'] = $user_group;

        $this->render_template('members/profile', $this->data);
	}

	public function setting()
	{	
		if(!in_array('updateSetting', $this->permission)) {
			redirect('dashboard', 'refresh');
		}

		$id = $this->session->userdata('id');

		if($id) {
			$this->form_validation->set_rules('username', 'Username', 'trim|required|min_length[5]|max_length[12]');
			$this->form_validation->set_rules('email', 'Email', 'trim|required');
			$this->form_validation->set_rules('fname', 'First name', 'trim|required');


			if ($this->form_validation->run() == TRUE) {
	            // true case
		        if(empty($this->input->post('password')) && empty($this->input->post('cpassword'))) {
		        	$data = array(
		        		'username' => $this->input->post('username'),
		        		'email' => $this->input->post('email'),
		        		'firstname' => $this->input->post('fname'),
		        		'lastname' => $this->input->post('lname'),
		        		'phone' => $this->input->post('phone'),
		        		'gender' => $this->input->post('gender'),
		        	);

		        	$update = $this->model_users->edit($data, $id);
		        	if($update == true) {
		        		$this->session->set_flashdata('success', 'Successfully updated');
		        		redirect('Controller_Members/setting/', 'refresh');
		        	}
		        	else {
		        		$this->session->set_flashdata('errors', 'Error occurred!!');
		        		redirect('Controller_Members/setting/', 'refresh');
		        	}
		        }
		        else {
		        	$this->form_validation->set_rules('password', 'Password', 'trim|required|min_length[8]');
					$this->form_validation->set_rules('cpassword', 'Confirm password', 'trim|required|matches[password]');

					if($this->form_validation->run() == TRUE) {

						$password = $this->password_hash($this->input->post('password'));

						$data = array(
			        		'username' => $this->input->post('username'),
			        		'password' => $password,
			        		'email' => $this->input->post('email'),
			        		'firstname' => $this->input->post('fname'),
			        		'lastname' => $this->input->post('lname'),
			        		'phone' => $this->input->post('phone'),
			        		'gender' => $this->input->post('gender'),
			        	);

			        	$update = $this->model_users->edit($data, $id, $this->input->post('groups'));
			        	if($update == true) {
			        		$this->session->set_flashdata('success', 'Successfully updated');
			        		redirect('Controller_Members/setting/', 'refresh');
			        	}
			        	else {
			        		$this->session->set_flashdata('errors', 'Error occurred!!');
			        		redirect('Controller_Members/setting/', 'refresh');
			        	}
					}
			        else {
			            // false case
			        	$user_data = $this->model_users->getUserData($id);
			        	$groups = $this->model_users->getUserGroup($id);

			        	$this->data['user_data'] = $user_data;
			        	$this->data['user_group'] = $groups;

			            $group_data = $this->model_groups->getGroupData();
			        	$this->data['group_data'] = $group_data;

						$this->render_template('members/setting', $this->data);	
			        }	

		        }
	        }
	        else {
	            // false case
	        	$user_data = $this->model_users->getUserData($id);
	        	$groups = $this->model_users->getUserGroup($id);

	        	$this->data['user_data'] = $user_data;
	        	$this->data['user_group'] = $groups;

	            $group_data = $this->model_groups->getGroupData();
	        	$this->data['group_data'] = $group_data;

				$this->render_template('members/setting', $this->data);	
	        }	
		}
	}


}