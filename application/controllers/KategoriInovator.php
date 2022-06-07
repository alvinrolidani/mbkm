<?php
defined('BASEPATH') or exit('No direct script access allowed');

class KategoriInovator extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_Peta', 'peta');
    }
    public function mahasiswa()
    {
        $data['kecamatan'] = $this->peta->get();
        $this->load->view('templates/header_peta');
        $this->load->view('templates/sidebar_peta');
        $this->load->view('petasebaran/kategoriinovator/mahasiswa/peta', $data);
    }
    public function smp()
    {
        $data['kecamatan'] = $this->peta->get();
        $this->load->view('templates/header_peta');
        $this->load->view('templates/sidebar_peta');
        $this->load->view('petasebaran/kategoriinovator/sekolahmenengahpertama/peta', $data);
    }
    public function smasederajat()
    {
        $data['kecamatan'] = $this->peta->get();
        $this->load->view('templates/header_peta');
        $this->load->view('templates/sidebar_peta');
        $this->load->view('petasebaran/kategoriinovator/smasederajat/peta', $data);
    }
    public function dosenpeneliti()
    {
        $data['kecamatan'] = $this->peta->get();
        $this->load->view('templates/header_peta');
        $this->load->view('templates/sidebar_peta');
        $this->load->view('petasebaran/kategoriinovator/dosenpeneliti/peta', $data);
    }
    public function desa()
    {
        $data['kecamatan'] = $this->peta->get();
        $this->load->view('templates/header_peta');
        $this->load->view('templates/sidebar_peta');
        $this->load->view('petasebaran/kategoriinovator/desa/peta', $data);
    }
    public function kecamatan()
    {
        $data['kecamatan'] = $this->peta->get();
        $this->load->view('templates/header_peta');
        $this->load->view('templates/sidebar_peta');
        $this->load->view('petasebaran/kategoriinovator/kecamatan/peta', $data);
    }
    public function perangkat_desa()
    {
        $data['kecamatan'] = $this->peta->get();
        $this->load->view('templates/header_peta');
        $this->load->view('templates/sidebar_peta');
        $this->load->view('petasebaran/kategoriinovator/perangkatdesa/peta', $data);
    }
    public function masyarakat_umum()
    {
        $data['kecamatan'] = $this->peta->get();
        $this->load->view('templates/header_peta');
        $this->load->view('templates/sidebar_peta');
        $this->load->view('petasebaran/kategoriinovator/masyarakat/peta', $data);
    }
}
