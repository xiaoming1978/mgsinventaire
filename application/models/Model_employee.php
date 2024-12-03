<?php 

class Model_employee extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
	}

	public function getEmployeeData($userId = null) 
	{
		if($userId) {
			$sql = "SELECT * FROM employee WHERE Personid = ?";
			$query = $this->db->query($sql, array($userId));
			return $query->row_array();
		}

		$sql = "SELECT * FROM employee WHERE no_employee != ?";
		$query = $this->db->query($sql, array(1));
		return $query->result_array();
	}

	
	public function create($data = '')
	{

		
			$create = $this->db->insert('employee', $data);

			$user_id = $this->db->insert_id();

			return ($create == true ) ? true : false;
	
	}

	public function edit($data = array(), $id = null)
	{
		$this->db->where('Personid', $id);
		$update = $this->db->update('employee', $data);

		return ($update == true) ? true : false;	
	}

	public function delete($id)
	{
		$this->db->where('Personid', $id);
		$delete = $this->db->delete('employee');
		return ($delete == true) ? true : false;
	}

	public function countTotalUsers()
	{
		$sql = "SELECT * FROM users";
		$query = $this->db->query($sql);
		return $query->num_rows();
	}
	
}