<?php

class M_Peta extends CI_Model
{
    public function get()
    {
        return $this->db->get_where('tb_kecamatan')->result();
    }
}
