<style>
	body {
		background-color: white;
	}




	.manfaat textarea,
	.deskripsi textarea {

		height: 100px
	}

	.deskripsi h6,
	.manfaat h6,
	.tanggal h6 {
		font-weight: 700;
		margin-top: 20px
	}

	a {
		text-decoration: none;
		display: inline-block;
		padding: 8px 16px;
	}

	a:hover {
		background-color: #ddd;
		color: black;
	}

	.previous {
		background-color: #f1f1f1;
		color: black;
	}

	.next {
		background-color: #04AA6D;
		color: white;
	}

	.round {
		border-radius: 50%;
	}

	/*.hamburgerMenu{
        display: none;
    }*/

	.card-body .back {
		display: none;
	}



	@media screen and (max-width: 922px) {


		.container-fluid .sidebar {
			display: none;
		}

		.container .card-body {
			display: flex;
			gap: 20px;
			transform: translateX(40px);
			margin-left: -50px;
		}

		.card-body .back {
			display: block;
			margin-left: -20px;
		}

		.container .overflow-x {

			max-width: 110%;


			transform: translate(-290px, 650px);

		}


		.container table tbody {

			font-size: 11px;
		}

		.container .card {
			border: none;
			max-width: 921px;

		}

		/*
        .dataTables_paginate{
           transform: translateX(-150px)
           
        }
        
        .dataTables_info{
           margin-top: 605px;
           transform: translateX(-50px);
        }
*/
		.fade {

			background-color: rgb(0, 0, 0, 0);
			border: none;
		}

		.container label {
			display: none;
		}

	}



	@media screen and (max-width: 576px) {
		.card-body .back {
			display: block;
			margin-left: -20px;
			margin-top: -10px;
		}

		.overflow-x,
		.container table {
			padding-left: 15px;
		}

		.container .card-body {
			display: flex;
			gap: 5px;

			margin-left: 0px;
		}

		.card-body div * {
			font-size: 20px;

		}

		.container-fluid .sidebar {
			display: none;
		}


		.container table tbody {

			font-size: 11px;
		}

	}





	/*
        .card-body div *{
            font-size: 20px;
        }

        .container-fluid .sidebar{
          display: none;
        }

    


        .container table{
           
            transform: translateX(0px);
            margin-top: 650px;
            margin-left: -280px;
        }


        .container #table_id_wrapper{
            margin-left: -30px;
        }

        .container table tbody{
            margin-left: -10px;
            font-size: 7px;
        }

        .container table tbody .sorting_1{
           transform: translateX(30px);
        }


        .fade{
            margin-top: 0px;
           transform: translateX(-100px);
            padding-left: -50px;
           background-color: rgb(0,0,0,0);
           border: none;
        }

        .modal-dialog{
            margin-left: 200px;
            margin-top: -100px;
        }

        .modal-content{

        }

        .dataTables_paginate{
            
            transform: translateX(-100px);
        }
        
        .dataTables_info{
            margin-top: -20px !important;
            transform: translateY(0px);
            margin-left: -150px; 
        }

        .container .dataTables_lenght{
            display: none;
        }

        .container label{display: none;
        }

       

        .container .card-body{
            display: flex;
            gap: 20px;
            margin-left: 0px;
        }

        .container .overflow-x{
            overflow-x: ;
           
        }


}*/
</style>




