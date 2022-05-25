<header class="header_area" style=" position: relative;
  z-index: 10;">
    <div class="main-menu">
        <nav class="navbar navbar-expand-lg navbar-light " style="background-color: #f3D900;">
            <div class="container-fluid">
                <a class="navbar-brand" href="#"><img src="<?= base_url('assets/mbkm/') ?>img/logo bappeda.png" alt=""></a>
            </div>
        </nav>
    </div>
</header>

<body>
    <div class="container-fluid">
        <div class="card mx-auto" style="margin-top:100px; width:75rem;">
            <div class="card-header">
                <b style="font-size: 20px">Detail Inovasi</b>
                <p style="float:right ;"><a href="">Back</a></p>
            </div>
            <div class="card-body">
                <?php foreach ($inovasi as $inovasi) : ?>
                    <div class="card-text">
                        <h6>Nama Inovator</h6>
                        <input type="text" class="form-control" style="width:30rem ;" disabled value="<?= $inovasi->nama_inovator ?>">
                        <h6>Nama Inovasi</h6>
                        <input type="text" class="form-control" style="width:30rem ;" disabled value="<?= $inovasi->nama_inovasi ?>">
                        <h6>Kategori Inovasi</h6>
                        <input type="text" class="form-control" style="width:30rem ;" disabled value="<?= $inovasi->nama_bidang_inovasi ?>">
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</body>