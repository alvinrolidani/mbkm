<?php

class M_Peta extends CI_Model
{
    public function get()
    {
        return $this->db->get_where('kecamatan')->result();
    }
    public function namaKecamatan($where, $table)
    {
        return $this->db->get_where($table, $where);
    }
    public function dataTahun()
    {
        $query = $this->db->query("SELECT tahun_pembuatan_inovasi FROM `inovasi` GROUP BY tahun_pembuatan_inovasi ASC")->result();
        return $query;
    }
}
