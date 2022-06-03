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

    <form action="<?= base_url('home/peta') ?>" method="get">


        <div class="filter">
            <nav>

                <div class="form-group">
                    <select name="kategoriinovasi" class="form-control" style="font-weight:bolder ;">
                        <option value="" style="font-weight:bolder ;">Pilih Inovasi</option>
                        <option value="Kesehatan" style="font-weight:bolder ;">Kesehatan</option>
                        <option value="Kuliner" style="font-weight:bolder ;">Kuliner</option>
                        <option value="Pendidikan" style="font-weight:bolder ;">Pendidikan</option>
                        <option value="Pemberantasan Kemiskinan" style="font-weight:bolder ;">Pemberantasan Kemiskinan</option>
                        <option value="Pelayanan Masyarakat" style="font-weight:bolder ;">Pelayanan Masyarakat</option>
                        <option value="Lingkungan" style="font-weight:bolder ;">Lingkungan</option>
                        <option value="Peratanian" style="font-weight:bolder ;">Peratanian</option>
                    </select>
                </div>

                <div class="form-group">
                    <select id="inovator" name="kategoriinovator" class="form-control" style="font-weight:bolder ;">
                        <option value="" style="font-weight:bolder ;">Pilih Inovator</option>
                        <option value="Mahasiswa" style="font-weight:bolder ;">Mahasiswa</option>
                        <option value="SMA/SMK" style="font-weight:bolder ;">SMA/SMK</option>
                        <option value="SMP" style="font-weight:bolder ;">SMP</option>
                        <option value="Dosen Peneliti" style="font-weight:bolder ;">Dosen Peneliti</option>
                        <option value="Desa Kelurahan" style="font-weight:bolder ;">Desa Kelurahan</option>
                        <option value="Kecamatan" style="font-weight:bolder ;">Kecamatan</option>
                        <option value="Perangkat Desa" style="font-weight:bolder ;">Perangkat Desa</option>
                        <option value="Masyarakat Umum" style="font-weight:bolder ;">Masyarakat Umum</option>
                    </select>
                </div>

                <div class="form-group">
                    <select id="Tahun" class="form-control" style="font-weight:bolder ;">
                        <option value="">Pilih Tahun</option>
                        <?php for ($i = 2016; $i <= date('Y'); $i++) : ?>
                            <option value="<?= $i ?>" style="font-weight:bolder ;"><?= $i ?></option>
                        <?php endfor; ?>
                    </select>
                </div>

                <button type="submit">
                    <img src="<?= base_url('assets/mbkm/') ?>img/vector (1).png">
                </button>

            </nav>
        </div>
    </form>
</body>