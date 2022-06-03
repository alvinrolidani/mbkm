<?php

class M_Peta extends CI_Model
{
    public function get()
    {
        return $this->db->get_where('tb_kecamatan')->result();
    }
    public function namaKecamatan($where, $table)
    {
        return $this->db->get_where($table, $where);
    }
    public function kategori()
    {
    }
}
