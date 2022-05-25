<?php
defined('BASEPATH') or exit('No direct script access allowed');

class DetailInovasi extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_Peta', 'peta');
    }
    public function Kesehatan($id_kecamatan)
    {
        $where = ['id_kecamatan' => $id_kecamatan];
        $id = implode("','", $where);
        $query = $this->db->select('inovasi.nama_inovasi, bidang_inovasi.nama_bidang_inovasi,tb_kecamatan.nama_kecamatan, inovator.nama_inovator,kategori_inovator.nama_kategori_inovator')->from('inovasi')->join('bidang_inovasi', 'inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi', 'INNER')->join('tb_kecamatan', 'inovasi.id_kecamatan=tb_kecamatan.id_kecamatan', 'INNER')->join('inovator', 'inovasi.id_inovator = inovator.id_inovator', 'INNER')->join('kategori_inovator', 'inovator.id_kategori_inovator = kategori_inovator.id_kategori_inovator')->where('inovasi.id_kecamatan', $id)->where('nama_bidang_inovasi', 'kesehatan')->get();
        $data = [
            'inovasi' => $query->result(),
            'kecamatan' => $this->peta->namaKecamatan($where, 'tb_kecamatan')->result(),
        ];
        $this->load->view('templates/header_peta');
        $this->load->view('petasebaran/detail', $data);
    }
    public function Kuliner($id_kecamatan)
    {
        $where = ['id_kecamatan' => $id_kecamatan];
        $id = implode("','", $where);
        $query = $this->db->select('inovasi.nama_inovasi, bidang_inovasi.nama_bidang_inovasi,tb_kecamatan.nama_kecamatan, inovator.nama_inovator,kategori_inovator.nama_kategori_inovator')->from('inovasi')->join('bidang_inovasi', 'inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi', 'INNER')->join('tb_kecamatan', 'inovasi.id_kecamatan=tb_kecamatan.id_kecamatan', 'INNER')->join('inovator', 'inovasi.id_inovator = inovator.id_inovator', 'INNER')->join('kategori_inovator', 'inovator.id_kategori_inovator = kategori_inovator.id_kategori_inovator')->where('inovasi.id_kecamatan', $id)->where('nama_bidang_inovasi', 'kuliner')->get();
        $data = [
            'inovasi' => $query->result(),
            'kecamatan' => $this->peta->namaKecamatan($where, 'tb_kecamatan')->result(),
        ];
        $this->load->view('templates/header_peta');
        $this->load->view('petasebaran/detail', $data);
    }
    public function Pendidikan($id_kecamatan)
    {
        $where = ['id_kecamatan' => $id_kecamatan];
        $id = implode("','", $where);
        $query = $this->db->select('inovasi.nama_inovasi, bidang_inovasi.nama_bidang_inovasi,tb_kecamatan.nama_kecamatan, inovator.nama_inovator,kategori_inovator.nama_kategori_inovator')->from('inovasi')->join('bidang_inovasi', 'inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi', 'INNER')->join('tb_kecamatan', 'inovasi.id_kecamatan=tb_kecamatan.id_kecamatan', 'INNER')->join('inovator', 'inovasi.id_inovator = inovator.id_inovator', 'INNER')->join('kategori_inovator', 'inovator.id_kategori_inovator = kategori_inovator.id_kategori_inovator')->where('inovasi.id_kecamatan', $id)->where('nama_bidang_inovasi', 'pendidikan')->get();
        $data = [
            'inovasi' => $query->result(),
            'kecamatan' => $this->peta->namaKecamatan($where, 'tb_kecamatan')->result(),
        ];
        $this->load->view('templates/header_peta');
        $this->load->view('petasebaran/detail', $data);
    }
    public function PemberantasanKemiskinan($id_kecamatan)
    {
        $where = ['id_kecamatan' => $id_kecamatan];
        $id = implode("','", $where);
        $query = $this->db->select('inovasi.nama_inovasi, bidang_inovasi.nama_bidang_inovasi,tb_kecamatan.nama_kecamatan, inovator.nama_inovator,kategori_inovator.nama_kategori_inovator')->from('inovasi')->join('bidang_inovasi', 'inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi', 'INNER')->join('tb_kecamatan', 'inovasi.id_kecamatan=tb_kecamatan.id_kecamatan', 'INNER')->join('inovator', 'inovasi.id_inovator = inovator.id_inovator', 'INNER')->join('kategori_inovator', 'inovator.id_kategori_inovator = kategori_inovator.id_kategori_inovator')->where('inovasi.id_kecamatan', $id)->where('nama_bidang_inovasi', 'pemberantasan kemiskinan')->get();
        $data = [
            'inovasi' => $query->result(),
            'kecamatan' => $this->peta->namaKecamatan($where, 'tb_kecamatan')->result(),
        ];
        $this->load->view('templates/header_peta');
        $this->load->view('petasebaran/detail', $data);
    }
    public function PelayananMasyarakat($id_kecamatan)
    {
        $where = ['id_kecamatan' => $id_kecamatan];
        $id = implode("','", $where);
        $query = $this->db->select('inovasi.nama_inovasi, bidang_inovasi.nama_bidang_inovasi,tb_kecamatan.nama_kecamatan, inovator.nama_inovator,kategori_inovator.nama_kategori_inovator')->from('inovasi')->join('bidang_inovasi', 'inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi', 'INNER')->join('tb_kecamatan', 'inovasi.id_kecamatan=tb_kecamatan.id_kecamatan', 'INNER')->join('inovator', 'inovasi.id_inovator = inovator.id_inovator', 'INNER')->join('kategori_inovator', 'inovator.id_kategori_inovator = kategori_inovator.id_kategori_inovator')->where('inovasi.id_kecamatan', $id)->where('nama_bidang_inovasi', 'Pelayanan Masyarakat')->get();
        $data = [
            'inovasi' => $query->result(),
            'kecamatan' => $this->peta->namaKecamatan($where, 'tb_kecamatan')->result(),
        ];
        $this->load->view('templates/header_peta');
        $this->load->view('petasebaran/detail', $data);
    }
    public function Lingkungan($id_kecamatan)
    {
        $where = ['id_kecamatan' => $id_kecamatan];
        $id = implode("','", $where);
        $query = $this->db->select('inovasi.nama_inovasi, bidang_inovasi.nama_bidang_inovasi,tb_kecamatan.nama_kecamatan, inovator.nama_inovator,kategori_inovator.nama_kategori_inovator')->from('inovasi')->join('bidang_inovasi', 'inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi', 'INNER')->join('tb_kecamatan', 'inovasi.id_kecamatan=tb_kecamatan.id_kecamatan', 'INNER')->join('inovator', 'inovasi.id_inovator = inovator.id_inovator', 'INNER')->join('kategori_inovator', 'inovator.id_kategori_inovator = kategori_inovator.id_kategori_inovator')->where('inovasi.id_kecamatan', $id)->where('nama_bidang_inovasi', 'lingkungan')->get();
        $data = [
            'inovasi' => $query->result(),
            'kecamatan' => $this->peta->namaKecamatan($where, 'tb_kecamatan')->result(),
        ];
        $this->load->view('templates/header_peta');
        $this->load->view('petasebaran/detail', $data);
    }
    public function Pertanian($id_kecamatan)
    {
        $where = ['id_kecamatan' => $id_kecamatan];
        $id = implode("','", $where);
        $query = $this->db->select('inovasi.nama_inovasi, bidang_inovasi.nama_bidang_inovasi,tb_kecamatan.nama_kecamatan, inovator.nama_inovator,kategori_inovator.nama_kategori_inovator')->from('inovasi')->join('bidang_inovasi', 'inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi', 'INNER')->join('tb_kecamatan', 'inovasi.id_kecamatan=tb_kecamatan.id_kecamatan', 'INNER')->join('inovator', 'inovasi.id_inovator = inovator.id_inovator', 'INNER')->join('kategori_inovator', 'inovator.id_kategori_inovator = kategori_inovator.id_kategori_inovator')->where('inovasi.id_kecamatan', $id)->where('nama_bidang_inovasi', 'pertanian')->get();
        $data = [
            'inovasi' => $query->result(),
            'kecamatan' => $this->peta->namaKecamatan($where, 'tb_kecamatan')->result(),
        ];
        $this->load->view('templates/header_peta');
        $this->load->view('petasebaran/detail', $data);
    }
}
