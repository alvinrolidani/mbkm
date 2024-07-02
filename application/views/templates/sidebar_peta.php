<style>
    .filter nav .form-group select {
        background: black;
        color: white;
        opacity: 0.6;
        font-weight: bolder;
        border-radius: 20px 20px 20px 20px;
    }
</style>

<body>
    <div class="container-fluid">
        <div class="row">

            <div class="col-lg-10" id="title">
                <div class="title" style="margin-left: 30px;">
                    <ul>
                        <li><a href="<?= base_url('home/') ?>"> <img src="<?= base_url('assets/mbkm/') ?>img/logo kab bogor 1.png" alt="" style="width: 50px;"></a></li>
                        <li id="commandCenter"><a href="<?= base_url('home/') ?>"><img src="<?= base_url('assets/mbkm/') ?>img/sidebar/logoinovasi.png" style="margin-top:10px;"></a></li>
                        <marquee scrollamount="10" behavior="alternate">
                            <h5><strong>Cara penggunaan: Silahkan filter terlebih dahulu untuk melihat jumlah inovasi</strong></h5>
                        </marquee>
                    </ul>


                </div>
                <div id="mapgis"></div>

                <div class="grafik">
                    <div class="col-md-12">
                        <div style="width: 570px;height: 500px" id="chart">
                            <canvas id="myChart"></canvas>
                        </div>
                    </div>


                    <div class="col-md-12">
                        <div style="width: 570px;height: 500px;margin-left:900px;margin-top:-500px" id="chart2">
                            <canvas id="myChart2"></canvas>
                        </div>
                    </div>
                </div>

            </div>


        </div>
    </div>

    <?php

    $kategoriinovasi = $this->db->get('bidang_inovasi')->result();
    $kategoriinovator = $this->db->get('kategori_inovator')->result();
    ?>



    <div class=" filter">
        <nav>


            <div class="form-group">
                <select name="kategoriinovasi" id="kategoriinovasi" class="form-control">

                    <option value="semua" style="font-weight:bolder ;">Seluruh Kategori Inovasi</option>
                    <?php foreach ($kategoriinovasi as $a) : ?>
                        <option value="<?= $a->id_bidang_inovasi ?>" style="font-weight:bolder ;"><?= $a->nama_bidang_inovasi ?></option>
                    <?php endforeach; ?>
                </select>
            </div>

            <div class="form-group">
                <select id="kategoriinovator" name="kategoriinovator" id="kategoriinovator" class="form-control" style="font-weight:bolder ;">

                    <option value="semua" style="font-weight:bolder ;">Seluruh Kategori Innovator</option>
                    <?php foreach ($kategoriinovator as $b) : ?>
                        <option value="<?= $b->id_kategori_inovator ?>" style="font-weight:bolder ;"><?= $b->nama_kategori_inovator ?></option>
                    <?php endforeach; ?>
                </select>
            </div>

            <div class="form-group">
                <select id="tahun" selected name="tahun" class="form-control" style="font-weight:bolder ;">

                    <option value="semua" style="font-weight:bolder ;">Seluruh Tahun</option>
                    <?php for ($i = 2016; $i <= date('Y'); $i++) : ?>
                        <option value="<?= $i ?>" style="font-weight:bolder ;"><?= $i ?></option>
                    <?php endfor; ?>
                </select>
            </div>
            <button title="Filter" id="button" onclick="changeData()" style="background: transparent;height:40px;border:none;margin-top:-3px">
                <img src="<?= base_url('assets/mbkm/') ?>img/filter.png">
            </button>
            <button title="Reset" id="reset" onclick="reset()" style="background: transparent;height:40px;border:none;margin-top:-3px">
                <img src="<?= base_url('assets/mbkm/') ?>img/Vector (2).png">
            </button>


        </nav>
    </div>
    </form>
</body>