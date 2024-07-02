<?php
defined('BASEPATH') or exit('No direct script access allowed');

class petakhusus extends CI_Controller
{
	public function index()
	{
		$inovator = $this->input->get('kategoriinovator');
		$inovasi = $this->input->get('kategoriinovasi');
		$tahun = $this->input->get('tahun');

		$datatahun = "";
		for ($i = 2016; $i <= date('Y'); $i++) {
			$tahun = $i;
			$datatahun .= "'.$tahun'" . ",";
		}
		$data['datatahun'] = $datatahun;
		$data['kecamatan'] = $this->M_Peta->get();
		$this->load->view('templates/header_petakhusus');
		$this->load->view('templates/sidebar_petakhusus');
		$this->load->view('templates/footer_peta');
		$this->load->view('petasebaran/peta_sebaran', $data);
	}
}
