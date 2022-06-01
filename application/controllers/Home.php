<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_Peta', 'peta');
	}
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
		$query = $this->db->select('inovator.tgl_lahir,inovator.id_inovator,inovasi.id_inovasi,inovasi.nama_inovasi, bidang_inovasi.nama_bidang_inovasi,tb_kecamatan.nama_kecamatan, inovator.nama_inovator,kategori_inovator.nama_kategori_inovator')->from('inovasi')->join('bidang_inovasi', 'inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi', 'INNER')->join('tb_kecamatan', 'inovasi.id_kecamatan=tb_kecamatan.id_kecamatan', 'INNER')->join('inovator', 'inovasi.id_inovator = inovator.id_inovator', 'INNER')->join('kategori_inovator', 'inovator.id_kategori_inovator = kategori_inovator.id_kategori_inovator')->where('inovasi.id_kecamatan', $id)->get();

		$data['inovasi'] = $query->result();
		$data['kecamatan'] = $this->peta->namaKecamatan($where, 'tb_kecamatan')->result();
		$this->load->view('templates/header_peta.php');
		$this->load->view('petasebaran/detail', $data);
	}
	public function data($jenis = 'kecamatan')
	{
		header('Content-Type: application/json');
		$response = [];
		$query = $this->db->select('inovasi.created_at, bidang_inovasi.id_bidang_inovasi,inovator.tgl_lahir,inovator.id_inovator,inovasi.id_inovasi,inovasi.nama_inovasi, bidang_inovasi.nama_bidang_inovasi,tb_kecamatan.nama_kecamatan, inovator.nama_inovator,kategori_inovator.nama_kategori_inovator')->from('inovasi')->join('bidang_inovasi', 'inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi', 'INNER')->join('tb_kecamatan', 'inovasi.id_kecamatan=tb_kecamatan.id_kecamatan', 'INNER')->join('inovator', 'inovasi.id_inovator = inovator.id_inovator', 'INNER')->join('kategori_inovator', 'inovator.id_kategori_inovator = kategori_inovator.id_kategori_inovator')->get();
		if ($jenis == 'kecamatan') {
			$getKecamatan = $this->db->get('tb_kecamatan');
			foreach ($getKecamatan->result() as $row) {
				$data = null;
				$data['id_kecamatan'] = $row->id_kecamatan;
				$data['shp'] = $row->shp;
				$data['nama_kecamatan'] = $row->nama_kecamatan;
				$response[] = $data;
			}
			echo "var kecamatan=" . json_encode($response, JSON_PRETTY_PRINT);
		} else {

			foreach ($query->result() as $row) {
				$data = [
					'id_inovasi' => $row->id_inovasi,
					'inovasi' => [
						'nama_bidang_inovasi' => $row->nama_bidang_inovasi,
						'nama_inovasi' => $row->nama_inovasi,
						'inovator' => $row->nama_inovator,
						'created_at' => date('Y', strtotime($row->created_at))
					]
				];
				$response[] = $data;
			}
			echo "var inovasi =" . json_encode($response, JSON_PRETTY_PRINT);
		}
	}
}
