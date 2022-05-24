<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-2">
                <nav class="sidebar card mb-4">
                    <ul class="nav flex-column" id="nav_accordion">
                        <li>
                            <a class="nav-link" href="#"> <img src="<?= base_url('assets/mbkm/') ?>img/map/logo kab bogor 1.png" alt=""></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="collapse" data-bs-target="#menu_item1" href="#">Inovasi<i class="bi small bi-caret-down-fill"></i> </a>
                            <ul id="menu_item1" class="submenu collapse" data-bs-parent="#nav_accordion">
                                <li><a class="nav-link" href="#">Kesehatan</a></li>
                                <li><a class="nav-link" href="#">Kuliner</a></li>
                                <li><a class="nav-link" href="#">Pendidikan</a> </li>
                                <li><a class="nav-link" href="#">Pemberantasan Kemiskinan</a> </li>
                                <li><a class="nav-link" href="#">Pelayanan Masyarakat</a> </li>
                                <li><a class="nav-link" href="#">Linkungan</a> </li>
                                <li><a class="nav-link" href="#">Pertanian</a> </li>
                            </ul>

                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="collapse" data-bs-target="#menu_item2" href="#">Inovator<i class="bi small bi-caret-down-fill"></i> </a>
                            <ul id="menu_item2" class="submenu collapse" data-bs-parent="#nav_accordion">
                                <li><a class="nav-link" href="#">Mahasiswa</a></li>
                                <li><a class="nav-link" href="#">SMP</a></li>
                                <li><a class="nav-link" href="#">SMA/SMK</a></li>
                                <li><a class="nav-link" href="#">Dosen peneliti</a></li>
                                <li><a class="nav-link" href="#">Desa/Kelurahan</a></li>
                                <li><a class="nav-link" href="#">Kecamatan</a></li>
                                <li><a class="nav-link" href="#">Perangkat Desa</a></li>
                                <li><a class="nav-link" href="#">Masyarakat umum</a></li>

                </nav>
            </div>

            <div class="col-lg-10">
                <div class="title" style="margin-left: 30px;">
                    <img src="<?= base_url('assets/mbkm/') ?>img/map/Peta Sebaran.png" alt="" style="width: 150px;">
                    <p style=" font-size: 10px;">inovasi kabupaten bogor</p>
                </div>
                <div id="mapgis"></div>
            </div>


        </div>
    </div>


    <!-- Optional JavaScript; choose one of the two! -->
</body>