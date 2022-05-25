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
                    <?php foreach ($kecamatan as $nama) : ?>
                        <h1 style="font-weight:bolder">List Data Inovasi Kabupaten <?= $nama->nama_kecamatan ?></h1>
                    <?php endforeach; ?>
                    <div class="col-md-12">

                    </div>

                    <div style="margin-top:50px">
                        <table class="table table-striped align-middle mb-0" id="table_id">
                            <thead class="table-light">
                                <tr style="font-size:14px;">
                                    <th>Judul Inovasi</th>
                                    <th>Kategori Inovasi</th>
                                    <th>Kategori Inovator</th>
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
                                        <td><?= $a->nama_kategori_inovator ?></td>
                                        <td><a href=""><?= $a->nama_inovator ?></a></td>
                                        <td><?= $a->nama_kecamatan ?></td>
                                        <td>Edit</td>

                                    </tr>
                                <?php endforeach; ?>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.0/js/jquery.dataTables.min.js"></script>
<script>
    $(document).ready(function() {
        $('#table_id').DataTable();
    });
</script>