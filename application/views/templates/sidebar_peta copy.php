<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-2">
                <nav class="sidebar  card mb-4" id="sidebar">
                    <ul class="nav flex-column" id="nav_accordion">
                        <li>
                            <a class="nav-link" href="#" style="display: flex; transform: translateX(-20px);"> <img src="<?= base_url('assets/mbkm/') ?>img/sidebar/Group 28.png" alt="">
                                <p style="font-size: 12px; transform: translateY(20px);">Bapepdalitbang</p>
                            </a>
                        </li>
                        <li>
                            <a onclick="history.back()" href="<?= base_url() ?>" style="text-decoration: none; color: black;"><img src="<?= base_url('assets/mbkm/') ?>img/sidebar/back (1) 3.png" alt="" style="padding-right: 20px; margin-left:20px;"><span style="margin-left: 10px;">Back</span></a>
                        </li>
                        <hr style="color: gray; width: 200px; opacity: 5%; transform: translateX(-15px);">

                        <form action="">
                            <li class="nav-item">
                                <a class="nav-link" data-bs-toggle="collapse" data-bs-target="#menu_item1" href="#">
                                    <img id="LogoInovasi" src="<?= base_url('assets/mbkm/') ?>img/sidebar/home.png" alt="" style="margin-right: 24px; margin-left:18px;">Inovasi<i class="bi bi-chevron-down" style="margin-left:30px;"></i> </a>
                                <ul id="menu_item1" class="submenu collapse" data-bs-parent="#nav_accordion">
                                    <li style="color: #F2994A;"><a class="nav-link" href="<?= base_url('kategoriinovasi/kesehatan') ?>">Kesehatan</a></li>
                                    <li style="color: #219653;"><a class="nav-link" href="<?= base_url('kategoriinovasi/kuliner') ?>" value="Kuliner" name="kuliner">Kuliner</a></li>
                                    <li style="color: #2D9CDB;"><a class="nav-link" href="<?= base_url('kategoriinovasi/pendidikan') ?>">Pendidikan</a> </li>
                                    <li><a class="nav-link" href="<?= base_url('kategoriinovasi/pemberantasankemiskinan') ?>">Pemberantasan Kemiskinan</a> </li>
                                    <li><a class="nav-link" href="<?= base_url('kategoriinovasi/pelayananmasyarakat') ?>">Pelayanan Masyarakat</a> </li>
                                    <li style="color: #8E2DDB;"><a class="nav-link" href="<?= base_url('kategoriinovasi/lingkungan') ?>">Lingkungan</a> </li>
                                    <li style="color: #EB5757;"><a class="nav-link" href="<?= base_url('kategoriinovasi/pertanian') ?>">Pertanian</a> </li>
                                </ul>
                            </li>
                        </form>
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="collapse" data-bs-target="#menu_item2" href="#">
                                <img id="LogoInovator" src="<?= base_url('assets/mbkm/') ?>img/sidebar/home.png" alt="" style="margin-right: 22px; margin-left:18px;">Inovator<i class="bi bi-chevron-down" style="margin-left:20px;"></i> </a>
                            <ul id="menu_item2" class="submenu collapse" data-bs-parent="#nav_accordion">
                                <li><a class="nav-link" href="<?= base_url('kategoriinovator/mahasiswa') ?>">Mahasiswa</a></li>
                                <li><a class="nav-link" href="<?= base_url('kategoriinovator/sekolahmenengahpertama') ?>">SMP</a></li>
                                <li><a class="nav-link" href="<?= base_url('kategoriinovator/smasederajat') ?>">SMA/SMK</a></li>
                                <li><a class="nav-link" href="<?= base_url('kategoriinovator/dosenpeneliti') ?>">Dosen peneliti</a></li>
                                <li><a class="nav-link" href="<?= base_url('kategoriinovator/desa') ?>">Desa/Kelurahan</a></li>
                                <li><a class="nav-link" href="<?= base_url('kategoriinovator/kecamatan') ?>">Kecamatan</a></li>
                                <li><a class="nav-link" href="<?= base_url('kategoriinovator/perangkatdesa') ?>">Perangkat Desa</a></li>
                                <li><a class="nav-link" href="<?= base_url('kategoriinovator/masyarakat') ?>">Masyarakat umum</a></li>

                </nav>

                <div id="main" style="transform: translate(180px,-1050px); position: relative;z-index: 10; ">
                    <button id="menu-btn"><img src="<?= base_url('assets/mbkm/') ?>img/sidebar/back (1) 3.png" alt="" style="top: 100px;"></button>
                </div>
            </div>

            <div class="col-lg-10" id="title">
                <div class="title" style="margin-left: 30px;">
                    <img src="<?= base_url('assets/mbkm/') ?>img/map/Peta Sebaran.png" alt="" style="width: 150px;">
                    <p style=" font-size: 10px;">inovasi kabupaten bogor</p>
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



    <script>
        // toggle
        var menu_btn = document.querySelector("#menu-btn")
        var sidebar = document.querySelector("#sidebar")
        var title = document.querySelector("#title")


        menu_btn.addEventListener("click", () => {
            sidebar.classList.toggle("active-nav")
            menu_btn.classList.toggle("active-nav-btn")
            title.classList.toggle("active-nav-title")

        })


        // ganti gambar inovasi
        document.querySelector('#menu-btn').addEventListener('click', function() {
            if (document.querySelector('#LogoInovasi').src.indexOf('<?= base_url('assets/mbkm/') ?>img/sidebar/home.png') != -1) {
                document.querySelector('#LogoInovasi').src = '<?= base_url('assets/mbkm/') ?>img/sidebar/inovasi.png';
            } else {
                document.querySelector('#LogoInovasi').src = '<?= base_url('assets/mbkm/') ?>img/sidebar/home.png';
            }

            if (document.querySelector('#LogoInovator').src.indexOf('<?= base_url('assets/mbkm/') ?>img/sidebar/home.png') != -1) {
                document.querySelector('#LogoInovator').src = '<?= base_url('assets/mbkm/') ?>img/sidebar/inovator.png';
            } else {
                document.querySelector('#LogoInovator').src = '<?= base_url('assets/mbkm/') ?>img/sidebar/home.png';
            }


        })
    </script>
</body>