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
                        <br>
                        <img style="float:right; width:350px;height:350px;margin-right:100px;margin-top:-50px" src="<?= base_url('assets/mbkm/img/' . $inovasi->foto_inovasi) ?>" alt="Apabila Gambar Telah di Upload Akan Muncul Disini">
                        <h6>Nama Inovasi</h6>
                        <input type="text" class="form-control" style="width:30rem ;" disabled value="<?= $inovasi->nama_inovasi ?>">
                        <br>
                        <h6>Kategori Inovasi</h6>
                        <input type="text" class="form-control" style="width:30rem ;" disabled value="<?= $inovasi->nama_bidang_inovasi ?>">
                        <br>
                        <h6>Deskripsi</h6>
                        <textarea style="width: 30rem; height: 8rem;" disabled><?= $inovasi->deskripsi ?></textarea>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</body>