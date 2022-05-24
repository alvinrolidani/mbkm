<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{

	public function index()
	{
		$this->load->view('header');
		$this->load->view('home');
		$this->load->view('footer');
	}
	public function peta()
	{
		$data['kecamatan'] = $this->M_Peta->get();


		$this->load->view('templates/header_peta');
		$this->load->view('templates/sidebar_peta');
		$this->load->view('petasebaran/peta_sebaran', $data);
	}
	public function detail($id_kecamatan)
	{

		$where = ['id_kecamatan' => $id_kecamatan];
		$id = implode("','", $where);
		$data['inovasi'] = $this->db->query("SELECT inovasi.nama_inovasi, bidang_inovasi.nama_bidang_inovasi,tb_kecamatan.nama_kecamatan, inovator.nama_inovator FROM `inovasi` JOIN bidang_inovasi ON inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi INNER JOIN tb_kecamatan ON inovasi.id_kecamatan=tb_kecamatan.id_kecamatan INNER JOIN inovator ON inovasi.id_inovator = inovator.id_inovator WHERE inovasi.id_kecamatan=" . $id)->result();
		$this->load->view('templates/header_peta.php');
		$this->load->view('petasebaran/detail', $data);
	}
}
