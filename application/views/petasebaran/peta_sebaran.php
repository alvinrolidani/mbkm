<link rel="stylesheet" href="<?= base_url('assets/mbkm/') ?>style2.css">
<style>
	hr {
		height: 10px;
		border: 0px;

		box-shadow: 0 10px 10px -10px red inset;
		margin-top: 1px;
	}

	.leaflet-tooltip.leaf {
		background: transparent;
		border: none;
		box-shadow: none;
	}
</style>


<!-- Option 1: Bootstrap Bundle with Popper -->


<script>
	<?php
	$getId = $this->db->get('kecamatan')->result();
	foreach ($getId as $row) {
		$query = $this->db->query("SELECT inovasi.id_inovasi FROM `inovator` JOIN inovasi ON inovator.id_inovator=inovasi.id_inovasi JOIN kecamatan ON inovator.id_kecamatan = kecamatan.id_kecamatan WHERE inovator.id_kecamatan = '" . $row->id_kecamatan . "'");
		$data[$row->nama_kecamatan] = $query->num_rows();
	}
	echo "HOTSPOT = " . json_encode($data)
	?>
	//menampilkan map
	var map = L.map('mapgis', {
		center: [-6.588710080503552, 106.79743511461204],
		zoomControl: false,
		zoom: 10.5
	})

	var osm = new L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
		attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
	})
	map.addLayer(osm)
	L.control.zoom({
		position: 'bottomright'
	}).addTo(map)

	//mendapatkan warna berdasarkan jumla

	function getColor(d) {
		return d > 40 ? '#0F5304' :
			d > 30 ? '#1CBE0D' :
			d > 20 ? '#67E404' :
			d > 10 ? '#E15E03' :
			d > 0 ? '#FFA262' :
			'#686869';
	}

	let geoJsonLayer = kecamatan;
	let kecamatanGroup = L.layerGroup();
	let url;
	let grafik;
	let myChart;
	let myChart1;
	let loadGrafik
	let geojson;
	let loadJsonData;
	var kategoriinovator = document.querySelector("#kategoriinovator");
	var kategoriinovasi = document.querySelector("#kategoriinovasi");
	var kategoritahun = document.querySelector("#tahun");


	//mengambil geojson
	getGeoJson = async () => {
		for (i in geoJsonLayer) {
			var data = geoJsonLayer[i]
			var NAMA = data.nama_kecamatan

			url = `<?= base_url() ?>assets/datakecamatan/` + data.shp
			let get = await fetch(url)
			let json = await get.json();

			geojson = L.geoJson(json, {
				onEachFeature: onEachFeature,
				style: style
			}).addTo(kecamatanGroup)
		}
	}
	getGeoJson().then(() => {
		kecamatanGroup.addTo(map)
	})


	//change data kategori
	let changeData = async () => {


		var inovasi = kategoriinovasi.options[kategoriinovasi.selectedIndex].value
		var inovator = kategoriinovator.options[kategoriinovator.selectedIndex].value
		var tahun = kategoritahun.options[kategoritahun.selectedIndex].value


		if (inovasi == 'semua' && inovator == 'semua' && tahun == 'semua') {
			url = "<?= base_url('api/semuadata') ?>"
			grafik = "<?= base_url('api/semuaGrafik') ?>"

		} else if (inovasi != 'semua' && inovator == 'semua' && tahun == 'semua') {
			url = "<?= base_url('api/dataInovasi') ?>?kategoriinovasi=" + inovasi + ""
			grafik = "<?= base_url('api/grafikInovasi') ?>?kategoriinovasi=" + inovasi + ""

		} else if (inovasi == 'semua' && inovator != 'semua' && tahun == 'semua') {
			url = "<?= base_url('api/dataInovator') ?>?kategoriinovator=" + inovator + ""
			grafik = "<?= base_url('api/grafikInovator') ?>?kategoriinovator=" + inovator + ""

		} else if (inovasi == 'semua' && inovator == 'semua' && tahun != 'semua') {
			url = "<?= base_url('api/dataTahun') ?>?tahun=" + tahun + ""
			grafik = "<?= base_url('api/grafikTahun') ?>?tahun=" + tahun + ""

		} else if (inovasi != 'semua' && inovator == 'semua' && tahun != 'semua') {
			url = "<?= base_url('api/dataInovasiTahun') ?>?kategoriinovasi=" + inovasi + "&tahun=" + tahun + ""
			grafik = "<?= base_url('api/grafikInovasiTahun') ?>?kategoriinovasi=" + inovasi + "&tahun=" + tahun + ""

		} else if (inovasi == 'semua' && inovator != 'semua' && tahun != 'semua') {
			url = "<?= base_url('api/dataInovatorTahun') ?>?kategoriinovator=" + inovator + "&tahun=" + tahun + ""
			grafik = "<?= base_url('api/grafikInovatorTahun') ?>?kategoriinovator=" + inovator + "&tahun=" + tahun + ""

		} else if (inovasi != 'semua' && inovator != 'semua' && tahun == 'semua') {
			url = "<?= base_url('api/dataSemuaTahun') ?>?kategoriinovasi=" + inovasi + "&kategoriinovator=" + inovator + ""
			grafik = "<?= base_url('api/grafikSemuaTahun') ?>?kategoriinovasi=" + inovasi + "&kategoriinovator=" + inovator + ""
		} else {

			url = "<?= base_url('api/getkategori') ?>?kategoriinovasi=" + inovasi + "&kategoriinovator=" + inovator + "&tahun=" + tahun + ""
			grafik = "<?= base_url('api/grafikKategori') ?>?kategoriinovasi=" + inovasi + "&kategoriinovator=" + inovator + "&tahun=" + tahun + ""
		}
		// let getGrafik = await fetch(grafik)
		let get = await fetch(url);
		// loadGrafik = await getGrafik.json();
		loadJsonData = await get.json();
		document.getElementById("button").disabled = true
		kecamatanGroup.clearLayers();
		getGeoJson().then(() => {

			var ctx = document.getElementById("myChart").getContext('2d');
			var chart = document.getElementById("myChart2").getContext('2d');
			labels = [];
			Grafikinovasi = [];
			Grafikinovator = [];

			for (i in loadGrafik) {
				labels.push(loadGrafik[i].tahun_pembuatan_inovasi)
				Grafikinovasi.push(loadGrafik[i].total_inovasi);
				Grafikinovator.push(loadGrafik[i].total_inovator);
			}

			let background = [];

			for (i = 0; i < Grafikinovasi.length; i++) {
				if (Grafikinovasi[i] < 50) {
					background.push('#0C4886')
				}
				if (Grafikinovasi[i] >= 50 && Grafikinovasi[i] < 135) {
					background.push('#0C4886')
				}
				if (Grafikinovasi[i] >= 135) {
					background.push('orange')
				}
			}
			var option = {
				showTooltips: true,
			}

		});

	}



	let reset = async () => {
		url = "<?= base_url('api/reset') ?>";
		let get = await fetch(url);
		loadJsonData = await get.json();
		document.getElementById("button").disabled = false
		kecamatanGroup.clearLayers();
		getGeoJson().then(() => {
			myChart.destroy();
			myChart1.destroy();

		})
	}
	// warna peta
	function style(feature) {
		totaldata = HOTSPOT[feature.properties.WADMKC]
		for (i in loadJsonData) {
			if (loadJsonData[i].inovasi.nama_kecamatan === feature.properties.WADMKC) {
				totaldata = loadJsonData[i].inovasi.total
			}
		}
		return {
			color: 'white',
			fillColor: getColor(totaldata),
			weight: 2,
			opacity: 1,
			fillOpacity: 0.7,
			dashArray: 3
		}
	}

	function highlightFeature(e) {
		var layer = e.target;

		layer.setStyle({
			weight: 5,
			color: '#4E0101',
			dashArray: '',
			fillOpacity: 0.7
		});

		if (!L.Browser.ie && !L.Browser.opera && !L.Browser.edge) {
			layer.bringToFront();
		}
	}

	function resetHighlight(e) {
		geojson.resetStyle(e.target);
	}

	function onEachFeature(feature, layer) {
		let html = 'Silahkan Filter terlebih dahulu untuk melihat jumlah inovasi, inovator, dan grafik';
		if (feature.properties.WADMKC) {

			for (i in loadJsonData) {
				var data = loadJsonData[i].inovasi
				if (data.nama_kecamatan === feature.properties.WADMKC) {
					var inovasi = kategoriinovasi.options[kategoriinovasi.selectedIndex].value
					var inovator = kategoriinovator.options[kategoriinovator.selectedIndex].value
					var tahun = kategoritahun.options[kategoritahun.selectedIndex].value

					if (inovasi == 'semua' && inovator == 'semua' && tahun == 'semua') {
						url = "<?= base_url('home/detail/') ?>" + data.id_kecamatan + ""

					} else if (inovasi != 'semua' && inovator == 'semua' && tahun == 'semua') {
						url = "<?= base_url('home/detailInovasi/') ?>" + data.id_kecamatan + "?kategoriinovasi=" + inovasi + ""


					} else if (inovasi == 'semua' && inovator != 'semua' && tahun == 'semua') {
						url = "<?= base_url('home/detailInovator/') ?>" + data.id_kecamatan + "?kategoriinovator=" + inovator + ""

					} else if (inovasi == 'semua' && inovator == 'semua' && tahun != 'semua') {
						url = "<?= base_url('home/detailTahun/') ?>" + data.id_kecamatan + "?tahun=" + tahun + ""

					} else if (inovasi != 'semua' && inovator == 'semua' && tahun != 'semua') {
						url = "<?= base_url('home/detailInovasiTahun/') ?>" + data.id_kecamatan + "?kategoriinovasi=" + inovasi + "&tahun=" + tahun + ""

					} else if (inovasi == 'semua' && inovator != 'semua' && tahun != 'semua') {
						url = "<?= base_url('home/detailInovatorTahun/') ?>" + data.id_kecamatan + "?kategoriinovator=" + inovator + "&tahun=" + tahun + ""

					} else if (inovasi != 'semua' && inovator != 'semua' && tahun == 'semua') {
						url = "<?= base_url('home/detailSemuaTahun/') ?>" + data.id_kecamatan + "?kategoriinovasi=" + inovasi + "&kategoriinovator=" + inovator + ""
					} else {

						url = "<?= base_url('home/detailgetkategori/') ?>" + data.id_kecamatan + "?kategoriinovasi=" + inovasi + "&kategoriinovator=" + inovator + "&tahun=" + tahun + ""
					}
					html = '<b style="font-size:15px">Kecamatan ' + data.nama_kecamatan + '</b><hr>' + '<b>Inovasi : </b>' + data.total_inovasi +
						'<br><b>Innovator : </b>' + data.total_inovator + '<br><b>Instansi : </b>' + data.total_instansi + '<br><a style="margin-left:120px;text-decoration:none; color:black" href="' + url + '"><hr>Detail<i class="fa fa-info-circle" style="margin-left:5px" aria-hidden="true"></i></a>'

				}

			}
			layer.bindPopup(html), layer.bindTooltip(feature.properties.WADMKC, {
				permanent: true,
				direction: "center",
				className: "leaf"
			})
		}
		layer.on({
			mouseover: highlightFeature,
			mouseout: resetHighlight,

		});
	}
	//Legend
	var legend = L.control({
		position: 'bottomleft'
	});

	legend.onAdd = function(map) {

		var div = L.DomUtil.create('div', 'info legend'),
			grades = [0, 10, 20, 30, 40],
			labels = [];
		div.innerHTML = '<i style="background:#686869"></i> 0 Inovasi<br>';
		// loop through our density intervals and generate a label with a colored square for each interval
		for (var i = 0; i < grades.length; i++) {
			var lowValue = (grades[i] >= 0) ? (grades[i] + 1) : grades[i];
			var highValue = grades[i + 1];
			div.innerHTML +=
				'<i style="background:' +
				getColor(grades[i] + 1) +
				'"></i> ' +
				lowValue +
				(highValue ? " &ndash; " + highValue + " Inovasi<br> " : "+ Inovasi");

		}

		return div;
	};

	legend.addTo(map);
</script>

</html>
