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
        $inovasi = $this->db->select('inovasi.deskripsi,inovasi.manfaat_inovasi,inovasi.foto_inovasi,inovasi.foto_inovator,inovator.tgl_lahir,inovator.id_inovator,inovasi.id_inovasi,inovasi.nama_inovasi, bidang_inovasi.nama_bidang_inovasi,tb_kecamatan.nama_kecamatan, inovator.nama_inovator,kategori_inovator.nama_kategori_inovator,inovasi.created_at')->from('inovasi')->join('bidang_inovasi', 'inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi', 'INNER')->join('tb_kecamatan', 'inovasi.id_kecamatan=tb_kecamatan.id_kecamatan', 'INNER')->join('inovator', 'inovasi.id_inovator = inovator.id_inovator', 'INNER')->join('kategori_inovator', 'inovator.id_kategori_inovator = kategori_inovator.id_kategori_inovator')->where('inovasi.id_kecamatan', $id)->get();

        $inovator = $this->db->select('inovator.id_inovator,instansi.id_instansi,inovasi.foto_inovator,inovator.nama_inovator,inovator.email,inovator.alamat,kategori_inovator.nama_kategori_inovator,instansi.nama_instansi')->from('inovator')->join('inovasi', 'inovator.id_inovator=inovasi.id_inovasi')->join('kategori_inovator', 'inovator.id_kategori_inovator=kategori_inovator.id_kategori_inovator', 'INNER')->join('instansi', 'inovator.id_instansi=instansi.id_instansi', 'LEFT')->where('inovasi.id_kecamatan', $id)->get();
        $data['inovasi'] = $inovasi->result();
        $data['inovator'] = $inovator->result();
        $data['kecamatan'] = $this->peta->namaKecamatan($where, 'tb_kecamatan')->result();
        $this->load->view('templates/header_peta');
        $this->load->view('petasebaran/detail', $data);
    }
    public function SekolahMenegahPertama($id_kecamatan)
    {
        $where = ['id_kecamatan' => $id_kecamatan];
        $id = implode("','", $where);
        $inovasi = $this->db->select('inovasi.deskripsi,inovasi.manfaat_inovasi,inovasi.foto_inovasi,inovasi.foto_inovator,inovator.tgl_lahir,inovator.id_inovator,inovasi.id_inovasi,inovasi.nama_inovasi, bidang_inovasi.nama_bidang_inovasi,tb_kecamatan.nama_kecamatan, inovator.nama_inovator,kategori_inovator.nama_kategori_inovator,inovasi.created_at')->from('inovasi')->join('bidang_inovasi', 'inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi', 'INNER')->join('tb_kecamatan', 'inovasi.id_kecamatan=tb_kecamatan.id_kecamatan', 'INNER')->join('inovator', 'inovasi.id_inovator = inovator.id_inovator', 'INNER')->join('kategori_inovator', 'inovator.id_kategori_inovator = kategori_inovator.id_kategori_inovator')->where('inovasi.id_kecamatan', $id)->get();

        $inovator = $this->db->select('inovator.id_inovator,instansi.id_instansi,inovasi.foto_inovator,inovator.nama_inovator,inovator.email,inovator.alamat,kategori_inovator.nama_kategori_inovator,instansi.nama_instansi')->from('inovator')->join('inovasi', 'inovator.id_inovator=inovasi.id_inovasi')->join('kategori_inovator', 'inovator.id_kategori_inovator=kategori_inovator.id_kategori_inovator', 'INNER')->join('instansi', 'inovator.id_instansi=instansi.id_instansi', 'LEFT')->where('inovasi.id_kecamatan', $id)->get();
        $data['inovasi'] = $inovasi->result();
        $data['inovator'] = $inovator->result();
        $data['kecamatan'] = $this->peta->namaKecamatan($where, 'tb_kecamatan')->result();
        $this->load->view('templates/header_peta');
        $this->load->view('petasebaran/detail', $data);
    }
    public function SMASederajat($id_kecamatan)
    {
        $where = ['id_kecamatan' => $id_kecamatan];
        $id = implode("','", $where);
        $inovasi = $this->db->select('inovasi.deskripsi,inovasi.manfaat_inovasi,inovasi.foto_inovasi,inovasi.foto_inovator,inovator.tgl_lahir,inovator.id_inovator,inovasi.id_inovasi,inovasi.nama_inovasi, bidang_inovasi.nama_bidang_inovasi,tb_kecamatan.nama_kecamatan, inovator.nama_inovator,kategori_inovator.nama_kategori_inovator,inovasi.created_at')->from('inovasi')->join('bidang_inovasi', 'inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi', 'INNER')->join('tb_kecamatan', 'inovasi.id_kecamatan=tb_kecamatan.id_kecamatan', 'INNER')->join('inovator', 'inovasi.id_inovator = inovator.id_inovator', 'INNER')->join('kategori_inovator', 'inovator.id_kategori_inovator = kategori_inovator.id_kategori_inovator')->where('inovasi.id_kecamatan', $id)->get();

        $inovator = $this->db->select('inovator.id_inovator,instansi.id_instansi,inovasi.foto_inovator,inovator.nama_inovator,inovator.email,inovator.alamat,kategori_inovator.nama_kategori_inovator,instansi.nama_instansi')->from('inovator')->join('inovasi', 'inovator.id_inovator=inovasi.id_inovasi')->join('kategori_inovator', 'inovator.id_kategori_inovator=kategori_inovator.id_kategori_inovator', 'INNER')->join('instansi', 'inovator.id_instansi=instansi.id_instansi', 'LEFT')->where('inovasi.id_kecamatan', $id)->get();
        $data['inovasi'] = $inovasi->result();
        $data['inovator'] = $inovator->result();
        $data['kecamatan'] = $this->peta->namaKecamatan($where, 'tb_kecamatan')->result();
        $this->load->view('templates/header_peta');
        $this->load->view('petasebaran/detail', $data);
    }
    public function DosenPeneliti($id_kecamatan)
    {
        $where = ['id_kecamatan' => $id_kecamatan];
        $id = implode("','", $where);
        $inovasi = $this->db->select('inovasi.deskripsi,inovasi.manfaat_inovasi,inovasi.foto_inovasi,inovasi.foto_inovator,inovator.tgl_lahir,inovator.id_inovator,inovasi.id_inovasi,inovasi.nama_inovasi, bidang_inovasi.nama_bidang_inovasi,tb_kecamatan.nama_kecamatan, inovator.nama_inovator,kategori_inovator.nama_kategori_inovator,inovasi.created_at')->from('inovasi')->join('bidang_inovasi', 'inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi', 'INNER')->join('tb_kecamatan', 'inovasi.id_kecamatan=tb_kecamatan.id_kecamatan', 'INNER')->join('inovator', 'inovasi.id_inovator = inovator.id_inovator', 'INNER')->join('kategori_inovator', 'inovator.id_kategori_inovator = kategori_inovator.id_kategori_inovator')->where('inovasi.id_kecamatan', $id)->get();

        $inovator = $this->db->select('inovator.id_inovator,instansi.id_instansi,inovasi.foto_inovator,inovator.nama_inovator,inovator.email,inovator.alamat,kategori_inovator.nama_kategori_inovator,instansi.nama_instansi')->from('inovator')->join('inovasi', 'inovator.id_inovator=inovasi.id_inovasi')->join('kategori_inovator', 'inovator.id_kategori_inovator=kategori_inovator.id_kategori_inovator', 'INNER')->join('instansi', 'inovator.id_instansi=instansi.id_instansi', 'LEFT')->where('inovasi.id_kecamatan', $id)->get();
        $data['inovasi'] = $inovasi->result();
        $data['inovator'] = $inovator->result();
        $data['kecamatan'] = $this->peta->namaKecamatan($where, 'tb_kecamatan')->result();
        $this->load->view('templates/header_peta');
        $this->load->view('petasebaran/detail', $data);
    }
    public function Desa($id_kecamatan)
    {
        $where = ['id_kecamatan' => $id_kecamatan];
        $id = implode("','", $where);
        $inovasi = $this->db->select('inovasi.deskripsi,inovasi.manfaat_inovasi,inovasi.foto_inovasi,inovasi.foto_inovator,inovator.tgl_lahir,inovator.id_inovator,inovasi.id_inovasi,inovasi.nama_inovasi, bidang_inovasi.nama_bidang_inovasi,tb_kecamatan.nama_kecamatan, inovator.nama_inovator,kategori_inovator.nama_kategori_inovator,inovasi.created_at')->from('inovasi')->join('bidang_inovasi', 'inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi', 'INNER')->join('tb_kecamatan', 'inovasi.id_kecamatan=tb_kecamatan.id_kecamatan', 'INNER')->join('inovator', 'inovasi.id_inovator = inovator.id_inovator', 'INNER')->join('kategori_inovator', 'inovator.id_kategori_inovator = kategori_inovator.id_kategori_inovator')->where('inovasi.id_kecamatan', $id)->get();

        $inovator = $this->db->select('inovator.id_inovator,instansi.id_instansi,inovasi.foto_inovator,inovator.nama_inovator,inovator.email,inovator.alamat,kategori_inovator.nama_kategori_inovator,instansi.nama_instansi')->from('inovator')->join('inovasi', 'inovator.id_inovator=inovasi.id_inovasi')->join('kategori_inovator', 'inovator.id_kategori_inovator=kategori_inovator.id_kategori_inovator', 'INNER')->join('instansi', 'inovator.id_instansi=instansi.id_instansi', 'LEFT')->where('inovasi.id_kecamatan', $id)->get();
        $data['inovasi'] = $inovasi->result();
        $data['inovator'] = $inovator->result();
        $data['kecamatan'] = $this->peta->namaKecamatan($where, 'tb_kecamatan')->result();
        $this->load->view('templates/header_peta');
        $this->load->view('petasebaran/detail', $data);
    }
    public function Kecamatan($id_kecamatan)
    {
        $where = ['id_kecamatan' => $id_kecamatan];
        $id = implode("','", $where);
        $inovasi = $this->db->select('inovasi.deskripsi,inovasi.manfaat_inovasi,inovasi.foto_inovasi,inovasi.foto_inovator,inovator.tgl_lahir,inovator.id_inovator,inovasi.id_inovasi,inovasi.nama_inovasi, bidang_inovasi.nama_bidang_inovasi,tb_kecamatan.nama_kecamatan, inovator.nama_inovator,kategori_inovator.nama_kategori_inovator,inovasi.created_at')->from('inovasi')->join('bidang_inovasi', 'inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi', 'INNER')->join('tb_kecamatan', 'inovasi.id_kecamatan=tb_kecamatan.id_kecamatan', 'INNER')->join('inovator', 'inovasi.id_inovator = inovator.id_inovator', 'INNER')->join('kategori_inovator', 'inovator.id_kategori_inovator = kategori_inovator.id_kategori_inovator')->where('inovasi.id_kecamatan', $id)->get();

        $inovator = $this->db->select('inovator.id_inovator,instansi.id_instansi,inovasi.foto_inovator,inovator.nama_inovator,inovator.email,inovator.alamat,kategori_inovator.nama_kategori_inovator,instansi.nama_instansi')->from('inovator')->join('inovasi', 'inovator.id_inovator=inovasi.id_inovasi')->join('kategori_inovator', 'inovator.id_kategori_inovator=kategori_inovator.id_kategori_inovator', 'INNER')->join('instansi', 'inovator.id_instansi=instansi.id_instansi', 'LEFT')->where('inovasi.id_kecamatan', $id)->get();
        $data['inovasi'] = $inovasi->result();
        $data['inovator'] = $inovator->result();
        $data['kecamatan'] = $this->peta->namaKecamatan($where, 'tb_kecamatan')->result();
        $this->load->view('templates/header_peta');
        $this->load->view('petasebaran/detail', $data);
    }
    public function PerangkatDesa($id_kecamatan)
    {
        $where = ['id_kecamatan' => $id_kecamatan];
        $id = implode("','", $where);
        $inovasi = $this->db->select('inovasi.deskripsi,inovasi.manfaat_inovasi,inovasi.foto_inovasi,inovasi.foto_inovator,inovator.tgl_lahir,inovator.id_inovator,inovasi.id_inovasi,inovasi.nama_inovasi, bidang_inovasi.nama_bidang_inovasi,tb_kecamatan.nama_kecamatan, inovator.nama_inovator,kategori_inovator.nama_kategori_inovator,inovasi.created_at')->from('inovasi')->join('bidang_inovasi', 'inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi', 'INNER')->join('tb_kecamatan', 'inovasi.id_kecamatan=tb_kecamatan.id_kecamatan', 'INNER')->join('inovator', 'inovasi.id_inovator = inovator.id_inovator', 'INNER')->join('kategori_inovator', 'inovator.id_kategori_inovator = kategori_inovator.id_kategori_inovator')->where('inovasi.id_kecamatan', $id)->get();

        $inovator = $this->db->select('inovator.id_inovator,instansi.id_instansi,inovasi.foto_inovator,inovator.nama_inovator,inovator.email,inovator.alamat,kategori_inovator.nama_kategori_inovator,instansi.nama_instansi')->from('inovator')->join('inovasi', 'inovator.id_inovator=inovasi.id_inovasi')->join('kategori_inovator', 'inovator.id_kategori_inovator=kategori_inovator.id_kategori_inovator', 'INNER')->join('instansi', 'inovator.id_instansi=instansi.id_instansi', 'LEFT')->where('inovasi.id_kecamatan', $id)->get();
        $data['inovasi'] = $inovasi->result();
        $data['inovator'] = $inovator->result();
        $data['kecamatan'] = $this->peta->namaKecamatan($where, 'tb_kecamatan')->result();
        $this->load->view('templates/header_peta');
        $this->load->view('petasebaran/detail', $data);
    }
    public function Masyarakat_Umum($id_kecamatan)
    {
        $where = ['id_kecamatan' => $id_kecamatan];
        $id = implode("','", $where);
        $inovasi = $this->db->select('inovasi.deskripsi,inovasi.manfaat_inovasi,inovasi.foto_inovasi,inovasi.foto_inovator,inovator.tgl_lahir,inovator.id_inovator,inovasi.id_inovasi,inovasi.nama_inovasi, bidang_inovasi.nama_bidang_inovasi,tb_kecamatan.nama_kecamatan, inovator.nama_inovator,kategori_inovator.nama_kategori_inovator,inovasi.created_at')->from('inovasi')->join('bidang_inovasi', 'inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi', 'INNER')->join('tb_kecamatan', 'inovasi.id_kecamatan=tb_kecamatan.id_kecamatan', 'INNER')->join('inovator', 'inovasi.id_inovator = inovator.id_inovator', 'INNER')->join('kategori_inovator', 'inovator.id_kategori_inovator = kategori_inovator.id_kategori_inovator')->where('inovasi.id_kecamatan', $id)->get();

        $inovator = $this->db->select('inovator.id_inovator,instansi.id_instansi,inovasi.foto_inovator,inovator.nama_inovator,inovator.email,inovator.alamat,kategori_inovator.nama_kategori_inovator,instansi.nama_instansi')->from('inovator')->join('inovasi', 'inovator.id_inovator=inovasi.id_inovasi')->join('kategori_inovator', 'inovator.id_kategori_inovator=kategori_inovator.id_kategori_inovator', 'INNER')->join('instansi', 'inovator.id_instansi=instansi.id_instansi', 'LEFT')->where('inovasi.id_kecamatan', $id)->where('inovator.id_kategori_inovator=8')->get();
        $data['inovasi'] = $inovasi->result();
        $data['inovator'] = $inovator->result();
        $data['kecamatan'] = $this->peta->namaKecamatan($where, 'tb_kecamatan')->result();
        $this->load->view('templates/header_peta');
        $this->load->view('petasebaran/detail', $data);
    }
}
