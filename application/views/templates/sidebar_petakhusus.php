<link rel="stylesheet" href="<?= base_url('assets/mbkm/stylepetakhusus.css') ?>">

<style>
    .filter nav .form-group select {
        background: black;
        color: white;
        opacity: 0.6;
        font-weight: bolder;
        border-radius: 20px 20px 20px 20px;

    }

    @media screen and (max-width: 922px) {
        .container-fluid .title ul marquee {
            display: block;
        }


        .filter nav {
            transform: translateX(280px);
        }


    }

    @media screen and (max-width: 576px) {

        .container-fluid .title ul marquee {
            position: relative;
            width: 750px;
            transform: translate(-180px, 35px);
            font-size: 10px;
            margin-right: -150px;
            z-index: 100;
        }




        .container-fluid .title ul #commandCenter a img {
            max-width: 300px;
            height: 20px;

        }




        #mapgis {
            width: 575px;
        }

        .filter nav {
            transform: translateX(-10px);


        }

        .filter nav .form-group select {
            max-width: 135px;
            font-size: 10px;
            height: 30px;
            transform: translateY(8px);
            transform: translateX(-40px);
            overflow-x: visible;
            margin-left: 70px;

        }

        .filter nav button {
            margin-left: -30px;
            transform: translate(-140px, 80px);

        }


        .filter {
            position: absolute;
        }

        .container-fluid .row #chart2 {

            transform: translateY(-500px);
            transform: translateX(-900px);

        }

        .container-fluid .row #chart {

            transform: translateY(300px);
        }



        .container-fluid .title {
            max-width: 575px;
        }


    }
</style>

<body>
    <div class="container-fluid">
        <div class="row">

            <div class="col-lg-10" id="title">

                <div id="mapgis"></div>

                <div class="row">
                    <div class="col-lg-10">
                        <div style="width: 600px;height: 500px" id="chart">
                            <canvas id="myChart"></canvas>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-10">
                        <div style="width: 600px;height: 500px;margin-left:900px;margin-top:-500px" id="chart2">
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