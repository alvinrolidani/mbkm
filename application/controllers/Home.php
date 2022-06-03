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
		$idi = $this->input->get('kategoriinovator');
		$id = $this->input->get('kategoriinovasi');
		$get = $this->db->get('tb_kecamatan')->result();
		foreach ($get as $a) {
			$inovasi = $this->db->query("SELECT * FROM inovasi JOIN inovator ON inovasi.id_inovator=inovator.id_inovator INNER JOIN kategori_inovator ON inovator.id_kategori_inovator=kategori_inovator.id_kategori_inovator JOIN bidang_inovasi ON inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi WHERE kategori_inovator.nama_kategori_inovator= '" . $idi . "'AND inovasi.id_kecamatan='" . $a->id_kecamatan . "' AND bidang_inovasi.nama_bidang_inovasi ='" . $id . "'");
			$data[$a->nama_kecamatan] = $inovasi->num_rows();
		}
		$data['id'] = $id;
		$data['idi'] = $idi;
		$data['inovasi'] = $this->input->get('kategoriinovasi');
		$data['inovator'] = $this->input->get('kategoriinovator');

		$data['kecamatan'] = $this->M_Peta->get();
		$data['inovasi'] = $this->db->query("SELECT * FROM inovasi JOIN inovator ON inovasi.id_inovator=inovator.id_inovator INNER JOIN kategori_inovator ON inovator.id_kategori_inovator=kategori_inovator.id_kategori_inovator JOIN bidang_inovasi ON bidang_inovasi.id_bidang_inovasi = inovasi.id_bidang_inovasi");


		$this->load->view('templates/header_peta');
		$this->load->view('templates/sidebar_peta');
		$this->load->view('petasebaran/peta_sebaran', $data);
	}
	public function detail($id_kecamatan)
	{
		$where = ['id_kecamatan' => $id_kecamatan];
		$id = implode("','", $where);
		$inovasi = $this->db->select('inovasi.deskripsi,inovasi.manfaat_inovasi,inovasi.foto_inovasi,inovasi.foto_inovator,inovator.tgl_lahir,inovator.id_inovator,inovasi.id_inovasi,inovasi.nama_inovasi, bidang_inovasi.nama_bidang_inovasi,tb_kecamatan.nama_kecamatan, inovator.nama_inovator,kategori_inovator.nama_kategori_inovator,inovasi.created_at')->from('inovasi')->join('bidang_inovasi', 'inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi', 'INNER')->join('tb_kecamatan', 'inovasi.id_kecamatan=tb_kecamatan.id_kecamatan', 'INNER')->join('inovator', 'inovasi.id_inovator = inovator.id_inovator', 'INNER')->join('kategori_inovator', 'inovator.id_kategori_inovator = kategori_inovator.id_kategori_inovator')->where('inovasi.id_kecamatan', $id)->get();

		$inovator = $this->db->select('inovator.id_inovator,instansi.id_instansi,inovasi.foto_inovator,inovator.nama_inovator,inovator.email,inovator.alamat,kategori_inovator.nama_kategori_inovator,instansi.nama_instansi')->from('inovator')->join('inovasi', 'inovator.id_inovator=inovasi.id_inovasi')->join('kategori_inovator', 'inovator.id_kategori_inovator=kategori_inovator.id_kategori_inovator', 'INNER')->join('instansi', 'inovator.id_instansi=instansi.id_instansi', 'LEFT')->where('inovasi.id_kecamatan', $id)->get();
		$data['inovasi'] = $inovasi->result();
		$data['inovator'] = $inovator->result();
		$data['kecamatan'] = $this->peta->namaKecamatan($where, 'tb_kecamatan')->result();
		$this->load->view('templates/header_peta.php');
		$this->load->view('petasebaran/detail', $data);
	}
	public function data($jenis = 'kecamatan', $kategori = 'inovasi')
	{
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
		} else if ($kategori == 'inovasi') {
		}
	}
	public function getkategori()
	{
		header('Content-Type:application/json');
		$response = [];
		$idi = $this->input->get('kategoriinovator');
		$id = $this->input->get('kategoriinovasi');
		// $ino = $this->db->select('*')->from('bidang_inovasi')->where('nama_bidang_inovasi', $id)->get()->row();
		// $kategori = $this->db->select('*')->from('kategori_inovator')->where('nama_kategori_inovator', $idi)->get()->row();
		// $idbid = $ino->id_bidang_inovasi;
		// $idinovator = $kategori->id_kategori_inovator;

		$get = $this->db->get('tb_kecamatan')->result();
		foreach ($get as $a) {
			$inovasi = $this->db->query("SELECT * FROM inovasi JOIN inovator ON inovasi.id_inovator=inovator.id_inovator INNER JOIN kategori_inovator ON inovator.id_kategori_inovator=kategori_inovator.id_kategori_inovator JOIN bidang_inovasi ON inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi WHERE kategori_inovator.nama_kategori_inovator= '" . $idi . "'AND inovasi.id_kecamatan='" . $a->id_kecamatan . "' AND bidang_inovasi.nama_bidang_inovasi ='" . $id . "'");
			$data[$a->nama_kecamatan] = $inovasi->num_rows();
		}
		$response[] = $data;
		echo "var kategori=" . json_encode($response, JSON_PRETTY_PRINT);
	}
}
