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
                <b style="font-size: 20px">Detail Inovator</b>
                <p style="float:right ;"><a href="">Back</a></p>
            </div>
            <div class="card-body">
                <?php foreach ($inovator as $inovator) : ?>


                    <div class="card-text">
                        <h6>Nama Inovator</h6>
                        <input type="text" class="form-control" style="width:30rem ;" disabled value="<?= $inovator->nama_inovator ?>">
                        <br>
                        <img style="float:right; width:350px;height:350px;margin-right:100px;margin-top:-50px" src="<?= base_url('assets/mbkm/img/' . $inovator->foto_inovator) ?>" alt="Apabila Gambar Telah di Upload Akan Muncul Disini">
                        <h6>Email</h6>
                        <input type="text" class="form-control" style="width:30rem ;" disabled value="<?= $inovator->email ?>">
                        <br>
                        <h6>Alamat</h6>
                        <input type="text" class="form-control" style="width:30rem ;" disabled value="<?= $inovator->alamat ?>">
                        <br>
                        <h6>Kategori Inovator</h6>
                        <input type="text" class="form-control" style="width:30rem ;" disabled value="<?= $inovator->nama_kategori_inovator ?>">
                        <br>
                        <h6>Instansi</h6>
                        <input type="text" class="form-control" style="width:30rem ;" disabled value="<?= $inovator->nama_instansi ?>">

                    </div>




                <?php endforeach; ?>
            </div>
        </div>
    </div>
</body>