<!doctype html>
<html lang="en">
<style>
	#mapgis {
		height: 85vh;
		width: 96rem;
		transform: translateX(-18px);


	}

	.info {
		padding: 10px 12px;
		font: 14px/16px Arial, Helvetica, sans-serif;
		height: 200px;
		background: white;
		background: rgba(255, 255, 255, 0.8);
		box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
		border-radius: 5px;
	}

	.info h4 {
		margin: 0 0 5px;
		color: #777;
	}

	.legend {
		text-align: left;
		line-height: 30px;
		color: #555;
	}

	.legend i {
		width: 18px;
		height: 30px;
		float: left;
		margin-right: 8px;
		opacity: 0.7;
	}


	@media screen and (max-width: 922px) {
		.container-fluid .title ul marquee {
			display: none;
		}


		.filter nav {
			transform: translateX(270px);
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
			margin-top: 60px;
			height: 80px;

		}




		#mapgis {
			width: 572px;
		}

		/* .filter nav {
			transform: translateX(-10px);


		} */

		.filter nav .form-group select {
			max-width: 135px;
			font-size: 10px;
			height: 30px;
			transform: translateY(8px);
			overflow-x: visible;
			margin-left: 70px;

		}

		.filter nav button {
			margin-left: -30px;

			transform: translate(-210px, 80px);

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

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="<?= base_url('assets/css/leaflet.css') ?>">
	<link rel="stylesheet" href="https://unpkg.com/leaflet@1.8.0/dist/leaflet.css" integrity="sha512-hoalWLoI8r4UszCkZ5kL8vayOGVae1oxXe/2A4AO6J9+580uKHDO3JdHb7NzwwzK5xr/Fs0W40kiNHxM9vyTtQ==" crossorigin="" />
	<link rel="stylesheet" href="<?= base_url('assets/js//leaflet-panel-layers-master/src/leaflet-panel-layers.css') ?>" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.0/css/jquery.dataTables.min.css">
	<link rel="shortcut icon" href="<?= base_url('assets/mbkm/img/logo kab bogor 1.png') ?>">
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://code.highcharts.com/modules/data.js"></script>
	<script src="https://code.highcharts.com/modules/drilldown.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>
	<script src="https://code.highcharts.com/modules/export-data.js"></script>
	<script src="https://code.highcharts.com/modules/accessibility.js"></script>
	<title>Peta Sebaran</title>
</head>
