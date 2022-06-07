<?php
defined('BASEPATH') or exit('No direct script access allowed');

class KategoriInovasi extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_Peta', 'peta');
    }
    public function kesehatan()
    {
        $data['kecamatan'] = $this->peta->get();
        $this->load->view('templates/header_peta');
        $this->load->view('templates/sidebar_kategori');
        $this->load->view('petasebaran/kategoriinovasi/kesehatan/peta', $data);
    }
    public function kuliner()
    {
        $data['kecamatan'] = $this->peta->get();
        $this->load->view('templates/header_peta');
        $this->load->view('templates/sidebar_kategori');
        $this->load->view('petasebaran/kategoriinovasi/kuliner/peta', $data);
    }
    public function pendidikan()
    {
        $data['kecamatan'] = $this->peta->get();
        $this->load->view('templates/header_peta');
        $this->load->view('templates/sidebar_kategori');
        $this->load->view('petasebaran/kategoriinovasi/pendidikan/peta', $data);
    }
    public function pemberantasan_kemiskinan()
    {
        $data['kecamatan'] = $this->peta->get();
        $this->load->view('templates/header_peta');
        $this->load->view('templates/sidebar_kategori');
        $this->load->view('petasebaran/kategoriinovasi/pemberantasankemiskinan/peta', $data);
    }
    public function pelayanan_masyarakat()
    {
        $data['kecamatan'] = $this->peta->get();
        $this->load->view('templates/header_peta');
        $this->load->view('templates/sidebar_kategori');
        $this->load->view('petasebaran/kategoriinovasi/pelayananmasyarakat/peta', $data);
    }
    public function lingkungan()
    {
        $data['kecamatan'] = $this->peta->get();
        $this->load->view('templates/header_peta');
        $this->load->view('templates/sidebar_kategori');
        $this->load->view('petasebaran/kategoriinovasi/lingkungan/peta', $data);
    }
    public function pertanian()
    {
        $data['kecamatan'] = $this->peta->get();
        $this->load->view('templates/header_peta');
        $this->load->view('templates/sidebar_kategori');
        $this->load->view('petasebaran/kategoriinovasi/pertanian/peta', $data);
    }
}
