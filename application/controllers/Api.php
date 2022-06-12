<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Api extends CI_Controller
{
    public function data()
    {
        $getKecamatan = $this->db->get('tb_kecamatan');
        foreach ($getKecamatan->result() as $row) {
            $data = null;
            $data['id_kecamatan'] = $row->id_kecamatan;
            $data['shp'] = $row->shp;
            $data['nama_kecamatan'] = $row->nama_kecamatan;
            $response[] = $data;
        }
        echo "var kecamatan=" . json_encode($response, JSON_PRETTY_PRINT);
    }
    public function getkategori()
    {
        header('Content-Type:application/json');
        $response = [];
        $idi = $this->input->get('kategoriinovator');
        $id = $this->input->get('kategoriinovasi');
        $tahun = $this->input->get('tahun');

        $get = $this->db->get('tb_kecamatan')->result();
        foreach ($get as $row) {
            $inovasi = $this->db->query("SELECT inovasi.id_inovasi FROM inovasi JOIN inovator ON inovasi.id_inovator=inovator.id_inovator INNER JOIN kategori_inovator ON inovator.id_kategori_inovator=kategori_inovator.id_kategori_inovator JOIN bidang_inovasi ON inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi WHERE DATE_FORMAT(inovasi.created_at,'%Y')='" . $tahun . "' AND kategori_inovator.id_kategori_inovator= '" . $idi . "'AND inovasi.id_kecamatan='" . $row->id_kecamatan . "' AND bidang_inovasi.id_bidang_inovasi ='" . $id . "'");

            $inovator = $this->db->query("SELECT inovator.id_inovator FROM inovator JOIN inovasi ON inovasi.id_inovator=inovator.id_inovator INNER JOIN kategori_inovator ON inovator.id_kategori_inovator=kategori_inovator.id_kategori_inovator JOIN bidang_inovasi ON inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi WHERE DATE_FORMAT(inovasi.created_at,'%Y')='" . $tahun . "' AND kategori_inovator.id_kategori_inovator= '" . $idi . "'AND inovasi.id_kecamatan='" . $row->id_kecamatan . "' AND bidang_inovasi.id_bidang_inovasi ='" . $id . "'");

            $instansi = $this->db->query("SELECT instansi.id_instansi FROM instansi JOIN inovator ON instansi.id_instansi=inovator.id_instansi WHERE inovator.id_kecamatan='" . $row->id_kecamatan . "'");
            $data = [
                'id_kecamatan' => $row->id_kecamatan,
                'nama_kecamatan' => $row->nama_kecamatan,
                'total_inovasi' =>  $inovasi->num_rows(),
                'total_inovator' => $inovator->num_rows(),
                'total_instansi' => $instansi->num_rows(),
                'total' => $inovasi->num_rows()
            ];
            $response[] = $data;
        }

        echo json_encode($response, JSON_PRETTY_PRINT);
    }
    public function dataInovasiTahun()
    {
        header('Content-Type:application/json');
        $response = [];
        $id = $this->input->get('kategoriinovasi');
        $tahun = $this->input->get('tahun');

        $get = $this->db->get('tb_kecamatan')->result();
        foreach ($get as $a) {
            $inovasi = $this->db->query("SELECT * FROM inovasi JOIN inovator ON inovasi.id_inovator=inovator.id_inovator INNER JOIN kategori_inovator ON inovator.id_kategori_inovator=kategori_inovator.id_kategori_inovator JOIN bidang_inovasi ON inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi WHERE DATE_FORMAT(inovasi.created_at,'%Y')='" . $tahun . "'AND inovasi.id_kecamatan='" . $a->id_kecamatan . "' AND bidang_inovasi.id_bidang_inovasi ='" . $id . "'");

            $inovator = $this->db->query("SELECT inovator.id_inovator FROM inovator JOIN inovasi ON inovasi.id_inovator=inovator.id_inovator INNER JOIN kategori_inovator ON inovator.id_kategori_inovator=kategori_inovator.id_kategori_inovator JOIN bidang_inovasi ON inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi WHERE DATE_FORMAT(inovasi.created_at,'%Y')='" . $tahun . "'AND inovasi.id_kecamatan='" . $a->id_kecamatan . "' AND bidang_inovasi.id_bidang_inovasi ='" . $id . "'");

            $instansi = $this->db->query("SELECT instansi.id_instansi FROM instansi JOIN inovator ON instansi.id_instansi=inovator.id_instansi WHERE inovator.id_kecamatan='" . $a->id_kecamatan . "'");
            $data = [
                'id_kecamatan' => $a->id_kecamatan,
                'nama_kecamatan' => $a->nama_kecamatan,
                'total_inovasi' =>  $inovasi->num_rows(),
                'total_inovator' => $inovator->num_rows(),
                'total_instansi' => $instansi->num_rows(),
                'total' =>  $inovasi->num_rows(),
            ];
            $response[] = $data;
        }
        echo json_encode($response, JSON_PRETTY_PRINT);
    }
    public function dataInovatorTahun()
    {
        header('Content-Type:application/json');
        $response = [];
        $idi = $this->input->get('kategoriinovator');
        $tahun = $this->input->get('tahun');

        $get = $this->db->get('tb_kecamatan')->result();
        foreach ($get as $row) {
            $inovasi = $this->db->query("SELECT inovasi.id_inovasi FROM inovasi JOIN inovator ON inovasi.id_inovator=inovator.id_inovator INNER JOIN kategori_inovator ON inovator.id_kategori_inovator=kategori_inovator.id_kategori_inovator JOIN bidang_inovasi ON inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi WHERE DATE_FORMAT(inovasi.created_at,'%Y')='" . $tahun . "'AND inovasi.id_kecamatan='" . $row->id_kecamatan . "' AND kategori_inovator.id_kategori_inovator= '" . $idi . "'");

            $inovator = $this->db->query("SELECT inovator.id_inovator FROM inovasi JOIN inovator ON inovasi.id_inovator=inovator.id_inovator INNER JOIN kategori_inovator ON inovator.id_kategori_inovator=kategori_inovator.id_kategori_inovator JOIN bidang_inovasi ON inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi WHERE DATE_FORMAT(inovasi.created_at,'%Y')='" . $tahun . "'AND inovasi.id_kecamatan='" . $row->id_kecamatan . "' AND kategori_inovator.id_kategori_inovator= '" . $idi . "'");
            $instansi = $this->db->query("SELECT instansi.id_instansi FROM instansi JOIN inovator ON instansi.id_instansi=inovator.id_instansi WHERE inovator.id_kecamatan='" . $row->id_kecamatan . "'");
            $data = [
                'id_kecamatan' => $row->id_kecamatan,
                'nama_kecamatan' => $row->nama_kecamatan,
                'total_inovasi' =>  $inovasi->num_rows(),
                'total_inovator' => $inovator->num_rows(),
                'total_instansi' => $instansi->num_rows(),
                'total' => $inovator->num_rows()
            ];
            $response[] = $data;
        }
        echo json_encode($response, JSON_PRETTY_PRINT);
    }
    public function dataTahun()
    {
        header('Content-Type:application/json');
        $response = [];

        $tahun = $this->input->get('tahun');

        $get = $this->db->get('tb_kecamatan')->result();
        foreach ($get as $row) {
            $inovasi = $this->db->query("SELECT inovasi.id_inovasi FROM inovasi JOIN inovator ON inovasi.id_inovator=inovator.id_inovator INNER JOIN kategori_inovator ON inovator.id_kategori_inovator=kategori_inovator.id_kategori_inovator JOIN bidang_inovasi ON inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi WHERE DATE_FORMAT(inovasi.created_at,'%Y')='" . $tahun . "'AND inovasi.id_kecamatan='" . $row->id_kecamatan . "'");

            $inovator = $this->db->query("SELECT inovator.id_inovator FROM inovasi JOIN inovator ON inovasi.id_inovator=inovator.id_inovator INNER JOIN kategori_inovator ON inovator.id_kategori_inovator=kategori_inovator.id_kategori_inovator JOIN bidang_inovasi ON inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi WHERE DATE_FORMAT(inovasi.created_at,'%Y')='" . $tahun . "'AND inovasi.id_kecamatan='" . $row->id_kecamatan . "'");

            $instansi = $this->db->query("SELECT instansi.id_instansi FROM instansi JOIN inovator ON instansi.id_instansi=inovator.id_instansi WHERE inovator.id_kecamatan='" . $row->id_kecamatan . "'");

            $data = [
                'id_kecamatan' => $row->id_kecamatan,
                'nama_kecamatan' => $row->nama_kecamatan,
                'total_inovasi' =>  $inovasi->num_rows(),
                'total_inovator' => $inovator->num_rows(),
                'total_instansi' => $instansi->num_rows(),
                'total' =>  $inovasi->num_rows(),
            ];
            $response[] = $data;
        }
        echo json_encode($response, JSON_PRETTY_PRINT);
    }
    public function semuadata()
    {
        header('Content-Type:application/json');
        $response = [];
        $getId = $this->db->get('tb_kecamatan')->result();
        foreach ($getId as $row) {
            $inovasi = $this->db->query("SELECT inovasi.id_inovasi FROM `inovasi` WHERE inovasi.id_kecamatan = '" . $row->id_kecamatan . "'");

            $inovator = $this->db->query("SELECT inovator.id_inovator FROM `inovator` WHERE inovator.id_kecamatan ='" . $row->id_kecamatan . "'");

            $instansi = $this->db->query("SELECT instansi.id_instansi FROM instansi JOIN inovator ON instansi.id_instansi=inovator.id_instansi WHERE inovator.id_kecamatan='" . $row->id_kecamatan . "'");
            $data = [
                'id_kecamatan' => $row->id_kecamatan,
                'nama_kecamatan' => $row->nama_kecamatan,
                'total_inovasi' =>  $inovasi->num_rows(),
                'total_inovator' => $inovator->num_rows(),
                'total_instansi' => $instansi->num_rows(),
                'total' =>  $inovasi->num_rows(),
            ];
            $response[] = $data;
        }
        echo json_encode($response, JSON_PRETTY_PRINT);
    }
    public function dataSemuaTahun()
    {
        header('Content-Type:application/json');
        $response = [];
        $idi = $this->input->get('kategoriinovator');
        $id = $this->input->get('kategoriinovasi');


        $get = $this->db->get('tb_kecamatan')->result();
        foreach ($get as $row) {
            $inovasi = $this->db->query("SELECT inovasi.id_inovasi FROM inovasi JOIN inovator ON inovasi.id_inovator=inovator.id_inovator INNER JOIN kategori_inovator ON inovator.id_kategori_inovator=kategori_inovator.id_kategori_inovator JOIN bidang_inovasi ON inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi WHERE bidang_inovasi.id_bidang_inovasi ='" . $id . "'AND inovasi.id_kecamatan='" . $row->id_kecamatan . "' AND kategori_inovator.id_kategori_inovator= '" . $idi . "'");

            $inovator = $this->db->query("SELECT inovator.id_inovator FROM inovasi JOIN inovator ON inovasi.id_inovator=inovator.id_inovator INNER JOIN kategori_inovator ON inovator.id_kategori_inovator=kategori_inovator.id_kategori_inovator JOIN bidang_inovasi ON inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi WHERE bidang_inovasi.id_bidang_inovasi ='" . $id . "'AND inovasi.id_kecamatan='" . $row->id_kecamatan . "' AND kategori_inovator.id_kategori_inovator= '" . $idi . "'");

            $instansi = $this->db->query("SELECT instansi.id_instansi FROM instansi JOIN inovator ON instansi.id_instansi=inovator.id_instansi WHERE inovator.id_kecamatan='" . $row->id_kecamatan . "'");
            $data = [
                'id_kecamatan' => $row->id_kecamatan,
                'nama_kecamatan' => $row->nama_kecamatan,
                'total_inovasi' =>  $inovasi->num_rows(),
                'total_inovator' => $inovator->num_rows(),
                'total_instansi' => $instansi->num_rows(),
                'total_instansi' => $instansi->num_rows(),
                'total' =>  $inovasi->num_rows(),
            ];
            $response[] = $data;
        }
        echo json_encode($response, JSON_PRETTY_PRINT);
    }
    public function dataInovasi()
    {
        header('Content-Type:application/json');
        $response = [];

        $id = $this->input->get('kategoriinovasi');


        $get = $this->db->get('tb_kecamatan')->result();
        foreach ($get as $row) {
            $inovasi = $this->db->query("SELECT inovasi.id_inovasi FROM inovasi JOIN inovator ON inovasi.id_inovator=inovator.id_inovator INNER JOIN kategori_inovator ON inovator.id_kategori_inovator=kategori_inovator.id_kategori_inovator JOIN bidang_inovasi ON inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi WHERE bidang_inovasi.id_bidang_inovasi ='" . $id . "'AND inovasi.id_kecamatan='" . $row->id_kecamatan . "'");

            $inovator = $this->db->query("SELECT inovator.id_inovator FROM inovasi JOIN inovator ON inovasi.id_inovator=inovator.id_inovator INNER JOIN kategori_inovator ON inovator.id_kategori_inovator=kategori_inovator.id_kategori_inovator JOIN bidang_inovasi ON inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi WHERE bidang_inovasi.id_bidang_inovasi ='" . $id . "'AND inovasi.id_kecamatan='" . $row->id_kecamatan . "'");

            $instansi = $this->db->query("SELECT instansi.id_instansi FROM instansi JOIN inovator ON instansi.id_instansi=inovator.id_instansi WHERE inovator.id_kecamatan='" . $row->id_kecamatan . "'");
            $data = [
                'id_kecamatan' => $row->id_kecamatan,
                'nama_kecamatan' => $row->nama_kecamatan,
                'total_inovasi' =>  $inovasi->num_rows(),
                'total_inovator' => $inovator->num_rows(),
                'total_instansi' => $instansi->num_rows(),
                'total' =>  $inovasi->num_rows(),
            ];
            $response[] = $data;
        }
        echo json_encode($response, JSON_PRETTY_PRINT);
    }
    public function dataInovator()
    {
        header('Content-Type:application/json');
        $response = [];
        $idi = $this->input->get('kategoriinovator');

        $get = $this->db->get('tb_kecamatan')->result();
        foreach ($get as $row) {
            $inovasi = $this->db->query("SELECT inovasi.id_inovasi FROM inovasi JOIN inovator ON inovasi.id_inovator=inovator.id_inovator INNER JOIN kategori_inovator ON inovator.id_kategori_inovator=kategori_inovator.id_kategori_inovator JOIN bidang_inovasi ON inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi WHERE inovasi.id_kecamatan='" . $row->id_kecamatan . "' AND kategori_inovator.id_kategori_inovator= '" . $idi . "'");

            $inovator = $this->db->query("SELECT inovator.id_inovator FROM inovasi JOIN inovator ON inovasi.id_inovator=inovator.id_inovator INNER JOIN kategori_inovator ON inovator.id_kategori_inovator=kategori_inovator.id_kategori_inovator JOIN bidang_inovasi ON inovasi.id_bidang_inovasi=bidang_inovasi.id_bidang_inovasi WHERE inovasi.id_kecamatan='" . $row->id_kecamatan . "' AND kategori_inovator.id_kategori_inovator= '" . $idi . "'");

            $instansi = $this->db->query("SELECT instansi.id_instansi FROM instansi JOIN inovator ON instansi.id_instansi=inovator.id_instansi WHERE inovator.id_kecamatan='" . $row->id_kecamatan . "'");
            $data = [
                'id_kecamatan' => $row->id_kecamatan,
                'nama_kecamatan' => $row->nama_kecamatan,
                'total_inovasi' =>  $inovasi->num_rows(),
                'total_inovator' => $inovator->num_rows(),
                'total_instansi' => $instansi->num_rows(),
                'total' => $inovator->num_rows(),
            ];
            $response[] = $data;
        }
        echo json_encode($response, JSON_PRETTY_PRINT);
    }
    public function reset()
    {
        header('Content-Type:application/json');
        $response = [];
        $data = ['nama_kecamatan' => 0];
        $response[] = $data;

        echo json_encode($response, JSON_PRETTY_PRINT);
    }
    public function grafikData()
    {
        header('Content-Type:application/json');
        $response = [];

        $data['grafik'] = $this->db->query("SELECT DATE_FORMAT(created_at,'%Y') as tahun,COUNT(id_inovasi) as 'total' FROM inovasi GROUP BY DATE_FORMAT(created_at,'%Y')")->result();

        $response[] = $data;
        echo json_encode($response, JSON_PRETTY_PRINT);
    }
    public function tahunGrafik()
    {
        header('Content-Type:application/json');
        $response = [];

        for ($i = 2016; $i <= date('Y'); $i++) {
            $data = ['tahun' => $i];
            $response[] = $data;
        }
        echo json_encode($response, JSON_PRETTY_PRINT);
    }
}
