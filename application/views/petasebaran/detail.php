<style>
    body {
        background-color: white;
    }
</style>

<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-2">
                <nav class="sidebar card mb-4" style="background-color:#F3D900;height:47rem">
                    <ul class="nav flex-column" id="nav_accordion">
                        <li>
                            <a style="background-color:#0C4886;padding:0px 83px 0px 83px;height:110px" class="nav-link" href="#"> <img style="margin-top:15px" src="<?= base_url('assets/mbkm/') ?>img/map/logo kab bogor 1.png" alt=""></a>
                        </li>

                        <li>
                            <div class="col-lg-10">
                                <div class="list" style="border:2px solid #0C4886; border-radius:0px 20px 20px 0px; margin-top:80px;background-color:#0C4886;height:55px">
                                    <p style="color:white;text-align:center;font-size:18px;margin-top:13px">List Data</p>
                                </div>
                            </div>
                            <div class="col-lg-10">
                                <a href="<?= base_url('home/peta') ?>">
                                    <img src="<?= base_url('assets/mbkm/') ?>img/back.png" alt="" width="75px" style="margin: 40px 0px 0px 75px">
                                </a>
                            </div>
                        </li>
                </nav>
            </div>
            <div class="col-lg-10">
                <div class="container">
                    <h1 style="font-weight:bolder">List Data</h1>
                    <div class="col-md-12">
                        <form action="">
                            <input type="text" name="q" class="form-control" style="width:400px;float:right;margin-bottom:40px;margin-top:-50px;border-radius:20px 20px" placeholder="Search" value=""> <span class="position-absolute top-50 product-show translate-middle-y"><i class="bx bx-search"></i></span>
                        </form>
                    </div>

                    <div class="table-bordered" style="margin-top:50px">
                        <table class="table align-middle mb-0">
                            <thead class="table-light">
                                <tr style="font-size:14px;">
                                    <th>Judul Inovasi</th>
                                    <th>Kategori</th>
                                    <th>Nama Inovator</th>
                                    <th>Kecamatan</th>
                                    <th>Aksi</th>

                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($inovasi as $a) : ?>
                                    <tr>
                                        <td><?= $a->nama_inovasi ?></td>
                                        <td><?= $a->nama_bidang_inovasi ?></td>
                                        <td><a href=""><?= $a->nama_inovator ?></a></td>
                                        <td><?= $a->nama_kecamatan ?></td>
                                        <td>sssss</td>

                                    </tr>
                                <?php endforeach; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- Optional JavaScript; choose one of the two! -->
</body>