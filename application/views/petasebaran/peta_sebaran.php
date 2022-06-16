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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.8.0/chart.min.js"></script>
<script src="https://unpkg.com/leaflet@1.6.0/dist/leaflet.js" integrity="sha512-gZwIG9x3wUXg2hdXF6+rVkLF/0Vi9U8D2Ntg4Ga5I5BZpVkVxlJWbSQtXPSiUTtC0TjtGOmxa1AJPuV0CPthew==" crossorigin=""></script>
<script src="<?= base_url('assets/js/leaflet.js') ?>"></script>
<script src="<?= base_url('assets/js//leaflet-panel-layers-master/src/leaflet-panel-layers.js') ?>"></script>
<script src="<?= base_url('assets/js/') ?>leaflet.ajax.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="<?= base_url('api/dataInovasiTahun') . "?kategoriinovasi=" . $inovasi . "&tahun=" . $tahun ?>"></script>
<script src="<?= base_url('api/dataInovatorTahun') . "?kategoriinovator=" . $inovator . "&tahun=" . $tahun ?>"></script>
<script src="<?= base_url('api/dataTahun') . "?tahun=" . $tahun ?>"></script>
<script src="<?= base_url('api/dataSemuaTahun') . "?kategoriinovasi=" . $inovasi . "&kategoriinovator=" . $inovator  ?>"></script>
<script src="<?= base_url('api/semuadata') ?>"></script>
<script src="<?= base_url('api/getkategori') . "?kategoriinovasi=" . $inovasi . "&kategoriinovator=" . $inovator . "&tahun=" . $tahun ?>"></script>
<script src="<?= base_url('api/data') ?>"></script>
<script src="<?= base_url('api/reset') ?>"></script>
<script src="<?= base_url('api/tahunGrafik') ?>"></script>
<script src="<?= base_url('api/grafikData') ?>"></script>
<script>
    date = new Date().getFullYear()
    var ctx = document.getElementById("myChart").getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: [],
            datasets: [{
                label: 'Grafik Inovasi Per Tahun',
                data: [12, 19, 3, 23, 2, 3],
                backgroundColor: ['#0C4886'],
                borderColor: ['#0C4886'],
                borderWidth: 1,
                borderRadius: 15
            }]
        }
    });
</script>
<script>
    //menampilkan map
    var map = L.map('mapgis', {
        center: [-6.588710080503552, 106.79743511461204],
        zoomControl: false,
        zoom: 10.5
    })

    let osm = L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw', {
        attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, ' +
            '<a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, ' +
            'Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
        id: 'mapbox/streets-v11'
    });
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

            let url = `<?= base_url() ?>assets/datakecamatan/` + data.shp
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
            url = "<?= base_url('api/semuadata/') ?>"

        } else if (inovasi != 'semua' && inovator == 'semua' && tahun == 'semua') {
            url = "<?= base_url('api/dataInovasi') ?>?kategoriinovasi=" + inovasi + ""

        } else if (inovasi == 'semua' && inovator != 'semua' && tahun == 'semua') {
            url = "<?= base_url('api/dataInovator') ?>?kategoriinovator=" + inovator + ""

        } else if (inovasi == 'semua' && inovator == 'semua' && tahun != 'semua') {
            url = "<?= base_url('api/dataTahun') ?>?tahun=" + tahun + ""

        } else if (inovasi != 'semua' && inovator == 'semua' && tahun != 'semua') {
            url = "<?= base_url('api/dataInovasiTahun') ?>?kategoriinovasi=" + inovasi + "&tahun=" + tahun + ""

        } else if (inovasi == 'semua' && inovator != 'semua' && tahun != 'semua') {
            url = "<?= base_url('api/dataInovatorTahun') ?>?kategoriinovator=" + inovator + "&tahun=" + tahun + ""

        } else if (inovasi != 'semua' && inovator != 'semua' && tahun == 'semua') {
            url = "<?= base_url('api/dataSemuaTahun') ?>?kategoriinovasi=" + inovasi + "&kategoriinovator=" + inovator + ""
        } else {

            url = "<?= base_url('api/getkategori') ?>?kategoriinovasi=" + inovasi + "&kategoriinovator=" + inovator + "&tahun=" + tahun + ""
        }
        let get = await fetch(url);
        loadJsonData = await get.json();

        kecamatanGroup.clearLayers();
        getGeoJson();

    }



    let reset = async () => {
        url = "<?= base_url('api/reset') ?>";
        let get = await fetch(url);
        loadJsonData = await get.json();

        kecamatanGroup.clearLayers();
        getGeoJson();
    }
    // warna peta
    function style(feature) {
        totaldata = 0
        for (i in loadJsonData) {
            if (loadJsonData[i].nama_kecamatan === feature.properties.WADMKC) {
                totaldata = loadJsonData[i].total
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
        let html = 'Silahkan Filter terlebih dahulu';
        if (feature.properties.WADMKC) {

            for (i in loadJsonData) {
                var data = loadJsonData[i]
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
                        '<br><b>Inovator : </b>' + data.total_inovator + '<br><b>Instansi : </b>' + data.total_instansi + '<br><a style="margin-left:120px;text-decoration:none; color:black" href="' + url + '"><hr>Detail<i class="fa fa-info-circle" style="margin-left:5px" aria-hidden="true"></i></a>'

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