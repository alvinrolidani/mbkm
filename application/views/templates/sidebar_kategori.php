<style>

</style>

<body>
    <div class="container-fluid">
        <div class="row">

            <div class="col-lg-10" id="title">
                <div class="title" style="margin-left: 30px;">
                    <ul>
                        <li><img src="<?= base_url('assets/mbkm/') ?>img/logo kab bogor 1.png" alt="" style="width: 50px;"></li>
                        <li><img src="<?= base_url('assets/mbkm/') ?>img/sidebar/text.png"></li>
                    </ul>


                </div>
                <div id="mapgis"></div>

                <div class="row">
                    <div class="col-lg-10">
                        <img src="<?= base_url('assets/mbkm/') ?>img/map/chart.png" alt="" style="width: 1536px; object-fit: cover; transform: translateX(-27px) translateY(6px);">
                    </div>
                </div>
            </div>


        </div>
    </div>

    <?php

    $kategoriinovasi = $this->db->get('bidang_inovasi')->result();
    $kategoriinovator = $this->db->get('kategori_inovator')->result();
    ?>
    <div class="filter">
        <nav>
            <a href="<?= base_url('home/peta') ?>" style="text-decoration:none">
                <img src="<?= base_url('assets/mbkm/') ?>img/reset.png" style="height:75px;width:65px;margin-top:-10px">
                <p style="float:right;margin-top:10px;border:1px solid;color:white;background-color:blue">Reset</p>
            </a>



        </nav>
    </div>
    </form>
</body>