<div class="container-fluid">
	<div class="row">
		<div class="col-lg-2">
			<nav class="sidebar card mb-4" style="background-color:white; height:47rem">

				<ul class="nav flex-column" id="nav_accordion">
					<li>

						<a style="background-color:white;padding:0px 10px 0px 10px;height:110px" class="nav-link" href="<?= base_url('home/index'); ?>"> <img style="margin-top:15px; width:200px;" src="<?= base_url('assets/mbkm/') ?>img/map/oke.png" alt=""></a>

					</li>
					<li>
						<div class="col-lg-10">
							<!-- <div class="list" style="border:2px solid #0C4886; border-radius:0px 20px 20px 0px; margin-top:80px;background-color:#0C4886;height:55px">
                                <p style="color:white;text-align:center;font-size:18px;margin-top:13px">List Data</p>
                            </div> -->
						</div>
						<div class="col-lg-10">
							<a href="<?= base_url('home/peta') ?>" class="previous">&laquo; Back</a>
							<!-- <a href="<?= base_url('home/peta') ?>">
                                <img src="<?= base_url('assets/mbkm/') ?>img/back.png" alt="" width="75px" style="margin: 40px 0px 0px 75px">
                            </a> -->
						</div>
					</li>

			</nav>
		</div>
		<div class="col-lg-10">
			<div class="container">
				<div class="card" style="margin-left:-37px;width:78.5rem">
					<div class="card-body">

						<a style="transform: translateY(10px);" href="<?= base_url('home/peta') ?>" class="back"><img src="<?= base_url('assets/mbkm/') ?>img/sidebar/back (1) 3.png"></a>

						<a href="<?= base_url('home/index') ?>" class="back"><img style="width: 50px; margin-left: -10px;" src="<?= base_url('assets/mbkm/') ?>img/logo kab bogor 1.png"></a>

						<!--  <nav class="hamburgerMenu">
                             <ul>
                                <li><a href="<?= base_url('home/index'); ?>">Home</a></li>
                                <li><a href="<?= base_url('home/peta') ?>">Back</a></li>
                            </ul>

                            <div class="menu-toggle">
                                <input type="checkbox">
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                            </nav> -->
						<div>
							<?php foreach ($kecamatan as $nama) : ?>
								<h2 style="font-weight:bolder">List Data Inovasi Kecamatan <?= $nama->nama_kecamatan ?></h2>
							<?php endforeach; ?>
							<p style="margin-top:-10px;font-size:large">Inovasi Kabupaten Bogor</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<body>



			<div class="col-lg-10 ">
				<div class="container" id="test">
					<div class="overflow-x" style="margin-top:-40rem;margin-left:250px;width:76.5rem;">
						<table class="table table-striped align-middle mb-1 " id="table_id">
							<thead class="table-light">
								<tr style="font-size:14px;">
									<th>No</th>
									<th>Judul Inovasi</th>
									<th>Kategori Inovasi</th>
									<th>Kategori Innovator</th>
									<th>Nama Innovator</th>
									<th>Kecamatan</th>
									<th>Aksi</th>

								</tr>
							</thead>
							<tbody>
								<?php $i = 1;
								foreach ($inovasi as $a) : ?>
									<tr>
										<td><?= $i++ ?></td>
										<td><?= $a->nama_inovasi ?></td>
										<td><?= $a->nama_bidang_inovasi ?></td>
										<td><?= $a->nama_kategori_inovator ?></td>
										<td><a href="" data-bs-toggle="modal" data-bs-target="#modalInovator<?= $a->id_inovator ?>"><?= $a->nama_inovator ?></a></td>

										<td><?= $a->nama_kecamatan ?></td>
										<td>
											<a href="" data-bs-toggle="modal" data-bs-target="#modalInovasi<?= $a->id_inovasi ?>"><i class="fa-solid fa-eye"></i></a>
										</td>

									</tr>
								<?php endforeach; ?>

							</tbody>
						</table>
					</div>
				</div>
			</div>
		</body>
		<?php foreach ($inovasi as $a) : ?>
			<div class="modal fade" id="modalInovasi<?= $a->id_inovasi ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog  modal-dialog-centered">
					<div class="modal-content">
						<div style="background-color:#E5E9F5;" class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel"><b>Informasi Detail Inovasi</b></h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">

							<img src="https://tim1.d-undangan.buzz/assets/images/upload/foto_inovasi/<?= $a->foto_inovasi ?>" alt="" style="height:120px;width:90px;box-shadow:7px 7px #D9D9D9">
							<p style="margin-left:110px;margin-top:-120px;font-weight:700"><?= $a->nama_inovasi ?></p>
							<p style="margin-left:110px;margin-top:-20px;"><?= $a->nama_inovator ?></p>
							<h6 style="font-weight:700;margin-top:100px">Kategori Inovasi</h6>
							<input type="text" class="form-control" disabled value="<?= $a->nama_bidang_inovasi ?>">
							<div class="deskripsi">
								<h6>Deskripsi</h6>
								<?php if ($a->deskripsi == '') : ?>
									<textarea class="form-control" disabled> - </textarea>
								<?php else : ?>
									<textarea class="form-control" disabled><?= $a->deskripsi ?></textarea>
								<?php endif; ?>
							</div>
							<div class="manfaat">
								<h6>Manfaat Inovasi</h6>
								<?php if ($a->manfaat_inovasi == '') : ?>
									<textarea class="form-control" disabled> - </textarea>
								<?php else : ?>
									<textarea class="form-control" disabled><?= $a->manfaat_inovasi ?></textarea>
								<?php endif; ?>
								<div class="tanggal">
									<h6>Tahun Pembuatan</h6>
									<input type="text" class="form-control" disabled value="<?= $a->tahun_pembuatan_inovasi ?>">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		<?php endforeach; ?>
		<?php foreach ($inovator as $a) : ?>
			<div class="modal fade" id="modalInovator<?= $a->id_inovator ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content">
						<div style="background-color:#E5E9F5;" class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel"><b>Informasi Detail Innovator</b></h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">

							<img src="https://tim1.d-undangan.buzz/assets/images/upload/foto_inovator/<?= $a->foto_inovator ?>" alt="" style="height:120px;width:90px;box-shadow:7px 7px #D9D9D9">
							<p style="margin-top:20px;font-weight:700"><?= $a->nama_inovator ?></p>

							<h6 style="font-weight:700;margin-top:30px">Kategori Innovator</h6>
							<input type="text" class="form-control" disabled value="<?= $a->nama_kategori_inovator ?>">
							<div class="deskripsi">
								<h6>Email</h6>
								<input type="text" class="form-control" disabled value="<?= $a->email ?>">
							</div>
							<div class="manfaat">
								<h6>Alamat</h6>
								<input type="text" class="form-control" disabled value="<?= $a->alamat ?>">
								<div class="tanggal">
									<h6>Instansi</h6>
									<?php if ($a->id_instansi == null || $a->id_instansi == '') : ?>
										<input type="text" class="form-control" value="-" disabled>
									<?php else : ?>
										<input type="text" class="form-control" value="<?= $a->nama_instansi ?>" disabled>
									<?php endif; ?>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		<?php endforeach; ?>
	</div>
</div>




<script src=" https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js">
</script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.0/js/jquery.dataTables.min.js"></script>
<script>
	$(document).ready(function() {
		$('#table_id').DataTable({
			scrollX: true,

			"scrollY": "500px",
			"scrollCollapse": true,



		});



	});


	//     const menuToggle = document.querySelector('.card .card-body .menu-toggle input');
	//     const hamburgerMenu = document.querySelector('.card .card-body .hamburgerMenu ul');

	//     menuToggle.addEventListener('click', function(){
	//         hamburgerMenu.classList.toggle('slide');
	// });
</script>