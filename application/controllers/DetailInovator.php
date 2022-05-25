<?php
defined('BASEPATH') or exit('No direct script access allowed');

class DetailInovator extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_Peta', 'peta');
    }
    public function Mahasiswa($id_kecamatan)
    {
        $where = ['id_kecamatan' => $id_kecamatan];
        $id = implode("','", $where);
        $query = $this->db->select('inovasi.nama_inovasi, bidang_inovasi.nama_bidang_inovasi,tb_kecamatan.nama_kecamatan, inovator.nama_inovator,kategori_inovator.nama_kategori_inovator')->from('inovasi')->join('bidang_inovasi', 'inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi', 'INNER')->join('tb_kecamatan', 'inovasi.id_kecamatan=tb_kecamatan.id_kecamatan', 'INNER')->join('inovator', 'inovasi.id_inovator = inovator.id_inovator', 'INNER')->join('kategori_inovator', 'inovator.id_kategori_inovator = kategori_inovator.id_kategori_inovator')->where('inovasi.id_kecamatan', $id)->where('inovator.id_kategori_inovator', 1)->get();
        $data = [
            'inovasi' => $query->result(),
            'kecamatan' => $this->peta->namaKecamatan($where, 'tb_kecamatan')->result(),
        ];
        $this->load->view('templates/header_peta');
        $this->load->view('petasebaran/detail', $data);
    }
    public function SekolahMenegahPertama($id_kecamatan)
    {
        $where = ['id_kecamatan' => $id_kecamatan];
        $id = implode("','", $where);
        $query = $this->db->select('inovasi.nama_inovasi, bidang_inovasi.nama_bidang_inovasi,tb_kecamatan.nama_kecamatan, inovator.nama_inovator,kategori_inovator.nama_kategori_inovator')->from('inovasi')->join('bidang_inovasi', 'inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi', 'INNER')->join('tb_kecamatan', 'inovasi.id_kecamatan=tb_kecamatan.id_kecamatan', 'INNER')->join('inovator', 'inovasi.id_inovator = inovator.id_inovator', 'INNER')->join('kategori_inovator', 'inovator.id_kategori_inovator = kategori_inovator.id_kategori_inovator')->where('inovasi.id_kecamatan', $id)->where('inovator.id_kategori_inovator', 2)->get();
        $data = [
            'inovasi' => $query->result(),
            'kecamatan' => $this->peta->namaKecamatan($where, 'tb_kecamatan')->result(),
        ];
        $this->load->view('templates/header_peta');
        $this->load->view('petasebaran/detail', $data);
    }
    public function SMASederajat($id_kecamatan)
    {
        $where = ['id_kecamatan' => $id_kecamatan];
        $id = implode("','", $where);
        $query = $this->db->select('inovasi.nama_inovasi, bidang_inovasi.nama_bidang_inovasi,tb_kecamatan.nama_kecamatan, inovator.nama_inovator,kategori_inovator.nama_kategori_inovator')->from('inovasi')->join('bidang_inovasi', 'inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi', 'INNER')->join('tb_kecamatan', 'inovasi.id_kecamatan=tb_kecamatan.id_kecamatan', 'INNER')->join('inovator', 'inovasi.id_inovator = inovator.id_inovator', 'INNER')->join('kategori_inovator', 'inovator.id_kategori_inovator = kategori_inovator.id_kategori_inovator')->where('inovasi.id_kecamatan', $id)->where('inovator.id_kategori_inovator', 3)->get();
        $data = [
            'inovasi' => $query->result(),
            'kecamatan' => $this->peta->namaKecamatan($where, 'tb_kecamatan')->result(),
        ];
        $this->load->view('templates/header_peta');
        $this->load->view('petasebaran/detail', $data);
    }
    public function DosenPeneliti($id_kecamatan)
    {
        $where = ['id_kecamatan' => $id_kecamatan];
        $id = implode("','", $where);
        $query = $this->db->select('inovasi.nama_inovasi, bidang_inovasi.nama_bidang_inovasi,tb_kecamatan.nama_kecamatan, inovator.nama_inovator,kategori_inovator.nama_kategori_inovator')->from('inovasi')->join('bidang_inovasi', 'inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi', 'INNER')->join('tb_kecamatan', 'inovasi.id_kecamatan=tb_kecamatan.id_kecamatan', 'INNER')->join('inovator', 'inovasi.id_inovator = inovator.id_inovator', 'INNER')->join('kategori_inovator', 'inovator.id_kategori_inovator = kategori_inovator.id_kategori_inovator')->where('inovasi.id_kecamatan', $id)->where('inovator.id_kategori_inovator', 4)->get();
        $data = [
            'inovasi' => $query->result(),
            'kecamatan' => $this->peta->namaKecamatan($where, 'tb_kecamatan')->result(),
        ];
        $this->load->view('templates/header_peta');
        $this->load->view('petasebaran/detail', $data);
    }
    public function Desa($id_kecamatan)
    {
        $where = ['id_kecamatan' => $id_kecamatan];
        $id = implode("','", $where);
        $query = $this->db->select('inovasi.nama_inovasi, bidang_inovasi.nama_bidang_inovasi,tb_kecamatan.nama_kecamatan, inovator.nama_inovator,kategori_inovator.nama_kategori_inovator')->from('inovasi')->join('bidang_inovasi', 'inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi', 'INNER')->join('tb_kecamatan', 'inovasi.id_kecamatan=tb_kecamatan.id_kecamatan', 'INNER')->join('inovator', 'inovasi.id_inovator = inovator.id_inovator', 'INNER')->join('kategori_inovator', 'inovator.id_kategori_inovator = kategori_inovator.id_kategori_inovator')->where('inovasi.id_kecamatan', $id)->where('inovator.id_kategori_inovator', 5)->get();
        $data = [
            'inovasi' => $query->result(),
            'kecamatan' => $this->peta->namaKecamatan($where, 'tb_kecamatan')->result(),
        ];
        $this->load->view('templates/header_peta');
        $this->load->view('petasebaran/detail', $data);
    }
    public function Kecamatan($id_kecamatan)
    {
        $where = ['id_kecamatan' => $id_kecamatan];
        $id = implode("','", $where);
        $query = $this->db->select('inovasi.nama_inovasi, bidang_inovasi.nama_bidang_inovasi,tb_kecamatan.nama_kecamatan, inovator.nama_inovator,kategori_inovator.nama_kategori_inovator')->from('inovasi')->join('bidang_inovasi', 'inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi', 'INNER')->join('tb_kecamatan', 'inovasi.id_kecamatan=tb_kecamatan.id_kecamatan', 'INNER')->join('inovator', 'inovasi.id_inovator = inovator.id_inovator', 'INNER')->join('kategori_inovator', 'inovator.id_kategori_inovator = kategori_inovator.id_kategori_inovator')->where('inovasi.id_kecamatan', $id)->where('inovator.id_kategori_inovator', 6)->get();
        $data = [
            'inovasi' => $query->result(),
            'kecamatan' => $this->peta->namaKecamatan($where, 'tb_kecamatan')->result(),
        ];
        $this->load->view('templates/header_peta');
        $this->load->view('petasebaran/detail', $data);
    }
    public function PerangkatDesa($id_kecamatan)
    {
        $where = ['id_kecamatan' => $id_kecamatan];
        $id = implode("','", $where);
        $query = $this->db->select('inovasi.nama_inovasi, bidang_inovasi.nama_bidang_inovasi,tb_kecamatan.nama_kecamatan, inovator.nama_inovator,kategori_inovator.nama_kategori_inovator')->from('inovasi')->join('bidang_inovasi', 'inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi', 'INNER')->join('tb_kecamatan', 'inovasi.id_kecamatan=tb_kecamatan.id_kecamatan', 'INNER')->join('inovator', 'inovasi.id_inovator = inovator.id_inovator', 'INNER')->join('kategori_inovator', 'inovator.id_kategori_inovator = kategori_inovator.id_kategori_inovator')->where('inovasi.id_kecamatan', $id)->where('inovator.id_kategori_inovator', 7)->get();
        $data = [
            'inovasi' => $query->result(),
            'kecamatan' => $this->peta->namaKecamatan($where, 'tb_kecamatan')->result(),
        ];
        $this->load->view('templates/header_peta');
        $this->load->view('petasebaran/detail', $data);
    }
    public function Masyarakat($id_kecamatan)
    {
        $where = ['id_kecamatan' => $id_kecamatan];
        $id = implode("','", $where);
        $query = $this->db->select('inovasi.nama_inovasi, bidang_inovasi.nama_bidang_inovasi,tb_kecamatan.nama_kecamatan, inovator.nama_inovator,kategori_inovator.nama_kategori_inovator')->from('inovasi')->join('bidang_inovasi', 'inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi', 'INNER')->join('tb_kecamatan', 'inovasi.id_kecamatan=tb_kecamatan.id_kecamatan', 'INNER')->join('inovator', 'inovasi.id_inovator = inovator.id_inovator', 'INNER')->join('kategori_inovator', 'inovator.id_kategori_inovator = kategori_inovator.id_kategori_inovator')->where('inovasi.id_kecamatan', $id)->where('inovator.id_kategori_inovator', 8)->get();
        $data = [
            'inovasi' => $query->result(),
            'kecamatan' => $this->peta->namaKecamatan($where, 'tb_kecamatan')->result(),
        ];
        $this->load->view('templates/header_peta');
        $this->load->view('petasebaran/detail', $data);
    }
}
