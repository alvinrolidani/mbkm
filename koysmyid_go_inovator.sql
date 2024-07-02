-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 08 Jun 2023 pada 13.22
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koysmyid_go_inovator`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `id_akun` int NOT NULL,
  `status_akun` int NOT NULL DEFAULT '1',
  `role_akun` int NOT NULL DEFAULT '1',
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`id_akun`, `status_akun`, `role_akun`, `username`, `email`, `password`) VALUES
(1, 2, 1, 'mubitz', '10bitarchive@gmail.com', '123'),
(15, 2, 1, 'eee', 'mubitz11@gmail.com', '1'),
(16, 1, 1, 'kapi', 'cb@gmail.com', '12'),
(17, 2, 1, 'eee', 'mubit1@gmail.com', '$2y$10$1Yce5rgVoby8xSs5y4IwUOUZFlk/ykYS7emEsqNYCCPRhemlPx99O'),
(18, 2, 1, 'admin', 'admin@gmail.com', 'admin123'),
(19, 2, 2, 'inovator', 'inovator@gmail.com', 'inovator123'),
(20, 2, 1, 'hanra', 'farhanrajab15@gmail.com', '123'),
(666, 2, 1, 'bzndenis', 'bzndenis@gmail.com', '123'),
(667, 1, 2, 'test', 'rpluikase@gmail.com', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int NOT NULL,
  `nama_anggota` text NOT NULL,
  `email_anggota` varchar(50) DEFAULT NULL,
  `alamat_anggota` text,
  `no_telp_anggota` varchar(13) DEFAULT NULL,
  `foto_anggota` varchar(100) NOT NULL DEFAULT 'default.png',
  `id_inovasi` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama_anggota`, `email_anggota`, `alamat_anggota`, `no_telp_anggota`, `foto_anggota`, `id_inovasi`) VALUES
(1, 'YOGA RIVALDI-MUHAMMAD RIDLO ADITYA-MUTHIA REZKY ANGGERAINI-NIA KURNIAWATI', NULL, 'Institut Pertanian Bogor\r\n', NULL, 'default.png', NULL),
(2, 'RINA ASTUTI-NABILLAH ANANDA SAKINAH', NULL, 'Institut Pertanian Bogor\r\n', NULL, 'default.png', NULL),
(3, 'RINA ASTUTI-NABILLAH ANANDA SAKINAH-ANNISA ZIKRIATIN NAFILAH-SEFTIAN SYAHRI PUTRA', NULL, NULL, NULL, 'default.png', NULL),
(4, 'MARTIN JAFAR NUGRAHA', NULL, 'Universitas Ibnu Khaldun\r\n', NULL, 'default.png', NULL),
(5, 'IKRAR ISLAMI-NELA RIZQI SAFITRI-PUTRI APRILIANI RIZAL', NULL, 'Universitas Djuanda\r\n', NULL, 'default.png', NULL),
(6, 'ERNI RUSTIANI, M.Farm, Apt-CYNTIA WULANDARI, M.Farm-Dra. TRIRAKHMA SOFIHIDAYATI, M.Si', NULL, 'Universitas Pakuan\r\n', NULL, 'default.png', NULL),
(7, 'M.IQBAL SURIYANSYAH-HARIO BAYU-RIZKY NURFAZRI', NULL, 'Universitas Pakuan\r\n', NULL, 'default.png', NULL),
(8, 'Drs. TEGUH IMAM SUBARKAH, M.Hum-IRA RIMA ANITA, SP, MM', NULL, 'Universitas Pakuan', NULL, 'default.png', NULL),
(9, 'NHADIRA NHESTRICIA, S.Farm,MKM, Apt', NULL, 'Universitas Pakuan', NULL, 'default.png', NULL),
(10, ' EMA KURNIA, S.Kom', NULL, 'Universitas Pakuan', NULL, 'default.png', NULL),
(11, 'MUHAMMAD IQBAL SURIANSYAH S.Kom', NULL, 'Universitas Pakuan', NULL, 'default.png', NULL),
(12, ' MUTIA RAHMAH-Dra. IGA MANIK W.M.Kes', NULL, '(UNB)/PERGURUAN TINGGI', NULL, 'default.png', NULL),
(13, 'RIVALDI SYAHDAN FIRDAUS-TUN SUSDIYANTI-RATNASARI HASIBUAN-INA LIDIAWATI', NULL, '(UNB)/PERGURUAN TINGGI', NULL, 'default.png', NULL),
(14, 'DIAN ARRISUJAYA, S.Pd, M.Si-NURLIDA DWIANISA', NULL, '(UNB)/PERGURUAN TINGGI', NULL, 'default.png', NULL),
(15, 'MOCHAMMAD GINANJAR', NULL, 'Universitas Djuanda', NULL, 'default.png', NULL),
(16, 'RETNO MARTANTI ENDAH LESTARI, SE, MM-NIZAM M ANDRIANTO, SP, MM', NULL, 'Universitas Djuanda', NULL, 'default.png', NULL),
(17, 'ERISTA AGUSTINA-ZIKRINA ISTIFARAH', NULL, '', NULL, 'default.png', NULL),
(18, 'Dr. ASADATUN ABDULLAH, M.Si, MSM-TAUFIK HIDAYAT, Spi, M.Si-RIYAN FAHROZAN, Spi', NULL, '', NULL, 'default.png', NULL),
(19, 'AMINULLAH', NULL, '', NULL, 'default.png', NULL),
(20, 'RIDZKI MAULANA HIDAYAT', NULL, '', NULL, 'default.png', NULL),
(21, 'HARYAGUNG ABDURAHMAN-SELLY SEPTI WIDIYASTUTI', NULL, '', NULL, 'default.png', NULL),
(22, 'DYAH FITRI PURNAMASARI-DADAN SAPUTRA', NULL, 'Bojong Gede', NULL, 'default.png', NULL),
(23, 'RESTI DANIA-NENG DARA AINUN', NULL, '(SMAN 1 CITEUREUP)', NULL, 'default.png', NULL),
(24, 'MUHAMAD JUNAEDI-MUHAMMAD FAJAR', NULL, 'SMKN 1 KEMANG', NULL, 'default.png', NULL),
(25, 'MILA HILIYAH-FERDIYAN SAPUTRA-REYNALDI SMKN 1 KEMANG', NULL, 'SMKN 1 KEMANG', NULL, 'default.png', NULL),
(26, 'INDRI ARFIANIE PUTRI-SIFA HAYATUNUFUS', NULL, 'SMAN 1 SUKARAJA', NULL, 'default.png', NULL),
(27, 'LOLA AMELIA-WAHYUDIN', NULL, 'SMAN 1 CARIU', NULL, 'default.png', NULL),
(28, 'LINDA IDRIYANI-VIAONA ROSALIA FADILAH', NULL, 'SMAN 1 NANGGUNG', NULL, 'default.png', NULL),
(29, 'HAERUL JANWAR-SERLI SRI MULYANI', NULL, 'SMAN 1 NANGGUNG', NULL, 'default.png', NULL),
(30, 'KARISKA-SRI NUR AWALIA DEWI', NULL, 'SMAN 1 CIGOMBONG', NULL, 'default.png', NULL),
(31, 'NABILA RIZKY PRATAMA-PENTI ARIANTI-PUTRA RAMADHAN-SIDIK AMARULAH', NULL, 'SMAN 1 CARINGIN', NULL, 'default.png', NULL),
(32, 'SYAHDA ELYSIA', NULL, 'SMAN 2 CIBINONG', NULL, 'default.png', NULL),
(33, 'AZMAH NURRAHMANI', NULL, 'SMAN 2 CIBINONG', NULL, 'default.png', NULL),
(34, 'FAUZAN AKMAL SUBARNAS', NULL, 'SMAN 2 CIBINONG', NULL, 'default.png', NULL),
(35, 'FITRIA MAHARANI S.A-FARIKA AZALIA', NULL, 'SMAN 1 CIAMPEA', NULL, 'default.png', NULL),
(36, 'NATASYA LULUATIN AL ANDALUSIA', NULL, 'SMAN 1 CIAMPEA', NULL, 'default.png', NULL),
(37, 'AUDIA ANJANI-DIAN PUTRI LESTAR-FARRAS BERLIAN ISLAMI-NADIRA AHDA DZIYA', NULL, 'SMAN 1  TAJURHALANG', NULL, 'default.png', NULL),
(38, 'AINUR RACHMAN-DANDI ROHIMAN', NULL, 'SMK INSAN KREATTIF', NULL, 'default.png', NULL),
(39, 'SHAHRANI NAWAWI-FAQUITA ZAHRA-M RAIHAN FIRDAUS', NULL, 'SMAN 1 BOJONGGEDE', NULL, 'default.png', NULL),
(40, 'FARREL TARUNA C-FITRI PRITASARI-SITI ZULFA', NULL, 'SMAN 1 BABAKAN MADANG', NULL, 'default.png', NULL),
(41, 'Dian Triwahyuni', NULL, 'POLTEKKES KEMENKES BANDUNG', NULL, 'default.png', NULL),
(42, 'Yuli Sumantri-Diki-Indri Permana', NULL, 'UNIDA', NULL, 'default.png', NULL),
(43, 'Anisa Oktaviani Kurnia-Elis Marpuah-Muhammad Aditya Farhan-Wilna Iznilillah', NULL, 'UNIDA', NULL, 'default.png', NULL),
(44, 'Nur\'Utami, S.TP., M.Si.-Devi Oktaviani S.TP.-Rina Kartini, S.TP.', NULL, 'UNIDA', NULL, 'default.png', NULL),
(45, 'Dr. Ir. Agoes Mardiono Jacoeb Dipl-Biol-Erin Apriliani Uandari Putri', NULL, 'IPB', NULL, 'default.png', NULL),
(46, 'IRMA ANGGRAENI-FAHMI NOOR FIQRI', NULL, 'UNIVERSITAS PAKUAN', NULL, 'default.png', NULL),
(47, 'MULYATI-YULIANA ALFIANI, DWI MONITA', NULL, 'UNIVERSITAS PAKUAN', NULL, 'default.png', NULL),
(48, 'MUHAMMAD ADITIYA SUTISNA-REVALDO OCTAVIANTO PAHLEVI-RIVAN NUR FIRDAUSI CIPTA', NULL, 'UNIVERSITAS PAKUAN', NULL, 'default.png', NULL),
(49, 'Dr.ASADATUN ABDULLAH, MSM, MSI-dr. NAUFAL MUHARAM NURDIN S.KeD MSI-JOKO AHADI PRIYANTO-WULANDARI DAN ANGREI VIONA SEULALAE', NULL, 'IPB', NULL, 'default.png', NULL),
(50, 'DIAN ARRISUJAYA', NULL, 'UNIVERSITAS NUSA BANGSA', NULL, 'default.png', NULL),
(51, 'EKO ASPRIYONO-MEYDI MULDANI', NULL, 'TAMAN SARI', NULL, 'default.png', NULL),
(52, 'Dr.ASSADATUN ABDULLAH, Spi, Msi, MSM-Prof. Dr.TATI NURHAYATI, Spi, RIZKY ALFIANSYAH, Spi-ANGGREI VIONA SEULALE, Spi-KIKI DWI RAHMAWATI', NULL, 'IPB', NULL, 'default.png', NULL),
(53, 'Dr.ASSADATUN ABDULLAH, Spi, Msi, MSM-Prof.Dr.Ir.NURJANAH-ZIEDAL MAFAAZ FAFAAZA EMHA, Spi-ANGGREI VIONA SEULALAE, Spi-KIKI DWI RAHMAWATI', NULL, 'IPB', NULL, 'default.png', NULL),
(54, 'INTAN KUSUMANINGRUM, S.Si-SITI WIWI MARWIYAH, S.TP', NULL, 'UNIVERSITAS DJUANDA', NULL, 'default.png', NULL),
(55, 'DEDN ARDIANSYAH-AGUNG DJATI WALUJO-MANSUR HIDAYAT-AHMAD MUHAEMIN', NULL, 'UNIVERSITAS PAKUAN (UNPAK)', NULL, 'default.png', NULL),
(56, 'EKA NURUL AGUSTA, S.TP-REVINA FAUZIAH, S.TP-SITI AMINAH, S.Pt, M.Si-LIA AMALIA, SS,ST,MT', NULL, 'UNIVERSITAS DJUANDA (UNIDA)', NULL, 'default.png', NULL),
(57, 'RIDWAN ESA-SETIYANI PUJI ARINI', NULL, 'CIBINONG', NULL, 'default.png', NULL),
(58, 'Farha fitrahul janah-Siti Aisyah', NULL, 'UNIVERSITAS IBNU KHALDUN (UIKA)', NULL, 'default.png', NULL),
(59, 'MEITA ARIFANY-HABIB WIBIYANTO-ALDI RIANTO', NULL, 'UNIVERSITAS IBNU KHALDUN (UIKA)', NULL, 'default.png', NULL),
(60, 'FADHLUN ARDHI FAKHREZI-MUHMAD ALIWAFA', NULL, 'UNIVERSITAS IBNU KHALDUN (UIKA)', NULL, 'default.png', NULL),
(61, 'SUHARTONO, SITI PATIMAH-PREDYUS FAN SUHERY', NULL, 'UNIVERSITAS IBNU KHALDUN (UIKA)', NULL, 'default.png', NULL),
(62, 'FATHUR RAHMAN MAKBUL-BAGUS FATWAN', NULL, 'UNIVERSITAS IBNU KHALDUN (UIKA)', NULL, 'default.png', NULL),
(63, 'HENDI HIDAYAT-MUHAMAD MUSLIH HIMAWAN', NULL, 'UNIVERSITAS IBNU KHALDUN (UIKA)', NULL, 'default.png', NULL),
(64, 'SYLVIANA YUNIAR', NULL, 'UNIVERSITAS IBNU KHALDUN (UIKA)', NULL, 'default.png', NULL),
(65, ' DANU MAHENDRA-SYLVIANA YUNIAR', NULL, 'UNIVERSITAS IBNU KHALDUN (UIKA)', NULL, 'default.png', NULL),
(66, 'ERLA SEVIANI-SEKAR AYU KIRANA', NULL, 'SMKN 1 LEUWILIANG', NULL, 'default.png', NULL),
(67, 'RUSDAH SANGGARWATI', NULL, 'SMAN 1 NANGGUNG', NULL, 'default.png', NULL),
(68, 'WINDA SARI PUSPITA', NULL, 'SMAN 1 NANGGUNG', NULL, 'default.png', NULL),
(69, 'ANDARLINE VALENTINA', NULL, 'SMAN 2 CIBINONG', NULL, 'default.png', NULL),
(70, 'NANDA AIND PUTI-RIO ALVIEN HASANA', NULL, 'SMAN 1 DRAMAGA', NULL, 'default.png', NULL),
(71, 'RANI RISNAWATI-EPTI MARDIANA', NULL, 'SMAN 1 DRAMAGA', NULL, 'default.png', NULL),
(72, 'JANARDANA ANINDITA PRAKOSA-MUHMMAD IDHAM RABBANI', NULL, 'SMAN 1 DRAMAGA', NULL, 'default.png', NULL),
(73, 'SALWA SASKIA METHA', NULL, 'SMPN 1 CIBINONG', NULL, 'default.png', NULL),
(74, 'WINDI WULANDARI', NULL, 'SMPN 1 CIBINONG', NULL, 'default.png', NULL),
(75, 'AILLEN KIRAMATA DAN SARAH NUR ALIFA', NULL, 'SMPN 1 CIBINONG', NULL, 'default.png', NULL),
(76, 'RIANA-ABDAL-LUSI-INTAN', NULL, 'SMPN 4 LEUWILIANG', NULL, 'default.png', NULL),
(77, 'IKRIMA FITRIA-KEIVA AYA FAUZIYYAH. L-LIVIA SOLEHA N', NULL, 'SMPN 4 LEUWILIANG', NULL, 'default.png', NULL),
(78, 'LISNA WATI-SINTA RELA', NULL, 'SMPN 4 LEUWILIANG', NULL, 'default.png', NULL),
(79, 'M.Si, Dr. Ir. Elis Dihansih, M.Si.-Dr. Ir. Deden Sudrajat, M.Si', NULL, 'UNIVERSITAS DJUANDA (UNIDA)', NULL, 'default.png', NULL),
(80, 'Dr. Ir Dede Kardaya, M.Si-Dr. Ir. Elis Dihansih, M.Si', NULL, 'UNIVERSITAS DJUANDA (UNIDA)', NULL, 'default.png', NULL),
(81, 'Ir. Sri Rejeki Retna Pertiwi, MS-Lia Amalia, ST., SS., MT', NULL, 'UNIVERSITAS DJUANDA (UNIDA)', NULL, 'default.png', NULL),
(82, 'Dr. Ir. Deden Sudrajat, M.Si', NULL, 'UNIVERSITAS DJUANDA (UNIDA)', NULL, 'default.png', NULL),
(83, 'M.Si, Dr. Ir. Mardiah, M.Si-Dr. Ir. Lukmanul Hakim, M.Si -Raafqi Ranasasmita, S.Si-Dr. Tetty Kemala, S.Si, M.Si-Dr. Dra. Gustini Syahbirin, M.S', NULL, 'UNIVERSITAS DJUANDA (UNIDA)', NULL, 'default.png', NULL),
(84, 'M. Arifin Nasution-ri Resti Oktaviani-Siti Patimah Indriyani-Zukhrifa Al Khoiri L', NULL, 'UNIVERSITAS DJUANDA (UNIDA)', NULL, 'default.png', NULL),
(85, 'Arul Abdulah-Alwi Azhar', NULL, 'UNIVERSITAS DJUANDA (UNIDA)', NULL, 'default.png', NULL),
(86, 'Ranna Septyani Andhika -Tiara Amanda Lestari\n', NULL, 'UNIVERSITAS DJUANDA (UNIDA)', NULL, 'default.png', NULL),
(87, 'Agung Permana-Sri Resti Oktaviani-Putri Apriliani Rizal-Deni Hermawan', NULL, 'UNIVERSITAS DJUANDA (UNIDA)', NULL, 'default.png', NULL),
(88, 'Alfi Sumantri-Yoga Adinata-Fitria Maharani', NULL, 'UNIVERSITAS DJUANDA (UNIDA)', NULL, 'default.png', NULL),
(89, 'Nida Fitriasari', NULL, 'UNIVERSITAS DJUANDA (UNIDA)', NULL, 'default.png', NULL),
(90, 'Lisda Yulyaningsih-Syifa Alhusna', NULL, 'UNIVERSITAS DJUANDA (UNIDA)', NULL, 'default.png', NULL),
(91, 'Nur Hidayah-Naryani-Ahmaludin-Nikita Oktavia-Nuraimy Citra', NULL, 'UNIVERSITAS DJUANDA (UNIDA)', NULL, 'default.png', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bidang_inovasi`
--

CREATE TABLE `bidang_inovasi` (
  `id_bidang_inovasi` int NOT NULL,
  `nama_bidang_inovasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `bidang_inovasi`
--

INSERT INTO `bidang_inovasi` (`id_bidang_inovasi`, `nama_bidang_inovasi`) VALUES
(1, 'Pendidikan'),
(2, 'Kesehatan'),
(3, 'Layanan Publik'),
(4, 'Lingkungan'),
(5, 'Kemiskinan'),
(6, 'Kuliner'),
(7, 'Pertanian'),
(8, 'Ekonomi'),
(9, 'Tata Kelola Pemerintah'),
(10, 'Lainnya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `desa`
--

CREATE TABLE `desa` (
  `id_desa` int NOT NULL,
  `id_kecamatan` int DEFAULT NULL,
  `nama_desa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `desa`
--

INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`) VALUES
(1, 320101, 'Pondok Rajeg'),
(2, 320101, 'Karadenan'),
(3, 320101, 'Harapanjaya'),
(4, 320101, 'Nanggewer'),
(5, 320101, 'Nanggewer Mekar'),
(6, 320101, 'Cibinong'),
(7, 320101, 'Pakansari'),
(8, 320101, 'Tengah'),
(9, 320101, 'Sukahati'),
(10, 320101, 'Ciriung'),
(11, 320101, 'Cirimekar'),
(12, 320101, 'Pabuaran'),
(13, 320101, 'Pabuaran Mekar'),
(14, 320102, 'Wanaherang'),
(15, 320102, 'Bojong Kulur'),
(16, 320102, 'Ciangsana'),
(17, 320102, 'Gunung Putri'),
(18, 320102, 'Bojong Nangka'),
(19, 320102, 'Tlajung Udik'),
(20, 320102, 'Cicadas'),
(21, 320102, 'Cikeas Udik'),
(22, 320102, 'Nagrak'),
(23, 320102, 'Karanggan'),
(24, 320103, 'Puspanegara'),
(25, 320103, 'Karang Asem Barat'),
(26, 320103, 'Puspasari'),
(27, 320103, 'Citeureup'),
(28, 320103, 'Leuwinutug'),
(29, 320103, 'Tajur'),
(30, 320103, 'Sanja'),
(31, 320103, 'Karang Asem Timur'),
(32, 320103, 'Tarikolot'),
(33, 320103, 'Gunungsari'),
(34, 320103, 'Tangkil'),
(35, 320103, 'Sukahati'),
(36, 320103, 'Hambalang'),
(37, 320103, 'Pasirmukti'),
(38, 320104, 'Gununggeulis'),
(39, 320104, 'Cilebut Timur'),
(40, 320104, 'Cilebut Barat'),
(41, 320104, 'Cibanon'),
(42, 320104, 'Nagrak'),
(43, 320104, 'Sukatani'),
(44, 320104, 'Sukaraja'),
(45, 320104, 'Cikeas'),
(46, 320104, 'Pasir Jambu'),
(47, 320104, 'Cimandala'),
(48, 320104, 'Cijujung'),
(49, 320104, 'Cadasngampar'),
(50, 320104, 'Pasirlaja'),
(51, 320105, 'Cijayanti'),
(52, 320105, 'Sumurbatu'),
(53, 320105, 'Sentul'),
(54, 320105, 'Karangtengah'),
(55, 320105, 'Cipambuan'),
(56, 320105, 'Kadumanggu'),
(57, 320105, 'Citaringgul'),
(58, 320105, 'Babakan Madang'),
(59, 320105, 'Bojong Koneng'),
(60, 320106, 'Sukamaju'),
(61, 320106, 'Sirnagalih'),
(62, 320106, 'Singajaya'),
(63, 320106, 'Sukasirna'),
(64, 320106, 'Sukanegara'),
(65, 320106, 'Sukamanah'),
(66, 320106, 'Weninggalih'),
(67, 320106, 'Cibodas'),
(68, 320106, 'Jonggol'),
(69, 320106, 'Bendungan'),
(70, 320106, 'Singasari'),
(71, 320106, 'Balekambang'),
(72, 320106, 'Sukajaya'),
(73, 320106, 'Sukagalih'),
(74, 320107, 'Pasirangin'),
(75, 320107, 'Mekarsari'),
(76, 320107, 'Mampir'),
(77, 320107, 'Dayeuh'),
(78, 320107, 'Gandoang'),
(79, 320107, 'Jatisari'),
(80, 320107, 'Cileungsi Kidul'),
(81, 320107, 'Cipeucang'),
(82, 320107, 'Situsari'),
(83, 320107, 'Cipenjo'),
(84, 320107, 'Limusnunggal'),
(85, 320107, 'Cileungsi'),
(86, 320108, 'Karyamekar'),
(87, 320108, 'Babakanraden'),
(88, 320108, 'Cikutamahi'),
(89, 320108, 'Kutamekar'),
(90, 320108, 'Cariu'),
(91, 320108, 'Mekarwangi'),
(92, 320108, 'Bantarkuning'),
(93, 320108, 'Sukajadi'),
(94, 320108, 'Tegalpanjang'),
(95, 320108, 'Cibatutiga'),
(96, 320109, 'Wargajaya'),
(97, 320109, 'Pabuaran'),
(98, 320109, 'Sukadamai'),
(99, 320109, 'Sukawangi'),
(100, 320109, 'Cibadak'),
(101, 320109, 'Sukaresmi'),
(102, 320109, 'Sukamulya'),
(103, 320109, 'Sukaharja'),
(104, 320109, 'Sirnajaya'),
(105, 320109, 'Sukamakmur'),
(106, 320110, 'Parung'),
(107, 320110, 'Iwul'),
(108, 320110, 'Bojongsempu'),
(109, 320110, 'Waru'),
(110, 320110, 'Cogreg'),
(111, 320110, 'Pamegarsari'),
(112, 320110, 'Warujaya'),
(113, 320110, 'Bojongindah'),
(114, 320110, 'Jabonmekar'),
(115, 320111, 'Cidokom'),
(116, 320111, 'Padurenan'),
(117, 320111, 'Pengasinan'),
(118, 320111, 'Curug'),
(119, 320111, 'Gunungsindur'),
(120, 320111, 'Jampang'),
(121, 320111, 'Cibadung'),
(122, 320111, 'Cibinong'),
(123, 320111, 'Rawakalong'),
(124, 320111, 'Pabuaran'),
(125, 320112, 'Atang Senjaya'),
(126, 320112, 'Bojong'),
(127, 320112, 'Parakanjaya'),
(128, 320112, 'Kemang'),
(129, 320112, 'Pabuaran'),
(130, 320112, 'Semplak Barat'),
(131, 320112, 'Jampang'),
(132, 320112, 'Pondok Udik'),
(133, 320112, 'Tegal'),
(134, 320113, 'Pabuaran'),
(135, 320113, 'Bojongbaru'),
(136, 320113, 'Cimanggis'),
(137, 320113, 'Susukan'),
(138, 320113, 'Ragajaya'),
(139, 320113, 'Kedungwaringin'),
(140, 320113, 'Waringinjaya'),
(141, 320113, 'Rawapanjang'),
(142, 320113, 'Bojonggede'),
(143, 320114, 'Leuwiliang'),
(144, 320114, 'Purasari'),
(145, 320114, 'Karyasari'),
(146, 320114, 'Pabangbon'),
(147, 320114, 'Karacak'),
(148, 320114, 'Barengkok'),
(149, 320114, 'Leuwimekar'),
(150, 320114, 'Puraseda'),
(151, 320114, 'Cibeber I'),
(152, 320114, 'Cibeber II'),
(153, 320114, 'Karehkel'),
(154, 320115, 'Ciampea'),
(155, 320115, 'Cinangka'),
(156, 320115, 'Cihideungudik'),
(157, 320115, 'Bojongjengkol'),
(158, 320115, 'Tegalwaru'),
(159, 320115, 'Cibuntu'),
(160, 320115, 'Cicadas'),
(161, 320115, 'Cibadak'),
(162, 320115, 'Bojongrangkas'),
(163, 320115, 'Cihideunghilir'),
(164, 320115, 'Cibanteng'),
(165, 320115, 'Benteng'),
(166, 320115, 'Ciampea Udik'),
(167, 320116, 'Situ Udik'),
(168, 320116, 'Situ Ilir'),
(169, 320116, 'Cemplang'),
(170, 320116, 'Cibatok I'),
(171, 320116, 'Ciaruteun Udik'),
(172, 320116, 'Leuweungkolot'),
(173, 320116, 'Cimanggu I'),
(174, 320116, 'Cimanggu II'),
(175, 320116, 'Dukuh'),
(176, 320116, 'Cijujung'),
(177, 320116, 'Ciaruteun Ilir'),
(178, 320116, 'Cibatok II'),
(179, 320116, 'Sukamaju'),
(180, 320116, 'Galuga'),
(181, 320116, 'Girimulya'),
(182, 320117, 'Purwabakti'),
(183, 320117, 'Cibunian'),
(184, 320117, 'Cibitungwetan'),
(185, 320117, 'Gunungmenyan'),
(186, 320117, 'Gunungbunder II'),
(187, 320117, 'Pasarean'),
(188, 320117, 'Cimayang'),
(189, 320117, 'Pamijahan'),
(190, 320117, 'Cibening'),
(191, 320117, 'Gunungbunder I'),
(192, 320117, 'Cibitung Kulon'),
(193, 320117, 'Gunung Picung'),
(194, 320117, 'Ciasihan'),
(195, 320117, 'Gunungsari'),
(196, 320117, 'Ciasmara'),
(197, 320118, 'Rumpin'),
(198, 320118, 'Leuwibatu'),
(199, 320118, 'Cidokom'),
(200, 320118, 'Gobang'),
(201, 320118, 'Cibodas'),
(202, 320118, 'Rabak'),
(203, 320118, 'Kampungsawah'),
(204, 320118, 'Cipinang'),
(205, 320118, 'Sukasari'),
(206, 320118, 'Tamansari'),
(207, 320118, 'Kertajaya'),
(208, 320118, 'Sukamulya'),
(209, 320118, 'Mekarsari'),
(210, 320118, 'Mekarjaya'),
(211, 320119, 'Curug'),
(212, 320119, 'Pangradin'),
(213, 320119, 'Kalongsawah'),
(214, 320119, 'Sipak'),
(215, 320119, 'Jasinga'),
(216, 320119, 'Koleang'),
(217, 320119, 'Cikopomayak'),
(218, 320119, 'Setu'),
(219, 320119, 'Barengkok'),
(220, 320119, 'Bagoang'),
(221, 320119, 'Pangaur'),
(222, 320119, 'Pamagersari'),
(223, 320119, 'Jugala Jaya'),
(224, 320119, 'Tegalwangi'),
(225, 320119, 'Neglasari'),
(226, 320119, 'Wirajaya'),
(227, 320120, 'Jagabaya'),
(228, 320120, 'Gorowong'),
(229, 320120, 'Dago'),
(230, 320120, 'Pingku'),
(231, 320120, 'Cikuda'),
(232, 320120, 'Parungpanjang'),
(233, 320120, 'Lumpang'),
(234, 320120, 'Cibunar'),
(235, 320120, 'Jagabita'),
(236, 320120, 'Gintungcilejet'),
(237, 320120, 'Kabasiran'),
(238, 320121, 'Malasari'),
(239, 320121, 'Curugbitung'),
(240, 320121, 'Cisarua'),
(241, 320121, 'Bantarkaret'),
(242, 320121, 'Hambaro'),
(243, 320121, 'Kalongliud'),
(244, 320121, 'Nanggung'),
(245, 320121, 'Parakanmuncang'),
(246, 320121, 'Pangkaljaya'),
(247, 320121, 'Sukaluyu'),
(248, 320121, 'Batu Tulis'),
(249, 320122, 'Sukamaju'),
(250, 320122, 'Cigudeg'),
(251, 320122, 'Bunar'),
(252, 320122, 'Banyuresmi'),
(253, 320122, 'Cintamanik'),
(254, 320122, 'Argapura'),
(255, 320122, 'Bangunjaya'),
(256, 320122, 'Rengasjajar'),
(257, 320122, 'Batujajar'),
(258, 320122, 'Wargajaya'),
(259, 320122, 'Sukaraksa'),
(260, 320122, 'Banyuwangi'),
(261, 320122, 'Banyuasih'),
(262, 320122, 'Mekarjaya'),
(263, 320122, 'Tegallega'),
(264, 320123, 'Tapos'),
(265, 320123, 'Ciomas'),
(266, 320123, 'Batok'),
(267, 320123, 'Babakan'),
(268, 320123, 'Tenjo'),
(269, 320123, 'Cilaku'),
(270, 320123, 'Singabraja'),
(271, 320123, 'Singabangsa'),
(272, 320123, 'Bojong'),
(273, 320124, 'Cileungsi'),
(274, 320124, 'Citapen'),
(275, 320124, 'Cibedug'),
(276, 320124, 'Jambuluwuk'),
(277, 320124, 'Banjarsari'),
(278, 320124, 'Teluk Pinang'),
(279, 320124, 'Banjar Waru'),
(280, 320124, 'Bendungan'),
(281, 320124, 'Pandan Sari'),
(282, 320124, 'Bojong Murni'),
(283, 320124, 'Banjar Wangi'),
(284, 320124, 'Ciawi'),
(285, 320124, 'Bitungsari'),
(286, 320125, 'Cisarua'),
(287, 320125, 'Batulayang'),
(288, 320125, 'Jogjogan'),
(289, 320125, 'Cibeureum'),
(290, 320125, 'Cilember'),
(291, 320125, 'Citeko'),
(292, 320125, 'Tugu Selatan'),
(293, 320125, 'Leuwimalang'),
(294, 320125, 'Kopo'),
(295, 320125, 'Tugu Utara'),
(296, 320126, 'Sukamaju'),
(297, 320126, 'Kuta'),
(298, 320126, 'Gadog'),
(299, 320126, 'Sukakarya'),
(300, 320126, 'Megamendung'),
(301, 320126, 'Cipayung Datar'),
(302, 320126, 'Sukamanah'),
(303, 320126, 'Sukagalih'),
(304, 320126, 'Cipayung Girang'),
(305, 320126, 'Sukamahi'),
(306, 320126, 'Sukaresmi'),
(307, 320126, 'Pasir Angin'),
(308, 320127, 'Pasir Muncang'),
(309, 320127, 'Cimande Hilir'),
(310, 320127, 'Ciderum'),
(311, 320127, 'Caringin'),
(312, 320127, 'Ciherang Pondok'),
(313, 320127, 'Cinagara'),
(314, 320127, 'Cimande'),
(315, 320127, 'Pancawati'),
(316, 320127, 'Muara Jaya'),
(317, 320127, 'Basir Buncir'),
(318, 320127, 'Lemah Duhur'),
(319, 320127, 'Tangkil'),
(320, 320128, 'Cijeruk'),
(321, 320128, 'Cipelang'),
(322, 320128, 'Warung Menteng'),
(323, 320128, 'Tajur Halang'),
(324, 320128, 'Cipicung'),
(325, 320128, 'Cibalung'),
(326, 320128, 'Sukaharja'),
(327, 320128, 'Palasari'),
(328, 320128, 'Tanjungsari'),
(329, 320129, 'Padasuka'),
(330, 320129, 'Mekarjaya'),
(331, 320129, 'Sukaharja'),
(332, 320129, 'Parakan'),
(333, 320129, 'Ciomas'),
(334, 320129, 'Pagelaran'),
(335, 320129, 'Sukamakmur'),
(336, 320129, 'Ciapus'),
(337, 320129, 'Kota Batu'),
(338, 320129, 'Laladon'),
(339, 320129, 'Ciomas Rahayu'),
(340, 320130, 'Sukadamai'),
(341, 320130, 'Ciherang'),
(342, 320130, 'Sinarsari'),
(343, 320130, 'Sukawening'),
(344, 320130, 'Petir'),
(345, 320130, 'Purwasari'),
(346, 320130, 'Cikarawang'),
(347, 320130, 'Babakan'),
(348, 320130, 'Dramaga'),
(349, 320130, 'Neglasari'),
(350, 320131, 'Sukamantri'),
(351, 320131, 'Sirnagalih'),
(352, 320131, 'Pasireurih'),
(353, 320131, 'Tamansari'),
(354, 320131, 'Sukaluyu'),
(355, 320131, 'Sukaresmi'),
(356, 320131, 'Sukajaya'),
(357, 320131, 'Sukajadi'),
(358, 320132, 'Klapanunggal'),
(359, 320132, 'Bojong'),
(360, 320132, 'Nambo'),
(361, 320132, 'Lulut'),
(362, 320132, 'Cikahuripan'),
(363, 320132, 'Kembang Kuning'),
(364, 320132, 'Bantar Jati'),
(365, 320132, 'Leuwikaret'),
(366, 320132, 'Ligarmukti'),
(367, 320133, 'Putat Nutug'),
(368, 320133, 'Ciseeng'),
(369, 320133, 'Parigi Mekar'),
(370, 320133, 'Cibentang'),
(371, 320133, 'Cibeuteung Udik'),
(372, 320133, 'Karihkil'),
(373, 320133, 'Babakan'),
(374, 320133, 'Cihoe'),
(375, 320133, 'Cibeuteung Muara'),
(376, 320133, 'Kuripan'),
(377, 320134, 'Bantarjaya'),
(378, 320134, 'Bantarsari'),
(379, 320134, 'Pasirgaok'),
(380, 320134, 'Rancabungur'),
(381, 320134, 'Mekarsari'),
(382, 320134, 'Candali'),
(383, 320134, 'Cimulang'),
(384, 320135, 'Cisarua'),
(385, 320135, 'Kiarasari'),
(386, 320135, 'Sukajaya'),
(387, 320135, 'Sipayung'),
(388, 320135, 'Cileuksa'),
(389, 320135, 'Kiarapandak'),
(390, 320135, 'Harkatjaya'),
(391, 320135, 'Sukamulih'),
(392, 320135, 'Pasir Madang'),
(393, 320135, 'Urug'),
(394, 320135, 'Jayaraharja'),
(395, 320136, 'Tanjungsari'),
(396, 320136, 'Selawangi'),
(397, 320136, 'Tanjungrasa'),
(398, 320136, 'Antajaya'),
(399, 320136, 'Pasir Tanjung'),
(400, 320136, 'Cibadak'),
(401, 320136, 'Sukarasa'),
(402, 320136, 'Sirnasari'),
(403, 320136, 'Buanajaya'),
(404, 320136, 'Sirnarasa'),
(405, 320137, 'Tajurhalang'),
(406, 320137, 'Citayam'),
(407, 320137, 'Sasak Panjang'),
(408, 320137, 'Nanggerang'),
(409, 320137, 'Sukmajaya'),
(410, 320137, 'Tonjong'),
(411, 320137, 'Kalisuren'),
(412, 320138, 'Cigombong'),
(413, 320138, 'Watesjaya'),
(414, 320138, 'Ciburuy'),
(415, 320138, 'Srogol'),
(416, 320138, 'Cisalada'),
(417, 320138, 'Tugujaya'),
(418, 320138, 'Pasirjaya'),
(419, 320138, 'Ciburayut'),
(420, 320138, 'Ciadeg'),
(421, 320139, 'Leuwisadeng'),
(422, 320139, 'Babakan Sadeng'),
(423, 320139, 'Sadeng Kolot'),
(424, 320139, 'Wangunjaya'),
(425, 320139, 'Kalong I'),
(426, 320139, 'Kalong II'),
(427, 320139, 'Sadeng'),
(428, 320139, 'Sibanteng'),
(429, 320140, 'Tapos I'),
(430, 320140, 'Tapos II'),
(431, 320140, 'Cibitung Tengah'),
(432, 320140, 'Situdaun'),
(433, 320140, 'Cinangneng'),
(434, 320140, 'Gunung Malang'),
(435, 320140, 'Gunung Mulya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inovasi`
--

CREATE TABLE `inovasi` (
  `id_inovasi` int NOT NULL,
  `nama_inovasi` varchar(70) NOT NULL,
  `status_inovasi` varchar(20) DEFAULT NULL,
  `tahun_pembuatan_inovasi` int NOT NULL,
  `id_bidang_inovasi` int DEFAULT NULL,
  `id_bidang_inovasi_2` int DEFAULT NULL,
  `id_bidang_inovasi_3` int DEFAULT NULL,
  `id_inovator` int DEFAULT NULL,
  `deskripsi` text NOT NULL,
  `penjaringan_ide` text,
  `manfaat_inovasi` text NOT NULL,
  `dampak_inovasi` text,
  `proposal_inovasi` varchar(50) NOT NULL,
  `dokumentasi_inovasi` varchar(70) DEFAULT NULL,
  `foto_inovasi` varchar(50) NOT NULL,
  `link_medsos` text,
  `video_link_youtube` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `inovasi`
--

INSERT INTO `inovasi` (`id_inovasi`, `nama_inovasi`, `status_inovasi`, `tahun_pembuatan_inovasi`, `id_bidang_inovasi`, `id_bidang_inovasi_2`, `id_bidang_inovasi_3`, `id_inovator`, `deskripsi`, `penjaringan_ide`, `manfaat_inovasi`, `dampak_inovasi`, `proposal_inovasi`, `dokumentasi_inovasi`, `foto_inovasi`, `link_medsos`, `video_link_youtube`) VALUES
(1, 'Chili Oil', 'Diterima', 2016, 4, NULL, NULL, 1, 'Manfaat dari inovasi ini untuk limbah menjadi hasil sampingan yang bernilai, optimalisasi margin, menstabilkan harga cabe dipasaran,  menambah pendapatan bagi petani cabe dan dapat digunakan berbagai masakan.', '', 'Manfaat dari inovasi ini untuk limbah menjadi hasil sampingan yang bernilai, optimalisasi margin, menstabilkan harga cabe dipasaran,  menambah pendapatan bagi petani cabe dan dapat digunakan berbagai masakan.', '', '', '', '1.png', '', ''),
(2, 'Pemanfaatan Daun Antanan Sebagai Minuman Teh', 'Diterima', 2016, 2, NULL, NULL, 2, 'meningkatkan pendapatan petani antanan, teh atanan sebagai asupan gizi dan pemeliharaan kesehatan', '', 'meningkatkan pendapatan petani antanan, teh atanan sebagai asupan gizi dan pemeliharaan kesehatan', '', '', '', '2.png', '', ''),
(3, 'Tapioka & Kompos Sebagai Media Semai Tanpa Plasktik', 'Diterima', 2016, 7, NULL, NULL, 3, 'Media semai dari tapioka dan kompos.', '', '(1) Media tanah lebih subur (2) Menghemat waktu persiapan semai (3) menghemat biaya tenaga kerja (4)mengurangi limbah plastik.', '', '', '', '3.png', '', ''),
(4, 'Pemupukan dengan sistem injektor pada tanaman pepaya', 'Diterima', 2016, 7, NULL, NULL, 4, 'Pemupukan dengan sistem injektor.', '', 'sebgai berikut : (1) Menambah wawasan dan pembelajaran untuk terus memperbaharui metode ini agar lebih sempurna, (2) Memotivikasi para pelaku pertanian agar terus dapat berkarya memajukan pertanian,(3) Mengurangi 30-60% biaya pembelian pupuk. Dan untuk kelebihan dari inovasi ini adalah pengaplikasian pemupukan lebih efisien dan hemat karena pemupukan diberikan selama 3-5 bulan 1 x (dimana persediaan dalam botol tampungan mulai terlihat habis) dan hasil produksi tanaman lebih baik (baik dikualitas dan kuantitas)  dibandingkan konvensional', '', '', '', '4.png', '', ''),
(5, 'Kerajinan dari koran bekas', 'Diterima', 2016, 4, NULL, NULL, 5, 'inovasi ini mengubah koras bekas menjadi sesuatu yang unik', '', 'untuk manuasi dan lingkungan (mengurangi pencemaran lingkungan)', '', '', '', '5.png', '', ''),
(6, 'Aneka Olahan Stik Ikan Lele\r\n', 'Diterima', 2016, 2, NULL, NULL, 6, 'Olahan stik dari lele.\r\n', '', '(1) Pemberdayaan masyarakat dalam mengentaskan kemiskinan (2) mengembangkan kreatifitas dan kemampuan untuk bersaing dalam kemajuan ilmu\r\n', '', '', '', '6.png', '', ''),
(7, 'Hidroponik Bawang Merah\r\n', 'Diterima', 2016, 7, NULL, NULL, 7, '(1) tidak perlu lahan luas (2) hasil panen lebih bersih (3) Hemat air (4) hemat waktu (5) tidak tergantung waktu.\r\n', '', '(1) Memangkas rantai distribusi (2) Menekan biaya produksi (3) meningkatkan kwalitas bawang merah (4) Swasembada bawang merah sekala rumah tangga (5) memenuhi kebutuhan sendiri (6)menghemat pengeluaran\r\n', '', '', '', '7.png', '', ''),
(8, 'Bisnis Produksi dan Pemasaran Minuman  Bunga & Buah Belimbing\r\n', 'Diterima', 2016, 2, NULL, NULL, 8, 'Minuman bunga dan buah belimbing.\r\n', '', '(1) Bahan baku mudah di dapat (2) Tidak memerlukan biaya tinggi (3) sebagai obat tradisonal (4) Menjadi minuman segar dingin dan menyehatkan (5) tidak ada efek samping (6) dapat diminum smua umur (7) dapat mengurangi sariawan (8) membantu mengurangi sakit tenggorokan (9) menambah stamina.\r\n', '', '', '', '8.png', '', ''),
(9, 'Sampah Sahabat Kita Tetapi Untuk Dimanfaatkan (Batako)\r\n\r\n', 'Diterima', 2016, 4, NULL, NULL, 9, 'inovasi ini merupakan bahan batako dari sampah yang dibakar dan hasil bakarannya (abu) dijadikan batako\r\n', '', '(1) bisa menekan biaya pembangunan, (2) mengurangi volume sampah, (3) menjaga lingkungan. Keunggulan dari inovasi ini bahan mudah didapat dan terjangkau\r\n', '', '', '', '9.png', '', ''),
(10, 'Industri Kreatif buah manggis menjadi sirup siap minum\r\n\r\n', 'Diterima', 2016, 2, NULL, NULL, 10, 'Inovasi Industri Kreatif buah manggis menjadi sirup siap minum\r\n', '', 'terciptanaya teknologi pengolahan sari buah manggis yang sederhana (2) produk yang mempunyai ciri khas dan menjadi oleh-oleh bagi smua wisatawan domestik dan internasional yang berkunjung ke Kab, Bogor (3) diharapkan tercipta masyarakat yang berprilaku produktif dan berwawasan lingkungan.\r\n', '', '', '', '10.png', '', ''),
(11, 'EGG Rolls Talas Bogor\r\n\r\n', 'Diterima', 2016, 2, NULL, NULL, 11, 'Egg Rolls ini menggunakan tepung lokal jadi non terigu sehingga gluten free\r\n', '', 'menambah pendapatan petani talas dan mempunyai ciri khas oleh-oleh\r\n', '', '', '', '11.png', '', ''),
(12, 'Brownis Talas\r\n', 'Diterima', 2016, 2, NULL, NULL, 12, 'Terbuat dari tepung talas\r\n', '', 'Mengangkat nilai hasil bumidan perekonomian para petani serta memberi sentuhan yang berbeda dan juga menambah varian dunia kuliner dan kelebihan dalam inovasi ini banyak mengandung vitamin dan mineral\r\n', '', '', '', '12.png', '', ''),
(13, 'Wajik dari Nanas\r\n', 'Diterima', 2016, 2, NULL, NULL, 13, 'Mengangkat nilai hasil bumi dan perekonomian para petani nanas dan memberi sentuhan yang berbeda dan juga menambah varian dunia kuliner\r\n', '', '(1) Mengandung vitamin C yang cukup (2) bahan baku utama dari bahan yang mudah di dapat (3) memberi varian rasa yang berbeda\r\n', '', '', '', '13.png', '', ''),
(14, 'Abon Melinjo\r\n\r\n', 'Diterima', 2016, 2, NULL, NULL, 14, 'Pemanfaatan Limbah Kulit Melinjo\r\n', '', '(1) Menambah nilai jual (2) memanfaatkan limbah sehingga mengurangi pencemaran pada lingkungan (3) hasil produksi lebih tahan lama dan dapat di konsumsi oleh kalangan luas.\r\n', '', '', '', '14.png', '', ''),
(15, 'Pemanfaatan Karung Goni\r\n', 'Diterima', 2016, 4, NULL, NULL, 15, 'inovasi merupakan bahan dari karung goni yang dijadikan tas dan bahan kerajinan lainnya\r\n', '', ': (meningkatkan kualitas hidup manusia melalui penemuan2 baru yang membantu dalam proses pemenuhan kehidupan keluarga (2) memungkinkan suatu wirausaha meningkatkan penjualan dan keuntungan yang dapat diperoleh dan keunggulan dalam inovasi ini : (1) Bahan baku mudah di dapat dan murah (2) Proses pembuatan sangat mudah (3) hasil produksi berpariatif.\r\n', '', '', '', '15.png', '', ''),
(16, 'Pemanfaatan Limbah Rumput liar & Sabut Kelapa Menjadi Kreatif\r\n', 'Diterima', 2016, 4, NULL, NULL, 16, 'Inovasi ini merupakan bahan dari rumput liar dan sabut kelapa yang dijadikan berbagai macam bentuk\r\n', '', '(1) Meningkatkan kualitas hidup manusia melalui penemuan-penemuan baru yang membantu proses pemenuhan kebutuhan hidup manusia (2) adanya peningkatan dalam kemampuan mendistribusikan kreaatifitas ke dalam wadah penciptaan sesuatu yang baru.\r\n', '', '', '', '16.png', '', ''),
(17, 'Yuli Sujatmoko\r\n', 'Diterima', 2016, 7, NULL, NULL, 17, 'Inovasi Pertanian Berkelanjutan Akuaponik 100% Organik\r\n', '\r\n', ':  (1) Populasi tanaman organic yang dapat ditanam 10 x lipat lebih banyak (2) tidak diperlukan lagi penyiangan (3) tidak ada lagi hama tanah (4) tidak perlu lg penyiraman (5) mendapatkan hasil ganda (6) tanaman tumbuh 2 x lipat (7) menggunakan.', '', '', '', '17.png', '', ''),
(18, 'Pupuk Organik Padat & Cair\r\n', 'Diterima', 2016, 7, NULL, NULL, 18, 'inovasi ini merupakan Pupuk Organik Padat untuk :  Menghambat penyakit pada bagian akar,  Memperkokoh batang pohon\r\n', '', 'Menghasilkan buah yang maksimal sedangkan Pupuk Organik Cair untuk :  Menghambat penyakit pada bagian akar,  Memperkokoh batang pohon.\r\n', '', '', '', '18.png', '', ''),
(19, 'Alat Filtrasi Air\r\n', 'Diterima', 2016, 5, NULL, NULL, 19, 'inovasi ini bisa mengubah air kotor menjadi bersih\r\n', '', 'Manfaat dari inovasi ini bisa mengubah air kotor dari sisa hujan dan buangan kamar mandi rumahan menjadi air bersih yang bisa digunakan untuk pembibitan ikan air tawar, mediat habitat ikan tawar dan bahan air minum.\r\n', '', '', '', '19.png', '', ''),
(20, 'Depo Cleaner\r\n', 'Diterima', 2016, 5, NULL, NULL, 20, 'Produk yang dihasilkan sabun cuci piring, sbun cuci tangan, sabun pembersih lantai, semir ban, oil pembersih karat atau noda mesin, oil pncegah karat.\r\n', '', 'mengurangi pengangguran, menambah pendapatan masyarakat sekitar dan harga yang terjangkau.\r\n', '', '', '', '20.png', '', ''),
(21, 'Sari iwoeng/sirup rebung\r\n', 'Diterima', 2016, 2, NULL, NULL, 21, 'Sirup dari iwoeng/rebung.\r\n', '', 'manfaat dari inovasi ini adalah mencegah terjadinya sirosis    hati/kanker hati, obesitas,    stroke,dan darah tinggi\r\n', '', '', '', '21.png', '', ''),
(22, 'Pembersih Lantai Ekstrak Kulit Manggis\r\n', 'Diterima', 2016, 4, NULL, NULL, 21, 'Pembersih lantai ekstrak kulit manggis.\r\n', '', 'untuk membantu membunuh kuman. mengatasi bau yang sangat membandel, kesat dan wangi kesegaran aroma\r\n', '', '', '', '22.png', '', ''),
(23, 'Teh Pala (Limbah Kulit Pala)\r\n', 'Diterima', 2016, 2, NULL, NULL, 23, 'minuman buah pala mengandung gizi buah pala yang terkandung di dalamnya, energi, protein lemak, karbohidrat,kalsium, fosfor, zat besi dan vitamin A selain itu kulit buah pala juga mengandung minyak atsiri dan zat samak\r\n', '', 'teh pala ini untuk menambah pendapatan petani pala\r\n', '', '', '', '23.png', '', ''),
(24, 'Tempe Siap Olah\r\n', 'Diterima', 2016, 4, NULL, NULL, 24, 'masyarakat tidak jenuh dengan smua yang ada, perlu variasi-variasi yang memotivasi masyarakat dan penyempurnaan fungsi penggunaan dari produk agar digunakan lebih baik\r\n', '', 'Menambah pendapatan petani kedelai dengan keunggulan inivasi ini adalah (1) Rasa yang unik (2)  tekstur sangat baik dalam kelas penilaian masyarakat luas (3) tahan lama dan tidak  cepat busuk meskipun produk ini tidak menggunakan pengawet/kimia/berbahaya.\r\n', '', '', '', '24.png', '', ''),
(25, 'Olahan Buah Mengkudu\r\n', 'Diterima', 2016, 1, NULL, NULL, 25, 'inovasi ini merupakan bahan dari buah mengkudu yang diolah menjadi Sari Mengkudu, Selai Mengkudu, Cuka Mengkudu dan Madu Mengkudu\r\n', '', '(1) Mengandung anti oksidan (2) merangsang kekebalan tubuh dan bersifat melawan tumor, meredakan sakit kepala, menurunkan tekanan darah tinggi, melancarkan pencernaan, anti bakteri, menurunkan kolesterol dll.\r\n', '', '', '', '25.png', '', ''),
(26, 'Produk dodol\r\n', 'Diterima', 2016, 2, NULL, NULL, 26, 'produk dodol yang ini adalah produk dodol dari Kecamatan Tenjo dan ini merupakan ciri khasnya di Kecamatan Tenjo, selain rasanya yang manis dan lembut dimakannya dodol tenjo ini kadaluwarsanya sampai 3 bulan.\r\n', '', 'Menambah pendapatan masyarakat UMKM di Desa Tenjo\r\n', '', '', '', '26.png', '', ''),
(27, 'Olahan Peyek Kacang, Pisang Susu dan Keripik Singkong\r\n', 'Diterima', 2016, 2, NULL, NULL, 27, 'olahan peyek,kacang, pisang susu dan keripik singkong ini merupakan olahan dari kampung Kecamatan Parung Panjang dan ini bisa dijadikan oleh-oleh. Manfaata dari olahan tersebut menambah pendapatan bagi petani singkong dan pisang.\r\n', '', 'Menambah pendapatan masyarakat UMKM\r\n', '', '', '', '27.png', '', ''),
(28, 'Coklat Ikan\r\n', 'Diterima', 2016, 2, NULL, NULL, 28, 'inovasi ini meruapakan bahan dari coklat dan ikan yang dibentuk seperti ikan.\r\n', '', '(1) PemenuhanGizi masyarakat lebih luas pada smua umur, semua kalangan dan smua kelas ekonomi (2) anak-anak sekolah mendapat jajanan yang murah tapi mempunyai gizi dan protein yang tinggi (3)Program pemerintah dalam peningkatan konsumsi gizi masyarakat terdukung (4) membantu pemerintah mengkampanyekan gemar makan ikan (5) Para pembudidaya ikan yang tergabung dalam UMKM Bina Sejahtera dapat merasakan lebih menguntungkan hal ini dicirikan dengan terus bertambahnya.\r\n', '', '', '', '28.png', '', ''),
(29, 'Sandal Diabet\r\n', 'Diterima', 2016, 1, NULL, NULL, 29, 'inovasi ini merupakan sandal kesehatan bagi penderita diabetes yang bahannya tidak terlalu berat dan didesain dengan sederhana.\r\n', '', 'Membantu para penderita diabetes dalam melakukan aktifitas terutama dalam berjalan, akan lebih nyaman dan terhindar dari rasa sakit akibat pembengkakan telapak kaki Keunggulan : (1) bahan baku mudah dan tidak terlalu mahal (2) Mudah di buat dan tidak perlu bantuan mesin yang rumit, cukup mesin jahit saja (3) si pemakai akan merasa nyaman karena menggunakan bahan yang sangat lembut.\r\n', '', '', '', '29.png', '', ''),
(30, 'Mocaf & olahan mocaf pengolahan rempah-rempah menjadi minuman & sari r', 'Diterima', 2016, 2, NULL, NULL, 30, ', inovasi ini merupakan bahan dari singkong karena di Kabupaten Bogor untuk petani singkong sangat banyak.\r\n', '', ': (1) Memberikan nilai tambah,sehingga masyarakat mempunyai alternatif lain dalam pemanfaatan singkong selain dijadikan tepung tapioka, gaplek (2) hasil panen petani lebih tahan lama setelah di pakai menjadi mocaf.\r\n', '', '', '', '30.png', '', ''),
(31, 'Pengolahan rempah-rempah menjadi minuman & sari rempah\r\n', 'Diterima', 2016, 2, NULL, NULL, 31, 'inovasi ini merupakan bahannya dari rempah-rempah yang ada di Kabupaten Bogor yang dijadikan minuman sari rempah. Minuman siap saji dari rempah asli indonesia\r\n', '', 'membantu menghilangkan pegal, masuk angin dan menjaga stamina tubuh Tahan lama masa penyimpanannya, diproduksi selain untuk     konsumsi, bertujuan juga agar  masyarakat bisa lebih mengenal lagi rempah alam yang ada diindonesia\r\n', '', '', '', '31.png', '', ''),
(32, 'Budi Untari\r\n', 'Diterima', 2016, 4, NULL, NULL, 32, 'Invasi rajutan\r\n', '', 'Menambah perekonomian keluarga.\r\n', '', '', '', '32.png', '', ''),
(33, 'BAKPAO TALAS\r\n', 'Diterima', 2017, 2, NULL, NULL, 33, 'Talas Bogor ternyata juga bisa dijadikan sebagai bahan utama bakpao.  Kualitas bakpao ini tidak kalah dengan kue lain yang dihasilkan oleh Talas Bogor dimana makanan ini pun cukup lembut ketika digigit sehingga cukup digemari pembeli. Bahkan bakpao ini juga memiliki varian rasa beragam dan penamannya cukup unik. Ada rasa Hayam Jeletot (ayam pedas), Hayam Gumeulis (ayam biasa), Coklat Ngacai (choco lava), Keju Le’eh (keju manis), Nut-Nutan (kacang tanah), Lumut (kacang hijau), Beureuman (kacang merah) dan Duren (durian).\r\n', '', 'Berinovasi menjadikan talas bogor menjadi Bakpao.\r\n', '', '', '', '33.png', '', ''),
(34, 'KERIPIK PISANG GAKUKU GANANA CHIPS\r\n', 'Diterima', 2017, 2, NULL, NULL, 34, 'Keripik pisang yang dengan packing yang kekinian\r\n', '', 'Meningkatkan perekonomian masyarakat kp. pasirtanjung di Kecamatan Tanjungsari\r\n', '', '', '', '34.png', '', ''),
(35, 'APLIKASI SMARTPHONE PERMAINAN EDUKASI ZIMBA (GIZI SEIMBANG)', 'Diterima', 2017, 3, NULL, NULL, 35, 'Permainan interaktif untuk membantu anak-anak usia 5-12 tahun mengetahui dan memahami tentang gizi seimbang dengan konsep B2SA (Beragam, Bergizi, Seimbang, dan Aman). Terdiri dari 4 papan permainan, 48 koin yang mewakili jenis makanan yang dikategorikan menjadi Zat Tenaga, Zat Pembangun, Zat Pengatur, dan Cita Rasa. Disajikan dengan warna-warni menarik untuk memudahkan anak mengingat dan memahami.', '', 'Mengetahui dan memahami tentang gizi seimbang dengan konsep B2SA (Beragam, Bergizi, Seimbang dan Aman)', '', '', '', '35.png', '', ''),
(36, 'PAPAN PERMAINAN EDUKASI ZIMBA (GIZI SEIMBANG)', 'Diterima', 2017, 3, NULL, NULL, 35, 'Konsep Kampung Zimba berawal di tahun 2016 dengan ditemukannya mainan edukasi yang diterima di seluruh puskesmas kota Bogor. Dengan pemahaman Zimba, Baban mengajak masyarakat jangan melihat makanannya, tetapi kandungan yang didalamnya seperti rengginang ? renggining yang banyak diproduksi di Desa Tamansari.', '', 'Permainan edukasi yang diberi nama zimba ini digunakan untuk sosialisasi hidup sehat kepada warga.', '', '', '', '36.png', '', ''),
(37, 'SUMUR RESAPAN GREENWELL DENGAN SISTEM KNOCKDOWN', 'Diterima', 2017, 5, NULL, NULL, 37, 'Sumur resapan yang dapat menyerap air lebih efektif, efisien, murah, dan tahan lama dengan menggunakan bahan baku lokal yang lebih baik, ramah lingkungan, dan kuat yang disebut \"Green Well\".', '', 'Peranan Green Well tidak hanya berimbas terhadap lingkungan saja, secara ekonomi Green Well membantu peningkatan ekonomi lokal, peningkatan pendapatan daerah melalui pajak dan berkontribusi pada angka Produk Domestik Regional Bruto. Selain itu Green Well turut berkontribusi dengan membuka lapangan pekerjaan, pengembangan teknologi sumur resapan, membuka peluang wirausaha berbasis teknologi baru dan pemanfaatan serta pendayagunaan bahan baku lokal.', '', '', '', '37.png', '', ''),
(38, 'BULS ICE', 'Diterima', 2017, 1, NULL, NULL, 38, 'Bulls Ice adalah penambah nafsu makan anak yang dimodernisasi berupa es krim.', '', 'Meningkatkan Nafsu Makan Anak Balita Di Kecamatan Citeureup Kabupaten Bogor Dengan Buls Ice', '', '', '', '38.png', '', ''),
(39, 'KERTAS SERAI', 'Diterima', 2017, 4, NULL, NULL, 39, 'Kertas dari limbah serai wangi', '', 'Sebagai sarana informasi dan pembelajaran mengenai pemanfaatan serai\n Membuka peluang usaha dan mengurangi pemakaian kayu untuk kertas', '', '', '', '39.png', '', ''),
(40, 'SHAMPOO LENGKUAS', 'Diterima', 2017, 1, NULL, NULL, 40, 'Profuk inovasi yang dibuat yaitu \"Shampoo Lengkuas\" memiliki pH sebesar 8-9. Shampoo yang kami hasilkan juga memiliki viskositas yang cukup (kental). Produk tersebut kami beri nama SAGALA (Shampoo Galanga) mengambil nama dari nama binomial tanaman lengkuas sendiri Alpinia Galanga. Produk shampoo yang kami hasilkan dirancang untuk mengatasi ketombe, rambut kering rontok dengan menambahkan zat aktif berupa ekstrak lengkuas dan air hasil penyulingan lengkuas.', '', 'Sebagai media informasi untuk pemanfaatan Lengkuas\n Sebagai media pembelajaran inovasi produk bagi penulis maupun khalayak umum', '', '', '', '40.png', '', ''),
(41, 'LILIN SEREH WANGI SI PENGUSIR NYAMUK', 'Diterima', 2017, 4, NULL, NULL, 41, 'Lilin sereh wangi pengusir nyamuk. Lilin adalah sumber penerangan yang terdiri dari sumbu yang diselimuti oleh bahan bakar padat Sitronela yang merupakan komponen utama minyak atsiri sereh wangi memiliki bau yang tidak disukai oleh nyamuk.', '', 'manfaat sereh bagi kesehatan dan sebagai pengusir nyamuk', '', '', '', '41.png', '', ''),
(42, 'DAUR ULANG BARANG BEKAS MENJADI KARYA SENI BERNILAI EKONOMI', 'Diterima', 2017, 4, NULL, NULL, 42, 'Inovasi daur ulang barang bekas (limbah) menjadi seni bernilai ekonomi, khususnya para pelaku UMKM dapat membantu pemerintah mengatasi pengangguran, meningkatkan pendapatan asli daerah, serta mensukseskan program Kabupaten Bogor.', '', 'Meningkatkan kreasi produk dan pemasaran, serta mempertahankan ciri khas produk-produk asli daerah yang dapat menarik wisatawan baik domestik maupun manca negara.', '', '', '', '42.png', '', ''),
(43, 'BERAS INDIGENOUS FUNGSIONAL', 'Diterima', 2017, 1, NULL, NULL, 43, 'Beras Indigenous fungsional UMI ASIAH: Beras Fungsional untuk Meningkatkan Imunitas dan Air Susu Ibu Aman dan Halal merupakan produk beras fungsional dengan bahan baku utama daun katuk. Secara umum daun katuk mengandung sekitar 59 kalori per 100 gramnya. Katuk juga memiliki kandungan bermanfaat lainnya seperti berso, provitamin A dalam bentuk ?-carotene, vitamin C, minyak sayur, protein, dan mineral lainnya.', '', 'Kandungan unsur dan zat gizi yang tinggi\n Mengandungan zat antioksidan yang baik untuk tubuh\n Aman dan Halal\n Produk Pangan yang inovatif dan menarik, aromanya khas', '', '', '', '43.png', '', ''),
(44, 'PEMBUATAN LAMPU PENERANGAN JALAN UMUM (PJU) EMERGENCY', 'Diterima', 2017, 5, NULL, NULL, 44, 'Lampu PJU Emergency adalah sebuah lampu penerangan yang dapat menyala ketika gelap/tidak ada cahaya matahari dan akan mati secara otomatis ketika ada cahaya matahari. Hal ini terjadi baik pada saat ada aliran listrik PLN maupun pada saat tidak ada aliran listrik.', '', 'Menciptakan keselamatan khususnya pada malam hari, memberikan penerangan sebaik-baiknya walaupun terjadi pemadaman listrik, meningkatkan keamanan lingkungan atau mencegah kriminalitas, dan memberikan kenyamanan dan keindahan lingkungan.', '', '', '', '44.png', '', ''),
(45, 'TALAS BOGOR SEBAGAI BAHAN BAKU TALABOR FLAKE', 'Diterima', 2017, 2, NULL, NULL, 45, 'Bogor merupakan salah satu sentra penanaman talas terbesar di Indonesia setelah Malang. Produk flake dipilih karena flake adalah sereal siap saji yang memberikan kemudahan dalam memenuhi kebutuhan kalori dalam waktu relatif singkat dan praktis.', '', 'Mampu menghasilkan masyarakat yang kreatif dan inovatif dalam mengolah sumber daya alam yang unggul\n Mampu meningkatkan penghasilan masyarakat dengan produk-produk local\n Melestarikan makanan atau cemilan yang berbahan baku local', '', '', '', '45.png', '', ''),
(46, 'HIDROLISAT KOLAGEN KULIT IKAN UNTUK KOSMETIK', 'Diterima', 2017, 4, NULL, NULL, 46, 'Hidrolisat Kolagen Kulit Ikan: Peningkatan nilai tambah hasil samping industri filet ikan, produksi dan komersialisasinya untuk ingresien aktif kosmeutika (tindak lanjut program Minapolitan).', '', 'Meningkatkan nilai tambah hasil samping industri pengoalahan ikan melalui inovasi teknologi bebas limbah\n Meningkatkan kapasitas SDM lokal\n Meningkatkan daya saing UKM di tingkat global', '', '', '', '46.png', '', ''),
(47, 'MOBIL LISTRIK PENGANGKUT SAMPAH', 'Diterima', 2017, 4, NULL, NULL, 47, 'Mobil pengangkut sampah ini berbasis energi terbarukan yaitu listrik ramah lingkungan karena 0% emisi gas buang.\nDesainnya ergonomis dan sangat mudah dioperasikan.\nBiaya perawatannya rendah dibandingkan dengan mobil konvensional.\nMenghabiskan energi yang lebih sedikit dibandingkan yang berbahan bakar fosil.', '', 'Kendaraan ini akan menjadi solusi energy kedepanya\n Kendaraan ini sangat cocok diterapkan di Kabupaten Bogor yang tengah menuju Kabupaten termaju yaitu di bidang lingkungan hidup\n Kendaraan ini masih sangat mungkin dikembangkan untuk kendaraan disektor lain\n Sebagai sarana pengembangan potensi pemuda dalam hal teknologi', '', '', '', '47.png', '', ''),
(48, 'OLAH KOTORAN HEWAN DAN URINE SAPI JADI PUPUK CAIR DAN PADAT', 'Diterima', 2017, 7, NULL, NULL, 48, 'Peternakan sapi ini menghasilkan limbah padat dan limbah cair, limbah padatnya diolah menjadi pupuk kompos dan limbah cairnya akan diolah menjadi pupuk hayati cair.', '', 'Pupuk Hayati Cair ini mengandung mikroba penyubur tanah dan asam humat yang berasal dari air kencing sapi.\n Asam humat ini sebagai sumber karbon bagi mikroba, yang sebagai sumber nutrisinya\n Asam Humat ini berfungsi sebagai pelengkap penyubur tanah sehingga pertumbuhan akar tanaman menjadi lebih baik\n Pemakaian asam humat secara rutin dapat mengurangi pemakaian pupuk kimia,sebagai akibat dari hasil perbaikan tanah dan mikroba.', '', '', '', '48.png', '', ''),
(49, 'SEPEDA KAYU LIPAT (KAYUH)', 'Diterima', 2017, 1, NULL, NULL, 49, 'Pemanfaatan limbah kayu karet, sebagai modal transportasi yang ramah lingkungan bagi masyarakat Kabupaten Bogor.', '', 'Mengajak masyarakat untuk semakin hidup sehat \n Menjadi solusi sarana olahraga yang praktis\n Memberikan pengetahuan tentang green lifestyle\n Sangat cocok untuk digunakan bagi mereka yang tinggal di perkotaan', '', '', '', '49.png', '', ''),
(50, 'MESIN SOPAK KAYU (MESOKU)', 'Diterima', 2017, 5, NULL, NULL, 50, 'Mesin sopak kayu adalah mesin yang dibuat khusus untuk pengrajin bunga kayu. Tujuannya adalah untuk mempermudah proses pembuatan kreasi bunga kayu.', '', 'Mesin ini diciptakan atas dasar atm ( Amati , tiru , modifikasi ) sesuai kebutuhan pengrajin atau produsen bunga kayu.\n Hasil dari menyepakan kayu ini tidak hanya dapat berkreasi pada bunga kayu saja , tetapi bisa untuk kreasi lainya seperti tempat tisu , tempat dinding pas bunga dll\n Efisiensi waktu', '', '', '', '50.png', '', ''),
(51, 'PEMANFAATAN LIMBAH PERASAN SAGU SINGKONG SEBAGAI BAHAN BAKU CAMPURAN P', 'Diterima', 2017, 4, NULL, NULL, 51, 'Hasil inovasi dari pemanfaatan limbah perasan sagu singkong sebagai campuran bahan baku pembuatan list profile gypsum menghemat pembelian bahan baku, hasil lebih panjang dan ringan serta diharapkan keuntungan pun meningkat dalam penjualan.', '', '1. Bisa lebih hemat dalam biaya dan bahan baku pembuatan gypsum dan \n  keuntungan dari penjualan pun bisa meningkat\n  2. Dengan perpaduan bahan baku tepung gypsum dan tepung ampas perasan \n  sagu singkong hasil cetakan lebih panjang hasilnya,\n  3. Bobot berat hasil cetakan gypsum lebih ringan ini karena di pengaruhi oleh \n  bahan baku dari tepung ampas perasan sagu singkong\n  4. Kualitas hasil cetakan tidak jauh berbeda dengan yang menggunakan murni\n  tepung gypsum', '', '', '', '51.png', '', ''),
(52, 'PENGOLAHAN TANDAN KOSONG KELAPA SAWIT SEBAGAI PENGUAT POLIMER PADA APL', 'Diterima', 2017, 4, NULL, NULL, 52, 'Mengolah limbah tandan kosong kelapa sawit menjadi serat dengan berbagai macam ukuran (pajang, pendek, mikro dan makro). Serat ini menjadi bahan baku pembuatan helm. Pemilihan ukuran serat bertujuan untuk mengetahui pengaruhnya terhadap kualitas helm dan besarnya biaya produksi. Sesuai dengan bahannya maka produk ini dinamai Green Composit Helmet. Kelebihan helm tandan kelapa sawit ini dibandingkan helm yang beredar saat ini terletak pada seratnya.', '', 'Memanfaatkan limbah kelapa sawit sehingga mengurangi masalah limbah.', '', '', '', '52.png', '', ''),
(53, 'NGE-MEAL CAKE', 'Diterima', 2017, 2, NULL, NULL, 53, 'Cake gulung dari tepung jamur dan selai jambu merah.', '', 'Meningkatkan pereknomian masyarakat dan menambah penghasilan', '', '', '', '53.png', '', ''),
(54, 'HOK LO PAN MANIS DAN SUNDANESE SPRINGROLL', 'Diterima', 2017, 4, NULL, NULL, 54, 'Hok Lo Pan atau terang bulan, inovasi ini membuat tempat kemasan makanan.', '', 'Meningkatkan pereknomian masyarakat dan menambah penghasilan', '', '', '', '54.png', '', ''),
(55, 'INSTAN MASHED UBI JALAR', 'Diterima', 2017, 2, NULL, NULL, 55, 'Produk instan berbahan dasar ubi jalar, dengan penambahan sedikit air hangat akan menjadi pangan berbentuk mashed.', '', 'Ubi jalar memiliki kandungan karbohidrat yang tinggi sehingga diharapkan instan mashed ubi jalar ini dapat menjadi alternatif produk pangan instan pengganti mi bagi pengungsi korban bencana alam. \n Pemanfaatan ubi jalar menjadi berbagai produk akan meningkatkan taraf kehidupan petani ubi jalar.', '', '', '', '55.png', '', ''),
(56, 'KREASI BUNGA KAYU', 'Diterima', 2017, 4, NULL, NULL, 56, 'Kreasi Bunga Kayu dari limbah serutan kayu albasiah.', '', 'membantu perekonomian para pengrajin dan pelaku Usaha Mikro\n Agar dapat menjadi sumber mata pencaharian\n Untuk membantu anak-anak sekolah dari SD-SMA agar mampu berkreasi merakit bunga kayu dan menjual sehingga dapat membantu pendapatan keluarga.', '', '', '', '56.png', '', ''),
(57, 'PERAKITAN LAMPU LED', 'Diterima', 2017, 5, NULL, NULL, 57, 'Light Emitting Diode atau sering disingkat dengan LED adalah komponen elektronika yang dapat memancarkan cahaya monokromatik ketika diberikan tegangan maju. LED merupakan keluarga Dioda yang terbuat dari bahan semikonduktor. Warna-warna Cahaya yang dipancarkan oleh LED tergantung pada jenis bahan semikonduktor yang dipergunakannya. LED juga dapat memancarkan sinar inframerah yang tidak tampak oleh mata seperti yang sering kita jumpai pada Remote Control TV ataupun Remote Control. Bentuk LED mirip dengan sebuah bohlam (bola lampu) yang kecil dan dapat dipasangkan dengan mudah ke dalam berbagai perangkat elektronika. Berbeda dengan Lampu Pijar, LED tidak memerlukan pembakaran filamen sehingga tidak menimbulkan panas dalam menghasilkan cahaya. Oleh karena itu, saat ini LED (Light Emitting Diode) yang bentuknya kecil telah banyak digunakan sebagai lampu penerang dalam LCD TV yang mengganti lampu tube. perangkat elektronik lainnya.', '', '1.Nilai luminasi lebih baik (karena menggunakan spesifikasi SMD 5730)\n 2. Model/susunan tata letak lampu yang bisa diatur sesuai keinginan.', '', '', '', '57.png', '', ''),
(58, 'TAS BELANJA BERBAHAN KORAN', 'Diterima', 2017, 4, NULL, NULL, 58, 'Mendaur ulang kertas dengan proses yang sederhana yaitu cara quiling (menggulung) dan menyambung sehingga terangkai menjadi satu ikatan, alhasil menjadi sebuah kantong yang terbuat dari kertas.', '', 'Membuka lapangan kerja\n Peningkatan dan penambahan keterampilan tenaga kerja\n Pemberdayaan dibidang pendidikan, khususnya penelitian dan pengembangan teknologi tepat guna untuk industry rumah tangga dan pelatihan.\n Memfasilitasi pemerintah dalam mengkampanyekan sadar lingkungan secara langsung, khususnya di lingkungan sekolah dan kantor dalam mengelola dan memanfaatkan sampah kertas.\n Menyalurkan kreatifitas masyarakat dalam mengembangkan ekonomi bisnis yang berwawasan lingkungan.\n Kontribusi langsung dalam menurunkan beban sampah.\n Kontribusi langsung dalam menanggulangi masalah ekonomi.', '', '', '', '58.png', '', ''),
(59, 'PURE NATURAL, ASELI INDONESIA', 'Diterima', 2017, 1, NULL, NULL, 59, 'Pure Natural, Aseli Indonesia adalah produksi Jamu yang tidak menggunakan bahan kimia dengan produk yaitu: Rebeken, Rekusam, Recayang, Reyokan, Siputra, Siputri, Sikecil.', '', 'Produk merupakan inovasi dengan tampilan yng praktis, menarik dan kekinian.\nKualitas lebih baik.\nRasa unik.\nEksploitasi tanaman herbal asli indonesia tinggi.', '', '', '', '59.png', '', ''),
(60, 'PENYEMPROT HAMA TENAGA SURYA', 'Diterima', 2017, 7, NULL, NULL, 60, 'Seiring dengan perkembangan jaman sekarang telah banyak dibuat alat penyemprot hama elektrik yang didalamnya sudah terdapat mesin pompa dan sumber energy penggerak ( Batery/Aki ) sehingga seorang tidak lagi memompa mesin atau tinggal menekan handel penyemprot maka mesin sudah menyemburkan air. Meskipun sudah ada mesin penyemprot hama elektrik bukan berarti permasalahan selesai, karena pada saat pemakaian terus menerus maka energi yang tersimpan pada battery lama kelamaan akan habis, jika hal tersebut terjadi maka pekerjaan penyemprotan hama akan terhenti. Dari permasalah tersebut timbulah ide atau gagasan untuk membuat Mesin Penyemprot Hama Tenaga Surya sehingga battery akan tetap terisi pada saat melalukan pekerjaan penyemprotan hama, dengan demikian pekerjaan penyemprotan hama akan terus berjalan tanpa khawatir kehabisan battery.', '', 'Menciptakan alat baru dalam bidang pertanian untuk meringankan pekerjaan khususnya pada saat melakukan penyemprotan hama, dan memberikan pengetahuan pemanfaatan energy alternative cahaya matahari dalam kehidupan sehari-hari.', '', '', '', '60.png', '', ''),
(61, 'PENGOLAHAN KERUPUK DAUN SINGKONG RASA PARU', 'Diterima', 2017, 2, NULL, NULL, 61, 'Pengolahan kerupuk daun singkong rasa paru ini terinspirasi dari melimpahnya tanaman singkong/daun singkong di sekitar SMKN 1 Leuwiliang yang belum diolah secara maksimal dan daya awetnya yang rendah paling kuat 2-3 hari setelah dipanen dan kelebihan-kelebihan yang terdapat pada daun singkong. Berlimpahnya bahan baku itulah timbul keinginan untuk mengolah daun singkong menjadi kerupuk sehingga awet/tahan lama dan mempunyai daya jual yang lebih tinggi.', '', 'meningkatkan perekonomian masyarakat secara umum.', '', '', '', '61.png', '', ''),
(62, 'MENAIKAN NILAI RUMPUT GAJAH', 'Diterima', 2017, 4, NULL, NULL, 62, 'Kerajinan dari Rumput Gajah, dan produk kerajinan mempunyai nilai yang berkali lipat lebih tinggi dibandingkan dengan dijual dalam bentuk rumput segar sebagai pakan ternak.', '', 'Menambah perekonomian keluarga, mengurangi pengangguran, menekan kriminalitas, dan melestarikan lingkungan, sehingga kehidupan bermasyarakat akan terasa lebih tentram dan sejahtera.', '', '', '', '62.png', '', ''),
(63, 'PEMANFAATAN LIMBAH POHON SINGKONG MENJADI KARYA SENI YANG KHAS', 'Diterima', 2017, 4, NULL, NULL, 63, 'Pemanfaatan limbah pohon singkong menjadi karyaseni yaitu kerajinan.', '', 'Meningkat perekonomian masyarakat setempat', '', '', '', '63.png', '', ''),
(64, 'AYAM KAMPUNG PEDAGING YANG RESPON TERHADAP PAKAN KONVENSIONAL UNTUK ME', 'Diterima', 2017, 9, NULL, NULL, 64, 'Ayam kampung untuk mencapai bobot potong seperti ayam ras pedaging yang dijual di pasar dengan bobot karkas 0.8-1.0 kg dengan pemeliharaan yang dilakukan oleh masyarakat secara ekstensif membutuhkan waktu lebih lama untuk dapat dipanen. Penelitian selama 3 tahun telah dilakukan dengan menyilangkan ayam pelung (P), sentul (S), kampung (K) dan ras pedaging (R) menghasilkan ayam PSKR yang memiliki pertumbuhan lebih cepat dibandingkan ayam kampung dan layak dipotong pada umur 10 minggu dengan bobot 0.8-1.0 kg dengan pemeliharaan secara intensif (Darwati et al. 2016). Ayam PSKR tersebut masih tetap respon terhadap pakan konvensional dedak padi seperti yang telah dilakukan pada penelitian yang telah dilakukan yaitu mulai umur 5 minggu bisa diberikan pakan campuran 60% pakan komersial untuk ayam ras pedaging fase starter dengan 40% dedak padi.', '', 'Inovasi ini diharapkan dapat meningkatkan pemanfaatan ayam lokal yang ada di Jawa Barat dengan menyilangkan ayam jantan PSKR dengan ayam betina arab. Untuk mengatasi pencemaran ayam lokal dan untuk mempertahankan plasma nutfah ayam lokal ditentukan wilayah tertentu dan tetap dikontrol penyebarannya. Inovasi ini sebagai model penggunaaan pakan konvensional dedak padi untu pemeliharaan ayam kampung pedaging dengan mengurangi penggunaan bahan pakan komersial dan model alternatif untuk penggunaan pakan konvensional lain yang tidak bersaing dengan bahan paakan yang merupakan pangan manusia. Inovasi ayam silangan ini di lapang adalah ayam final stock. Keterlibatan ibu rumah tangga sebagai kelompok masyarakat terkecil untuk mendukung penyediaan protein hewani keluarga dan ketahanan pangn dengan.', '', '', '', '64.png', '', ''),
(65, 'MESIN TREATMEN AIR DAN UDARA (ATMOXY)', 'Diterima', 2017, 9, NULL, NULL, 65, 'MESIN TREATMEN AIR DAN UDARA (ATMOXY) untuk ternak Lele, mesin ini mesin yang bekerja merubah atom oksigen O2 menjadi O3 dengan bantuan discharge corona yang dihasilkan oleh lecutan listrik bertegangan 20 kV pada frekwensi 50 Hz.', '', 'Sebagai media kultur enzim dan probiotik.\n Fermentor terbaik.\n Mempercepat proses fermentasi, \n Pembesaran tebar ukuran 7-8 panen 45 hr, rata per kg isi 8-10 ekor\n Pembenihan pemberian cacing sutra cukup 3 hari, pada hari ke-15 terlihat spt umur 25-30 hari\n Tidak perlu diganti Air hingga panen\n Air kolam tidak berbau anyir.\n Untuk lele lendirnya sangat sedikit.\n Mortalitas hingga 0,1%\n Sebagai pengganti nitrobacter,\n Menggantikan fungsi kaporit.\n Untuk sterilisasi air dari kuman, virus dan racun.', '', '', '', '65.png', '', ''),
(66, 'ONLINE PLATFORM WIRAUSAHA SOSIAL BERBASIS DESA DI KABUPATEN BOGOR', 'Diterima', 2017, 4, NULL, NULL, 35, 'ONLINE PLATFORM WIRAUSAHA SOSIAL BERBASIS DESA DI KABUPATEN BOGOR adalah Pusat Informasi Wisata Pemberdayaan Desa dan merupakan para pelopor, penggerak masyarakat melalui kewirausahaan sosial.', '', 'Melalui Online Platform ini untuk pelaku UMKM Kabupaten Bogor memiliki potensi untuk menjadi UMKM naik kelas \n dimana rata-rata berada pada usia produktif dengan omset penjualan perbulan yang relatif \n tinggi dan lama usia melakukan kegiatan usaha cukup mapan serta produk yang dihasilkan \n bervariasi. Namun berdasarkan hasil kuesioner yang diberikan pemahaman pelaku UMKM \n terhadap fintech masih belum mendalam begitu juga dengan pemahaman mengenai \n kewirausahaan. Hal ini dapat disebabkan dimana keadaan wilayah desa Iwul yang jauh dari \n perkotaan dan keramaian. Dan pelaku UMKM masih menjalankan usahanya lebih mengarah \n secara tradisional, belum banyak menggunakan teknologi.', '', '', '', '66.png', '', ''),
(67, 'PUZZLE DONGENG ANAK CEMERLANG', 'Diterima', 2017, 3, NULL, NULL, 67, 'Inovasi Puzzle Dongeng Anak Cemerlang (Doclang) menggabungkan berbagai unsur kecerdasan dan membuat media yang dapat merangkum semuanya dalam satu produk. Unsur tersebut antara lain:\n ? Visual, di sini bukan berarti anak menonton sendiri dongeng dalam video, tetapi sebagai alat bantu mendongeng, selama ini pendongeng menggunakan buku atau boneka.Objek ini membantu para pendongeng menampilkan karakter tokoh dalam dongeng sehingga anak bisa menangkap dongeng lebih baik. Tantangannya medianya dijauhkan dari digital agar perhatian kuat tetap di dongengnya.\n ? Audio, salah satu sisi kecerdasan anak adalah audio. Suara hewan, musik, ambience dan efek juga bisa membuat anak lebih mengenali lingkungan cerita dalam dongeng.\n ? Motorik, sisi kecerdasan motorik ini sering dipakai para pendongeng untuk ice breaking dan membantu anak memahamni dongeng, misalkan ikut memegang perut dan kepala untuk cerita seorang karakter yang kesakitan.\n Itu unsur yang harus ada dalam produk inovasi sehingga kami melihat salah satunya bisa didekati dengan puzzle gambar yang bisa mengakses suara via internet menggunakan QR Code. Gambar akan membantu pendongeng menguatkan karakter sedangkan puzzle akan membantu anak ikut terlibat dalam membangun cerita.', '', 'Dongeng sangat bermanfaat untuk meningkatkan interaksi orang tua dan anak, sehingga kita bisa mengetahui respon anak terhadap sebuah masalah dan mengajarkan cara mengahadapinya.\n Dari segi kognitif, Anda bisa bertanya kepada anak mengenai cerita tersebut atau membiarkannya untuk bercerita. Hal ini bermanfaat untuk melatih daya ingatnya. Selain itu dengan banyaknya kata yang kita gunakan, mereka juga akan memperkaya perbendaharaan kosakata. Bahkan mereka juga bisa mengenal bentuk huruf dan angka jika kita mendongeng dengan buku atau media tambahan.\n Secara afektif, anak-anak akan belajar mendengarkan orang lain, mepelajari nilai-nilai kasih sayang, kebaikan terhadap sesama. Banyak kisah yang melibatkan emosi sehingga mereka juga dapat belajar mengenali emosi manusia yang lain dengan lebih baik. Saat mendongeng, Anda dan si Kecil bisa berpelukan, tertawa bersama dan bermanja-manja. Hal itu bisa mempererat hubungan antara orang tua dan anak\n Kreatifitas verbal dan kecerdasan juga akan lebih terbangun. Makin banyak anak mendengar, maka makin mudah anak untuk berbicara. Kreatifitas lainnya juga bisa tumbuh jika media yang kita pakai mendongeng bervariasi dalam stimulusnya.', '', '', '', '67.png', '', ''),
(68, 'PEMANFAATAN DAUN PAKU RANE (SELAGINELLA PLANA) CISADON SEBAGAI BAHAN B', 'Diterima', 2017, 1, NULL, NULL, 68, 'Daun Paku Rane sebagai Bahan Baku Kosmetik yang dibuat cream untuk memperbaiki kulit yang mengalami inflamasi dan mempercepat penyembuhan luka dengan nama creamnya Cream MYRRH Cream MYRRH merupakan cream inovasi NON STEROID yang mengandung bahan alami.', '', 'Tanaman Paku rane (Selaginella plana) yang merupakan tanaman liar dan dapat dimanfaatkan untuk produk kesehatan dan produk kosmetik sehingga dapat meningkatkan penghasilan masyarakat setempat', '', '', '', '68.png', '', ''),
(69, 'PEMANFAATAN BY PRODUCT PENGOLAHAN IKAN SIDAT MENJADI FLAVOR IKAN', 'Diterima', 2017, 1, NULL, NULL, 69, 'Produk kaldu sidat ini unik karena memanfaatkan limbah yang tadinya terbuang menjadi produk turunan yang memiliki nilai gizi dan nilai jual. Selain itu kami juga berharap ini menjadi solusi tepat dan mudah bagi Ibu untuk menyiapkan makanan anak yang menggunakan kaldu, karena produk kaldu sidat yang dihasilkan dibuat dalam bentuk serbuk kaldu. Serbuk kaldu sangat praktis dicampurkan dalam masakan serta jangka waktu penyimpanannya lebih lama dari yang cair. Produk kaldu juga dapat dijadikan icon untuk mengenalkan dan mengedukasi ikan sidat pada masyarkat luas, karena kaldu sudah sangat familiar dikonsumsi hanya bahan baku kaldu tersebut yang istimewa yaitu berasal dari ikan sidat', '', 'pemanfaatan limbah kepala dan tulang menjadi produk kaldu bergizi tinggi sebagai asupan makanan untuk balita, anak-anak orang sakit dan para Lansia. Kandungan EPA dan DHA dalam makanan sangat baik dalam proses tumbuh kembang anak khususnya perkembangan otaknya. Manfaat DHA antara lain membantu pertumbuhan otak dan serabut saraf serta fungsi penglihatan pada 6 bulan pertama kehidupan. Pada orang dewasa, DHA juga membantu kerja otak dan kemampuan belajar. Selain itu, DHA bermanfaat dalam menurunkan risiko penyakit jantung. Manfaat DHA yang lain adalah mencegah penimbunan plak pada dinding pembuluh darah oleh lemak jahat (LDL), sehingga menurunkan risiko penyakit jantung dan stroke. Selain itu DHA juga membantu mencegah munculnya penyakit kanker dan memperlambat proses penuaan (Tasse,2010). Hal ini tentunya akan berdampak positif terhadap tumbuh kembang anak, produk inovasi ini juga menjawab pemanfaatan limbah yang tidak termanfaatkan menjadi produk turunan yang bernilai gizi dan bernilai jual dan ikut andil dalam salah satu visi dan misi dari Kementrian Kelautan dan Perikanan (KKP) yaitu gerakan GEMARIKAN (Gemar Makan Ikan) yang sebagai salah satu project negara untuk mencerdaskan anak bangsa.', '', '', '', '69.png', '', ''),
(70, 'BIOPESTISIDA SEBAGAI PENGENDALI HAMA RAYAP', 'Diterima', 2017, 7, NULL, NULL, 70, 'BIO-INSEKTISIDA NEMATODA ENTOMOPATOGEN YANG BERBASIS EKOLOGI SEBAGAI PRODUK BIOPESTISIDA RAMAH LINGKUNGAN DAN BERKELANJUTAN', '', 'Daya bunuh yang luas \n Aman untuk lingkungan dan penggunanya (users). \n Mengendalikan hama yang ada di dalam tanah, hama yang ada di atas tanah, dan hama yang ada di tanaman', '', '', '', '70.png', '', ''),
(71, 'SIPEKA (SISTEM INFORMASI PELAPORAN KEBENCANAAN)', 'Diterima', 2017, 5, NULL, NULL, 71, 'SIPEKA (Sistem Informasi Pelaporan Kebencanaan) dapat menghasilkan suatu sistem Pengelolaan Kebakaran yang handal dan mampu berperan sebagai solusi pemerintah dan masyarakat. Dan menjadi media pelaporan dan evaluasi untuk pimpinan daerah.', '', 'Menerapkan Teknologi informasi untuk pelaporan kebakaran yang akurat dan cepat', '', '', '', '71.png', '', ''),
(72, 'SISTEM INFORMASI PEMETAAN KOMODITI PERTANIAN, PERKEBUNAN DAN KEHUTANAN', 'Diterima', 2017, 7, NULL, NULL, 72, 'Komoditi Pertanian, Perkebunan dan Kehutanan merupakan sektor utama dalam penunjang kebutuhan pangan rumah tangga dan pendapatan masyarakat dalam meningkatkan perekonomian, Oleh karena itu, diperlukan pembangunan Sistem Informasi Geografis (SIG) Berbasis Web untuk Komoditi Pertanian, Perkebunan Dan Kehutanan', '', '', '', '', '', 'default.png', '', ''),
(73, 'MINUMAN FUNGSIONAL YOGURT TALAS SINBIOTIK KAYA PATI RESISTEN', 'Diterima', 2017, 2, NULL, NULL, 73, 'Yogurt talas sinbiotik => produk pangan fungsional baru dan belum pernah dikembangkan di Indonesia. \nDiproduksi dengan teknologi sederhana => formulasi produk yogurt sebagai probiotik dengan tepung talas kaya pati resisten sebagai prebiotik pada suatu fermentor. \nFomulasi dengan perbandingan tertentu sehingga diperoleh tekstur yogurt talas yang lembut, enak dan memiliki kualitas sensorik yang baik. \nYogurt => menyediakan bakteri probiotik untuk menjaga kesehatan saluran pencernaan. \nTepung talas kaya pati resisten => sumber prebiotik yang merupakan nutrisi bagi bakteri probiotik.', '', 'Formula starter yogurt terbaik untuk produksi yogurt talas sinbiotik.\n Produk minuman fungsional yogurt talas sinbiotik dengan kualitas nutrisi, fungsional, organoleptik yang dapat diterima oleh konsumen dan pasar', '', '', '', '73.png', '', ''),
(74, 'PERTANIAN PRESISI BERBASIS APLIKASI MOBILE', 'Diterima', 2017, 7, NULL, NULL, 74, 'Pertanian presisi adalah konsep pertanian dengan pendekatan sistem untuk menuju pertanian dengan rendah pemasukan (low-input), efisiensi tinggi, dan pertanian berkelanjutan. Pertanian presisi adalah sistem pertanian yang mengoptimalkan penggunaan sumberdaya untuk mendapatkan hasil yang maksimal dan juga mengurangi dampak terhadap lingkungan. Konsep yang diperhatikan diantaranya dengan pendekatan sistem yang memperhatikan Input, Proses, Output.', '', 'Pertanian presisi membantu meningkatkan kualitas dan kuantitas tanaman, sehingga meningkatkan keuntungan', '', '', '', '74.png', '', ''),
(75, 'ANALISIS PEMANFAATAN LIMBAH INDUSTRI PENGOLAHAN IKAN SIDAT INDONESIA S', 'Diterima', 2017, 4, NULL, NULL, 75, 'Kabayaki merupakan olahan sidat yang bernilai ekonomi tinggi\n kurangnya pasokan bahan baku (mengandalkan hasil tangkapan dari alam) kini dipenuhi dari hasil budidaya\n Dari permaslahan itulah di analisis mengenai kandungan gizinya yaitu a. protein,\n  b. lemak, \n  c. karbohidrat, \n  d. kadar air, \n  e. kadar abu, \n  f. serat kasar ikan sidat Indonesia (Anguila spp) segar, kabayaki dan limbahnya berupa tepung kepala, tulang dan hati ikan selain minyak ikan sidat.', '', 'Mengoptimalkan kegiatan industri pengolahan perikanan sidat di manapun berada dan Memiliki nilai ekonomi penting setelah diolah menjadi tepung ikan atau minyak ikan dan dapat mengurangi dampak pada lingkungan pada unit pengolahan dan sekitarnya.', '', '', '', '75.png', '', ''),
(76, 'PEMANFAATAN LIMBAH ULAT SUTRA MENJADI KOSMETIK MASKER ULAT SUTRA & FAC', 'Diterima', 2018, 1, NULL, NULL, 76, 'Kokon ulat sutra sebagai bahan kosmetik untuk perawatan kulit.', '', 'Kokon ulat sutra memiliki komponen protein serisin. Komponen serisin sendiri mempunyai senyawa antioksidan yang bagus baik untuk makanan maupun kosmetik.', '', '', '', '76.png', '', ''),
(77, 'ALAT INSEMINASI BUATAN TIPE SEMPROT UNTUK UNGGAS', 'Diterima', 2018, 9, NULL, NULL, 77, 'Alat IB Tipe Semprot pada Unggas, alat IB tipe semprot ini diklaim lebih efisien dari sisi tenaga, waktu dan praktis, dengan daya fertilitas telur yang lebih tinggi dari alat IB manual yang sudah ada di pasaran', '', 'Dalam rangka menyebarluaskan invensi yang telah dihasilkan agar lebih banyak digunakan dan memberikan manfaat bagi peternak', '', '', '', '77.png', '', ''),
(78, 'SEMEN GOTONG ROYONG CIBINONG', 'Diterima', 2018, 4, NULL, NULL, 78, '', '', '   ', '', '', '', 'default.png', '', ''),
(79, 'QUARTER \"(QUARTET PRINTER): ', 'Diterima', 2018, 3, NULL, NULL, 79, 'MEDIA PELAJARAN ALTERNATIF BERBASIS LEARN STUDY IMPLEMENTASI METHOD UNTUK MEMBANTU SISWA SD DALAM MEMAHAMI MATA PELAJARAN IPA', '', 'Secara umum, manfaat media dalam proses pembelajaran adalah memperlancar interaksi antara guru dengan siswa sehingga pembelajaran akan lebih efektif dan efisien.', '', '', '', 'default.png', '', ''),
(80, 'GROW-JI', 'Diterima', 2018, 9, NULL, NULL, 80, 'Formulasi jamu Indonesia sebagai alternatif growth promotor untuk meningkatkan performa ayam broiler dan pencegah resistensi antibiotik.', '', 'Meningkatkan nafsu makan ayam boiler, mempertahankan kekebalan tubuh, serta efektif dalam membasmi bakteri jahat pada pencernaan ayam boiler. Selain itu, bobot karkas, bobot badan, dan feed consumtin rate yang lebih baik jika dibandingkan dengan ayam broiler yang tidak diberikan Jamu.', '', '', '', 'default.png', '', ''),
(81, 'CREAMY', 'Diterima', 2018, 9, NULL, NULL, 81, 'Krim Ekstrak Biji Bengkoang (Pachyrrhizus Erosus) sebagai alternatif obat anti masis yang aman, efektif, dan ekonomis.', '', 'Manfaat dari krim ini adalah untu menyembuhkan luka luar pada hewan khususnya hewan peliharaan. CREAMY merupakan produk obat dengan harga yang ekonomis serta mengandung ekstrak biji bengkoang yang berfungsi sebagai biopestisida sehingga efektif untuk pemberantasan miasis.', '', '', '', 'default.png', '', ''),
(82, 'SMART INTEGRATED INFORMATION SYSTEM', 'Diterima', 2018, 5, NULL, NULL, 82, '', '', '', '', '', '', 'default.png', '', ''),
(83, 'SUKABI (SUKA UBI) PENGELOHAN UBI CILEMBU', 'Diterima', 2018, 2, NULL, NULL, 83, 'Pengolahan Ubi Cilembu untuk snak atau cemilan sehat', '', 'Kaya akan serat dan vitamin A, ubi ini mempunyai mineral khusus yaitu zat besi, folat, mangan, vitamin C, vitamin B2, vitamin B6, vitamin D dan vitamin E yang baik untuk kulit. Walau dengan kandungan karbohidrat, namun tetap menjadi makanan baik untuk diet', '', '', '', '83.png', '', ''),
(84, 'INOVASI PENYERAPAN LOGAM BERAT MERKURI DENGAN MENGGUNAKAN ZEOLIT DAN M', 'Diterima', 2018, 6, NULL, NULL, 84, 'Salah satu material yang dapat digunakan untuk meningkatkan kemampuan adsorpsi Cr(VI) pada zeolit alam adalah material yang terbuat dari bahan polimer yang dikenal sebagai material ionic imprintring polymer (IIP). Modifikasi zeolit alam dengan IIP diharapkan dapat meningkatkan kemampuan adsorpsi khususnya terhadap Cr(VI) dengan selektif dan sensitif dari berbagai matriks sampel. Material IIP dipilih untuk digunakan dalam modifikasi zeolit alam untuk difungsikan sebagai adsorben karena IIP telah dikenal sebagai material adsorben baru yang mempunyai selektivitas yang tinggi', '', ' meningkatkan kemampuan adsorpsi Cr(VI) pada zeolit alam adalah material yang terbuat dari bahan polimer yang dikenal sebagai material ionic imprintring polymer (IIP).', '', '', '', '84.png', '', ''),
(85, 'INOVASI BIODEGRADASI PLASTIK RAMAH LINGKUNGAN (BIOPLASTIK DAN PALSTIK ', 'Diterima', 2018, 6, NULL, NULL, 85, 'Bioplastik adalah jenis plastik ramah lingkungan yang terbuat dari bahan alami, seperti pati jagung atau jamur. Hasil produksi plastik ramah lingkungan dari bahan alami terbarukan ini bernama polylactid acid (PLA). PLA memiliki penampakan dan ciri yang menyerupai polyethylene dan polypropylene, yakni dua jenis plastik yang berasal dari bahan petrokimia. Jenis plastik kedua yaitu biodegradable adalah jenis plastik yang mudah terurai. Berbeda dengan bioplastik yang terbuat dari bahan alami terbarukan, plastik biodegradable dapat terbuat dari bahan petrokimia konvensional ', '', 'Membuat sampah lebih mudah terurai.', '', '', '', '85.png', '', ''),
(86, 'GARLIA : NATURAL HERB JUICE', 'Diterima', 2018, 1, NULL, NULL, 86, 'Minuman jus dari Bawang Putih untuk kesehatan', '', 'Manfaatnya untuk Antidiabetes, antihipertensi, antihiperuresemia, vasodilator jantung, meningkatkan stamina dan membantu penyembuhan TBC, bisa utk obat batuk', '', '', '', '86.png', '', ''),
(87, 'PENGUATAN KEBERLANUTAN DAN PENCITRAAN KEARIFAN LOKAL KOLABORASI EKO -E', 'Diterima', 2018, 5, NULL, NULL, 87, '', '', '', '', '', '', 'default.png', '', ''),
(88, 'MODERNISASI PENGOPTIMALAN PELAYANAN PUBLIK SEBAGAI PRASARANA MEMUDAHKA', 'Diterima', 2018, 5, NULL, NULL, 88, 'Website Desa Ciomas Rahayu dalam mengoptimalkan pelayanan publik sebagai prasarana memudahkan akses kepada masyarakat', '', 'Peningkatan mutu pelayanan publik\nPeningkatan Efesiensi Waktu Pelayanan Publik\nPeningkatan Kinerja Pegawai dalam pelayanan public\nPelayanan Keamanan dan Kenyamanan Masyarakat\nPeningakatan Fasilitas Kantor Desa dalam pelayanan public\n', '', '', '', '88.png', '', '');
INSERT INTO `inovasi` (`id_inovasi`, `nama_inovasi`, `status_inovasi`, `tahun_pembuatan_inovasi`, `id_bidang_inovasi`, `id_bidang_inovasi_2`, `id_bidang_inovasi_3`, `id_inovator`, `deskripsi`, `penjaringan_ide`, `manfaat_inovasi`, `dampak_inovasi`, `proposal_inovasi`, `dokumentasi_inovasi`, `foto_inovasi`, `link_medsos`, `video_link_youtube`) VALUES
(89, 'UJI AKTIVITAS ANTIOKSIDAN DENGAN PERBANDINGAN METODE EKSTRAKSI DARI BI', 'Diterima', 2018, 1, NULL, NULL, 89, 'Kopi robusta mengandung senyawa alkaloid, flavonoid, saponin, tanin, kafein dan fenol. Senyawa fenol pada kopi memiliki aktivitas sebagai antioksidan. Biji kopi robusta yang ditanam di  daerah  Bandung, Bogor dan Garut, Jawa Barat dikenal memiliki ciri dan citarasa berbeda yang khas dan unik. Perbedaan jumlah kandungan senyawa kimia dari suatu tumbuhan disebabkan oleh perbedaan agroekologi (iklim dan ketinggian tempat). Daerah Pangalengan (Bandung) memiliki ketinggian 817 mdpl, Cariu (Bogor) memiliki ketinggian 680 mdpl dan Cikeris (Garut) memiliki ketinggian 900 mdpl. Tujuan dari penelitian ini untuk menentukan karakteristik fitokimia dan aktivitas antioksidan pada biji kopi robusta roasting yang ditanam di ketiga daerah tersebut. Karakteristik fitokimia dilakukan secara kualitatif dan aktivitas antioksidan dilakukan dengan metode DPPH (2,2-difenil-1-pikrilhidrazil). Hasil uji   karakteristik fitokimia menunjukkan bahwa ekstrak biji kopi robusta Bandung, Bogor dan Garut mengandung senyawa alkaloid, flavanoid, saponin dan tanin. Ekstrak kopi robusta Bandung, Bogor dan Garut menunjukkan aktifitas antioksidan yang berbeda nyata berdasarkan hasil uji statistik analisis variansi dengan nilai IC50 masing-masing dicapai pada konsentrasi  55,13 ppm, 56,48 ppm, dan 54,14 ppm. Dapat disimpulkan bahwa ekstrak kopi robusta dari Garut memiliki kadar antioksidan paling tinggi dibandingkan dengan aktifitas antioksidan dari kopi robusta Bandung dan Bogor.', '', 'Karakteristik fitokimia ekstrak biji kopi  robusta  Bandung,  Bogor  dan  Garut mengandung  senyawa  kimia  yang  sama, yaitu    alkaloid,    flavanoid,    tanin    dan saponin.Aktivitas antioksidan ekstrak biji kopi  robusta  Garut  memiliki IC50sebesar 54,14 ppm paling paling tinggi dibandingkan   dengan   ekstrak   biji   kopi robusta Bandung dan Bogor.', '', '', '', '89.png', '', ''),
(90, 'PENERPAN PROMETHE DALAM MENENTUKAN PRIORITAS PERBAIKAN PERSIAPAN DOKUM', 'Diterima', 2018, 5, NULL, NULL, 90, 'PROMETHEEmerupakan  salah  satu  metode  dalam  pengambilan  keputusan yang   digunakan   untuk   memperoleh   suatu   pemecahan   masalah.', '', 'Mendapatkan  hasil  yang  tepat  dalam  menentukan  kelayakan  terhadap  calon nasabah penerimakredit dan', '', '', '', 'default.png', '', ''),
(91, 'APLIKASI PEMBELAJARAN BAHASA ISYARAT DASAR TUNARUNGGU BERBASIS MULTIME', 'Diterima', 2018, 3, NULL, NULL, 91, '', '', '', '', '', '', 'default.png', '', ''),
(92, 'PEMANFAATAN LIMBAH BIJI ALPUKAT (PERSEA SP) SEBAGAI LOSION ANTIRADIKAL', 'Diterima', 2018, 1, NULL, NULL, 92, 'Biji alpukat merupakan limbah pangan yang mengandung minyak nabati. Salah satu pemanfaatan minyak nabati adalah biodiesel. Biodiesel dapat digunakan sebagai bahan bakar alternatif yang ramah lingkungan dikarenakan dapat menurunkan emisi jika dibandingkan dengan minyak diesel. Penelitian ini bertujuan untuk memanfaatkan biji alpukat sebagai bahan baku sintesis biodiesel serta karakterisasinya. ', '', 'Manfaatnya sebagai antioksidan', '', '', '', 'default.png', '', ''),
(93, 'DAYA DUKUNG WISATA PANORAMA PABANGBON DAN POTENSI DAYA TARIK DESA PABA', 'Diterima', 2018, 5, NULL, NULL, 93, 'Mengoptimalkan pengelolaan potensi di Wisata PABANGBON', '', 'Mengetahui efektif wisata PABANGBON, sebagai sumber infornasi bagi wisata', '', '', '', '93.png', '', ''),
(94, 'KARBON AKTIF BERBAHAN DASAR LIMBAH TANDAN KOSONG KELAPA SAWIT (TTKS) P', 'Diterima', 2018, 6, NULL, NULL, 94, ' Tandan  Kosong  Kelapa  Sawit    (TKKS)  mengandung  senyawa kimia  berupa  selulosa', '', 'Limbah  TKKS  dapat  dimanfaatkan  sebagai  biosorben.  Biosorben  TKKS  dapat digunakan  untuk  pengelolaan limbah  senyawa  fenol.  Fenol  merupakan  salah  satu  komponen  dalam  air  limbah yang  sangat  berbahaya', '', '', '', 'default.png', '', ''),
(95, 'INOVASI MEDIA TANAM HIDROPONIK DENGAN MEMANFAATKAN LIMBAH SAMPAH', 'Diterima', 2018, 7, NULL, NULL, 95, 'Melihat banyaknya limbah botol plastik bekas yang belum bisa dimanfaatkan dengan  baik  dapat  berpotensi  mencemari  lingkungan.  Limbah  apabila  bisa  dimanfaatkan dengan  baik  pasti  akan  menjadi  suatu  nilai  yang  bermanfat.  Selaindidaur  ulang  untuk dihancurkan,botol plastik juga bisa dimanfaatkan sebagai media tanamsalah satunya denganbudidaya  tanaman  secara  hidroponik.', '', 'Barang-barang    bekas    dapatdimanfaatkan   sebagai   media   dalam melakukan  sistem  budidaya  hidroponik sehingga meningkatkan nilai barang bekasitu  sendiri.Jadi,dengan  menggunakan media  tanam hidroponik berupa  barang bekas  tersebut,  selain  mendapatkan  hasil tanaman  sayuran yang  sehat  dan  subur, tetapi  juga  bisa memanfaatkan  barang barang  bekasyang  ada  di  lingkungan rumah.  ', '', '', '', '95.png', '', ''),
(96, 'PENDAMPINGAN PENGEMBANGAN BADAN USAHA MILIK DESA (BUMDES) \"MAJU BERSAM', 'Diterima', 2018, 5, NULL, NULL, 96, 'Badan Usaha Milik Desa (BUMdes) \"Maju Bersama\" Desa Tegal Waru Kecamatan Ciampea sebagai bentuk sebagai  bentuk  dari  upaya  pemerintah  desa  dalam  meningkatkan pendapat  asli  desa  serta  meningkatkan  tarap  hidup ', '', 'Meningkatkan kinerja     BUMdes,     para     pengelolan BUMdes  perlu  melakukan  kerja  sama dengan aparat pemerintah Desa', '', '', '', 'default.png', '', ''),
(97, 'SISTEM PEMANTAUAN PINTAR UNTUK RUMAH KACA HIDROPONIK', 'Diterima', 2018, 7, NULL, NULL, 97, '', '', '', '', '', '', 'default.png', '', ''),
(98, 'PEMBUATAN MESIN CNC PLASMA CUTTER UNTUK MEMBUAT MOTIF PADA PELAT LOGAM', 'Diterima', 2018, 4, NULL, NULL, 98, 'Mesin CNC Plasma Cutting adalah mesin yang digunakan untuk memotong plat/besi dengan menggunakan laser berkonsentrasi tinggi dengan menggunakan program komputer. Sehingga hasil yang diperoleh menjadi maksimal dan presisi.', '', 'Mesin CNC plasma ini memiliki beberapa kelebihan, diantaranya yaitu kecepatan dalam proses pemotongan, mesin ini dapat untuk memotong sebuah plat, selain itu Anda juga dapat menghemat biaya produksi dan juga menjadi lebih efektif.', '', '', '', '98.png', '', ''),
(99, 'PEMANFAATAN RUMPUT LAUT TROPIKA SEBAGAI BAHAN KOSMETIK', 'Diterima', 2018, 1, NULL, NULL, 99, 'rumput laut juga memiliki zat aktif yang berfungsi sebagai antimikroba, antiinflamasi, antitumor, antikanker, antihipertensi yang sangat menguntungkan.\n\n', '', 'rumput laut juga memiliki zat aktif yang berfungsi sebagai antimikroba, antiinflamasi, antitumor, antikanker, antihipertensi yang sangat menguntungkan.\n\n', '', '', '', '99.png', '', ''),
(100, 'AUTOCLAVE SEBAGAI ALAT UNTUK MENSTRELILKAN MEDIA TANAM DAN ALAT LABORA', 'Diterima', 2018, 6, NULL, NULL, 100, '', '', '', '', '', '', '100.png', '', ''),
(101, 'PEMANFAATAN DAUN KELOR SEBAGAI BAHAN BAKU INDUSTRI RUMAH TANGGA', 'Diterima', 2018, 2, NULL, NULL, 101, '', '', '', '', '', '', '101.png', '', ''),
(102, 'PEMANFAATAN TEPUNG TALAS DAN IKAN LELE SEBAGAI BAHAN BAKU PENGOLAHAN P', 'Diterima', 2018, 2, NULL, NULL, 102, '', '', '', '', '', '', '102.png', '', ''),
(103, 'PEMANFAATAN LIMBAH OLAHAN BANDENG TANPA DURI MENJADI PRODUK BERNILAI J', 'Diterima', 2018, 2, NULL, NULL, 103, '', '', '', '', '', '', 'default.png', '', ''),
(104, 'PEMANFAATAN LIMBAH SAYURAN KUBIS MENJADI SUMBER PROBIOTIK YANG DAPAT M', 'Diterima', 2018, 9, NULL, NULL, 104, '', '', '', '', '', '', 'default.png', '', ''),
(105, 'ALGATIK INDO 3', 'Diterima', 2018, 3, NULL, NULL, 105, '', '', '', '', '', '', '105.png', '', ''),
(106, 'ALFA NATUKOM', 'Diterima', 2018, 3, NULL, NULL, 105, '', '', '', '', '', '', '106.png', '', ''),
(107, 'TRANFASI-220 SEDERHANA', 'Diterima', 2018, 3, NULL, NULL, 105, '', '', '', '', '', '', '107.png', '', ''),
(108, 'PUTLAGAME HEALTHY SOAETY', 'Diterima', 2018, 3, NULL, NULL, 108, '', '', '', '', '', '', '108.png', '', ''),
(109, 'TALAS DAN TEMPAT WISATA SEBAGAI KEARIFAN LOKAL PADA INOVASI SIRUP GOLD', 'Diterima', 2018, 2, NULL, NULL, 109, '', '', '', '', '', '', '109.png', '', ''),
(110, 'DESA CYBER', 'Diterima', 2018, 5, NULL, NULL, 110, '', '', '', '', '', '', '110.png', '', ''),
(111, 'PENGGUNAAN BAHAN JANTUNG PISANG PADA PRODUK OLAHAN RENDANG', 'Diterima', 2018, 2, NULL, NULL, 111, 'Rendang dari pisang jantung, \njantung pisang saja juga bisa digunakan sebagai bahan rendang', '', 'Nilai tambah (value added) untuk rendang jantung pisang ', '', '', '', '111.png', '', ''),
(112, 'TEKNOLOGI PERTANIAN ORGANIK DILAHAN SEMPIT DENGAN VERTIKULTUR UNTUK ME', 'Diterima', 2018, 7, NULL, NULL, 112, '', '', '', '', '', '', 'default.png', '', ''),
(113, 'PEMANFAATAN KOPI BOGOR DIOLAH SEBAGAI CAKE (BROWNIES)', 'Diterima', 2018, 2, NULL, NULL, 113, '', '', '', '', '', '', 'default.png', '', ''),
(114, 'SIOMAY TALAS TENGGIRI', 'Diterima', 2018, 2, NULL, NULL, 114, '', '', '', '', '', '', '114.png', '', ''),
(115, 'CARA LAIN MENGELOLA JERUK LEMON', 'Diterima', 2018, 2, NULL, NULL, 115, '', '', '', '', '', '', '115.png', '', ''),
(116, 'J WEAR EDIBLE PLATE (GELAS DAN WADAH YANG RAMAH LINGKUNGAN BERBAHAN DA', 'Diterima', 2018, 6, NULL, NULL, 116, 'Gelas berbahan dasar rumput laut', '', 'Rumput laut juga bermanfaat bagi tubuh dan mudah terurai', '', '', '', '116.png', '', ''),
(117, 'INOVASI PRODUKSI SINGKONG SEBAGAI UPAYA PENINGKATAN EKONOMI MASYARAKAT', 'Diterima', 2018, 4, NULL, NULL, 117, '', '', '', '', '', '', 'default.png', '', ''),
(118, 'PEMANFAATAN KELOR SEBAGI NUTRISI ALAMI', 'Diterima', 2018, 1, NULL, NULL, 118, 'Tanaman    Kelor    (Moringa    oleifera) merupakan   tanaman   yang   memiliki   berbagai manfaat     baik     secara     ekonomis     maupun kesehatan', '', 'Daun kelor memiliki potensi yang sangat baik  untuk  melengkapi  kebutuhan  nutrisi  dalam tubuh', '', '', '', '118.png', '', ''),
(119, 'ACEV PENGGUNAAN VENTILASI RUANGAN BERLANDASKAN TEORI FLUIDA', 'Diterima', 2018, 3, NULL, NULL, 119, '', '', '', '', '', '', '119.png', '', ''),
(120, 'MINIATUR MOBIL', 'Diterima', 2018, 3, NULL, NULL, 120, 'Pembuatan Mobil Miniatur', '', '', '', '', '', '120.png', '', ''),
(121, 'BEUATY APPLICATION (Girls)', 'Diterima', 2018, 5, NULL, NULL, 121, '', '', '', '', '', '', '121.png', '', ''),
(122, 'KERTAS LAKMUS  KULIT KACANG', 'Diterima', 2018, 3, NULL, NULL, 122, 'Kacang  tanah  merupakan  tanaman  herba  yangsangat   mudah   dijumpai   di   negara   tropis   seperti Indonesia. Kulit  kacang  tanahdapatmenjadilimbah   organik   yang   sangat   berpotensidimanfaatkan sebagaikarbon aktif.', '', '', '', '', '', 'default.png', '', ''),
(123, 'PEMANFAATAN KULIT CEMPEDAK SEBAGAI OLAHAN KERUPUK DAN NUGGET YANG LEZA', 'Diterima', 2018, 2, NULL, NULL, 123, 'Pemanfaatan   Olahan   Kulit   Cempedak sebagai Bahan Tambahan Dalam Pembuatan Kerupuk dan Nugget, Cempedak merupakan  salah  satu  jenis  buah yang  banyaktumbuh  di  Indonesia,  merupakan  buah  musiman ', '', '', '', '', '', '123.png', '', ''),
(124, 'OPTIMALISASI SUMBER DAYA ALAM BATU GAMPING MELALUI PROSES \"KAROLIDA\" (', 'Diterima', 2018, 3, NULL, NULL, 124, '', '', '', '', '', '', '124.png', '', ''),
(125, 'PEMANFAATAN SUMBER DAYA ALAM BAMBU MENJADI \"KANERON BAMBU\" (TAS ANYAM)', 'Diterima', 2018, 5, NULL, NULL, 125, '', '', '', '', '', '', '125.png', '', ''),
(126, 'MENGOLAH BONGOL PISANG DAN DAUN SINTRONG MENJADI PRODUKSI INOVATIF YAN', 'Diterima', 2018, 4, NULL, NULL, 126, '', '', '', '', '', '', '126.png', '', ''),
(127, 'INOVASI BAKSO CILOK NANAS (PAK DUDUH)', 'Diterima', 2018, 2, NULL, NULL, 127, '', '', '', '', '', '', 'default.png', '', ''),
(128, 'ROTI TEPUNG KACANG POLONG', 'Diterima', 2018, 2, NULL, NULL, 128, '', '', '', '', '', '', 'default.png', '', ''),
(129, 'KOPI PEGUNG (PETE CINA DAN JAGUNG)', 'Diterima', 2018, 2, NULL, NULL, 128, '', '', '', '', '', '', 'default.png', '', ''),
(130, 'SILKY PUDDING OYONG (SIPUYONG)', 'Diterima', 2018, 2, NULL, NULL, 130, 'Silky pudding oyong merupakan inovasi terbaru dalam pengolahan pudding berbahan dasar sayur oyong. Puding ini mengandung banyak nutrisi yang menyehatkan tubuh manusia, seperti protein, kalsium, zat besi, vitamin A, dan vitamin C. Proses pembuatan pudding oyong juga tidak jauh berbeda dengan pembuatan pudding biasanya. Hanya saja, ditambahkan ekstrak puyong pada pudding. Jika dibandingkan dengan pudding lainnya, pudding ini memiliki cita rasa yang khas yaitu dari oyong. Harganya pun cukup terjangkau dengan kisaran harga 5.000 rupiah per kemasan.', '', 'Puding oyong dapat dijadikan sebagai makanan sehat yang dapat menjaga sistem pencernaan dan mencegah terjadinya penyakit diabetes. ', '', '', '', '130.png', '', ''),
(131, 'WADAH MULTIFUNGSI SERBUK KAYU', 'Diterima', 2018, 4, NULL, NULL, 131, '', '', '', '', '', '', '131.png', '', ''),
(132, 'OLEH-OLEH KHAS BOGOR \"RUSSA\"', 'Diterima', 2018, 4, NULL, NULL, 132, '', '', '', '', '', '', '132.png', '', ''),
(133, 'PRIMATA FEEDING SITE SEBAGAI WISATA EDUKASI DI SMAN 1 CIAMPEA', 'Diterima', 2018, 5, NULL, NULL, 133, '', '', '', '', '', '', '133.png', '', ''),
(134, 'PEMANFAATAN KULIT JERUK MENJADI SUMBER KEUNTUNGAN BAGI KESEHATAN', 'Diterima', 2018, 1, NULL, NULL, 134, '', '', '', '', '', '', '134.png', '', ''),
(135, 'CRISPY CASSAVA BALL', 'Diterima', 2018, 2, NULL, NULL, 135, '', '', '', '', '', '', '135.png', '', ''),
(136, 'DENGDENG SAWI', 'Diterima', 2018, 2, NULL, NULL, 136, '', '', '', '', '', '', 'default.png', '', ''),
(137, 'SMART KANDANG YES GO GREEN OK', 'Diterima', 2018, 5, NULL, NULL, 137, 'Kandang pintar yang bisa memberikan pakan secara otomatis yang dinamakan ?Smart kandang, yes. Go green, oke?. Smart kandang ini memanfaatkan tenaga panel surya sehingga ramah lingkungan dan bebas polusi.', '', 'Dapat memberikan pakan secara otomatis yang bisa bertahan hingga 25 tahun.', '', '', '', '137.png', '', ''),
(138, 'PIZZA KIMPUL', 'Diterima', 2018, 2, NULL, NULL, 138, '', '', '', '', '', '', 'default.png', '', ''),
(139, 'SABUN KERTAS DARI LIMBAH KERTAS', 'Diterima', 2018, 4, NULL, NULL, 139, '', '', '', '', '', '', 'default.png', '', ''),
(140, 'DK KANGAROO SET', 'Diterima', 2019, 4, NULL, NULL, 140, 'Inovasi DK Kangaroo Set adalah gendongan bayi yang terinspirasi dari hewan kangaroo dan Metode Kangaroo adalah Bahan yang digunakan untuk menggendong bayi premature atau berat lahir kurang dari 2500 gram, DK Kangaroo ini terbuat dari Karung Goni, Karung Terigu Segitiga Biru, Kain perca, dan Busa bekas yang dapat digunakan untuk Metode Kangoroo.', '', 'Bagi Kepentingan Lingkungan dan Sosial\n1. Mengurangi sampah di sekitar lingkungan\n2. Dapat berkontribusi dalam menciptakan suatu lapangan kerja\nBagi Kepentingan Ekonomi \n1. Dapat membantu untuk memenuhi sumber perekonomian disekitar lingkungan', '', '', '', '140.png', '', ''),
(141, 'PRODUK MAKANAN TAMBAHAN BAGI IBU MENYUSUI (MAK MAE)', 'Diterima', 2019, 2, NULL, NULL, 141, 'ASI Eksklusif sangat penting bagi kehidupan Bayi dan cakupan ASI eksklusif masih sangat rendah yakni 35,70 % (Data Kemenkes, 2017). Seorang ibu memegang peranan penting (Kunci Utama Keberhasilan ASI Eksklusif) dari latar belakang ini dibuatlah inovasi makanan tambahan bagi ibu menyusui guna meningkatkan produksi ASI yaitu Stik Mak Mae.', '', 'Stik merupakan makanan yang mudah untuk dibawa ke mana saja, serta rasanya yang disukai oleh segala kalangan. Ditambahkan daun bayam dan daun katuk untuk memperlancar poduksi ASI.\n', '', '', '', 'default.png', '', ''),
(142, 'FILM ANIMASI 3D FUTURITIK', 'Diterima', 2019, 3, NULL, NULL, 142, 'Sebuah komunitas animasi di Bogor yang memiliki sistem manajemen studio animasi sebagai sistem berjalan dikomunitas untuk mencapai animasi yang berkuaitas internasinal dan dapat membangun perekonominan yang kreatif di Indonesia serta membangkitan anak bangsa untuk mencintai produk dalam negeri', '', 'Membangkitan anak bangsa untuk mencintai produk dalam negeri', '', '', '', '142.png', '', ''),
(143, 'KOMPOR BRIKET LISTRIK : INOVASI TEKNOLOGI TEPAT GUNA DALAM USAHA OPTIM', 'Diterima', 2019, 4, NULL, NULL, 143, 'Briket dapat dibuat dari bahan- bahan yang mengandung lignin dan selulosa seperti kayu, sekam padi, ampas tebu, bambu, sabut kelapa, dan biji salak. Inovasi teknologi dalam upaya mengoptimalkan penggunaan briket. Sehingga diusulkan pembuatan Kompor Listrik Briket yang dirancang dengan tiga komponen utama yaitu busi pemanas sebagai sumber panas dan pemantik briket, sumber tegangan menggunakan aki atau trafo, dan blower. Walaupun namanya adalah kompor briket listrik namun disini listrik hanya digunakan sebagai pemantik atau pemicu awal saja sedangkan setelah api menyala maka aliran listrik yang digunakan akan dihentikan. \n', '', 'Ekonomi\nPenerapan teknologi kompor briket dan pemanfaatan energi biomassa melalui pengolahan briket dapat mengurangi penggunaan minyak tanah dan gas LPG.\nMeningkatkan kesejahteraan ekonomi dan nilai guna olahan limbah atau sampah yang berpotensi menjadi briket\nPendidikan\nMenjadi referensi wahana pembelajaran khususnya kaitannya dengan pengolahan briket dan kompor biomassa\nIptek\nSebagai referensi aplikasi teknologi tepat guna dan wahana untuk mengembangkan teknologi tersebut.\nSebagai langkah kecil penanggulangan krisis energi yang dihadapi Indonesia.', '', '', '', '143.png', '', ''),
(144, 'KRISALA \"EDIBLE FLOWER CANDIES : PERMEN HERBAL OLAHN BUNGA KRISAN DAN ', 'Diterima', 2019, 2, NULL, NULL, 144, '?KRISALA? Edible Flower Candies : Permen Herbal Olahan Bunga Krisan Dan Rempah Biji Buah Pala merupakan merupakan inovasi terbaru permen herbal dengan bahan baku bunga krisan sebagai edible flower yang dikombinasikan dengan biji buah pala.', '', 'Limbah bunga krisan dapat dimanfaatkan dan diolah sebagai pangan fungsional', '', '', '', '144.png', '', ''),
(145, 'SUNRISE (SABUN CUCI PIRING MINYAK ATSIRI)', 'Diterima', 2019, 4, NULL, NULL, 145, 'Pala Bogor terkenal karena mempunyai kandungan minyak atsiri yang tinggi yaitu biji (muda ? sedang) mengandung 8,7%-14,5%, biji tua 4,8%, fuli sedang 9,0% - 16,4%, dan fuli tua 6,5% - 11,9% serta memiliki senyawa myristicin 1,1%, elimicin 1%, dan safrole 0,1%. Zat aktif yang bersifat antibakteri.', '', 'Menghilangkan noda lemak dan mencegah noda kerak menggunakan bahan alami pada paralatan dapur, Sabun cuci piring anti bakteri dapat menghilangkan bakteri penyebab penyakit yang menempel pada peralatan dapur dan Meningkatkan inovasi dalam menemukan hasil karya yang dapat digunakan sebagai peluang usaha yang menjanjikan.', '', '', '', '145.png', '', ''),
(146, 'LOW-GLUTEN BREAD BERBAHAN BAKU LOKAL TEPUNG SINGKONG TERMODIFIKASI DAN', 'Diterima', 2019, 2, NULL, NULL, 146, 'Belum ditemukan produk serupa di pasaran (roti dengan penambahan mocaf dan tepung ikan lele),\n', '', 'Meningkatkan omzet UKM roti karena memproduksi healthy food akan lebih menguntungkan dan memperluas pasar UKM roti jika memproduksi low-gluten bread yang berbasis pangan lokal sehat (bagi konsumen penggiat healthy lifestyle).', '', '', '', '146.png', '', ''),
(147, 'CANGKANG KAPSUL KERAS DARI GELATIN IKAN PATIN', 'Diterima', 2019, 1, NULL, NULL, 147, 'Cangkang kapsul terbuat dari gelatin ikan patin', '', 'Inovasi pembuatan cangkang kapsul keras dari gelatin kulit ikan ini dapat direalisasikan pada skala industri', '', '', '', '147.png', '', ''),
(148, 'FORMULA JAMU AYAM PETELUR DAN PROSES PEMBUATANNYA', 'Diterima', 2019, 9, NULL, NULL, 148, 'Invensi jamu ayam petelur adalah komposisi jamu ayam betina petelur dengan menggunakan 16 bahan alami dan cara pembuatannya dan Pemberian jamu ternak terbukti mampu meningkatkan produktivitas telur hingga >20%\n\n', '', 'Masifikasi & diseminasi: PRA ? LISENSI jamu ternak  dengan start up peternak ayam KUB sekaligus inventor mitra (Endin Nurdin).  \nTelah diimplementasikan secara luas di Kawasan Teknologi Pertanian Cigombong dan secara bertahap terus diperkenalkan di kawasan program BEKERJA dan Dinas Peternakan Pemkab Bandung melalui para Pendamping.\nSecara umum, dengan aplikasi jamu ternak, dapat mengurangi penggunaan egg stimulator (perangsang produksi telur) dan antibiotik yang bersifat kimia dan harus dibeli di poultry shop.\nEfisiensi anggaran lebih murah hingga >60%  dan meningkatkan produkdi telur hingga >20%', '', '', '', '148.png', '', ''),
(149, 'APLIKASI PENGENALAN BATIK BOGOR BERBASIS WEB', 'Diterima', 2019, 3, NULL, NULL, 149, '', '', '', '', '', '', 'default.png', '', ''),
(150, 'PEMBERDAYAAN MASYARAKAT MELALUI USAHA KEMBANG GOYANG DAN KERIPIK PISAN', 'Diterima', 2019, 2, NULL, NULL, 150, 'Usaha kue kering merupakan usaha yang paling mudah untuk dikembangkan. Karena banyaknya peminat dan kue ini juga termasuk jenis makanan yang mudah diterima diberbagai kalangan masyarakat. Mulai dari anak-anak, remaja, dan para orang tua. Bisnis jenis makanan kue-kue kering banyak disukai kalangan masyarakat. Tidak hanya itu bahan-bahan untuk membuat kue kering pun sangat mudah untuk diperoleh. Proses pembuatan kue kering ini sangat mudah. Modal yang dibutuhkan tidak begitu banyak namun mampu memberikan keuntungan yang besar. Sehingga modal yang dikeluar dapat kembali dengan cepat. Untuk proses produksi tidak terlalu sulit. Karena kita bisa menjualnya diberbagai tempat. seperti di warung-warung setempat, di toko-toko. Kue kering juga dapat menemani makan siang kita seperti halnya Mie, Bakso sebagai pengganti kerupuk.', '', 'Dapat menumbuhkan keteramiplan dalam membuat Kue Kembang Goyang dan Keripik  Pisang di Kampung Kerocong satu.\nDapat  memberdayakan masyarakat sekitar.\nDapat Menambah penghasilan warga sekitar.\n', '', '', '', '150.png', '', ''),
(151, 'SABUN CUCI PIRING BERBASIS EKSTRAK KULIT MANGGIS', 'Diterima', 2019, 2, NULL, NULL, 151, 'Sabun cuci piring dari ekstrak kulit manggis, Sabun cair cuci piring berbasis ekstrak kulit manggis, sementara  buah Manggis sendiri merupakan produk pertanian unggulan dari kabupaten Bogor dan Produk ini merupakan produk yang ramah ligkungan dan berbasis pada potensi wilayah.\n', '', 'Tercipta teknologi pengolahan limbah kulit manggis yang menghasilkan nilai tambah.\n\nMenjadikan produk oleh-oleh berciri khas dari kabupaten Bogor\n\nTerciptanya masyarakat yang berperilaku produktif dalam mengolah limbah pertanian\n', '', '', '', '151.png', '', ''),
(152, 'MEDIA DIGITAL UNTUK PENGUATAN PENCITRAAN KEARIFAN LOKAL BERKELANJUTAN ', 'Diterima', 2019, 4, NULL, NULL, 152, 'Penciptaan Arena Edu Wisata pongkor dan Batik yang didukung dengan media belajar digital kolaboratif dikembangkan sesuai Potensi wilayah yang sangat kental dengan kearifan lokalnya digali, dikembangkan, dikolaborasi dan direvitalisasi\n', '', 'Meningkatnya omzet penjualan para pedagang dan UKM  \n', '', '', '', '152.png', '', ''),
(153, 'SISTEM OTOMATISASI DAN MONITORING PENGGUNAAN LISTRIK BERBASIS IOT (SMA', 'Diterima', 2019, 5, NULL, NULL, 153, 'Pembuatan Alat Ini Berawal Dari Permasalahan Masyarakat Yang Sering Menggunakan Listrik Dengan Tidak Bijak, Ataupun Melakukan Pemborosan Listrik Yang Di Sengaja Maupun Tidak Di Sengaja.\n', '', 'Dapat memudahkan masyarakat dalam menggunakan listrik dengan bijak.\n\n\nDapat membantu penghematan listrik pada rumah dan bangunan.\n\n\nDapat meningkatkan rasa aman dan nyaman ketika pengguna sedang berada jauh dari rumah.\n', '', '', '', '153.png', '', ''),
(154, 'ECO-TOX (EICHORNIA CRASSIPES ANTIOXIDANT TEA) PEMANFAATAN DAUNG ECENG ', 'Diterima', 2019, 6, NULL, NULL, 154, 'Eco-tox (Eichhornia crassipes antioxidant tea) adalah produk teh herbal yang terbuat dari eceng gondok. Manfaat produk ini berupaya dalam mengurangi dampak pencemaran air di sungai atau danau serta bermanfaat untuk menghilangkan  racun yang ada di dalam  tubuh manusia dan menjaga nafsu makan sehingga cocok untuk program diet  \n', '', '1. Eco-tox memberikan dampak positif terhadap lingkungan hidup.. Dengan adanya Eco-tox, pertumbuhan tanaman eceng gondok dapat dikendalikan sehingga lingkungan air dapat terjaga kelestarian ekosistemnya.                                                                                                       2. Eco-tox dapat memberikan dampak terhadap gaya hidup sehat kepada masyarakat dan memberikan manfaat ekonomi yang bisa dilakukan oleh BUMDES atau kelompok tani karena pengolahan yang mudah dan bahan baku yang mudah diperoleh\n\n', '', '', '', '154.png', '', ''),
(155, 'SNAK BAR DARI BERAS HANJELI DAN KACANG BOGOR', 'Diterima', 2019, 2, NULL, NULL, 155, 'Merupakan produk inovasi dari pangan lokal berupa beras hanjeli dan kacang bogor dengan penyajian modern.', '', 'Menghasilkan jajanan khas Bogor, Membuka lapangan kerja baru dan Penganekaragaman olahan komoditi lokal.', '', '', '', '155.png', '', ''),
(156, 'GARAM RUMPUT LAUT BAGI PENDERITA HIPERTENSI UNTUK HIDUP SEHAT YANG LEB', 'Diterima', 2019, 1, NULL, NULL, 156, 'Penyakit hipertensi membunuh hampir 8 miliyar orang didunia dan hampir 1,5 juta orang setiap tahun di kawasan Asia Timur-Selatan (WHO 2015). \n\nHipertensi merupakan penyakit yang paling banyak diderita pasien BPJS dengan kasus yang terus meningkat setiap tahunnya.\n\nHipertensi menjadi pemicu penyakit jantung, stroke dan gagal ginjal.\n', '', 'membantu mengurangi tingginya permasalahan hipertensi di masyarakat,\nmeningkatkan kenyamanan masyarakat dalam mengonsumsi garam yang rendah natrium untuk fungsi kesehatan,\npemanfaatan secara maksimal potensi rumput laut kering dari daerah penghasil rumput laut dengan konsep synergic systems antara Kabupaten Bogor dengan daerah-daerah penghasil rumput laut\n', '', '', '', '156.png', '', ''),
(157, 'KEMANDIRIAN BUMHU DENGAN POTKOBU (POT KOMUNAL BUMBU) UNTUK MENDUKUNG K', 'Diterima', 2019, 2, NULL, NULL, 157, 'PotKoBu adalah pengembangan dari TOGA dan warung hidup\nRasa keprihatinan penulis akan ketergantungan masyarakat terhadap hamper semua produk pangan baik nabati maupun hewani, serta hasil pemikiran yang dalam, menghasilkan produk PotKoBu, suatu inovasi baru yang dirasa sangat sesuai untuk kondisi masyarakat di Kabupaten Bogor saat ini\nSesuai dengan Visi Kabupaten Bogor: Kabupaten Bogor Termaju, Nyaman  dan Berkeadaban dengan Program Panca karsa\nPotKoBu diharapkan dapat turut menyukseskan program unggulan Kabupaten Bogor yang dikenal dengan Panca Karsa, dalam hal ini pada Karsa Sehat dan karsa Maju\n', '', 'Produksi bumbu masak dan tanaman obat dalam PotKoBu dapat berlangsung kontinyu sepanjang tahun\nPenggunaan bumbu masak hasil produksi sendiri menyebabkan penurunan pengeluaran keluarga untuk belanja pangan\nMemperkaya inovasi di Kabupaten Bogor yang dapat dikembangkan dan diterapkan secara masal guna memenuhi kebutuhan masyarakat dan meningkatkan kesejahteraanya', '', '', '', '157.png', '', ''),
(158, 'METODE PENGOLAHAN LIMBAH AMPAS KURMA YANG RAMAH LINGKUNGAN UNTUK SEDIA', 'Diterima', 2019, 9, NULL, NULL, 158, 'Gagasan membuat metode granulasi dalam pengolahan ampas kurma berawal dari hambatan dalam penyediaan ampas kurma dalam jumlah banyak untuk ternak ruminansia pada saat melakukan penelitian (Handarini et al 206). Berbagai percobaan dilakukan untuk mendapatkan ampas kurma kering. Pertama  dengan  cara yang konvensional (dioven, diblender) dengan hasil akhir dalam bentuk  tepung,  Proses pengovenan menghadapi kendala keterbatasan peralatan untuk dapat mengeringkan ampas kurma dalam jumlah banyak.  Karena sifat ampas kurma setelah dioven ulet (liat) maka jika diblender menyisakan banyak limbah terbuang\nSalah satu cara adalah membentuk ukuran ampas kurma yang seragam kemudian dikeringkan.   Berbagai ukuran saringan dicobakan untuk mendapatkan hasil yang sesuai harapan yaitu  kering merata. Bentuk granula seragam diperolrh  dengan ukuran   3 mm3 atau 0.3 cm3, lama penjemuran di bawah panas matahari penuh 2 hari, kondisi kering dengan sifat crunchy  (renyah) dengan kadar  air 13%. \n', '', 'Mengurangi limpahan limbah pabrik hasil pengolahan sari kurma yang dapat mencemari lingkungan.\nKarena sifat limbahnya berdasarkan spesifik lokasi maka diharapkan dapat memberdayakan peternak yang ada disekitar lokasi peternakan agar dapat memanfaat limbah ampas kurma yang telah terolah menjadi sumber bahan pakan ternak sehinggga dapat mengurangi production cost.', '', '', '', '158.png', '', ''),
(159, 'VLA LABU KUNING (CUCURBITA Sp) FUNGSIONAL', 'Diterima', 2019, 4, NULL, NULL, 159, 'Vla isian untuk kue soes dari labu kuning, Kandungan ?-karoten yang terdapat dalam labu kuning juga dapat menggantikan penggunaan pewarna (methanil yellow) .\n-Menurunkan kadar gula darah karena kandungan flavonoid, vitamain C dan E serta beta karoten (Fathonah et al. 2014) dan Labu  butternut mengandung kadar air sebesar 82,15 g, kadar abu  9,9 g,  karbohidrat 5,51 g, serat kasar 1,45 g, protein 0,86 g, lemak 0,13 g and 15,33 mg vitamin C yang dimana bisa menjadi kebutuhan nutrisi dan perbaikan bagi tubuh. Labu ini cocok untuk orang yang sedang mengurangi makan lemak dan protein (Dari, L et a.l . 2016)\n\n', '', 'Meningkatkan nilai ekonomis labu kuning lokal\nMeningkatkan pendapat petani sekaligus industri rumahan dan menengah karena terbentuknya usaha baru\nMengembangkan makanan lokal yang mempunyai nilai fungsional kesehatan dan dapat menjadi icon olahan produk daerah\nMeningkatkan ketahanan pangan berbahan baku lokal\n', '', '', '', '159.png', '', ''),
(160, 'KARBON AKTIF TANDAN KOSONG KELAPA SAWIT SEBAGAI PENURUN KADAR MONOKSID', 'Diterima', 2019, 4, NULL, NULL, 160, 'Limbah tandan kosong kelapa sawit dapat dimanfaatkan sebagai bahan baku karbon aktif yang dapat menurunkan kadar karbon monoksida pada gas buang kendaraan bermotor sebesar 89,07%. Karbon aktif yang dihasilkan merupakan produk inovasi yang dapat diimplementasikan dan memiliki banyak fungsi.\n\n', '', 'Pembuatan karbon aktif tandan kosong kelapa sawit mempunyai nilai produksi ? Rp250.000/kg, sedangkan harga karbon aktif dipasaran beragam yaitu Rp300.000-Rp400.000/kg.\nPer tahun 2011 produksi kelapa sawit Indonesia mencapai 22.508.011 ton (Badan Pusat Statistik, 2012) dan limbah tandan kosong kelapa sawit sejumlah 23% dari kelapa sawit. \nPerolehan karbon aktif sekitar ? 200.000 ton/tahun. Jika harga karbon aktif Rp250.000/kg maka omzet nya adalah sekitar Rp50 Milyar\nProduksi karbon aktif dapat menghasilkan pendapatan yang besar, serta dapat membuka lapangan kerja baru.\n', '', '', '', '160.png', '', ''),
(161, 'APLIKASI SISTEM INFORMASI KESEHATAN IBU DAN ANAK (SOS-DEKES)', 'Diterima', 2019, 1, NULL, NULL, 161, 'SISTEM INFORMASI ADALAH SISTEM ONLINE SURVEILANS DEMOGRAFI KESEHATAN (SOS-DEKES) BERUPA APLIKASI YANG MENGGUNAKAN FLATFORM ANDROID, DENGAN NAMA ODK COLLECT YANG DAPAT DIUNDUH DI GOGLE PLAY\n', '', 'MEMUDAHKAN PEMANTAUAN DAN TINDAKAN YANG MUNGKIN HARUS SEGERA DILAKUKAN OLEH TENAGA KESEHATAN/KAPANPUIN DIBUTUHKAN,\nSISTEM INFORMASI SEBAGAI BAGIAN DARI FUNGSI ASESMEN MENYEDIAKAN DATA DAN INFORMASI SECARA TERATUR UNTUK MEMASTIKAN KUALITAS PELAKSANAAN PROGRAM\nSEBAGAI SISTEM ONLINE, INFORMASI KESEHATAN MENJAMIN DATA TEPAT-WAKTU (ONLINE) DAN MENGAITKAN DATA PENDUDUK SASARAN DENGAN DATA LAYANAN KESEHATANPENYAJIAN RUTIN DATA PROGRAM KESEHATAN: MENDORONG KOMUNIKASI, KOORDINASI, DAN INTEGRASI PEMANGKU KEPENTINGAN MEMBAHAS KEMAJUAN DAN PENCAPAIAN PROGRAM KESEHATAN\n', '', '', '', '161.png', '', ''),
(162, 'PATEN ONLINE', 'Diterima', 2019, 5, NULL, NULL, 162, 'Kegiatan ini menggambarkan permasalahan tentang belum tercapainya target penerimaan khususnya Lain-lain Pendapatan yang sah dalam skema APBD Kabupaten/Kota, belum optimalnya kerjasama antara Unit Pelayanan Teknis Daerah (UPTD)-Pusat Pengelolaan Pendapatan Daerah Wilayah Provinsi di Kabupaten/Kota dan belum dimaksimalkannya semua potensi yang ada di Kabupaten/Kota dalam upaya peningkatan penerimaan pajak kendaraan bermotor.\n', '', 'Meningkatkan kinerja pelayanan Kecamatan terhadap masyarakat terutama dalam memudahkan masyarakat untuk membayar pajak khususnya pajak kendaraan bermotor dan Memberikan kemudahan untuk melaksanakan kewajiban pembayaran pajak khususnya melaksanakan pembayaran pajak kendaraan bermotor.', '', '', '', '162.png', '', ''),
(163, 'SITEGAR 119 LAYAD RAWAT', 'Diterima', 2019, 1, NULL, NULL, 163, 'SITEGAR adalah sistem informasi rujukan dari fasilitas kesehatan tingkat pertama dan antar Rumah Sakit di Kabupaten Bogor.\n\nSITEGAR telah dilaunching oleh Bupati Bogor, pada rangkaian kegiatan Bogor Fest tanggal 06 April 2019 di GOR Pakansari. \n\nSITEGAR tidak hanya melayani kasus maternal neonatal tapi juga kasus umum.\n', '', '1. Masyarakat tidak lagi berkeliling untuk mencari tempat tidur dan ruangan RS\n2. Efisiensi Waktu dan biaya\n3. Masyarakat dapat mengakses dashboard ketersediaan tempat tidur dan ruangan RS melalui website sitegar\n4.Mempermudah masyarakat dalam mendapatkan pelayanan kesehatan rujukan', '', '', '', '163.png', '', ''),
(164, 'SIMAKLAH (SISTEM INFORMASI MANAJEMEN ANGGARAN DAN KEGIATAN SEKOLAH)', 'Diterima', 2019, 5, NULL, NULL, 164, 'Sistem Informasi Manajemen Anggaran dan Kegiatan Sekolah (SIMAKLah) adalah serangkaian perangkat dan prosedur yang dibuat untuk mengintegrasikan sistem yang ada guna membantu sekolah', '', 'Menghemat biaya karena tidak memerlukan banyak orang\n Meningkatkan akuntabilitas dan transparansi\nMeningkatnya mutu pelayanan kepada masyarakat', '', '', '', '164.png', '', ''),
(165, 'SISTEM CEPAT PELAYANAN ONLINE (SICEPOT)', 'Diterima', 2019, 5, NULL, NULL, 165, 'Sicepot adalah sistem aplikasi                 pendaftaran    online yang digunakan oleh pasien untuk melakukan             reservasi perawatan rawat jalan di     rumah sakit. Pasien dapat                  menggunakan aplikasi untuk               mendapatkan nomor dan mencetak    antrian yang tekoneksi langsung         dengan sistem informasi rumah sakit yang telah terintegrasi juga dengan    bridging  system', '', 'Data yang di input  pada platform akan secara realtime update dalam server SIMRS dan Reservasi dapat dilakukan dimana saja sesuai keinginan jadwal berkunjung serta Efesiensi biaya dan waktu \n\n', '', '', '', '165.png', '', ''),
(166, 'SISTEM INFORMASI MANAJEMEN ANGKA KREDIT AUDITOR (SIMAK)', 'Diterima', 2019, 5, NULL, NULL, 166, 'SIMAK Auditor, Aplikasi berbasis website untuk menyusun DUPAK\nKonsep Simple, Light, Fast and Integrated, memberikan kemudahan, kecepatan dan data terintegrasi antar penggunanya \nDiprogram dengan bahasa pemrograman PHP dengan database MySql. \nDesain dan grafis menggunakan Cascading Style Sheet (CSS) dan Javascript. \nAlat bantu pemrograman menggunakan editor Notepad++.\n', '', 'Memberikan kemudahan bagi semua pihak yang melakukan pengelolaan angka kredit, Efisiensi waktu dalam pengelolaan angka kredit oleh auditor, Sekretariat dan Tim Penilai dan Meningkatkan kinerja Inspektorat sebagai lembaga pengawasan\n\n', '', '', '', '166.png', '', ''),
(167, 'SIMPOL (SISTEM PENGESAHAN DOKUMEN RENCANA TEKNIS ONLINE)', 'Diterima', 2019, 5, NULL, NULL, 167, 'Proses berkas yang berintegrasi dari setiap tahap yang dilakukan dari register, survey, kajian, perhitungan, retribusi dan denda hinga SK PDRT', '', 'Sistem PDRT Online yang selanjutnya disingkat SIMPOL adalah aplikasi yang dibangun untuk mempermudah pelayanan administrasi PDRT yang menjadi salah satu syarat enting pengajuan IMBG (Izin Mendirikan Bangunan Gedung) di Kabupaten Bogor', '', '', '', '167.png', '', ''),
(168, 'MENUJU SMART CITY MELALUI PENGANGKUTAN SAMPAH DENGAN TPS CANTIK YANG T', 'Diterima', 2019, 6, NULL, NULL, 168, 'Smat City melalui pengangkutan sampah dengan sistem TPS Cantik terintegrasi Sistem Informasi', '', 'Mengurangi dan menghilangkan titik sampah liar secara bertahap\nMereformasi sistem pengangkutan sampah sekaligus merubah paradigmanya dari orientasi target retribusi ? orientasi pelayanan kebersihan\nMengingkatkan efisiensi pengangkutan sampah \nMempermudah monitoring pengangkutan sampah\nPembagian peran dalam pengelolaan sampah secara adil dan merata\nMeningkatkan dan memasivekan proses pengurangan sampah di level sumber\nMerubah sistem pembayaran retribusi sampah secara lebih transparan \n', '', '', '', '168.png', '', ''),
(169, 'SIGADIS (SISTEM PENGADUAN DAN INFORMASI GENDER)', 'Diterima', 2019, 5, NULL, NULL, 169, 'Setiap Perbuatan Terhadap Seseorang Terutama Perempuan Yang Berakibat Kesengsaraan Atau Penderitaan Fisik, Psikis, Dan Atau Penelantaran Rumah Tangga, Ancaman Untuk Melakukan Perbuatan Pemaksaan Atau Perampasan Kemerdekaan Secara Melawan Hukun Dalam Lingkup Rumah Tangga  (Pasal 1 Ayat 1 Uu Pkdrt)\n', '', 'Tersedianya Data Kasus Kekerasan Perempuan Dan Anak Yang Dapat Dimanfaatkan Bagi Penyusunan Kebijakan, Program Dan Kegiatan Pembanguna Serta Proses Pengambilan Keputusan\n', '', '', '', '169.png', '', ''),
(170, 'GEMASKOP (GERAKAN MASYARAKAT SADAR KOPERASI)', 'Diterima', 2019, 4, NULL, NULL, 170, 'Dengan mengedukasi masyarakat mengenai apa itu koperasi, keuntungan berkoperasi, tantangan yang dihadapi serta kesempatan yang bisa di raih melalui koperasi \n', '', 'Memberi Pemahaman Kepada Masyarakat Mengenai Usaha Yang Dapat Dilakukan Melalui Koperasi Sebagai Badan Usaha Yang Berbadan Hukum\nDiharapkan Muncul Wirausahawan Muda Yang Dapat Mengembangkan Potensi Usaha Yang Ada Di Daerahnya\nDiharapkan Dapat Meciptakan Lapangan Kerja Dan Mengurangi Pengangguran\nTerwujudnya Ekonomi Kerakyatan Yang Dapat Meningkatkan Taraf Hidup Para Anggota nya\n', '', '', '', 'default.png', '', ''),
(171, 'APLIKASI MENU B2SA', 'Diterima', 2019, 1, NULL, NULL, 171, 'Aplikasi menu B2SA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        Informasi tentang kebutuhan asupan gizi /kapita/hari\nImformasi sumber kebutuhan kandungan nutrisi sesuai selera\nImformasi tentang anjuran makanan untuk memenuhi angka kecukupan gizi (dalam bentuk porsi),\nDaftar rekomendasi menu makanan B2SA,\nImformasi daftar bahan makanan berdasarkan kandungan gizinya dengan ukuran satu porsi\n', '', 'Membantu masyarakat untuk melakukan hidup sehat\nMemberikan informasi tentang kebutuhan asupan gizi untuk masing-masing individu                                                                                                                                                                                                                                                                                                                                                                                          Menghemat biaya untuk hidup sehat\nDapat membuat berat badan yang ideal\n\n', '', '', '', '171.png', '', ''),
(172, 'PENGGUNAAN APLIKASI EXCEL VLOOKUP REGISTER SURAT PELAYANAN WARGA DI KE', 'Diterima', 2019, 5, NULL, NULL, 172, 'cara dalam mengembangkan pola kepemimpinan melalui motivasi dan potensi yang ada pengambilan keputusan yang tepat \nkepada bawahan atau warga yang membutuhkan pelayanan bisa tercapai dan tidak terjadi mall administrasi\nterobosan baru dalam pelayanan seperti apa yang harus diterapkan yaitu melalui penggunaan aplikasi excel vlookup register surat pelayanan warga ', '', 'memangkas 4 orang bagian pelayanan dari penerima berkas, pengentri data/surat, pengregister dan pembawa tandatangan, menjadi bisa dilakukan oleh satu orang pelayanan\nperbaikan penyempurnaan dengan mempertimbangkan kendala yang ditemui selama penggunaan aplikasi, mulai dari rumus dan ukuran data size yang minimal, serta human error saat pengetikan .\n', '', '', '', 'default.png', '', ''),
(173, 'WISATA  ALAM GOA CIWADON DESA CIBODAS', 'Diterima', 2019, 6, NULL, NULL, 173, 'Menjadikan goa ciwadon menjadi salah satu icon dan destinasi wisata Desa Cibodas, yang ada di kecamatan jonggol.      serta mampu mengangkat pendapatan kebutuhan ekonomi warga sekitar', '', 'Lingkungan sekitar goa menjadi tempat wisata \nDesa Cibodas memiliki Icon Wisata yang menjadi daya tarik para turis domestik baik dari dalam maupun luar pulau jawa, bahkan turis asing dari negara tetangga.                                                                                                                                                                                                                              Para masyarakat memiliki penghasilan tambahan dari retribusi tiket wisata. Pembelajaran Kekompakan dan kemauan yang keras antara Pemerintah Desa dan Warga masyarakat sekitar untuk memiliki tempat wisata yang bersih dan sehat, mendatangkan berkah yang bernilai ekonomis atau Multiplayer Effect.\n\n', '', '', '', '173.png', '', ''),
(174, 'BARAYA (BENDUNGAN ASRI RAMAH DAN BERBUDAYA)', 'Diterima', 2019, 6, NULL, NULL, 174, 'BARAYA Kepanjangan dari Bendungan Ramah, Asri, Berbudaya dan Lingkungan. Adalah sebuah komunitas penggiat lingkungan yang di SK kan oleh desa dengan arahan dari DLH Provinsi Jawa Barat, setelah mendapatkan pelatihan selama 2 bulan dengan jumlah anggota saat ini sebanyak 20 orang.\n', '', 'Memberikan Penyuluhan Kepada Masyarakat Akan Pentingnya Menjaga Dan     Merawat Alam Dengan Tidak Melakukan Tindakan Merusak Alam.\nMenumbuhukan Semangat Gotong Royong Masyarakat Untuk Sama ? Sama \nBerpartisipasi Dalam Meciptakan Desa Atau Kampung Bendungan Yang   Berbudaya Lingkungan                                                                                                                                                                                                                                                                                                                         Mensosialisasikan Program ? Program Kelompok Ecovillage Baraya    Lingkungan Desa Bendungan Kepada Masyarakat Dan Stake Holder Yang Ada Di Desa Bendungan Dan Sekitarnya                                                                                                                                ', '', '', '', '174.png', '', ''),
(175, 'GESCIDA (GERAKAN CINTA SENI SUNDA)', 'Diterima', 2019, 3, NULL, NULL, 175, 'Sanggar Seni Budaya Saung Wira didirikan pada tanggal 10 Oktober 2010 yang merupakan bagian dari kegiatan Pusat Kreatifitas Masyarakat (PKM) dilingkungan Desa Banjarwaru, Kecamatan Ciawi, Kabupaten Bogor.\nDinamakan ? Angklung Sora Awi ti Ciawi ? atau ? Suara Bambu dari Ciawi ? adalah untuk memudahkan dan mengenalkan identitas sanggar ini yang berasal dari Ciawi serta berupaya untuk meningkatkan kesadaran publik di tingkat lokal, regional dan nasional akan pentingnya pelestarian kesenian angklung yang sudah mendunia sebagai warisan budaya yang tak ternilai harganya.\n', '', 'Memasyarakatkan seni budaya melalui kegiatan kesenian yang bermanfaat dan sebagai wadah aspirasi seniman di lingkungan Kabupaten Bogor.\nDengan melestarikan kesenian Jawa Barat ini diharapkan anak-anak penerus bangsa ini tidak melupakan kesenian daerahnya dan juga ikut melestarikan, mengembangkan dan memajukan pariwisata Indonesia di bidang Seni dan Budaya.\nSanggar  ini memiliki ruang terbuka Amphiteater berkapasitas 150 orang sebagai tempat latihan kesenian dan sebagai tempat interaktif  bermain angklung untuk tamu yang berkunjung.\n', '', '', '', '175.png', '', ''),
(176, 'JENDELA KAHURIPAN', 'Diterima', 2019, 5, NULL, NULL, 176, '', '', '', '', '', '', 'default.png', '', ''),
(177, 'PIPANISASI AIR BERSIH', 'Diterima', 2019, 5, NULL, NULL, 177, 'Di kampung Geger Bitung Cipaneungah Tonggoh (Ciptong)  RT 04/02 Desa Cijeruk yang mempunyai sumber mata air yang sangat melimpah dan layak untuk di manfaatkan dengan pengelolaan yang baik. Adanya kebutuhan  masyarakat akan air bersih untuk memenuhi kebutuhan  rumah tangga (masyarakat) yang tidak merata.\nAdanya kebutuhan di kalangan petani, apalagi dalam masa kemarau panjang akan kebutuhan air irigasi, untuk mengairi lahan pertaniannya, yang tidak jarang terjadi  polemik di warga masyarakat lainya, yang akhirnya kepala Desa Cijeruk (Ade Tamsuri) berinisiatif untuk melakukan penertiban dan ingin melakukan pengelolaan bersama dalam memenuhi kebutuhan bersama, walaupun sumber air tersebut memang sudah milik pihak ketiga yaitu perusahaan.\n', '', 'Potensi sumber daya alam (SDA) yang ada di kampung geger bitung cipaneungah tonggoh (ciptong)  Rt 04/02 desa Cijeruk yang ada d kelola dengan baik dan bermanfaat bagi kelangsungan hidup masyarakat.\nPerlunya upaya Bersama dari semua lapisan baik pemerintah desa dan masyarakat..\nWarga memiliki hak akan sarana air bersih demi mencukupi kebutuhan rumah tangga dan pertanian sehingga dapat meningkatkan pengelolaan sumber daya alam (SDA).\n', '', '', '', '177.png', '', ''),
(178, 'KELOMPOK TERNAK DELIMA KEMBANGKAN KAMBING PU, UBAH PARADIGMA & SEJAHTE', 'Diterima', 2019, 4, NULL, NULL, 178, 'Adanya sekumpulan peternak kambing yang kurang memiliki pengetahuan bagaimana caranya pemeliharaan kambing yang unggul.\nPada tanggal 08 januari 2012 telah dibentuk kelompok ternak kambing delima dengan jumlah kelompok 20 orang.\nPada tahun 2013 mendapat bantuan kambing PE dengan jumlah 50 ekor, terdiri dari 10 pejantan dan 40 kambing betina dari pemkab bogor melalui balai peternakan.\nPada tahun 2014 kelempok ternak delima mulai mengikuti pelatihan resmi dibalai snakma Cigombong.\nMengolah produk turunan dari hasil susu kambing etawa tersebut menjadi sabun kecantikan, yoghurt, kefir susu kambing.\nWalau masih dengan pola produksi skala rumahan(home industry), tidak menurunkan semangat dan rasa kebersamaan di dalam Kelompok Wanita Tani ini.\n', '', 'Inovasi produk olahan susu kambing, Dilakukan masih dengan proses Home Industri (skala rumahan), menggunakan Alat-alat rumah tangga dan packing yang sederhana menjadi sabun kecantikan, yoghurt, kefir Menjadi sarana pembelajaran studi banding.', '', '', '', 'default.png', '', ''),
(179, 'PENYERTAAN MODAAL BUMDES UNTUK UKM', 'Diterima', 2019, 4, NULL, NULL, 179, '', '', '', '', '', '', '179.png', '', ''),
(180, 'KRL DENGAN BANK SAMPAH, KEBUN OBAT DAN KERAJINAN TANGAN DARI PELEPAH P', 'Diterima', 2019, 5, NULL, NULL, 180, '', '', '', '', '', '', 'default.png', '', ''),
(181, 'COWBOYS CHEESE', 'Diterima', 2019, 4, NULL, NULL, 181, 'Cowboys merupakan usaha yang berfokus pada bidang pengolahan susu sapi khususnya produk keju asli dan murni dan susu racik aneka rasa yang bahan bakunya kami ambil dari peternakan kami sendiri dan para peternak sapi lokal dengan tujuan untuk meningkatkan kesejahteraan para peternak, Cowboys sebagai penyedia produk susu dan keju murni terbaik, serta penyedia wisata edukasi yang menjadi wadah bagi para peternak lokal maju dan berkembang bersama\n\n', '', 'Mengatasi permasalahan para peternak kecil\nMeningkatkan kesejahteraan para peternak kecil\nMenyerap tenaga kerja\nMenjadikan tenaga kerja yang ada memiliki skill yang mumpunin agar dapat membuka usaha secara mandiri\nMemberikan penghasilan tambahan kepada para peternak\nMemberdayakan masyarakat di area sekitar peternakan\n', '', '', '', '181.png', '', ''),
(182, 'PAPIH (PARUNG PEDULI HOIV/AIDS)', 'Diterima', 2019, 1, NULL, NULL, 182, 'Adanya Kasus  dengan HIV/Aids di Masyarakat sangat memprihatinkan adapun penyebab dari HIV/Aids yaitu karena adanya kegiatan yang beresiko,  faktor ekonomi , kurangnya iman dan taqwa \n', '', 'Melalui Kegiatan PAPI?H para penderita maupun seseorang yang berperilaku beresiko dapat ditindaklanjuti\nMasyarakat dapat lebih mengenal dan perduli terhadap penyakit HIV/Aids \n', '', '', '', '182.png', '', ''),
(183, 'TOMATS (TANGANI KELOLA MASYARAKAT TERPADU STUNTING)', 'Diterima', 2019, 5, NULL, NULL, 183, 'TOMATS ( Tangani Kelola Masyarakat Terpadu Stunting ) merupakan wadah bagi, rematri, ibu hamil, untuk mengenal dan memahami lebih dalam tentang gizi, kesehatan dan 1000 HPK agar kelak saat melahirkan anak samapai usia 2 tahun tidak terjadi baduta stunting, kegiatanya meliputi konseling/penyuluhan, pendataan ibu hamil, pelaksanaan kelas ibu KIAN IMBANG, PMT penyuluhan dan PMT pemulihan bagi ibu hamil yang mengalami kurang energi kronis (KEK), anemia dan bayi baru lahir dilakukan Inisiasi menyusu Dini (IMD) sesuai standar, pemberian asi ekslusif, dan dipantau sampai usia 2 tahun, serta untuk meningkatkan status ekonomi keluarga dengan menekan angka kesakitan sehingga akan tercapai keluarga sejahtera', '', 'Menurunya kejadian stunting di desa Cibatok II \nMenurunya angka tingkat kesakitan sehingga meningkatkan status ekonomi keluarga. \nProdusen telur berkembang karena pengadaan dan kebutuhan telur ayam meningkat. \nPedagang telur sekitar wilayah omsetnya bertambah. \nTarget tingkat pencapaian program meningkat', '', '', '', '183.png', '', ''),
(184, 'JARAPAN (REMAJA GENERASI TERDEPAN)', 'Diterima', 2019, 1, NULL, NULL, 184, 'Masih tingginya angka pergaulan bebas, 9 % pernah melakukan hubungan seks pra nikah,8% hamil diusia remaja, 38% pernah merokok, 5% pernah mencoba alkohol, 40 % remaja putri memiliki masalah gizi remaja,70 % remaja memiliki pengetahuan yang kurang akan kesehatan remaja\nDengan permasalahan tersebut dibentuklah inovasi JARAPAN (Remaja Generasi Terdepan) dengan melakukan bimbingan  dan penyuluhan kepada masyarakat khususnya remaja', '', 'Meningkatnya jumlah kunjungan\nMeningkat kepedulian remaja kan kesehatannya\nMeningkatnya peran aktif remaja dalam keterlibatan menjadi konselor sebaya\nMeningkatnya penyuluhan dalam gedung oleh remaja\nMenjadikan remaja percaya diri baik sebagai klien atau konselor\nRemaja dapat membaca aktif dengan buletin\nMenjadi media konseling bagi remaja\nBertambah pengetahuan remaja mengenai kesehatannya', '', '', '', '184.png', '', '');
INSERT INTO `inovasi` (`id_inovasi`, `nama_inovasi`, `status_inovasi`, `tahun_pembuatan_inovasi`, `id_bidang_inovasi`, `id_bidang_inovasi_2`, `id_bidang_inovasi_3`, `id_inovator`, `deskripsi`, `penjaringan_ide`, `manfaat_inovasi`, `dampak_inovasi`, `proposal_inovasi`, `dokumentasi_inovasi`, `foto_inovasi`, `link_medsos`, `video_link_youtube`) VALUES
(185, 'FORMULA PEKAT (FORMULA MASYARAKAT PEDULI KEHAMILAN DAN PERSALINAN SEHA', 'Diterima', 2019, 1, NULL, NULL, 185, 'upaya peningkatan kualitas pelayanan persalinan dengan pendekatan peran ulama sebagai media penggerakan penyadaran masyarakat. Peran ulama diharapkan dapat diberdayakan sebagai mitra dalam penyampaian pesan pesan kesehatan dalam pengajian, pondok pesantren dan kegiatan lainnya serta mendapatkan piagam telah mengikuti bimbingan dari Puskesmas\n', '', 'Meningkatkan derajad kesehatan masyarakat Sukamkmur melalui kualitas pelayanan persalinan dan kesehatan Ibu dan anak yang baik di kecamatan Sukamakmur\nMeningkakan kualitas pelayanan persalinan dengan ditolong oleh tenaga yang berkompeten\nMeningkatkan kesehatan ibu\nMenigkatkan kesehatan bayi dan anak\n', '', '', '', '185.png', '', ''),
(186, 'POLLING (POS BINDU KELILING)', 'Diterima', 2019, 1, NULL, NULL, 186, 'Bentuk Kegiatan pokok POLLING adalah POSBINDU Keliling, ini di laksanakan mengikuti waktu dan tempat di mana biasanya banyak lanjut usia berkumpul.seperti di kelompok pengajian atau kegiatan keagamaan lain,kelompok paguyuban,kelompok arisan,kelompok olahraga lansia dan lain sebagainya.dimana kegiatan ini tidak banyak memerlukan waktu dan tempat serta persiapan lain yang rumit,hanya menambahkan kegiatan promotif dan preventif bagi kesehatan lansia. Kegiatan ini di laksanakan per triwulan sekali untuk petugas kesehatan dan untuk mengisi kegiatan di bulan yang kosong diisi dengan kegiatan rutin kelompok yang bersangkutan atau melibatkan lintas sektor lain.', '', 'Meningkatkan derajat kesehatan lanjut usia untuk mencapai lanjut usia yang sehat, mandiri, aktif, produktif dan berdaya guna bagi keluarga dan masyarakat.', '', '', '', '186.png', '', ''),
(187, 'ANTARIKSA (ANTAR DAN PERIKSA)', 'Diterima', 2019, 1, NULL, NULL, 187, 'Survey Mawas Diri yang di laksanakan kader kesehatan pada awal Januari 2017 juga  di dapatkan data bahwa baru 40 % lanjut usia yang terlayani di Posbindu Lansia hal ini berkaitan dengan jumlah RW binaan yang ada di Puskesmas Jampang dari 3 desa adalah 32 RW dan Posbindu yang terbentuk baru 12 pos dan 4 POLLING ,serta cakupan pelayanan lansia >60 tahun pada tahun 2017 yang masih belum mencapai target,maka berangkat dari masalah itulah sejalan dengan visi Puskesmas Jampang yaitu Terwujudnya masyarakat Puskesmas Jampang yang mandiri untuk hidup sehat dan sesuai dengan Misi nya yang ke 2 dan ke 3 yaitu mendorong kemandirian individu,keluarga dan masyarakat untuk hidup sehat,serta memberikan dan meningkatkan pelayanan kesehatan dasar yang berkualitas,merata dan terjangkau,maka kami menjalankan kegiatan inovatif berupa kegiatan ? Posbindu Lansia Inovatif Keliling? sejak tahun 2017 dan hasil  nya,cakupan kunjungan Posbindu Lansia meningkat,hanya saja untuk kunjungan usia > 60 tahun masih sangat rendah,untuk itu di tahun 2018 ini kami meluncurkan program inovatif baru yaitu ? ANTARIKSA ?Antar dan Periksa lansia > 60 tahun ke tempat pelayanan kesehatan atau Bulan layanan kesehatan', '', 'Jumlah Lansia yang mendapatkan pelayanan kesehatan bertambah, Keluarga dengan Lansia mendapatkan pembinaan, Lansia menjadi lebih Sehat,Mandiri dan Produktif, Kendala waktu dan pengantar bisa di minimalisir karena Lansia dapat di periksa kapan pun', '', '', '', '187.png', '', ''),
(188, 'KTP JAMPANG (KEBON TOGA PERCONTOHAN)', 'Diterima', 2019, 1, NULL, NULL, 188, 'Minat masyarakat terhadap pengobatan tradisional untuk pertolongan pertama saat sakit 65%\n(Hasil Survey Mawas Diri Puskesmas Jampang tahun 2017)\nCakupan Pembinaan Asuhan Mandiri TOGA 33 % dari target 100% (PKP Puskesmas Jampang tahun 2016)\n', '', 'Cakupan Pembinaan Asuhan Mandiri TOGA tahun 2018 tercapai 100 %(PKP 2018)\nTelah menjadi KTP Puskesmas Se Kabupaten Bogor\nHasil olahan herbal lansia binaan Melati Bahagia  desa Tegal juara 2 Se Kab Bogor tahun 2018,olahan desa Jampang juara 3 se kab Bogor tahun 2019,memiliki PIRT dan sudah dipasarkan di mini market di wilayah Bogor dengan merk dagang KAJUM\n', '', '', '', '188.png', '', ''),
(189, 'JABESUNG (JAMPANG BEBAS PASUNG)', 'Diterima', 2019, 3, NULL, NULL, 189, 'Dari Data tahun 2016 masih ada 3 ODGJ (Orang  dengan gangguan jiwa ) yang di pasung di wilayah binaan Puskesmas Jampang,tepatnya di desa Tegal kecamatan Kemang Hal ini tidak sesuai dengan  visi Puskesmas Jampang yaitu Terwujudnya masyarakat Puskesmas Jampang yang mandiri untuk hidup sehat dan tidak sesuai dengan Misi nya yang ke 2 dan ke 3 yaitu mendorong kemandirian individu,keluarga dan masyarakat untuk hidup sehat,serta memberikan dan meningkatkan pelayanan kesehatan dasar yang berkualitas,merata dan terjangkau,maka perlu kiranya kami menerima usulan dari masyarakat untuk mengadakan kegiatan JABESUNG (Jampang Bebas Pasung)', '', 'Manfaat adanya Jabesung adalah mengedukasi masyarakat bahwa ODGJ pun memiliki hak yang harus di penuhi dan dihormati dalam kehidupannya', '', '', '', '189.png', '', ''),
(190, 'GEMAR ANTING MASS ( GERAKAN MASYARAKAT ANTI STUNTING DENGAN MONITORING', 'Diterima', 2019, 1, NULL, NULL, 190, 'Perlunya Partisipasi dari seluruh lapisan masyarakat khususnya kelompok potensial yang di harapkan mampu memecahkan permasalahan kesehatan di masyarakat serta mendorong adanya inovasi dari masyarakat untuk mengadakan kegiatan yang melibatkan Partisipasi seluruh lapisan masyarakat khususnya kelompok pengambil keputusan di masyarakat untuk ikut aktif terlibat di dalam meningkatkan kesadaran masyarakat untuk hidup sehat yaitu kegiatan inovatif Gemar Anting Mass,singkatan dari Gerakan Masyarakat Anti Stunting dengan Monitoring Aktif Supaya Sehat).', '', 'a) Meningkatkan cakupan kunjungan Balita Sehat\nb) Meningkatkan Cakupan D/S .\nc) Mengoptimalkan fungsi Posyandu\nd) Mengoptimalkan peran dan fungsi Kader Kesehatan.\ne) Mengoptimalkan fungsi Kelas Balita\nf) Meningkatkan peran Lintas sektor dalam pembinaan Posyandu\ng) Meningkatkan peran tokoh masyarakat,tokoh agama,aparat desa dalam menggerakkan sasaran ke Posyandu\n', '', '', '', '190.png', '', ''),
(191, 'APIK (ANAK PEMANTAU JENTIK)', 'Diterima', 2019, 6, NULL, NULL, 191, 'APIK (Anak Pemantau Jentik) Cukup dengan memantau / memonitoring pelaksanaan APIK di setiap Sekolah dan monitoring pelaksanaan kegiatan anak APIK di rumah masing-masing maka kegiatan PSN makin aktif dan angka kejadian dbd bisa di tekan', '', 'Manfaat adanya APIK ,adalah bertambahnya kelompok masyarakat yang peduli terhadap lingkungan khususnya dalam kegiatan pemberantasan sarang nyamuk ( PSN)', '', '', '', '191.png', '', ''),
(192, 'U-PELITA (Urang PEduli PenderitA Gangguan JiwA)', 'Diterima', 2019, 1, NULL, NULL, 192, 'U-PELITA Merupaka singkatan dari Urang Peduli Penderita Gangguan Jiwa. arti kata Urang (Bahasa Sunda) saya atau orang mengajak sedangkan peduli sendiri artinya sebuah nilai dasar dan sikap memperhatikan atau bertindak proaktif dalam suatu kondisi atau keadaan disekitar kita. \nPeduli adalah sebuah sikap keberpihakan kita untuk melibatkan diri dalam persoalan, keadaan atau kondisi yang terjadi disekitar kita.\nProgram Inovasi ini mempunyai tujuan untuk mencapai tujuan bersama yaitu mempertahankan dan meningkatkan derajat kesehatan pada pasien kesehatan jiwa dimasyarakat secara optimal dalam suatu wadah yang berisikan individu yang memeliki tujuan yang sama\nyaitu atas dasar kemanusiaan yang fokus utamanya yaitu orang dengan gannguan jiwa. Tidak hanya itu inovasi ini juga bertujuan untuk menyadarkan masarakat terhadap masalah kesehatan jiwa yang ada dimasyarakat mencegah timbulnya bebagai gangguan jiwa, menanggulangi masalah kesehatan jiwa, memberdayakan masyarakat dalam penyelenggarakan upaya kesehatan jiwa. Meminimalkan dampak masalah psikososial dan gangguan jiwa terhadap individu keluarga dan masyarakat', '', 'menyadarkan masarakat terhadap masalah kesehatan jiwa yang ada dimasyarakat, mencegah timbulnya bebagai gangguan jiwa, menanggulangi masalah kesehatan jiwa, memberdayakan masyarakat dalam penyelenggarakan upaya kesehatan jiwa. Meminimalkan dampak masalah psikososial dan gangguan jiwa terhadap individu keluarga dan masyarakat', '', '', '', '192.png', '', ''),
(193, 'BERKASI (BERI KAMI KESEMPATAN HIDUP BAHAGIA)', 'Diterima', 2019, 1, NULL, NULL, 193, 'BERKASII  Adalah beri kami kesempatan untuk hidup bahagia Cara pendekatan yang sudah reaktif   ( Diutamakan Anak ?Anak )                                         \n     \n     -  Dekati keluarga \n     -  Ajak Komunikasi\n     -  Ajak jalan jalan untuk supaya lebih dekat ', '', 'Menurunkan Angka Penyebaran HIV/AIDS\nMemberikan Semangat Pada Anak Anak Yang Sudah Reaktif\nMemotivasi Untuk Berobat Supaya Tidak Putus \n', '', '', '', '193.png', '', ''),
(194, 'PESAT JIWA (PELAYANAN KESEHATAN JIWA)', 'Diterima', 2019, 1, NULL, NULL, 194, '', '', '', '', '', '', 'default.png', '', ''),
(195, 'CITA KERSA WARGA TPA GALUGA', 'Diterima', 2019, 1, NULL, NULL, 195, '? CITA KERSAWARGA ?\nCUCI TANGAN BAGI PEKERJA & PEMILAH SAMPAH \nTPA GALUGA\nMEMBERIKAN PENYULUHAN & PRAKTEK CARA CUCI TANGAN PAKAI SABUN (CTPS) YANG BENAR KEPADA :\nPEKERJA TPA GALUGA\nPEMILAH SAMPAH DI TPA GALUGA\n', '', 'Upaya pemenuhan sarana program CITA KERSAWARGA berupa kran, saluran air mengalir, serta sabun untuk cuci tangan dapat terpenuhi\nProgram ini dapat memberikan hasil yang positif dalam upaya peningkatan kesehatan masyarakat\nMenekan angka kesakitan dan Penyakit Menular di wilayah kerja Puskesmas Cijujung \nMeningkatnya derajat kesehatan para pekerja, pemilah sampah, serta masyarakat sekitar TPA & di wilayah kerja Pukesmas Cijujung\nDapat membentuk & membina kader kesehatan yang berasal dari kelompok pemilah sampah di TPA Galuga\n', '', '', '', '195.png', '', ''),
(196, 'MAMA BUSER (MARI MAKAN BUAH SEGAR)', 'Diterima', 2019, 1, NULL, NULL, 196, 'Dalam rangka upaya kegiatan Gerakan Masyarakat Sehat untuk mengajak masyarakat hidup sehat', '', 'Meningkatkan pengetahuan dan kesadaran masyarakat untuk makan buah segar', '', '', '', '196.png', '', ''),
(197, 'PELAYANAN RAMAH LANSIA, IBU HAMIL DAN ANAK BERKEBUTUHAN KHUSUS DIPOLI ', 'Diterima', 2019, 1, NULL, NULL, 197, 'Pelayanan Kesehatan Gigi dan Mulut di Puskesmas Rumpin hingga saat ini belum berjalan optimal. Penyebabnya yaitu keterbatasan sumber daya, baik itu tenaga Dokter Gigi maupun alat dan bahan yang digunakan untuk pelayanan. Keterbatasan ini berdampak pada kuantitas pasien yang dapat dilayani perharinya. Saat ini pasien tindakan dibatasi 10 pasien perharinya. Sehingga tidak semua masyarakat dapat memanfaatkan pelayanan ini karena tidak mendapatkan kuota pelayanan, khususnya bagi pasien-pasien lansia, ibu hamil, dan anak berkebutuhan khusus. Pasien-pasien ini harus mendapatkan perhatian khusus karena kondisi kebugaran fisiknya tidak sama dengan pasien-pasien lain dan kompleksitas penyakit yang perlu penangangan khusus.\nGagasan untuk menyelesaikan isu ini yaitu menciptakan suatu Pelayanan yang Ramah Lansia, Ibu Hamil dan Anak Berkebutuhan Khusus di Poli Gigi dan Mulut Puskesmas Rumpin Kabupaten Bogor. Gagasan ini menggunakan konsep KARTU PELAYANAN KHUSUS bagi pasien tertentu. Kartu ini dapat pasien gunakan untuk mendapatkan pelayanan baik itu yang bersifat kuratif maupun preventif diluar prosedur reguler yang rutin dilakukan di poli gigi sehari-hari. ', '', 'Lansia, Ibu hamil dan ABK mendapatkan akses pelayanan khusus Poli Gigi dan Mulut di Puskesmas Rumpin. Sehingga mereka dapat mendapatkan pelayanan tanpa harus antri panjang, berdesakkan, dan waktu tunggu yang lama.', '', '', '', 'default.png', '', ''),
(198, 'KEBAL MSG (KELOMPOK BALITA MAKANAN SEHAT DAN BERGIZI)', 'Diterima', 2019, 1, NULL, NULL, 198, 'Melalui inovasi Kebal MSG, keluarga di masyarakat dapat terbantu karena keluarga dapat mengetahui makanan yang sehat dan bergizi  bagi anaknya.\nMelalui inovasi Kebal MSG, juga bisa meningkatkan cakupan partisipasi masyarakat ke Posyandu.\nMelalui inovasi Kebal MSG, tenaga kesehatan khususnya tenaga gizi dapat lebih mendekatkan diri pada Ibu /Pengasuh balita melalui menu-menu yang sehat bergizi yang bisa mereka praktekan dirumah.\nBalita Gizi Kurang dan 2 T bisa diberikan makanan yang lebih variatif sehingga diharapkan bisa meningkatkan status gizinya.\n', '', 'Meningkatkan pengetahuan ibu balita tentang makanan sehat dan bergizi melalui ?KEBAL MSG?\nMeningkatnya pengetahuan ibu balita tentang makanan sehat dan bergizi\nMeningkatnya status gizi pada kelompok balita 2T dan BGM\nMeningkatnya kunjungan  balita ke posyandu\n', '', '', '', 'default.png', '', ''),
(199, 'PHK (PEMANTAUAN IBU HAMIL OLEH KADER)', 'Diterima', 2019, 1, NULL, NULL, 199, 'Pemantauan ibu Hamil oleh Kader (PHK) merupakan selah satu inovasi yang di gagas oleh Puskesmas Sentul di bidang Kesehatan Ibu dan Anak (KIA), yang untuk mangetahui berapa banyak sasaran ibu hamil, untuk mendeteksi ibu hamil yang memiliki resiko tinggi, serta untuk menambah pengetahuan tentang kehamilan.', '', '#NAME?', '', '', '', '199.png', '', ''),
(200, 'GREBEK AIR MU', 'Diterima', 2019, 4, NULL, NULL, 200, 'Pada dasarnya pemantauan sanitasi depot air minum masuk ke dalam kegiatan rutin  tenaga Kesehatan Lingkungan di setiap Puskesmas akan tetapi diinisiasi dengan judul yang berbeda yakni ?Grebek PotAirMu?. Kegiatan ini dimaksudkan untuk memberikan pembinaan kepada penyelenggaran PotAirMu, agar kualitas air minum yang dihasilkan senantiasa terjaga melalui pemantauan hygine sanitasi lokasi penyelenggara dan kualitas air yang dihasilkan baik secara fisik, kimia dan mikrobiologi. Puskesmas Cicangkal sendiri sedang merintis kegiatan ini guna melindungi derajat kesehatan konsumen, mengingat kualitas air bersih di Cicangkal tidak layak untuk dikonsumsi karena kandungan besi yang tinggi.', '', 'Manfaat ekonomi yang diperoleh adalah meluasnya pasar/pelanggan Usaha Depot Air Minum karena meningkatnya tingkat kepercayaan konsumen akan kualitas air yang dikonsumsi. Sasaran pasarnya tidak hanya rumah tangga saja, tapi bisa menembus pasar semisal industri.', '', '', '', '200.png', '', ''),
(201, 'Ki PESAN ES', 'Diterima', 2019, 1, NULL, NULL, 201, 'ki Pesan eS\nKlinik Edukasi Pendidikan Kesehatan Teman Sebaya Melaui program Pendidikan Kesehatan Teman Sebaya Kesehatan Reporoduksi Remaja diharapkan remaja di wialyah kerja Puskesmas Cicangkal dapat mendaptkan pengetahuan dan dapat menelong dirinya sendiri dan teman-temannya untuk hidup lebih sehat serta mengenal potensi diri sendiri sehingga dapat menunda usia pernikahan.\nPendidikan kesehatan teman sebaya ini adalah salah satu dari program klinik edukasi program lain dari klinik edukasi adalah kegiatan ruang curahan hati (curhat), dan modifikasi perilaku. Program Klinik Edukasi Pendidikan Kesehatan Teman Sebaya ini kami perkenalkan dengan sebutan Ki Pesan Es. Harapan kami dengan adanya program yang konsen terhadap remaja, puskesmas dapan menjadi mitra remaja yang frienly dan dapat bermanfaat untuk semua kalangan masyarakat', '', 'Manfaat dari program inovasi ini antara lain sebagai berikut : \n1. Bagi Masyarakat\nSemakin meningkatnya derajat kesehatan masyarakat\n2. Bagi Remaja\n- Semakin meningkatnya kepercayaan diri remaja dalam menjalankan peranannya di masyarakat. \n- Remaja dapat berperan sebagai konselor untuk teman-temannya.\n', '', '', '', '201.png', '', ''),
(202, 'ANTISEPTIK \nANTI SEdotan PlasTIK \n', 'Diterima', 2019, 1, NULL, NULL, 202, 'Anti Sedotan Plastik adalah sebuah program  hasil kerjasama antara Puskesmas Cicangkal dengan SMPN 2 Rumpin. \nKegiatan Antiseptik ini berupa :\n1)Komitmen pihak sekolah dalam pengurangan penggunaan plastik, dibuktikan dengan adanya surat edaran yang dibuat oleh sekolah dan di publikasikan di tempat-tempat strategis sekolah termasuk kantin sekolah.\n2)Membentuk satgas khusus dari kader kesehatan (yang merupakan binaan puskesmas Cicangkal) untuk mengawasi penggunaan plastik di lingkungan SMPN 2 Rumpin. \n3)Menganjurkan masyarakat sekolah untuk membawa tempat makan dari bahan plastik yang aman dan dapat digunakan berulang kali, katika jajan minuman atau makanan bisa langsung ditempatkan di tempatnya.\n4)Menganjurkan kepada penjaja minuman agar tidak lagi menggunakan sedotan dan plastik, dan menggantinya dengan menyediakan gelas dari bahan yang aman dan dapat dipakai berkali-kali.', '', '1. Semakin meningkatnya kesadaran masyarakat akan penggunaan plastik sekali pakai.\n2. Sebagai sekolah yang memiliki brand peduli pada lingkungan\n3. Investasi kesehatan di masa mendatang baik kesehatan individu mau pun kesehatan lingkungan.\n', '', '', '', '202.png', '', ''),
(203, 'SIASAT (SIARAN SEHAT)', 'Diterima', 2019, 1, NULL, NULL, 203, 'SIASAT (Siaran Sehat) adalah suatu kegiatan atau usaha menyampaikan pesan kesehatan kepada masyarakat, kelompok atau individu demi tercapainya peningkatan pengetahuan, perubahan sikap dan perilaku kearah yang sesuai dengan kaidah kesehatan dengan menggunakan media audio visual dalam bentuk video. \nKegiatan SIASAT (Siaran Sehat) dilakukan secara online dengan cara live di media sosial ataupun secara offline dengan penyebaran pesan yang dilakukan melalui media sosial, televisi di Puskesmas ataupun di Instansi non Puskesmas, promosi kesehatan pada siswa/i di instansi pendidikan  dengan menggunakan video animasi).\n', '', 'Meningkatkan derajat kesehatan yang setinggi tingginya sehingga dapat membantu dalam pencapaian pembangunan kesehatan di wilayah kerja Puskesmas Pasar rebo \n\n', '', '', '', '203.png', '', ''),
(204, 'KOPI GANJA (KELOMPOK PEDULI GANGGUAN JIWA)', 'Diterima', 2019, 1, NULL, NULL, 204, 'Masalah kesehatan jiwa di wilayah kerja Puskesmas Tanjungsari sejak tiga tahun terakhir jumlah ODGJ berat cenderung meningkat terus dari permasalahan tersebut dibentuklah inovasi KOPI GANJA (Kelompok Peduli Gangguan Jiwa) dengan tujuan meningkatkan derajat kesehatan jiwa warga masyarakat', '', 'Agar pasien jiwa yang ada di Tanjungsari bisa terdeteksi dan diobati\n', '', '', '', '204.png', '', ''),
(205, 'SIAGA NGAJURU', 'Diterima', 2019, 1, NULL, NULL, 205, 'Siaga ngajuru adalah kegiatan grup siaga ibu dan anak yg di dalamnya terdapat bidan, dokter, promkes, kader, toga, toma, yang bertanggung jawab atau siaga dalam menjaga kesehatan ibu hamil sampai melahirkan di faskes dengan sehat selamat', '', 'Ibu dan anak sehat selamat, Masyarakat menyadari kesehatan  dan  keselamatan ibu hamil \nKesehatan ibu hamil menjadi tanggung  jawab kita semua (nakes, keluarga dan linsek\n\n', '', '', '', '205.png', '', ''),
(206, 'TOWS (TB ONE WAY SERVIS)', 'Diterima', 2019, 1, NULL, NULL, 206, 'TOWS  (TUBERKULOSIS  ONE WAY SERCIVE ) ?Memberikan Pelayanan   Satu  Jalur ?  dengan tujuan Menurunkan angka kesakitan dan kematian dengan cara memutuskan rantai penularan.\n Meningkatkan keperdulian keluarga dan masyarakat terhadap penyakit TB.', '', 'Memisahkan Pasein TB Paru Sensitif dan TB Paru MDR dari Pasein yang datang berkunjung ke Puskesmas\n Menemukan kasus baru TB sehingga cepat melakukan pengobatan\nMemberikan pelayanan penderita TB secara optimal\nMemutuskan mata rantai penularan penyakit TB\n', '', '', '', '206.png', '', ''),
(207, 'SAKINAH (SREENING, KONSELING CALON PENGANTIN TANG HARMONIS)', 'Diterima', 2019, 1, NULL, NULL, 207, 'salah satu upaya pemenuhan tahap pertama bagi kebutuhan perempuan adalah memberikan pendidikan kesehatan reproduksi sebelum perkawinan dan setiap orang harus peduli dan memperhatikan terhadap masalah kesehatan reproduksi terutama sebelum menikah dan SAKINAH ini merupakan inovasi kerjasama dan kemitraan puskesmas cirimekar dan kua kecamatan cibinong sehingga dapat meningkatkan drajat kesehatan di wilayah kecamtan cibinong\n', '', 'Meningkatkan Akses Dan Kualitas Pelayanan Kesehatan  Reproduksi Dan Seksual  Bagi Calon Pengantin', '', '', '', '207.png', '', ''),
(208, 'TIRIS (TEST IVA RENCANA IBU SEHA)', 'Diterima', 2019, 1, NULL, NULL, 208, 'Kanker leher Rahim (Kanker Serviks) merupakan ?kanker tebanyak yang ditemukan oleh Yayasan Kanker Indonesia. Di Indonesia diperkirakan ?setiap hari muncul 40-45 kasus baru, 20-25 orang meninggal karena kanker serviks. Artinya Indonesia akan kehilangan 600-750 orang perempuan yang masih produktif setiap bulannya. Iva tes merupakan bagian dari program PTM ( Penyakit Tidak Menular) yang menpunyai target dan sasaran yang sudah ditetapkan oleh Dinas Kesehatan Kabupaten Bogor untuk masing-masing Puskesmas.', '', 'Menemukan kasus baru  Kanker Servis \nDapat  menjalin hubungan yang harmonis dengan lintas sektoral dalam pelayanan IVA Tes .\nMemberikan pelayanan kesehatan Reproduksi pada  subur dalam melakukan pemeriksaan Iva Tes\nMeningkatkan peran serta masyarakat dalam pencegahan penyakit tidak menular dan deteksi dini kanker leher rahim\n', '', '', '', '208.png', '', ''),
(209, 'TAWAS IMUNISASI (TABEL, WHATS APP, SERTIFIKAT)', 'Diterima', 2019, 1, NULL, NULL, 209, 'Imunisasi merupakan salah satu upaya pencegahan kematian pada bayi dengan memberikan vaksin. Dengan imunisasi, seseorang menjadi kebal terhadap penyakit khususnya penyakit infeksi. Dengan demikian, angka kejadian penyakit infeksi akan menurun, kecacatan serta kematian yang ditimbulkannya akan berkurang \nCakupan imunisasi masih ada yang belum tercapai. Peran serta ,asyarakat belum maksimal , masih ada orang tua yang tidak mau membawa anaknya untuk di imunisasi.\nDengan tujuan Adalah Untuk menurunkan angka kesakitan dan kematian bayi akibat Penyakit Yang Dapat Dicegah Dengan Penyakit ( PD3I ).', '', 'Agar semua bayi yang ada di wilayah kerja Puskesmas mendapat Imunisasi Dasar \nMenjalin hubungan yang harmonis dengan lintas sektoral dalam pelayanan imunisasi di posyandu .\nMeningkatkan peran serta masyarakat, keluarga untuk perduli dan mau menjaga bayi  datang  ke posyandu untuk menimbang dan imunisasi.\n', '', '', '', '209.png', '', ''),
(210, 'KOPI PAHIT', 'Ditolak', 2019, 1, NULL, NULL, 210, 'KOPI PAHIT (Kelompok Peduli Penyakit Hipertensi Dengan Menggunakan Bumbu Di Dapur) Jumlah kasus hipertensi di Indonesia meningkat dari waktu ke waktu. Hipertensi dapat menimbulkan komplikasi masalah kesehatan lain dan dapat menyebabkan kematian. \nPerubahan gaya hidup dan pola makan menjadi salah satu penyebab meningkatnya kasus hipertensi. Untuk mencegah penyakit hipertensi perlu dilakukan upaya meningkatkan pengetahuan masyarakat, salah satunya melalui penyuluhan.\nDengan adanya penyuluhan hipertensi, diharapkan masyarakat dapat memperoleh informasi tentang gejala hipertensi, cara pencegahan, pengobatan dan penanggulangan hipertensi dari petugas Puskesmas dan dapat melindungi diri dan keluarga dari penyakit tersebut.', '', 'Masyarakat mengetahui informasi gejala Tekanan darah tinggi Masyarakat mengetahui informasi pencegahan Tekanan darah tinggi Masyarakat mengetahui informasi mengendalikan Tekanan darah tinggi secara tradisional.\nMasyarakat mengetahui bahwa bahan yang ada di dapur bisa digunakan untuk mengendalikan Tekanan darah tinggi (HIPERTENSI).', '', '', '', '210.png', '', ''),
(211, 'SMART HOME', 'Ditolak', 2019, 3, NULL, NULL, 211, 'SmArtHome  SEBAGAI MEDIA PEMBELAJARAN REVOLUSI 4.0', '', '', '', '', '', '211.png', '', ''),
(212, 'GEORANGER BOARDGAME', 'Ditolak', 2019, 3, NULL, NULL, 35, 'Gameboard interaktif edukasi dan sosialisasi Geopark melalui Georanger Boardgame dengan mengenalkan geosite Diversity, Culture Diversity dan Bio Diversity', '', '', '', '', '', '212.png', '', ''),
(213, 'PEMBERDAYAAN IBU RUMAH TANGGA MELALUI BACKINGCLASS UNTUK MENINGKATKAN ', 'Ditolak', 2019, 4, NULL, NULL, 213, 'Latar belakang dari kumpulan ibu muda yang punya minat dan hobi yang sama di dunia baking, berangkat dari kesamaan tersebut kami membuat group baking bareng, dan berkembang menjadi sebuah komunitas yang jumlah membernya sekarang  210 orang, tersebar di wilayah  bogor dan sekitarnya', '', 'Menambah ketrampilan ibu muda\nMenambah penghasilan keluarga\nBisa menciptakan produk baru yang bernilai jual\nMenjalin silaturrahmi\nMencetak ibu muda / mompreneur\n', '', '', '', '213.png', '', ''),
(214, 'APLIKASI BRIKET JERAMI PADI DAN PENGELOLAAN KAMPUNG BIOMASSA DI DESA S', 'Ditangguhkan', 2019, 4, NULL, NULL, 214, '', '', 'Memanfaatkan potensi sumber energi biomassa di Kampung Sukaati, Desa Singasari berbasis pemberdayaan masyarakat dengan target pengolahan jerami yang bersifat limbah menjadi produk bermanfaat. \nMeningkatkan nilai guna hasil pertanian dan perekonomian warga Desa Singasari melalui pengolahan briket jerami.', '', '', '', '214.png', '', ''),
(215, 'ECO PRINTING (CETAK ALAM) DIATAS TEKSTIL', 'Ditangguhkan', 2019, 4, NULL, NULL, 215, 'Ecoprint adalah satu tehnik pemberian motif dan pewarnaan pada bahan kain dengan menggunakan bahan bahan alam dan daun - daun yang ada di alam.', '', '', '', '', '', '215.png', '', ''),
(216, 'ALAT EKSPERIMEN TEKANAN (LATMENAN) UNTUK PEMBELAJARAN IPA SMP', 'Ditangguhkan', 2019, 3, NULL, NULL, 216, 'ALAT EKSPERIMEN TEKANAN (LATMENAN) Penggunakan alat eksperimen tekanan zat dapat meningkatkan Kreativitas Belajar IPA di Kelas VIII.7 SMP Negeri Cibungbulang Kabupaten Bogor\n', '', 'Proses pembelajaran dengan ?Alat Eksperimen Tekanan? yang dilakukan guru cukup bagus, dan mampu meningkatkan kreativitas, menumbuhkan nilai-nilai karakter, meningkatkan hasil belajar, dan antusias siswa meningkat.\nSuasana kelas tampak lebih hidup dan lebih kreatif, sebagian besar siswa lebih kreatif dan antusias?dalam mengikuti proses pembelajaran. ', '', '', '', '216.png', '', ''),
(217, 'MAGIC BOBOKO', 'Ditangguhkan', 2019, 4, NULL, NULL, 217, 'MAGIC BOBOKO dibuat sebagai solusi MENJAGA KETAHANAN PANGAN KELUARGA Magic Boboko dibuat dari 100% bahan alami anyaman Bahan bambu dan melimpah di tiap desa\nBahan anyaman bambu kurang laku di pasaran karena sudah tergantikan oleh produk plastik yang harganya lebih murah,tidak sehat dan memicu sampah\nMenjadi alternatif ekonomi purna tani, sehingga dapat berkontribusi dalam penurunan inflasi negara dengan mengurangi pengangguran dan kemiskinan di desa\nPenggunaan bahan bambu sudah teruji sehat untuk konsumsi makanan yang panas dan lebih awet. Jepang adalah salah satu negara maju paling tinggi memanfaatkan bahan bambu\nKeunggulan bahan bambu mampu menjaga stabilitas suhu ruang panas dalam alat menanak nasi listrik.', '', 'MAGIC BOBOKO SOLUSI CARA SEHAT DAN HEMAT MENANAK NASI Dibuat 100% dari bahan bambu tanpa unsur plastik. Ikatan anyaman melingkar dari bahan bambu lebih kuat dan kokoh\nBahan bambu tahan panas atau kering dan basah, memiliki stabilitas dalam menjaga suhu panas ruangan\n', '', '', '', '217.png', '', ''),
(218, 'BENIH SEBAGAI SUMBER KEHIDUPAN (Inovasi Petani Muda Merintis Perusahaa', 'Ditangguhkan', 2019, 4, NULL, NULL, 218, 'Benih Pepaya ( Sun-Grad?s) adalah benih yang dihasilkan oleh pemulya muda, yang sudah dipercaya sebagai produsen benih lokal pilihan petani diberbagai daerah sebagai benih tanaman yang memiliki banyak kelebihan dari benih pabrikan, diawal usaha ini hanya fokus untuk pemenuhan permintaan dari perusahaan dan para rumah pembibitan.seiring waktu berjalan,beberapa toko mulai meminta pasokan benih dalam kemasan, setelah serangkaian uji pasar, ternyata respon dari konsumen sangat baik,sehingga sampai saat ini benih kemasan sudah dipasarkan dibeberapa wilayah Indonesia oleh beberapa distributor, bahkan sebagian sudah dipasarkan ke Negara tetangga seperti Malaysia dan Singapura\nProses produksi meliputi pengontrolan dari awal tanam,perawatan,panen dan sampai proses produksi.proses produksi masih sederhana tapi aseptic/steril sehingga kualtas benih terjaga.mungkin bila dengan dilakukan dengan teknologi yang mendukung juga materi yang cukup sekiranya akan meningkatkan jumlah produksi dan tentunya menaikan omset penjualan.mungkin dengan sentuhan pendampingan baik materil maupun non-materil, serta siap diinkubasi agar pemasaran biasa lebih meluas dan bisa dipasrkan ke seluruh Indonesia.', '', '? Menigkatkan nilai jual hasil pertanian yang tinggi,sehingga para petani binaan mendapatkan jaminan hidup yang layak dari hasil bertani.\n? Menigkatkan kesadaran para jiwa muda terlebih para lulusan pertanian,bahwa dengan inovasi, bertani bisa menjamin kehidupan yang baik.\n? Menghasilkan benih pepaya yang baik dengan tingkat daya kecambah yang tinggi dan pohon yang pendek serta lebih tahan terhadap serangan penyakit.\n? Selain menghasilkan limbah buah yang dihasilkan bisa menjadi suber vitamin gratis untuk warga sekitar.\n', '', '', '', '218.png', '', ''),
(219, 'PEMPEK TENGGIRI TALAS KELOR', 'Diterima', 2019, 2, NULL, NULL, 219, 'Pempek yang berasal dari talas dan daun kelor', '', '', '', '', '', '219.png', '', ''),
(220, 'PERAN SERTA ALAM DALAM KEMASAN RAMAH LINGKUNGAN', 'Diterima', 2019, 4, NULL, NULL, 220, 'Kegiatan inovasi ini secara tidak langsung mengajarkan sekaligus mengubah pola piker masyarakat yang awalnya menggunakan kemasan yang sekali pakai dan menjadi sampah yang menggunung, perlahan lahan mereka / warga menyadari akan ekosistem alam yang berbahaya akibat sampah yang tidak terurai dan mulai beralih dan mencoba menggunakan bahan yang ramah dengan alam, contoh jika beli minuman sudah membawa kemasan, jika ada acara tertentu sudah mulai beralih dr styfoam menjadi besek daun setidaknya mengurangi sampah yang tidak terurai. Dan lingkungan pun menjadi asri karena sampah sampah plastic dan stryfoam sedikit berkurang dan berusaha menjaga alam dengan memulai dari diri sendiri.', '', 'Dalam segi manfaat inovasi ini sangat berguna bagi pelaku usaha. Hal ini dikarenakanadanya hubungan timbal balik antara konsumen dengan bayer. Dan saya pun merasakan sendiri manfaatnya bagi perekonomian keluarga kecil saya dan beberapa sekitar saya yang merasakan langsung.\n\n1. Memberikan masukan tambahan khususnya dana buat saya dan orang sekitar yang membantu saya\n2. Memberikan lapangan pekerjaan baru khususnya ibu ibu yang dirumah bisa sambilan ikut membantu bila \n    pesanan overload dan belajar mencoba untuk berkreasi\n3. Membuka lahan baru bagi pengrajin yang mampu mengaplikasian ini untuk pengusaha pengusaha lainnya \n    yang ingin beralih kemasan ke ramah lingkungan\n4. Meningkatkan kepekaan manusia terhadap masalah ekonomi dan global', '', '', '', '220.png', '', ''),
(221, 'COFFE DRIP', 'Diterima', 2019, 2, NULL, NULL, 221, 'Banyaknya penikmat kopi sehingga banyak bermunculan Coffe Shop / warung kopi. Para penikmat kopi biasanya harus kekedai kopi atau membawa peralatan sendiri untuk menyeduh kopi yang hampir sama penyajiannya seperti di Coffe Shop jika ingin menikmati secangkir kopi yang nikmat dari biji kopi pilihan. Hal ini harus membutuhkan waktu yang lebih jika harus kekedai kopi dan harga yang cukup mahal untuk mendapatkan secangkir kopi pilihan yang nikmat. Selain harga, penikmat kopi harus menyiapkan waktu menuju Coffe Shop. Kopi MurMur hadir untuk dapat menyediakan Kopi yang dapat diseduh secara Instan dari biji kopi pilihan yang diolah secara langsung sehingga citra rasa dan aroma terjaga.\nKopi Instan merupakan salah satu cara termudah untuk menikmati kopi yang enak tanpa ampas.', '', 'Munculnya Ekonomi Kreatif dalam perekonomian Indonesia mendatangkan perubahan ekonomi yang cukup signifikan. Ekonomi Kreatif adalah sebuah konsep baru dalam ekonomi yang menjadikan ide dan kreativitas sebagai faktor utama dalam menjalankan produktivitas kerja Dalam memunculkan inovasi baru tentunya berusaha untuk dapat memenuhi permintaan pasar dalam inovasi  produk kopi Sachet', '', '', '', '221.png', '', ''),
(222, 'ALAT PENCETAK SEMAI SISTEM PARALON', 'Diterima', 2019, 7, NULL, NULL, 222, 'Media tanam yang dicetak dari paralon', '', 'KELEBIHAN :\n        MURAH; TIDAK MEMERLUKAN PLASTIK POLYBAG DAN     KOMPOS \n        MUDAH DAN CEPAT DALAM PENGERJAAN\n        TANAMAN TIDAK STRESS SAAT PINDAH TANAM\n        RAMAH LINGKUNGAN ; TIDAK MENYISAKAN SAMPAH  PLASTIK\n        TIDAK MUDAH RUSAK SAAT PENGANGKUTAN BIBIT\n KE LAHAN\n', '', '', '', '222.png', '', ''),
(223, 'BOOSTER COIL', 'Diterima', 2019, 5, NULL, NULL, 223, 'Alat ini adalah menyempurnakan pengapian pada busi, efeknya mesin dingin, emisi turun, olie awet, tenaga kendaraan lebih besar\nAlat yang sudah ada dipasaran kebanyakan meningkatkan oktan, dengan harapan pembakaran bisa maksimal tetapi efek yang timbul : mesin panas, emisi naik, olie cepat habis', '', 'Mengurangi pemakaian bahan bakar fosil secara majemuk.\nMengurangi polusi udara CO dari emisi gas buang kendaraan.\nMeningkatkan kadar O2 melalui gas buang kendaraan.\nMembuat kendaraan bermotor menjadi lebih awet dalam segala hal.', '', '', '', '223.png', '', ''),
(224, 'GEROBAK DAMKAR', 'Diterima', 2019, 5, NULL, NULL, 224, 'Unit Gerobak Damkar ini dimaksudkan untuk menjadikan Kampung Siaga terhadap kejadian kebakaran ringan ataupun sedang di lingkungan sekitar dengan tata ruang kampung yang padat pemukiman, berupa jalan gang ? gang yang hanya dapat dilalui gerobak.\nUnit Gerobak Damkar ini bertujuan sebagai Unit Emergency Respons yaitu sebagai unit penanggulangan awal/dini kejadian kebakaran, membantu sebelum, saat atau sesudah Unit Pemadam Kebakaran Daerah tiba dilokasi.\nUnit ini diharapkan dapat bermanfaat pada saat terjadinya kebakaran dilingkungan sekitar dalam menangggulangi, melokalisir dan membantu masyarakat bila terjadi musibah kebakaran agar tidak cepat meluas', '', 'Unit Gerobak Damkar ini, di persembahkan kepada Kampung Ramah Lingkungan Berhias, RW.06 Desa Puspasari, sebagai bentuk dukungan masyarakat semua. Menjadikan kerukunan, gotong royong dan musyawarah serta kebersamaan warga RW.06 tetap kompak dan terjaga.', '', '', '', '224.png', '', ''),
(225, 'RUKUN TETANGGA Go Blog', 'Diterima', 2019, 5, NULL, NULL, 225, 'Berkembangnya smartphone mampu merubah gaya hidup baru dan membuat perkembangan internet menjadi lebih berkembang dan maju. Selain itu dampak dari perkembangan teknologi ini merubah pola pikir manusia dalam kehidupan sehari-harinya, hal ini bisa dilihat dari pergeseran sosial budaya, gaya hidup, dan komunikasi. Saat ini, seorang RT dituntut harus bisa mengikuti perkembangan teknologi atau Melek Teknologi dan jangan Gagap Teknologi (GAPTEK) yang sedang trend saat ini untuk menyampaikan informasi atau kegiatan dilingkunganya. Jika dahulu seorang RT ingin mengumpulkan warganya harus mukul kentongan supaya kumpul, akan tetapi saat ini seorang RT cukup memberikan informasi melalui media sosial di grup Whatsapp, Twitter, Instagram, Telegram, Line, Facebook, dan tentunya Blog sebagai sarana informasinya.', '', 'Membantu masyarakat dalam mengakses informasi penting dan terbaru terkait kegiatan dilingkunganya. \nTidak ada jarak antara RT dengan warganya meski tidak satu meja atau area.\nKomunikasi lebih interaktif dan cocok pada era digital saat ini.\nKeterbukaan terhadap konflik kepentingan \nInformasi rencana kegiatan atau pembangunan bisa diakses semua publik. ', '', '', '', '225.png', '', ''),
(226, 'HERBAL SKIN CARE ALAMI SEBAGAI INOVASI BIDANG KESEHATAN DAN PERAWATAN ', 'Diterima', 2019, 1, NULL, NULL, 226, 'Herbal skin care alami yaitu LUBINAR natural herbal skin-care \nsebagai solusi dan icon Lulur asli Bogor, tanah Sunda ? Jawa Barat Melalui Teknologi Powderisasi Submikron Sebagai Solusi untuk permasalahan pada kulit wajah\n', '', '100% komposisi alami\n0% zat kimia tambahan\nBahan baku pilihan berkualitas\nAnti  iritasi (dapat membantu penyembuhan akibat iritasi dampak penggunaan skincare yang mengandung zat kimia pemutih, dsb)\nAman digunakan oleh ibu hamil dan ibu menyusui\nAman digunakan oleh usia belia, anak-anak\nDapat digunakan oleh pria dan wanita', '', '', '', '226.png', '', ''),
(227, 'PEMANFAATAN LIMBAH TULANG IKAN DAN KULIT IKAN', 'Diterima', 2019, 2, NULL, NULL, 227, 'Adanya limbah tulang ikan tenggiri sisa dari olahan produksi Kedai Pempek Bu Ota yang belum diberdayakan. \nUpaya Kedai Pempek Bu Ota menambah pendapatan dengan memanfaatkan limbah tulang ikan tenggiri menjadi kerupuk ikan tenggiri yang bernilai jual. Usaha kerupuk tulang ikan tenggiri ini cukup menjanjikan dan bernilai jual. Kedai Pempek Bu Ota menawarkan dan memberikan kemudahan bagi pelanggan dengan harga murah dimana produk yang dihasilkan dijamin sehat dan berkualitas.', '', 'Terciptanya lingkungan produksi yang bersih akibat dari pemanfaatan limbah produksi.\nMeningkatkan omzet dan pendapatan usaha Kedai Pempek Bu Ota\nApabila diproduksi dalam skala besar dapat membantu menciptakan lapangan pekerjaan bagi masyarakat sekitar', '', '', '', '227.png', '', ''),
(228, 'COOFISH KUKIS IKAN CEMILAN SEHAT PADAT GIZI ALTERNATIF PENGGANTI SUSU ', 'Diterima', 2019, 2, NULL, NULL, 228, 'Cemilan bergizi alternatif pengganti susu pada balita dari ikan bandeng karena Kandungan tulang dan duri bandeng:  tinggi kalsium, sekitar 20%, dan kandungan protein sekitar 30%', '', '', '', '', '', '228.png', '', ''),
(229, 'KRISTAL (KRIUK TALAS)', 'Diterima', 2019, 2, NULL, NULL, 229, 'Keristal adalah singkatan dari keriuk talas yang terbuat dari tepung beras dengan rasa manis  dan toping cita rasa khas Bogor yaitu talas.', '', 'Dengan adanya keripik keristal ini kabupaten bogor mempunyai nilai lebih di bidang kuliner, sehingga dapat menggkat nama kabupaten bogor, dapat menarik perhatian wisatawan lokal maupun luar untuk dapat berkunjung ke Daerah Bogor dan dapat membuka lapangan perkerjaan sehingga kabupaten menjadi kabupaten termaju di segala bidang.', '', '', '', 'default.png', '', ''),
(230, 'GADO-GADO TURBO (TI URANG BOGOR)', 'Diterima', 2019, 2, NULL, NULL, 230, 'Gado gado turbo adalah makanan tradisional alamai sehat, bersih, dan higenis yang mempunyai khas cita rasa talas di buat dengan udang, telur, ayam swir, wortel, labu siem, touge, kol, kangkung, serta bumbu kacang. Pemasaran atau penjualan: jual ke lingkungan sekitar dan online go food.', '', 'gado gado turbo bisa menjadi makanan khas bogor khususnya Kabupaten Bogor, kabupaten bogor mempunyai nilai lebih di bidang kuliner dan bisa membuka lapangan kerja bagi orang orang sekitar rumah', '', '', '', '230.png', '', ''),
(231, 'HIDROSOL SEBAGAI PRODUK IKUTAN MINYAK ATSIRI YANG BERNILAI JUAL TINGGI', 'Diterima', 2019, 1, NULL, NULL, 231, 'Hidrosol dari biji pala sebagai air herbal untuk kecantikan dan diproduksi secara higienis melalui proses destilasi uap dari buah, biji, dan fuli pala, dihasilkan minyak atsiri dan hydrosol.', '', 'Mengatasi masalah jerawat dan peradangan\nMencerahkan kulit\nMenyamarkan jerawat\nMenyamarkan bekas luka', '', '', '', '231.png', '', ''),
(232, 'RAJUTAN SAJADAH TERBENTANG INDAH', 'Diterima', 2019, 4, NULL, NULL, 232, '', '', '', '', '', '', 'default.png', '', ''),
(233, 'PADU PADAN RECYCLE SAMPAH', 'Diterima', 2019, 5, NULL, NULL, 233, '', '', '', '', '', '', 'default.png', '', ''),
(234, 'ALAT PELUMER LIMBAH STYEROFOAM', 'Diterima', 2019, 5, NULL, NULL, 234, 'Styrofoam merupakan kebutuhan packaging yg sudah teruji untuk menahan benturan dari benda keras untuk peralatan elektronik ,namun sekarang banyak digunakan untuk tempat makanan dll,sehingga sampah styrofoam banyak tersebar disetiap pelosok,karena banyak tersedia dipasaran dan harga sangat terjangkau oleh semua kalangan.\n', '', 'Alat  ini diciptakan atas dasar kebutuhan seorang pemulung yang sering mampir kebengkel kami untuk yang memesan dengan harga yang terjangkau dan tidak terlalu besar,agar dapat digunakan ditempat pengepul rongsokan.\nHasil dari  inovasi ini ternyata dapat memenuhi kebutuhan usahanya dalam sekala kecil dibidang limbah styrofoam\nAlat ini merupakan Teknologi Tepat Guna  yang sangat efisiensi mudah dioperasikan dan dapat didaur ulang kembali', '', '', '', '234.png', '', ''),
(235, 'MESIN FOOGING', 'Diterima', 2019, 5, NULL, NULL, 235, 'Kami menciptakan suatu alat yang berbahan limbah yang bertujuan untuk merubah\nmenjadi barang yang bermanfaat bagi masyarakat dan lingkungan serta mempunyai nilai jual\nyang tinggi. Fogging Portable berguna untuk memberantas nyamuk penyebab cikungunya, DBD\ndan serangga. Bahan baku pembuatan :\nSepray burung ukuran 2 liter\npemantik gas portable\nPipa slang rem bekas mobil\nSlang join rem bekas mob ii\nBesi halo bekas\nKawat tali\nPleksibel besi anta panas bekas slang kompor gas\nBahan bakar Racun serangga dan solar', '', 'Murah dan hemat\nMudah di oprasikan\nRingan\nSederhana memanfaatkan barang barang limbah yang ada', '', '', '', '235.png', '', ''),
(236, 'KOMPOR INDUSTRI BERBAHAN BAKU ILO BEKAS', 'Diterima', 2019, 5, NULL, NULL, 235, 'Kompor alternatif berbahan bakar oli bekas berguna untuk pengganti alternatif\nkompor berbahan bakar GAS LPG. Bahan baku pembuatan :\nTabung bekas preon AC\nPipa besi 1 in\nPipa besi ? in\nSlang bekas water pas\nBotol plastik bekas\nBlower keong 2 in\nPipa paralon 2 in\nSlang Pleksibel bekas mesin cuci\nJerigen 5 liter bekas oli\nOli bekas', '', 'Pengoprasian 24 jam hanya membutuhkan Rp. 23.000\nMudah di oprasikan\nBisa di gunakan untuk sekala besar\nMemangkas oprasional pengeluaran biaya produksi\nRamah lingkungan ( tidak berplusi )', '', '', '', '236.png', '', ''),
(237, 'KOMPOR ALTERNATIF API BIRU', 'Diterima', 2019, 5, NULL, NULL, 235, 'Kompor industri berbahan bakar o li bekas be rguna untuk prod uksi industri pengolah\nyang memerl ukan pengolahan at:au pembaka ran ekstra . Ba han baku pembuatan :\nTa bung b ekas preon AC\nPipa be.si 1 in\nPipa besi ? in\nSlang bekas wate r pas\nSoto! plastik be kas\nBlower l<eong 2 in\nPipa para lon 2 in\nSla ng Pleksibel bekas me.sin cuci\nJe rig en 5 lit er bekas oli\nOli bekas', '', 'Pengoprasian 24 jam hanya membutuhkan Rp. 23.000\nMudah di oprasikan\nBisa di gunakan untuk sekala besar\nMemangkas oprasional pengeluaran biaya produksi\nRamah li ngkungan ( tidak berplusi)', '', '', '', '237.png', '', ''),
(238, 'MESIN PEMANAS TERNAK AYAM BERBAHAN BAKU OLI BEKAS ANTI POLUSI', 'Diterima', 2019, 9, NULL, NULL, 235, 'Pemanas ternak ayam berbahan bakar oli bekas berguna untuk pemanasan atau\nmenjaga suhu ruangan kandang agar tetap hangat ( masa broading ). Bahan baku\npembuatan :\nTa bung bekas preon AC ta bung GAS LPG 12 kilo\nPipa besi 1 in\nPipa besi ? in\nSlang bekas water pas\nBotol plastik bekas\nBlower keong 2 in\nPipa paralon 2 in\nSlang Pleksibel bekas mesin cuci\nBesi cor ukuran 10 mm bekas\nJerigen 5 liter bekas oli\nOli bekas', '', 'Murah dan hemat\nMudah di oprasikan\nBisa memanaskan kapasitas besar 1 pemanas untuk 3000 ekor ayam\nMemangkas oprasional pengeluaran biaya produksi\nRamah lingkungan ( tidak berplusi )\nApi biru', '', '', '', '238.png', '', ''),
(239, 'PUPUK ORGANIK CAIR LIMBAH AIR REBUSAN IKAN PINDANG DAPAT HASIL PANEN Y', 'Diterima', 2019, 7, NULL, NULL, 239, 'Pupuk organik Dari pengolahan ikan pindang ini ada beberapa limbah yang dihasilkan seperti :\nLimbah Cair (Air bekas rebusan ikan)\nLimbah Padat  (kepala dan isi perut ikan)\n', '', 'Dapat dimanfaatkan atau digunakan ke berbagai macam tanaman pertanian dan perkebunan\nHarga yang lebih murah dan ramah lingkungan \nHasil yang didapatkan juga banyak\n', '', '', '', '239.png', '', ''),
(240, 'SARKASTIK PEA COCK', 'Diterima', 2019, 6, NULL, NULL, 240, 'Latar belakang inovasi ini adalah Kurangnya kesadaran siswa tentang arti pentingnya lingkungan yang bersih ;\nRasa malas membuang sampah pada tempatnya ;\nModel tempat sampah dengan tutup yang manual sehingga banyak siswa yang membuang sampah di atas tutup tempat sampah ; dan melimpahnya sampah anorganik terutama sampah kaleng. ', '', '', '', '', '', '240.png', '', ''),
(241, 'PENGUSIR HAMA DAN IRIGASI OTOMATIS', 'Diterima', 2019, 7, NULL, NULL, 241, 'Ide penelitian ini muncul pada saat kami sedang melewati pedesaan yang terdapat banyak area persawahan. Karena keterbatasan pengetahuan masih banyak masyarakat yang menggunakan dengan cara tradisional, maka dari itu kami siswa/i SMK Insan Kreatif ingin menciptakan suatu produk inovasi yang akan membantu para petani untuk menjaga area sawahnya dengan cara yang otomatis', '', 'Memberikan ide sekaligus bukti pada masyarakat bahwa anak SMK dapat membuat sesuatu produk yang inovasi dan bermanfaat. \nMewujudkan harapan para pertani bahwa masih ada cara praktis dalam menjaga area persawahannya namun tetap memperhatikan kelestarian lingkungan.\nMewujudkan pemanfaatan teknologi yang efisien serta mempermudah dalam proses mengelola pertanian secara otomatis.\n', '', '', '', '241.png', '', ''),
(242, 'AUTOMATIC HEIGTH GAUGE (AHG)', 'Diterima', 2019, 5, NULL, NULL, 242, 'Perkembangan teknologi di zaman modern ini tentunya sangatlah berkembang cepat dan pesat, tidak terkecuali karena kebutuhan manusia yang menyebabkan  semua itu bisa terjadi, dan pastinya manusia juga tidak akan pernah lepas dari yang namanya teknologi.\nPada penelitian ini kami merancang alat yang bernama Automatic Height  Gauge (AHG) sebagai solusi untuk mengukur tinggi badan secara otomatis.', '', 'Membantu para pengguna untuk melakukan pengukuran tinggi badan Para pengguna dapat melakukan pengukuran tinggi badan dengan waktu yang singkat.', '', '', '', '242.png', '', ''),
(243, 'SMART HOME', 'Diterima', 2019, 5, NULL, NULL, 243, 'Ide penelitian ini muncul pada saat kami sedang mendengar berita tentang kebocoran gas yang mengakibatkan kebakaran rumah. \nKami siswa/i SMK Insan Kreatif ingin menciptakan suatu produk inovasi yang akan membantu para masyarakat yang menggunakan gas mudah terbakar untuk menjaga area rumah dengan cara yang otomatis. \nDan kami beri nama Smart Home', '', 'Membantu para ibu rumah tangga dalam mengetahui kebocoran gas secara otomatis. \nMemberikan bentuk langkah inovasi terbarukan namun tetap ramah lingkungan.\nMempermudah dalam menjaga rumah secara otomatis dengan waktu yang tepat', '', '', '', '243.png', '', ''),
(244, 'AGRICULTURE IOT SISTEM', 'Diterima', 2019, 7, NULL, NULL, 244, 'AIS Adalah  Suatu system perkebunan yang modern dan dapat di kontrol jarak jauh melalui Gatged/ pc yang, menggunakan sistem internet of things.', '', '#NAME?', '', '', '', '244.png', '', ''),
(245, 'SMART LAB BERBASIS IOT', 'Diterima', 2019, 3, NULL, NULL, 245, 'Smart Lab Elektronika Berbasis Iot (SLEBI) merupakan sistem laboratorium modern yang berbasis Internet of Things. SLEBI ini dapat di Monitoring dan Controlling melalui Aplikasi BLYNK\n', '', 'Memudahkan Guru/Pengajar dalam memantau dan mengkontrol Laboratorium.\nTerciptanya susasana yang aman dan nyaman\nMenjadikan Siswa Lebih Semangat ketika Praktikum\n', '', '', '', '245.png', '', ''),
(246, 'PENYEDAP RASA BERBAHAN DASR BIJI BUNGA MATAHARI \"KUACI\"', 'Diterima', 2019, 1, NULL, NULL, 246, 'Biji bunga matahari (Helianthus annuus) atau yang biasa kita sebuat di masyarakat ?kuaci? adalah buah dari?bunga matahari\ndari bahan inilah dibuat penyedap rasa ', '', 'Kuaci biji bunga matahari mengandung Selenium, untuk mencegah kanker.\nBagus untuk tulang karna mengandung mineral yang baik dan mengandung Vitamin E.\nMengurangi kolestrol jahat, mengurangi resiko sakit jantung.\nSumber antioksidan yang baik dan banyak sekali manfaatnya lain dari kuaci bunga matahari.', '', '', '', '246.png', '', ''),
(247, 'EFEKTIVITAS PENGGUNAAN MINYAK SEREH SEBAGAI PENGURAI SAMPAH STYROFOAM', 'Diterima', 2019, 6, NULL, NULL, 247, 'Pembuatan minyak sereh untuk pengurai Sampah Styrofoam, styrofoam yang diteteskan dengan minyak sereh memiliki hasil penguraian berupa residu zat cair (minyak) yang masih memiliki warna khas (kuning) dan aroma dari minyak sereh yang cukup kuat dan minyak sereh memiliki zat efektif dalam penguraian styrofoamyang diduga adalah Sitronellal.', '', 'minyak sereh dapat menjadi salah satu alternatif penguraian sampah styrofoam dan menjadi solusi untuk masyarakat umum', '', '', '', '247.png', '', ''),
(248, 'PEMBAKAR SAMPAH BERTENAGA MATAHARI RAMAH LINGKUNGAN', 'Diterima', 2019, 6, NULL, NULL, 248, 'Alat pembakar sampah, Sinar matahari yang awalnya membaur akan terfokus di satu titik sehingga sampah akan terbakar', '', 'Masyarakat dapat menggunakan alat pembakar sampah ramah lingkungan untuk mengurangi sampah yang ada \nMengurangi polusi yang ada di udara\nMengurangi sampah yang ada  di kabupaten Bogor\n', '', '', '', '248.png', '', ''),
(249, 'PUDING LOBAK PISANG', 'Diterima', 2019, 2, NULL, NULL, 249, 'Puding Lobak Pisang adalah puding yang terbuat dari campuran lobak putih dan pisang uli.', '', 'Meredakan Sakit tenggorokan \nMembantu melawan infeksi jamur\nMenstabilkan kondisi penderita diabetes\nMeningkatkan sistem kekebalan tubuh\nMenurunkan berat badan\nMembantu detoksifikasi\nMenjaga kesehatan kulit\nMembantu proses pencernaan\nMenjaga kesehatan jantung\nMelindungi dan menjaga organ hati\nMengontrol tekanan dan gula darah\nMencegah  radang tulang rawan\nMengobati demam dan flu', '', '', '', 'default.png', '', ''),
(250, 'POTENSI TANAMAN INDONESIA SEBAGAI PENOLAK NYAMUK AEDES AEGYPTI', 'Diterima', 2019, 6, NULL, NULL, 250, 'Daun kemangi,Bunga tahi ayam,dan Batang serai wangi sebagai minyak penolak nyamuk aedes aegypti', '', 'Menggerakkan masyarakat untuk membudidayakan tanaman kemangi,serai wangi dan bunga tai ayam sehingga dapat meningkatkan pendapatan masyarakat dan sebagai alternatif  minyak oles herbal.', '', '', '', 'default.png', '', ''),
(251, 'ECO BAG SEBAGAI SOLUSI MEMINIMALISIR SAMPAH PLASTIK', 'Diterima', 2019, 6, NULL, NULL, 251, 'kain bekas pakaian sebagai ?ecobag? yang dapat meminimaisir limbah kain maupun limbah plastik.', '', 'dapat menggerakkan masyarakat untuk mengurangi limbah plastik dan limbah kaos dengan cara membuat dan menggunakan ?ecobag? yang berbahan dasar kaos bekas yang dapat kita jumpai disetiap rumah. Sehingga dapat meningkatkan pendapatan masyarakat dan dapat menjadi lapangan pekerjaan bagi masyarakat dengan proses produksi yang tidak memakan banyak biaya sehingga secara langsung dapat menyejahterakan kehidupan masyarakat Kabupaten Bogor.', '', '', '', 'default.png', '', '');
INSERT INTO `inovasi` (`id_inovasi`, `nama_inovasi`, `status_inovasi`, `tahun_pembuatan_inovasi`, `id_bidang_inovasi`, `id_bidang_inovasi_2`, `id_bidang_inovasi_3`, `id_inovator`, `deskripsi`, `penjaringan_ide`, `manfaat_inovasi`, `dampak_inovasi`, `proposal_inovasi`, `dokumentasi_inovasi`, `foto_inovasi`, `link_medsos`, `video_link_youtube`) VALUES
(252, 'KERUPUK KULIT PISANG', 'Diterima', 2019, 2, NULL, NULL, 252, 'Membuat selai dari bahan baku buah marasi dan tanpa menggunakan bahan pemanis buatan ataupun gula asli\nMengolah kulit pisang menjadi kerupuk \nMenggabungkan sensasi rasa gurih renyah dan wangi saat di makan serta mengandung kaya manfaat bagi kesehatan tubuh', '', 'Memberikan pengetahuan kepada masyarakat bahwa bahan baku yang sudah tidak dimanfaatkan dapat diolah kembali\nBagi masayarakat penghasil buah marasi dan kulit pisang dapat menjadi sarana meningkatkan kualitas ekonomi\nMeminimalisir pengangguran sehingga dapat membuka  lapangan pekerjaan baru\nBagi masyarakat umum dapat menjadi sebuah alternatif cemilan zaman now', '', '', '', '252.png', '', ''),
(253, 'JAS HUJAN LIMBAH PLASTIK', 'Diterima', 2019, 4, NULL, NULL, 253, 'Karya ilmiah pembuatan jas hujan dari sampah plastik', '', 'Secara ekonomi, Pembuatan jas hujan ini memiliki dampak positif dalam perekonomian dari hasil penjualan dapat dari pembuatan jas hujan.', '', '', '', '253.png', '', ''),
(254, 'PEMANFAATAN LIMBAH SABUT KELAPA DISEKITAR LINGKUNGAN SEKOLAH MENJADI C', 'Diterima', 2019, 4, NULL, NULL, 254, 'Coco Pots adalah pot yang dibuat dari sabut kelapa yang diberi lem dari tepung sagu ( bisa menggunakan cara lain yaitu dengan cara dijahit ) dibentuk seperti pot dengan menyesuaikan ukurannya. Pot ini memiliki manfaat yang baik bagi pertumbuhan tanaman karena sabut kelapa yang memiliki nutrisi yang tinggi dan tepung beras dan gula yang dapat memasok nutrisi tambahan bagi pertumbuhan tanaman.\nSabut kelapa memiliki unsur kalium yang tinggi. kalium berfungsi untuk merangsang perakaran baru untuk tumbuh, selain itu juga digunakan untuk membantu penyerapan air dan unsur hara tanah, menguatkan batang tanaman, meningkatkan kualitas buah, serta membantu dalam pembentukan karbohidrat dan protein pada tanaman', '', 'Manfaat ekonomi yang dapat dihasilkan dari pembuatan coco pots ini melihat dari jumlah pot yang banyak dipakai di rumah warga ataupun sekolah maka jika dilakukan penjualan maka coco pots ini memiliki nilai jual yang baik karena memiliki manfaat dan kegunaan yang tinggi.', '', '', '', '254.png', '', ''),
(255, 'SAPINDUS RARAK SI PEMBERSIH LANTAI', 'Diterima', 2019, 4, NULL, NULL, 255, 'Pembersih lantai berasal dari buah lerak karena buah lerak memiliki nama ilmiah Sipindus rarak dikenal karena kegunaan bijinya yang dipakai sebagai deterjen tradisional. Biji lerak ini mengandung saponin yang menghasilkan busa dan berfungsi sebagai bahan pencuci.', '', 'Ramah lingkungan terutama pada perairan\nAman bagi kesehatan \nMenggunakan bahan alami tanpa adanya bahan kimia berbahaya\nMengurangi risiko kesehatan akibat kandungan kimia  pembersih lantai konvensional', '', '', '', '255.png', '', ''),
(256, 'PENGGUNAAN SEDOTAN BATANG SINGKONG (MANIHOT ESCULENTA) SEBAGAI ALTERNA', 'Diterima', 2019, 6, NULL, NULL, 256, 'Sedotan dari batang singkong novasi tersebut dilakukan dengan tujuan untuk mengurangi penggunaan sedotan plastik.', '', 'Selain mengurangi penggunaan sedotan plastik, sedotan ini tidak mengandung bahan kimia ataupun pengawet dan juga memiliki aroma alami yang menenangkan', '', '', '', '256.png', '', ''),
(257, 'HAND SOAP RAMAH LINGKUNGAN', 'Diterima', 2019, 4, NULL, NULL, 257, 'Hand soap dari timun mentimun telah sejak lama digunakan untuk membersihkan tangan. Selain itu mentimun umumnya digunakan hanya pada bagian tengahnya, dan bagian kedua ujungnya akan dibuang. Alhasil akan menimbulkan limbah baru di lingkungan sekitar. Dengan demikian kami manfaatkan bagian yang terbuang tersebut diatas, sehingga dapat lebih bermanfaat.', '', 'Mengolah atau memanfaatkan sumber daya sekitar\nMemberikan manfaat secara ekonomis', '', '', '', '257.png', '', ''),
(258, 'ANTISEPTIK MURAH DAN EFEKTIF', 'Diterima', 2019, 1, NULL, NULL, 258, 'Anti septik dari Daun babandotan( Ageratum conyzoides) daun ini juga sangat bernilai sebagai sumber obat herbal \nDaun babandotan( Ageratum conyzoides) adalah tanaman yang memiliki senyawa metabolik,sekunder,seperti flavonoid,alkaloid,dan saponin didalam yang dapat di jadikan antibakteri dan antiinflamasi\n\nAntiseptik  merupakan  salah satu obat  yang banyak di gunakan masyarakat. Antiseptik berfungsi untuk menghambat atau memperlambat pertumbuhan mikroorganisme bahkan mampu membunuh kuman. Pada umumnya, antiseptik digunakan untuk mengatasi luka luar, baik luka sayatan , goresan, lecet dan luka ringan lainnya. Antiseptik juga dapat di gunakan saat operasi atau prosedur tertentu dengan tujuan mengurangi risiko infeksi. ', '', 'Untuk memanfaatkan sumber daya alam\nUntuk membuat gagasan baru\nUntuk meningkatkan pengetahuan kesehatan', '', '', '', '258.png', '', ''),
(259, 'SUSHI SINGKONG', 'Diterima', 2019, 2, NULL, NULL, 259, 'Sushi  adalah  makanan Jepang yang terdiri dari nasi yang dibentuk bersama makanan laut (neta), daging, sayuran mentah atau sudah dimasak. Sushi disini adalah sushi dari daun singkong Karena Daun singkong mempunyai Zat?gizi?makro: serat, karbohidrat, dan protein.\nZat?gizi?mikro: vitamin A, vitamin B1, vitamin C, kalsium, fosfor, zat besi, kalium, tembaga, seng, magnesium, dan mangan.', '', 'Menambah penghasilan keluarga\nBisa menciptakan produk baru yang bernilai jual', '', '', '', '259.png', '', ''),
(260, 'PEMANFAATAN BAHAN LIMBA BATANG TALAS MENJADI PRODUK INOVASI YANG BERNI', 'Diterima', 2019, 2, NULL, NULL, 260, 'Memanfaatkan limbah batang talas menjadi sebuah produk inovasi baru yang bernilai rupiah.\nTenjolaya adalah daerah penyangga wisata Pongkor sejak 2018. \nBanyaknya lulusan SMAN 1 Tenjolaya yang tidak melanjutkan ke perguran tinggi karena beragam alasan.\n', '', 'Produk kerupuk Batang Talas (Kubalas) ini memiliki manfaat berikut:\nSegi ekonomi\nSegi lingkungan\nSegi kesehatan', '', '', '', '260.png', '', ''),
(261, 'PEMBUATAN BEDAK TABUR  DI LABORATORIUM FARMASI SMK KESEHATAN PROF.DR M', 'Diterima', 2019, 1, NULL, NULL, 261, 'Berawal dari pembelajaran praktek di laboratorium Farmasi SMK Kesehatan Prof Dr. Moestopo penulis berinisiatif untuk membuat produk inovasi yang berbahan diantaranya  Asam salisilat, Alkohol 96%, Amylum Oryzae, Oleum Rosae, Talcum venetum dan penulis juga menyiapkan alat yang harus digunakan seperti Lumpang / mortar, Kertas perkamen , Ayakan no . 100, Timbangan gram dan mg, Sendok tanduk, dan Pipet selanjutnya penulis mencoba membuat bedak tabur tersebut dengan komposisi sebagai berikut R/ Asam Salisilat 0.25,  Amylum 10%,  Ol. Rosae, GTT III, Talcum venetum.  Ad.  20,  Mf. Pulv.adspers, S. Bedak tabur ue, Acidum Salicylicum khasiatnya sebagai keratolitikum dan antifungi, Amylum Oryzae khasiatnya sebagai zat tambahan, Oleum Rosae khasiatnya sebagai pewangi, Talcum venetum khasiatnya sebagai zat tambahan. ', '', '', '', '', '', '261.png', '', ''),
(262, 'PILMASK', 'Diterima', 2019, 1, NULL, NULL, 262, 'Pilmask adalah Produk masker organik pohpohan sendiri belum pernah kami temukan di pasaran maupun di internet. Hal ini tentu menginspirasi kami untuk membuat masker organik daun pohpohan.', '', '1. Mencegah  kulit kusam.\n2. Mencegah kulit kering.\n3. Mencerahkan kulit.\n4. Melembabkan kulit.\n5. Mencegah timbulnya jerawat.\n6. Dapat digunakan para remaja atau wanita umumnya untuk mempercantik diri.', '', '', '', '262.png', '', ''),
(263, 'VELYO (VELVET APPLE YOGHURT)', 'Diterima', 2019, 2, NULL, NULL, 263, 'VELYO adalah pengembangan dari produk yoghurt yang berbahan dasar susu dan Lactobacillus Bulgaricus, Streptococcus Thermophilus\nyoughurt berperisa buah bisbul belum kami temukan di pasaran dan di penelitian manapun. Keterbaruan penilitian kami adalah menggabungkan yoghurt dan buah bisbul', '', 'membuka peluang untuk penelitian bisbul lebih lanjut\nmenjadi pangan alternatif yang kaya protein dan baik bagi kesehatan\nmemperkaya ragam variasi yoghurt di pasaran\nmemberi masukan pada pemerintah untuk peningkatan pohon bisbul\nmemberikan peluang usaha dan peningkatan ekonomi masyarakat', '', '', '', '263.png', '', ''),
(264, 'TASIS SMANIDA', 'Diterima', 2019, 2, NULL, NULL, 264, 'Dengan sumber daya alam yang melimpah di daerah Bogor ini, kami menemukan sebuah ide agar memanfaatkan suatu tumbuhan berupa umbi talas sebagai bahan tambahan dalam pembuatan sosis. Dalam pembuatan sosis biasanya ditambahkan bahan pengisi berupa tepung tapioka. Tetapi, kami disini menambahkan satu bahan lagi yang merupakan ciri khas daerah Bogor, yaitu talas dalam bentuk pasta. Talas memiliki kandungan gizi yang cukup baik bagi tubuh. Kandungan karbohidrat talas berkisar antara 70-80%  sehingga umbi talas dapat digunakan sebagai sumber karbohidrat pendamping beras(Syarief, Irawati, 1988). Oleh, sebab itu kami mengembangkan inovasi berupa sosis talas. Produk inovasi ini dapat dikonsumsi sebagai pengganti makanan pokok karena kandungan karbohidrat talas yang tinggi. Produk ini juga dapat dikonsumsi semua orang dari berbagai kalangan muda ataupun tua, karena manfaatnya yang sangat berguna bagi tubuh (Prasetyaningrum, Rahayu, Eninurkhayatun, Saragih, Septianita, Nugraheni, 2013).', '', 'Manfaat ekonomi pembuatan sosis talas ini adalah dapat meningkatkan peluang usaha', '', '', '', 'default.png', '', ''),
(265, 'MENGEMBANGKAN PROGRAM BOGOR ANTIK (ANTI PLASTIK) MENJADI CANTIK (CINTA', 'Diterima', 2019, 3, NULL, NULL, 265, '', '', '', '', '', '', 'default.png', '', ''),
(266, 'SISDALJIR (SISTEM PENGENDALIAN BANJIR LINGKUNGAN)', 'Diterima', 2019, 6, NULL, NULL, 266, 'INOVASI SEDERHANA ALAT PERINGATAN DINI DAN PENANGGULANGAN BENCANA BANJIR', '', '', '', '', '', '266.png', '', ''),
(267, 'DALLAMTU (PENGENDALI  LAMPU DUA PINTU)', 'Diterima', 2019, 3, NULL, NULL, 267, 'INOVASI SEDERHANA PENGENDALI LAMPU RUANGAN DARI DUA TITIK YANG BERBEDA', '', '', '', '', '', '267.png', '', ''),
(268, 'KULDANGDER (KULKAS DAUR ULANG SEDERHANA)', 'Diterima', 2019, 6, NULL, NULL, 268, 'Pemanfaatan bahan yang sudah dibuang menjadi barang yang bermanfaat menjadi salah satu  solusi untuk kebersihan dan kesehatan lingkungan  disamping dapat dimanfaatkan sebagai produk inovasi yang akan bermanfaat bagi masyarakat juga berefek positif bagi lingkungan karena tidak menggunakan zat yang berbahaya seperti Freon yang merupakan salah satu polutan yang ikut andil dalam pengrusakan lapisan ozon sehingga dapat meningkatkan suhu dipermukaan bumi atau global worming  ?Kuldangder? menggunakan bahan-bahan daur ulang yang tentunya dengan harga ekonomis karena penggunaan alat dan bahan yang tidak begitu mahal sehingga dapat menekan biaya.', '', 'Alat yang dihasilkan sangat bermanfaat dalam pengembangan teknologi berbasis sumber daya alam lokal yang hemat energi kedepannya, terutama untuk pengembangan kulkas tanpa Freon.\n2. Membantu mengurangi dampak negatif Freon pada atmosfer yang mengancam pemanasan global.\n3.  Mengurangi sampah plastik yang mencemari lingkungan. \n4.  Memanfaatkan barang yang tidak terpakai.', '', '', '', '268.png', '', ''),
(269, 'SEHAT DAN FRESH DENGAN 2 IN 1 DAPESAK', 'Diterima', 2019, 1, NULL, NULL, 269, 'Inovasi ini membuat sabun muka yang berasal dari daun sirsak dan petai cina', '', '1. Memanfaatkan tumbuhan di sekitar lingkungan sekolah yang jarang dimanfaatkan menjadi suatu produk yang bermanfaat.\n2.  Mengatasi permasalahan kulit, khususnya pada remaja.\n3.  Membuat kulit menjadi sehat dan fresh, terutama pada kulit wajah.\n', '', '', '', '269.png', '', ''),
(270, 'TINTA RAMAH LINGKUNGAN DENGAN MEMANFAATKAN KLARAS (TIMAHLINGRAS)', 'Diterima', 2019, 4, NULL, NULL, 270, 'Daun pisang kering dapat dijadikan arang klaras, dimana arang klaras ini memilki kandungan unsur karbon yang cukup tinggi sehingga dapat digunakan sebagai bahan dasar pewarna hitam tinta spidol yang lebih ramah lingkungan. Penelitian terdahulu mengenai pembuatan tinta dari bahan organik telah dilakukan oleh Suhartini (2012), yang memanfaatkan arang jerami dalam pembuatan tinta. Namun pemilihan bahan jerami sebagai bahan pembuatan tinta dirasa masih memiliki kelemahan dalam hal pengadaan bahan baku. Jerami merupakan limbah padi yang merupakan tanaman musiman yang juga hanya dapat tumbuh pada wilayah-wilayah tertentu saja yang memiliki kesuburan tanah tinggi. Berbeda dengan pohon pisang yang melimpah ruah tidak bergantung pada musim dan tidak terbatas pada satu wilayah geografis tertentu saja. Selain itu, pohon pisang juga tidak membutuhkan perawatan yang khusus untuk penanamannya. Oleh karena itu, dalam penelitian ini, peneliti menggunakan daun pisang kering sebagai bahan dasar pembuatan tinta.', '', '1) Memberikan alternatif bahan pembuatan tinta organik yang ramah  lingkungan, tidak membahayakan bagi kesehatan tubuh, serta murah. \n2)  Memberikan alternatif dari pemanfaatan limbah daun pisang yaitu sebagai bahan dasar pembuatan tinta organik. \n 3)  Memberikan informasi mengenai alternatif dari pemanfaatan daun pisang yaitu sebagai bahan dasar pembuatan tinta organik. \n4)  Meningkatkan nilai ekonomi daun pisang kering. \n', '', '', '', '270.png', '', ''),
(271, 'BEL LISTRIK SEDERHANA', 'Diterima', 2019, 5, NULL, NULL, 271, '', '', '', '', '', '', 'default.png', '', ''),
(272, 'PERMEN WORPAL (WORTEL PALA) SEBAGAI ALTERNATIF PERMEN JAJANAN SEHAT DA', 'Diterima', 2019, 2, NULL, NULL, 272, 'Saat ini jajanan yang tersedia dan ditawarkan oleh para pedagang, belum seluruhnya memenuhi persyaratan keamanan pangan yang harus diutamakan sebelum persyaratan yang lain karena jika pangan tidak aman untuk dikonsumsi, kandungan gizi dan mutu tinggi tidak lagi bernilai. Banyak jajanan yang mengandung pengawet, pemanis buatan dan lain sebagainnya yang dianggap membahayakan bila dikonsumsi jangka panjang. ', '', '', '', '', '', '272.png', '', ''),
(273, 'PEMANFAATAN RESIDU GARAM RUMPUT LAUT SEBAGAI BAHAN UNTUK PEMBUATAN BOD', 'Diterima', 2020, 1, NULL, NULL, 273, 'Produk body scrub ini bahan bakunya berasal dari residu garam rumput laut cokelat dan hijau. Body scrub ini memiliki kenampakan dengan bentuk yang semi kering, ringan dan berwarna cokelat (residu garam rumput laut cokelat), putih (residu garam rumput laut hijau), aroma rumput laut yang kuat dan tajam, tekstur yang kasar dan konsistensi produk yang baik. Body scrub memiliki nilai pH yang sesuai dengan rentang nilai pH balance kulit. Body scrub dari residu garam rumput laut juga memiliki senyawa aktif yaitu alkaloid, saponin dan steroid, serta antioksidan. Produk body scrub ini dapat menjadi solusi untuk menciptakan lapangan pekerjaan baru dan memberdayakan masyarakat di Kabupaten Bogor sehingga bisa mengatasi permasalahan tingginya angka pengangguran di Kabupaten Bogor dan Jawa Barat keseluruhan', '', 'Manfaat inovasi ini adalah untuk memberikan informasi baru kepada masyarakat mengenai pemanfaatan bahan alami dalam menjaga kesehatan kulit, meningkatkan pemanfaatan residu garam rumput laut cokelat dan hijau sebagai produk perawatan kulit, meningkatkan kenyamanan masyarakat dalam menggunakan kosmetik yang alami dan tidak berbahaya bagi tubuh, pemanfaatan secara maksimal potensi rumput laut kering dari daerah penghasil rumput laut dengan konsep synergic systems antara Kabupaten Bogor dengan daerah-daerah penghasil rumput laut sehingga hal ini bisa memberi dampak yang baik bagi perkembangan ekonomi, lingkungan dan pariwisata di Kabupaten Bogor.', '', '', '', '273.png', '', ''),
(274, 'PEMANFAATAN RUMPUT LAUT SEBAGAI BAHAN MASKER PEEL OFF UNTUK PERAWATAN ', 'Diterima', 2020, 1, NULL, NULL, 274, 'Produk masker peel off ini bahan baku utamanya berasal dari rumput laut cokelat (Sargassum sp. dan Turbinaria conoides) dan merah (Eucheuma cottonii). Masker peel off ini memiliki kenampakan utuh bersifat lengket, menarik, tidak terdapat pengotor atau bersih, dan tercampur dengan sempurna, bentuk gel atau pasta dalam kemasan, ringan dan berwarna bening dengan bintik cokelat/hitam apabila diaplikasikan pada kulit, aroma masih memiliki sedikit aroma khas dari rumput laut, tekstur lebih lembab karena rumput laut menghasilkan karagenan yang berfungsi sebagai pelembab sehingga apabila masker peel off dikelupaskan setelah masker mengering tidak menimbulkan rasa sakit', '', 'Manfaat inovasi ini adalah untuk memberikan informasi baru kepada masyarakat mengenai pemanfaatan bahan alami dalam menjaga kesehatan kulit, meningkatkan pemanfaatan rumput laut cokelat dan merah sebagai produk perawatan kulit, meningkatkan kenyamanan masyarakat dalam menggunakan kosmetik yang alami dan tidak berbahaya bagi tubuh, pemanfaatan secara maksimal potensi rumput laut kering dari daerah penghasil rumput laut dengan konsep synergic systems antara Kabupaten Bogor dengan daerah-daerah penghasil rumput laut sehingga hal ini bisa memberi dampak yang baik bagi perkembangan ekonomi, lingkungan dan pariwisata di Kabupaten Bogor', '', '', '', '274.png', '', ''),
(275, 'TEPUNG PREMIX PEMPEK IKAN LELE DUMBO (Clarias gariepinus) SEBAGAI INOV', 'Diterima', 2020, 2, NULL, NULL, 275, 'Pemilihan tepung ikan lele sebagai bahan pengganti ikan segar dalam pembuatan pempek dapat memudahkan proses pencampuran atau penambahan ke dalam bahan lainnya, namun karakteristik daging ikan dalam keadaan kering berbeda dengan karakteristik daging ikan dalam keadaan basah yang dapat mempengaruhi tekstur pempek.', '', 'Memperlama umur simpan bahan baku produk pempek, memudahkan penanganan pengolahan pempek, membuka lahan pencaharian bagi masyarakat Kabupaten Bogor sebagai tenaga terampil dan tenaga operator dalam industri rumah tangga olahan pempek, meningkatkan pemanfaatan ikan lele sebagai tepung premix yang dapat menjadi ikon kabupaten Bogor.', '', '', '', '275.png', '', ''),
(276, 'PEMBUATAN MESIN POND HIDROLIK PENCETAK DAN PEMOTONG KUETENTENG (JIPANG', 'Diterima', 2020, 4, NULL, NULL, 276, 'Mesin pond hidrolik terbuat dari bahan steinless steel berbentuk segi empat dengan ukuran panjang 80 cm lebar 60 cm dan tinggi 100 cm, yang dalam sekali cetak dapat menghasilkan 100 buah kue tengteng dengan ukuran yang sama yaitu 2 cm x 4 cm x 2 cm per buah / per pcs.', '', 'Inovasi pengembangan usaha pembuatan kue tradisional tengteng diharapkan dapat memberikan manfaat yaitu melestarikan dan memasyarakatkan kembali kue tradisional tengteng (jipang) khususnya di kalangan generasi milenial dan generasi Z, dengan berbagai varian rasa, kemasan yang menarik sebagai jajanan pasar yang mudahmemproduksinya diperoleh serta mempromosikan sebagai oleh oleh khas daerah dari Desa Antajaya Kecamatan Tanjungsari Kabupaten Bogor.', '', '', '', '276.png', '', ''),
(277, 'PENGELOLAAN SAMPAH PLASTIK MENJADI VAPING BLOK DENGAN PEMBUATAN MESIN ', 'Diterima', 2020, 4, NULL, NULL, 277, '', '', '', '', '', '', 'default.png', '', ''),
(278, 'PENGELOLAAN LIMBAH PADAT SAWIT MENJADI DIVERIFIKASI UNTUK MENINGKATKAN', 'Diterima', 2020, 4, NULL, NULL, 278, 'Pengolahan TKKS menjadi serat variasi ukuran dapat dimanfaatkan sebagai bahan baku industri menggantikan serat sintetis, pupuk pertanian, dan media tanam di mana fabrikasi ini menggunakan teknologi sederhana milling bertingkat. Sementara itu lidi sawit dapat direkayasa menjadi berbagai kerajinan tangan seperti tempat pensil, tempat tisu, penebah kasur, piring, dll. Berdasarkan hasil pengujian, produk inovasi ini memiliki sifat dan karakteristik yang sebanding dengan serat sintetis seperti fiber glass, nylon, dll', '', 'Biomass yang meliputi lidi sawit dan TKKS memiliki keunggulan yaitu tersedia melimpah, dapat diperbaharui, dapat terdegradasi secara biologis, harga murah, teknologi proses sederhana, berdensitas tinggi, dan memiliki sifat mekanis yang baik. Meninjau keunggulan biomass sawit tersebut, penggunaannya merupakan terobosan baru untuk perkembangan ilmu sekaligus pengabdian masyarakat di IPB dan pemberdayaan masyarakat dalam meningkatkan perekonomian desa, khususnya untuk industri kreatif.', '', '', '', '278.png', '', ''),
(279, 'PUSAT PENGEMBANGAN KARIER ANAK KABUPATEN BOGOR', 'Diterima', 2020, 3, NULL, NULL, 279, '', '', '', '', '', '', 'default.png', '', ''),
(280, 'REVITALISASI KEARIFAN LOKAL BERBASI DIGITAS (NEN NORMAL BATIK KAB.BOGO', 'Diterima', 2020, 3, NULL, NULL, 280, 'Berdasarkan hasil penelitian dan pengabdian masyarakat terhadap batik Kab. Bogor maka dibutuhkan konsep integrasi penciptaan motif NEW NORMAL BATIK BOGOR (NNBB) dengan media digital sebagai integrasi edu wisata Batik di Kabupaten Bogor memiliki tingkat kelayakan yang baik untuk dikembangkan', '', 'meningkatkan inovasi dan kreatvitas produksi motif baru NEW NORMAL BATIK BOGOR (NNBB) disertai inovasi pemasaran berbasis digital untuk meningkatkan antusiasme generasi milenial terhadap inovasi', '', '', '', '280.png', '', ''),
(281, 'SEMINAS MINUMAS SARI BUAH NANAS BOGOR KAYA VITAMIN C SEBAGAI PANGAN FU', 'Diterima', 2020, 1, NULL, NULL, 281, '', '', '', '', '', '', 'default.png', '', ''),
(282, 'APLIKASI CITIGOV', 'Diterima', 2020, 5, NULL, NULL, 282, 'Aplikasi CITIGOV adalah Dokumen surat masuk dan keluar dapat dilakukan secara digital baik produksi, disposisi dan penyampaiannya', '', 'Menyediakan informasi mengenai pelaksanaan Rapat Anggota Tahunan yang telah dilaksanakan oleh koperasi;Mempermudah Pengarsipan dan pengadministrasian surat menyurat serta mendukung perubahan tata kelola administrasi kantor', '', '', '', '282.png', '', ''),
(283, 'KIOS GAPOKTAN', 'Diterima', 2020, 3, NULL, NULL, 283, 'Pembentukan gabungan kelompoktani (Gapoktan) ?Mandiri Jaya? yaitu pada tahun 2007, berawal dari adanya persamaan kepentingan diantara petani-petani yang ada di wilayah desa Cikarawang kecamatan Dramaga, dalam hal komoditi tanaman pangan yang ditanam terutama komoditi umbi-umbian dan juga dalam hal pemasaran hasil panen', '', 'Menumbuh kembangkan jiwa kepemimpinan, kewirausahaan dan kemampuan manajerial pelaku utama dan pelaku usaha; Memberikan arah dan petunjuk kepada Gapoktan tentang pola penyaluran dan pemanfaatan dana BLM; Menetapkan arah pengembangan sistem dan usaha agribisnis desa sesuai dengan potensi ekonomi desa PUAP; Memberikan petunjuk pemanfaatan dana PUAP dalam rangka penumbuhan usaha anggota serta membangun jaringan pasar.', '', '', '', '283.png', '', ''),
(284, 'LEUWIKARSA', 'Diterima', 2020, 5, NULL, NULL, 284, 'Konsep inovasinya adalah dengan bantuan teknologi informasi menggunakan aplikasi untuk membangun ketahanan social melalui jejaring yang berisikan sikap kepedulian, pembinaan, informasi umum dan kesehatanang bermanfaat serta membangkitkan kepercayaan diri melalui ungguhan foto, video serta kegiatan pasca rawat ketika ada dirumah.', '', 'Sistim informasi ini di buat untuk pasien, keluarga atau masyarakat, untuk mendapatkan informasi yang lebih akurat tentang penyakit Covid-19 dan menunjang program Sosial Resilence dan edukasi post perawatan bagi komunitas penderita Covid -19 di lingkungan RSUD Leuwiliang', '', '', '', '284.png', '', ''),
(285, 'NENG TITU SEHAT', 'Diterima', 2020, 5, NULL, NULL, 285, 'Neng Titu Sehat adalah menjamin kemudahan pelayanan dokumen kependudukan bagi pasien pada unit pelayanan kesehatan dalam ruang lingkup. Dinas Kesehatan. (Puskesmas Poned dan RSUD)', '', 'Peningkatan kualitas layanan kesehatan', '', '', '', '285.png', '', ''),
(286, 'OPTIMIS', 'Diterima', 2020, 5, NULL, NULL, 286, 'Dalam rangka meningkatkan kualitas pelayanan publik khususnya dalam bidang pelayanan perizinan dan nonperizinan yang efektif, efsien dan transparan kepada masyarakat, dan dalam pengembangan sistem pelayanan perizinan dan nonperizinan secara elektronik di Kabupaten Bogor dan juga dalam rangka optimalisasi dan peningkatan pemberian layanan perizinan dan non perizinan secara elektronik, maka pengaturan mengenai layanan perizinan dan non perizinan secara elektronik.', '', 'Mendorong tata kelola perizinan dan nonperizinan yang cepat, tepat, akurat, akuntabel, aman, efsien dan efektif dengan memanfaatkan teknologi informasi; Mempermudah pelaku usaha dalam melakukan pendaftaran pengurusan perizinan dimana saja;  Memfasilitasi pelaku usaha untuk terhubung dengan DPMPTSP dan memperoleh izin secara aman, cepat dan efsiensi waktu; Penghematan kertas dan ruang karena arsip, karena disimpan dalam bentuk digital;', '', '', '', '286.png', '', ''),
(287, 'SI OKE', 'Diterima', 2020, 5, NULL, NULL, 287, 'Gudang Farmasi Kesehatan Dinas Kesehatan Kabupaten Bogor bertugas mengelola obat dan perbekalan kesehatan, diantaranya melakukan perencanaan, penerimaan, penyimpanan, pendistribusian, pencatatan, pemantauan dan evaluasi obat dan perbekalan kesehatan yang diperlukan untuk layanan kesehatan di Puskesmas. Gudang farmasi kesehatan dalam melaksanakan tugasnya melayani 101 Puskesmas, 1 Klinik Pusyankesja dan 1 laboratorium Kesehatan Daerah yang berada di Kabupaten Bogor.', '', 'Mempermudah 101 Puskesmas, 1 Klinik Pusyankesja dan 1 Gudang Farmasi Kesehatan Kabupaten Bogor dalam proses pengelolaan obat dan perbekalan kesehatan dimulai dari pengadaan, penerimaan, penyimpanan, pendistribusian, pelayanan resep ke pasien/masyarakat serta pelayanan pemberian informasi pemalaian obat.', '', '', '', '287.png', '', ''),
(288, 'SIKEPO', 'Diterima', 2020, 5, NULL, NULL, 288, 'Data dan informasi kepegawaian merupakan hal dasar dari seorang pegawai untuk karirnya sebagai Aparatur Sipil Negara (ASN). Dinas Ketahanan Pangan Kabupaten Bogor memiliki aplikasi SiKepo untuk memudahkan para pegawainya untuk menyimpan data dan informasi tersebut secara digital. Mereka dapat mengakses dan memantau secara pribadi data kepegawaiannya setiap saat tanpa harus melalui berkas secara langsung. Hal-hal seperti naik pangkat, pensiun dan lainnya yang menyangkut tentang kepegawaian, dapat langsung diawasi oleh pegawai yang bersangkutan.', '', 'Pembaharuan kepegawaian dapat dipantau masing-masing pegawainya', '', '', '', '288.png', '', ''),
(289, 'SIKOPRITMIS', 'Diterima', 2020, 5, NULL, NULL, 289, 'SIKOPRITMIS adalah SISTEM REAL TIME DATABASE KOPERASI', '', '1. Tersedianya data koperasi yang valid dan terupdate;\n2. Terklasifikasikannya koperasi berdasarkan tingkat besar, sedang dan kecilnya volume usaha atau shu koperasi;\n3. Memudahkan dalam hal pembinaan koperasi secara masif, sistematis dan terstruktur.\n', '', '', '', '289.png', '', ''),
(290, 'SIMPADAM', 'Diterima', 2020, 5, NULL, NULL, 290, 'Dalam rangka Sistem Komunikasi Informasi Kebakaran, Penyelamatan dan pertolongan darurat pada Dinas\nPemadam Kebakaran Kabupaten Bogor diperlukan Pengadaan Software sistem informasi kebakaran kegiatan pengadaan Peralatan Kantor agar terwujud pelayanan sistem Aplikasi Komunikasi Informasi kebakaran, penyelamatan dan pertolongan darurat yang cepat, tepat dan akurat, sehingga informasi dari masyarakat tentang kebakaran, penyelamatan dan pertolongan darurat bisa lebih cepat serta bisa di pertanggungjawabkan kebenaran informasi tersebut.', '', '? Tersedianya Sistem Komunikasi Informasi Kebakaran yang dapat di unduh oleh masyarakat Kabupaten Bogor melalui handpone berbasis android, untuk aplikasi alarm ketika terjadi kebakaran, penyelamatan dan pertolongan darurat;\n? Tersedianya sistem informasi dashboard milik Dinas Pemadam Kebakaran Kabupaten Bogor untuk melihat dan meninjau trafk aplikasi yang beredar di masyarakat Kabupaten Bogor, sekaligus juga untuk memonitoring kebakaran.', '', '', '', '290.png', '', ''),
(291, 'SIRKAS', 'Diterima', 2020, 5, NULL, NULL, 291, 'SIRKAS adalah Sistem Informasi Rencana Kegiatan dan Anggaran Sekolah', '', 'Memudahkan Dinas Pendidikan dan Kementrian terkait dalam penyusunan perencanaan', '', '', '', 'default.png', '', ''),
(292, 'CHAT ME', 'Diterima', 2020, 5, NULL, NULL, 292, 'CHAT ME  adalah CIAWI HEART AND TRAUMA MEDICAL EMERGENCY)', '', '? Meningkatkan  kualitas pelayanan kegawat daruratan dengan cepat dan tepat bagi masyarakat yang sedang berwisata di wilayah Kabupaten Bogor\n? Menjamin keamanan dan kenyamanan  wisatawan\n', '', '', '', '292.png', '', ''),
(293, 'SAUNG TALEUS', 'Diterima', 2020, 2, NULL, NULL, 293, 'SAUNG TALAS adalah Rumah Pangan Lokal sehat dan berkualitas', '', 'Meningkatkan budaya makan talas sebagai pengganti beras dan terigu', '', '', '', '293.png', '', ''),
(294, 'PORTAL MEDIA INFORMASI SEPUTAR BABAKAN MADANG', 'Diterima', 2020, 4, NULL, NULL, 294, 'Seiring dengan perkembangan teknologi yang ada, sarana yang dapat digunakan untuk melakukan pemasaran produk hasil sendiri dan mengakses informasi seputar tempat wisata, kuliner, kelembagaan dan lainnya menjadi lebih mudah dan modern dengan adanya Portal Informasi dan UMKM Babakan Madang.', '', '1. Para pelaku UMKM menjadi lebih praktis dalam melakukan pemasaran produknya.\n2. Lebih mendekatkan produsen ke konsumen atau sebaliknya yang bisa berinteraksi langsung.\n3. Mempromosikan atau mengiklankan tempat wisata menjadi lebih luas.\n4. Kegiatan atau profil lembaga ? lembaga menjadi mudah dipublikasikan untuk diakses oleh siapapun.\n5. Wisatawan yang ingin berwisata ke Babakan Madang menjadi lebih mudah dalam mencari destinasi wisata sesuai keinginannya.\n6. Penulis / Seniman bisa mempublikasikan karyanya kepada publik.\n7. Memberikan peluang untuk mengembangkan usaha bagi siapapun.\n8. Pemangkasa mata rantai perdagangan', '', '', '', 'default.png', '', ''),
(295, 'KTPel MU (kartu tanda penduduk elektronik kamu)', 'Diterima', 2020, 5, NULL, NULL, 295, 'aplikasi KTPel Mu berbasis android  yang memudahkan masyarakat melakukan pengecekan progres KTP yang sudah tercetak', '', 'mempermudah akses masyarakat dalam proses cek ktp tanpa harus bolak balik ke kantor kecamatan dan efisien waktu dan biaya yang dikeluarkan masyarakat', '', '', '', '295.png', '', ''),
(296, 'MAMI PAPI', 'Diterima', 2020, 5, NULL, NULL, 296, 'MAMI PAPI adalah Mall Mini Pelayanan Publik untuk mewujudkan penyelenggaraan pelayanan publik sesuai dengan asas penyelenggaraan pemerintah yang baik, dan guna mewujudkan pelayanan yang berkualitas, mudah, cepat, akurat, Transparan dan terukur Kecamatan Parung harus meningkatkan pelayanan publik sesuai dengan mekanisme dan aturan yang berlaku.', '', 'Pelayanan yang bersifat terbuka, mudah dan dapat di akses oleh masyarakat Kecamatan Parung  yang membutuhkan layanan perpajakan dan identitas diri dan disediakan secara memadai di kecamatan.  manfaat pelayanan yang dapat mendorong peran serta masyarakat dalam penyelenggaraan pelayanan publik dengan memperhatikan  kebutuhan dan harapan masyarakat.', '', '', '', '296.png', '', ''),
(297, 'SIPAKEM (Sistem Aplikasi Paten Kemang)', 'Diterima', 2020, 5, NULL, NULL, 297, '', '', '- Adanya Kejelasan persyaratan, waktu, dan biaya dalam mendapatkan layanan publik perizinan dan non perizinan bagi masyarakat ;\n? Efesiensi waktu dan biaya transportasi apabila masyarakat menggunakan fasilitas layanan berbasis website dan online.', '', '', '', '297.png', '', ''),
(298, 'SIDOMEN ADUK TANAH', 'Diterima', 2020, 6, NULL, NULL, 298, '', '', '', '', '', '', 'default.png', '', ''),
(299, '?GEBER MAKES? (Gerakan Bersama Berantas Masalah Kesehatan)', 'Diterima', 2020, 1, NULL, NULL, 299, 'Mengoptimalkan penanganan terhadap kasus kasus utama kesehatan masyarakat seperti gizi buruk, jumlah kematian ibu, bayi dan neotal, penyakit menular dan tidak menular.', '', 'Berkurangnya kasus kematian ibu, anak balita, serta kasus COVID-19.', '', '', '', '299.png', '', ''),
(300, 'Sanggar Belajar Bahasa Inggris \"Besan\"', 'Diterima', 2020, 3, NULL, NULL, 300, 'Kondisi status ekonomi masyarakat pedesaan yang sebagian masih rendah, menyebabkan kesulitan masyarakat dalam mendapatkan fasilitas pembelajaran bagi anak - anak usia sekolah. Masyarakat menginginkan anak- anak usia sekolah memperoleh kualitas pendidikan yang memadai. Dalam persaingan lanjutan baik ke jenjang lanjutan sekolah maupun kesempatan dalam memperoleh pekerjaan yang layak sangat dibutuhkan adanya inovasi untuk meningkatkan kualitas ketrampilan anak- anak. salah satu ketrampilan yang dibutuhkan adalah penguasaan Bahasa Inggris. Didesa Antajaya Kecamatan Tanjungsari, salah satu upaya yang dilakukan adalah mengadakan pembelajaran Bahasa Ingggris yang diprakarsai Oleh M Mujib Ajiji, dengan jumlah murid hingga saat ini berjumlah 95 orang. Pembelajaran dilakukan di alam terbuka karena tidak ada fasilitas ruangan untuk kegitan tersebut. Pembelajaran ini tidak dupungut biaya mengingat keterbatasan ekonomi masyarakat. Usia peserta belajar antara 7 tahun sapai dengan 10 tahun. Pembelajaran dilakukan pada setiap hari minggu selama 2 jam. Metode yang dipergunakan adalah Peningkatan kemampuan percakapan bahasa Inggris', '', 'Peserta didik memperoleh layanan pendidikan / pembelajaran gratiis', '', '', '', '300.png', '', ''),
(301, 'MINYAK ATSIRI', 'Diterima', 2020, 1, NULL, NULL, 301, '', '', '', '', '', '', 'default.png', '', ''),
(302, 'PENGELOLAASAN SAMPAH OLEH BUMDES', 'Diterima', 2020, 6, NULL, NULL, 302, 'Desa Kembang Kuning merupakan wilayah industri dengan kepadatan penduduk yang tinggi oleh karena itu volume sampah rumah tangga yang dimiliki Desa Kembang Kuning cukup besar (asumsi 3.800 kg/hari), sedangkan terdapat keterbatasan lahan untuk pembuangan sampah sehingga beban biaya operasional pembuangan sampah tinggi. Oleh karena itu diberikan solusi alternatif untuk mengurai sampah dari rumah tangga tersebut dengan memberikan pemberdayaan masyarakat terkait pengelolaan sampah anorganik menjadi barang bernilai ekonomis dan penguraian sampah organik menggunakan Magot (Belatung).', '', 'Lingkungan bersih, kesehatan terjaga, wilayah tertib; Peningkatan ekonomi masyarakat;  Edukasi sadar sampah ke sekolah - sekolah; Turut meningkatkan zero waste wilayah sekitar', '', '', '', '302.png', '', ''),
(303, 'Pemberdayaan Masyarakat dalam kegiatan Daur Ulang (R3),', 'Diterima', 2020, 6, NULL, NULL, 303, '', '', '', '', '', '', 'default.png', '', ''),
(304, 'SAPU DARI BAHAN SORGUM', 'Diterima', 2020, 4, NULL, NULL, 304, '', '', '', '', '', '', 'default.png', '', ''),
(305, 'SALSA SEGAR BATIK CIOMAS', 'Diterima', 2020, 4, NULL, NULL, 305, '', '', '', '', '', '', 'default.png', '', ''),
(306, 'GEBER SAJADAH', 'Diterima', 2020, 4, NULL, NULL, 306, '', '', '', '', '', '', 'default.png', '', ''),
(307, 'ASOKA', 'Diterima', 2020, 5, NULL, NULL, 307, 'Memaksimalkan tata kelola arsip dengan mengutamakan arsip surat yang terdata dan tersusun secara baik sesuai dengan urutan waktu dan tempatnya', '', 'Memudahkan proses pendataan dan pencarian arsip surat menyurat dan data penting secara akurat', '', '', '', '307.png', '', ''),
(308, 'KAMPUNG E-LEARNING', 'Diterima', 2020, 3, NULL, NULL, 308, 'Selama pandemi Covid-19 ini, pelaksanaan kegiatan belajar mengajar di sekolah  melalui sistem daring (dalam jaringan) internet.\nSedangkan permasalahannya adalah tidak semua orang tua murid tergolong mampu untuk memasang wifi di rumahnya dan orang tua harus mengeluarkan biaya ekstra untuk membeli kuota internet. Memberikan kemudahan dan kelancaran bagi siswa yang saat ini belajar  melalui daring secara gratis sehingga dapat mengikuti pelajaran sekolah, karena jangkauan wifi bisa mencapai radius 20 s/d 30 meter, sehingga siswa yang di sekitar wifi bisa mengakses internet.  Selain itu juga dalam rangka mewujudkan program Pemerintah Daerah Kabupaten Bogor yaitu Panca Karsa khususnya Bogor Cerdas dan Bogor Maju.\n\nTujuannya Memfasilitasi dan memenuhi kebutuhan anak sekolah untuk belajar secara daring (daring).', '', 'Siswa bisa mengikuti pelajaran melaui daring secara gratis sehingga dapat mengikuti pelajaran dan bisa melaksanakan tugas-tugas yang diberikan oleh guru.\n', '', '', '', '308.png', '', ''),
(309, '?KREASI UNIK BERBAHAN PARALON BEKAS icon kelurahan karadenan?', 'Diterima', 2020, 4, NULL, NULL, 309, 'Program Paralon bekas merupakan kegiatan dimana paralon bekas yang terbuang percuma menjadi sia-sia, dan juga berdampak terhadap pencemaran lingkungan yang tidak terurai. Maka dari itu dipandang perlu untuk diperhatikan solusi tentang masalah ini yaitu dengan kami ubah paralon bekas menjadi nilai seni yang unik dan bernilai ekonomi tinggi. Program ini berawal dari tahun 2014 yang lalu karang taruna RW 19 Perum Taman Cibinong Asri membentuk sanggar seni kreasi yang diberi nama \"Sharaga Art\", sanggar seni kreasi yang dipelopori oleh Oting Supriatna.\nDengan tujuan membantu mengatasi permasalahan pencemaran lingkungan terutama pelastik dan paralon bekas.', '', 'merubah limbah menjadi yang mempunyai bentuk yang bernilai ekonomi lebih\n', '', '', '', '309.png', '', ''),
(310, 'GERAKAN SEDEKAH SAMPAH', 'Diterima', 2020, 6, NULL, NULL, 310, 'INOVASI GERAKAN SEDEKAH SAMPAH  adalah suatu kegiatan mengumpulkan sampah bekas rumah tangga non organik berupa : botol plastik, kardus bekas, besi bekas, dll (yang bernilai ekonomis) yang diberikan secara ikhlas kepada pengurus gerakan sedekah sampah tanpa mengharap imbalan dan sebagai upaya untuk mengurangi sampah yang dibuang sembarangan oleh masyarakat.', '', 'Meningkatkan sarana Lingkungan yang bersih dan sehat\nMeningkatnya Kesadaran Masyarakat akan pentingnya menjaga KebersihanLingkungan\nLingkungan mempunyai dana swadaya dari Gerakan Sedekah Sampah ini untuk kegiatan sosial dan pembangunan Lingkungan.\nMenumbuh kembangkan rasa kepedulian atau kesadaran masyarakat terhadap Kebersihan dan Keindahan lingkungan.', '', '', '', '310.png', '', ''),
(311, 'SIWA (SISTEM INFORMASI WARGA', 'Diterima', 2020, 5, NULL, NULL, 311, 'Saat ini peranan teknologi informasi sangat berperan penting dalam kegiatan sehari\nhari, terlebih saat ini kita semua dihadapkan dengan adanya wabah virus Covid-19 yang\nmengakibatkan lumpuhnya aktivitas normal seperti biasanya. Meski saat ini pandemi\nCovid-19, aktivitas tidak boleh terhenti untuk memenuhi kebutuhan hidup sehari-hari\nseperti : ibadah bekerja, belanja, sekolah, layanan publik dan aktivitas lainya. Dalam\nupaya memenuhi kebutuhan tersebut, kita harus mencari solusi supaya aktivitas tetap\nberjalan tanpa harus terhenti. Dengan adanya Sistem Informasi Warga (SIWA),kebutuhan masyarakat terkait pengurusan kependudukan serta informasi-informasi\nlainya dapat berjala dengan baik tanpa harus terhenti karena adanya Covid-19. Dan\nsekaligus Sistem Informasi Warga (SIWA) ini, sejalan dengan program pemerintah\nPembatasan Sosial Berskala Besar (PSBB) yaitu bisa berkaktifitas dari rumah dan\ntetap bisa komunikasi dengan teman, sahabat, rekan kerja, serta keluarga tercinta.', '', '1. Membantu masyarakat dalam mengakses informasi penting dan terbaru terkait\nkegiatan dilingkunganya.\n2. Tidak ada jarak antara RT dengan warganya meski tidak satu meja atau area.\n3. Komunikasi lebih interaktif dan cocok pada era digital saat ini.\n4. Keterbukaan terhadap konflik kepentingan\n5. Informasi rencana kegiatan atau pembangunan bisa diakses semua publik.', '', '', '', '311.png', '', ''),
(312, 'ALAT PENGUAT DAYA LISTRIK UNTUK MEMBANTU MASYARAKAT DALAM BERAKTIFITAS', 'Diterima', 2020, 1, NULL, NULL, 312, '', '', 'Membantu masyarakat dalam beraktivitas dapat lebih aktif dan produktif, mengefisiensikan penggunaan listrik, meningkatkan sumber daya manusia dalam pengembangan dan kemajuan desa, meningkatkan fungsi dari pemanfaatan suatu produ atau sumber daya sehingga manusia mendaptkan manfaat yang lebih dan mengefisiensikan biaya penggunaan listrik', '', '', '', '312.png', '', ''),
(313, 'ADA BIJI P4K PUSPA', 'Diterima', 2020, 1, NULL, NULL, 313, 'ADABIJI P4K PUSPA? (Ada Bidan dan Paraji untuk Program Perencanaan Persalinan dan Pencegahan Komplikasi di Puskesmas Puraseda)', '', 'Meningkatkan fasilitas pelayanan kesehatan sehingga menjamin keselamatan ibu dan anak', '', '', '', '313.png', '', ''),
(314, 'ANTARIKS POLING', 'Diterima', 2020, 1, NULL, NULL, 314, 'POLLING ? ANTARIKSA (Posbindu Lansia Inovatif Keliling ? Antar dan Periksa Lansia ke Pelayanan Kesehatan)', '', 'Semua lansia mendapatkan pelayanan kesehatan sesuai standar minimal 1x dalam setahun', '', '', '', '314.png', '', ''),
(315, 'AY MISU JENANG ATI', 'Diterima', 2020, 1, NULL, NULL, 315, 'AY MISU JENANG ATI : Ayo Makan Isi Piringku Minum Susu Berjemur Berenang Atasi Stunting', '', '1. Masyarakat memiliki status gizi yang baik.\n2. Hasil tatalaksana ini dapat digunakan sebagai pertimbangan studi untuk rencana tatalaksana stunting di daerah lainnya.\n3. Mendata masyarakat berdasarkan status gizi, khususnya anak dan ibu hamil.\n', '', '', '', '315.png', '', ''),
(316, 'BERARTI SAKTI', 'Diterima', 2020, 1, NULL, NULL, 316, 'BERARTI SAKTI ( Bendera Resiko Tinggi\n Turunkan Angka Kematian Ibu dan Bayi)\n', '', 'Pemasangan bendera resti dan stiker P4K di rumah ibu hamil yang beresiko ( diharapkan dapat meningkatkan pelayanan KIA yang berkualitas dalam rangka menurunkan AKI & AKB ).', '', '', '', '316.png', '', ''),
(317, 'BUMIL MASANG DASI', 'Diterima', 2020, 1, NULL, NULL, 317, 'BUMIL MASANG DASI (budayakan ibu hamil makan pisang kendalikan hipertensi)', '', 'Pisang mengandung kadar kalium yg tinggi yang dapat menurunkan resiko hipertensi jika di konsumsi secara teratur', '', '', '', '317.png', '', ''),
(318, 'DAYA CINTA', 'Diterima', 2020, 1, NULL, NULL, 318, 'DAYA CHINTA (Pemberdayaan Masyarakat Cegah Hipertensi Kita)', '', 'meningkatkan cakupan penderita hipertensi yang melakukan kontak rutin ke fasilitas Kesehatan dalam upaya menjaga kestabilan tekanan darah.', '', '', '', '318.png', '', ''),
(319, 'DeJAS', 'Diterima', 2020, 1, NULL, NULL, 319, 'DEJAS (Detektif Jajanan Anak Sekolah)', '', 'Inovasi ini diharapkan mampu memberikan manfaat kepada instansi khususnya Dinas Kesehatan Kabupaten Bogor. Dan diharapkan memberikan masukan tentang proses pengawasan sebagai upaya peningkatan kualitas pelayanan publik kepada masyarakat.yakninya menyangkut masalah kemanan Jajanan Anak sekolah sehingga diharapkan mampu meningkatkan pelayanan dan mampu menjawab permasalahan yang ada saat ini. ', '', '', '', '319.png', '', ''),
(320, 'DUREN MONTONG', 'Diterima', 2020, 1, NULL, NULL, 320, 'DUTA GIGI BUMIL  ADALAH PEDULI KESEHATAN GIGI IBU HAMIL', '', 'Berdasarkan wawancara terhadap pembina Poskestren, status kesehatan santri meningkat sejak dibentuk Poskestren dan pembinaan kesehatan dari Puskesmas. Tidak ditemukannya penyakit Hepatitis. Sedangkan kasus penyakit kulit masih ada namun menurun angkanya. Karena adanya edukasi penerapan PHBS', '', '', '', '320.png', '', ''),
(321, 'DUTA GIGI HAMIL', 'Diterima', 2020, 1, NULL, NULL, 321, '', '', 'Meningkatkan kesadaran akan pentingnya menjaga kesehatan gigi pada masa kehamilan', '', '', '', '321.png', '', ''),
(322, 'ES JUSS', 'Diterima', 2020, 1, NULL, NULL, 322, 'EsJus  alah Edukasi Sehat Jumat Selasa', '', 'Mengedukasi masyarakat tentang masalah kesehatan yang sering dihadapi masayarakat dalam kehidupan sehari-hari.', '', '', '', '322.png', '', ''),
(323, 'GEPUK TB', 'Diterima', 2020, 1, NULL, NULL, 323, 'GEPUK TB ADALAH GERAKAN PEDULI KASUS TB', '', '? Meningkatkan Capaian penemuan kasus TB tiap tahun meningkat\n? Mengurangi angka penularan\n? Meningkatkan pengetahuan masyarakat tentang penyakit TB paru', '', '', '', '323.png', '', ''),
(324, 'GERILYANPUTNED', 'Diterima', 2020, 1, NULL, NULL, 324, 'GERYALINPUTNED  adalah Gerakan Sayang Ibu Bersalin Dijemput Lahir Di Poned', '', 'a. Ibu bersalin memperoleh pelayanan kesehatan yang   berkualitas sehingga mampu menjalani persalinanya dengan selamat dan melahirkan bayi yang sehat. \nb. Memudahkan Transportasi ke fasilitas kesehatan/Poned', '', '', '', '324.png', '', ''),
(325, 'GERSIK', 'Diterima', 2020, 1, NULL, NULL, 325, 'GERSIK  adalah Gerakan ASI Eksklusif, Masalah gizi merupakan siklus yang dapat terjadi sejak dalam kandungan (janin), bayi, anak, dewasa, dan lanjut usia. Periode dua tahun pertama kehidupan merupakan masa kritis, karena pada masa ini terjadi pertumbuhan dan perkembangan yang sangat pesat. Untuk mendapatkan gizi yang baik pada bayi baru lahir maka sang ibu harus sesegera mungkin menyusui bayinya karena ASI memberikan peranan penting dalam menjaga kesehatan dan mempertahankan kelangsungan hidup bayi. Oleh karena itu, bayi yang berumur kurang dari 6 bulan dianjurkan hanya diberikan ASI tanpa diberikan apapun. Hal ini yang disebut dengan ASI Eksklusif. Makanan Pendamping ASI (MP-ASI) hanya boleh diberikan pada bayi yang berumur 6 bulan ke atas.\nBerdasarkan laporan kader kesehatan di posyandu, beberapa masyarakat tidak ASI Eksklusif karena sejak lahir sudah diberikan susu formula dan berbagai macam mitos akan budaya masing-masing seperti pemberian madu, kopi bubuk, dan air minum. Sehingga dapat dikatakan ibu gagal ASI Eksklusi.', '', '1. Mengetahui komposisi apa saja yang terkandung dalam ASI\n2. Memberikan semangat bagi ibu dalam mengASIhi', '', '', '', '325.png', '', ''),
(326, 'GERTAK SAMBER CC-19', 'Diterima', 2020, 1, NULL, NULL, 326, '', '', '', '', '', '', 'default.png', '', ''),
(327, 'INFUS OBAT', 'Diterima', 2020, 1, NULL, NULL, 327, 'INFUS OBAT adalah Informasi Sepuluh Menit Seputar obat', '', 'Agar masyarakat dapat memahami tentang cara penggunaan obat yang benar sehingga dapat mengurangi kesalahan pengobatan', '', '', '', '327.png', '', ''),
(328, 'JALAN SEHAT', 'Diterima', 2020, 1, NULL, NULL, 328, 'JALAN SEHAT adalah Jaring Lansia Agar Sehat', '', 'Meningkatkan kesehatan Lansia', '', '', '', '328.png', '', ''),
(329, 'JANBURE', 'Diterima', 2020, 1, NULL, NULL, 329, 'JANBURE adalah Jangkauan Ibu Hamil Resiko Tinggi', '', '1. Meningkatkan cakupan deteksi resiko tinggi ibu hamil\n2. Menigkatkan akses rujukan bagi ibu hamil dengan resiko kegawat daruratan\n3. Melakukan rujukan dini terencana bagi ibu hamil resiko tinggi\n4. Meningkatkan peran serta masyarakat untuk pendampingan ibu hamil', '', '', '', '329.png', '', ''),
(330, 'JEDAR', 'Diterima', 2020, 1, NULL, NULL, 330, 'JEDAR (Jemput Dahak Rame-rame) permasalahannya Kurangnya cakupan pasien TB di Puskesmas Sukaraja. Pencapaian penemuan semua kasus yang diobati TB hanya mencapai 104 kasus artinya angka penemuan kasus lebih kecil dari target begitu pun dengan pencapaian angka keberhasilan pengobatan hanya 72,12%. Penemuan semua kasus TB 46,02%.', '', 'Munurunnya angka kesakitan dan Kematian TB di Wilayah Puskesmas Sukaraja', '', '', '', '330.png', '', ''),
(331, 'JEMPOLAN', 'Diterima', 2020, 1, NULL, NULL, 331, 'JEMPOLAN ( Jemput Posbindu Lansia), Berdasarkan hasil PKP tahun 2017 cakupan kunjungan lansia sangat rendah yaitu 27 ,98 % dari target yang dihRpkan 70 % ,Kemudian berdasarkan hasil SMD yang dilaksanakan pada bulan Desember tahun 2017 mendapat masukan dari masyarakat melalui kader kesehatan menginginkan adanya kunjungan pemeriksaan kesehatan kepada kelompok sasaran lansia yang ada di kegiatan Majlis Taklim di wilayah kerja Puskesmas Cogreg', '', 'a. Meningkatnya cakupan dan kwaliatas pelayanan kesehatan santun lanjut usia.\nb. Meningkatnya ketersediaan data dan informasi dibidang kesehatan lanjut usia.\nc. Meningkatnya koordinasi dengan lintas program dan lintas sektor,profesi/organisasi masyarakat, dunia usaha ,media masa dan pihak terkait lainya.\nd. Meningkatnya peran serta dan peberdayaan keluarga, masyarakat dan lanjut usia dalam upaya peningkatan kesehatan lanjut usia.\ne. Meningkatnya peran serta lanjut usia dalam upaya peningkatan kesehatan keluarga dan masyarakat.', '', '', '', '331.png', '', ''),
(332, 'JUMANTO', 'Diterima', 2020, 1, NULL, NULL, 332, 'JUMANTO ( Jum?at Anti Rokok ) KTR (Kawasan Tanpa Rokok) merupakan suatu upaya/kebijakan pemerintah untuk menangani permasalahan mengenai rokok yang dimana puskesmas merupakan salah satu KTR sehingga karena menjadi kawasan KTR maka tidak boleh ada yang merokok di kawasan puskesmas.\nPada hari jum?at terdapat pasar kaget yang lokasinya di area wilayah puskesmas pamijahan, dimana dengan adanya pasar kaget menyebabkan pasien yang datang ke puskesmas membludak dan diantara pasien tersebut banyak yang merokok di kawasan puskesmas pamijahan padahal puskesmas pamijahan sudah menerapkan KTR', '', 'a. Menurunkan angka kesakitan dan atau angka kematian dengan cara mengubah perilaku masyarakat untuk hidup sehat.\nb. Meningkatkan produktifitas kerja yang optimal.\nc. Mewujudkan kualitas udara yang sehat dan bersih , bebas dari asap rokok.\nd. Menurunkan angka perokok dan mencegah perokok pemula.\ne. Mewujudkan generasi muda yang sehat.\nf. Memberikan acuan bagi Fasilitas Pelayanan kesehatan (Puskesmas) dalam menetapkan KTR dan Satgas anti Rokok.\ng. Memberikan perlindungan yang efektif dari bahaya asap rokok.\nh. Memberikan ruang dan lingkungan yang sehat bagi masyarakat.', '', '', '', '332.png', '', ''),
(333, 'JUPENTUS', 'Diterima', 2020, 1, NULL, NULL, 333, 'JUPENTUS (Juru Pendamping Tuberculosis), program inovasi yang diinisiasi oleh Puskesmas Ciburayut yang berfokus pada penanganan masalah penyakit Tuberkulosis dengan melibatkan kader terlatih untuk memantau kedisiplinan pasien dalam minum obat selama 6 bulan masa pengobatan. Sehingga diharapkan pasien TBC disiplin menjalani pengobatan hingga tuntas demi mewujudkan Indonesia bebas TBC 2050.', '', 'a. Menurunnya angka kasus penyakit Tuberkulosis. \nb. Meningkatnya angka keberhasilan pengobatan \n    pasien Tuberkulosis. \nc. Meningkatnya penjaringan suspek Tuberkulosis di\n    wilayah kerja Puskesmas Ciburayut. \n', '', '', '', '333.png', '', ''),
(334, 'KAMPUS BUMIL', 'Diterima', 2020, 1, NULL, NULL, 334, 'KAMPUS BUMIL merupakan sarana untu belajar bersama tentang kesehatan bagi ibu hamil, salam bentu tatap muka dalam kelompok yang bertujuan untu meningkatan pengetahuan dan keterampilan ibu mengenai kehamilan, perawatan nifas, perawatan bayi baru lahir, mitos, penyait menular dan akte kelahiran (Depkes, 2009;1)\nMasih banyaknya ibu hamil yang melahirkan dirumah diwilayah kerja puskesmas Sukajaya menjadikan landasan utama terciptanya kampus Bumil\n', '', 'Meningkatan pengetahuan, merubah sikap dan prilaku ibu agar memahami tentang kehamilan, perubahan tubuh dan keluhan selama kehamilan, perawatan kehamilan, persalinan, perawatan nifas, KB paska persalinan, perawatan bayi baru lahir, mitos/kepercayaan/adat istiadat setempat dan pentingnya ibu melahirkan di fasilitas kesehatan.', '', '', '', '334.png', '', '');
INSERT INTO `inovasi` (`id_inovasi`, `nama_inovasi`, `status_inovasi`, `tahun_pembuatan_inovasi`, `id_bidang_inovasi`, `id_bidang_inovasi_2`, `id_bidang_inovasi_3`, `id_inovator`, `deskripsi`, `penjaringan_ide`, `manfaat_inovasi`, `dampak_inovasi`, `proposal_inovasi`, `dokumentasi_inovasi`, `foto_inovasi`, `link_medsos`, `video_link_youtube`) VALUES
(335, 'KANTONG IMUNISASI', 'Diterima', 2020, 1, NULL, NULL, 335, 'KAMUS (Kantong Imunisasi)', '', '1. Dapat menganalisa penyebab tidak tercapainya cakupan imunisasi dasar Desa Kalong 2 \n2. dapat meningkatkan cakupan imunisasi dasar di desa kalong 2 \n3. dapat meningkatkan cakupan UCI desa di\n wilayah Puskesmas Leuwisadeng', '', '', '', '335.png', '', ''),
(336, 'KASIHI', 'Diterima', 2020, 1, NULL, NULL, 336, 'KASIHI ( Kader ASI Sahabat Ibu )', '', '1. Setiap bayi dapat diberikan ASI eksklusif yang tepat oleh ibunya\n2. Mendata jumlah bayi yang mendapatkan ASI eksklusif di tiap desa\n3. Hasil tatalaksana ini dapat digunakan sebagai pertimbangan studi untuk rencana tatalaksana ASI eksklusif di daerah lainnya\n', '', '', '', '336.png', '', ''),
(337, 'KENARI', 'Diterima', 2020, 1, NULL, NULL, 337, 'KENARI (KEBUN TOGA DAN REFLEKSI TAMANSARI)', '', 'Meningkatkan kemampuan masyarakat melalui pembelajaran dari oleh dan untuk masyarakat agar mereka dapat menolong diri sendiri', '', '', '', '337.png', '', ''),
(338, 'KENDI BESI', 'Diterima', 2020, 1, NULL, NULL, 338, 'KENDI BESI ( KENDALIKAN DIABETES MELLITUS BEBAS KOMPLIKASI)', '', 'Meningkatkan peran serta pasien sendiri, keluarga dan masyarakat dalam pengelolaan penyakit diabetes mellitus', '', '', '', '338.png', '', ''),
(339, 'KIMOSS JAKO', 'Diterima', 2020, 1, NULL, NULL, 339, 'KIMOSS JAKO (Kelas Intensif Minum Obat Sampai Sembuh ? Jaring Kontak)', '', 'Menambah cakupan penemuan dan kesembuhan serta sukses pengobatan dalam penanggulangan penyakit TBC di Puskesmas Jampang', '', '', '', '339.png', '', ''),
(340, 'LALAB SEGAR', 'Diterima', 2020, 1, NULL, NULL, 340, 'LALAB SEGER CEKOMIL (Layanan Laboratorium Segera Cegah Komplikasi ibu hamil)', '', '1. Menjaring ibu hamil di wilayah puskesmas sukaraja untuk menurunkan kejadian komplikasi\n2. Bertambahnya pengetahuan masyrakat mengenai pentingnya melakukan pemeriksaan laboratorium pada ibu hamil (triple eliminasi)\n3. Memudahkan pelayanan pada ibu hamil yang memiliki keterbatasan akses', '', '', '', '340.png', '', ''),
(341, 'MAMA BUSER', 'Diterima', 2020, 1, NULL, NULL, 341, 'MAMA BUSER (MARI MAKAN BUAH SEGAR)', '', '? Perubahan perilaku masyarakat dalam mengkonsumsi buah dan sayur\n? Sarana penyebaran informasi Kesehatan terkait program PTM dan Gizi\n', '', '', '', '341.png', '', ''),
(342, 'MIE PEDAS', 'Diterima', 2020, 1, NULL, NULL, 342, 'MIE PEDAS adalah Meningkatkan Edukasi Pedili Anak Sekolah', '', 'Anak-anak sekolah menjadi sehat dengan adana edukasi Mie Pedas ini', '', '', '', '342.png', '', ''),
(343, 'MIRASA TEBU', 'Diterima', 2020, 1, NULL, NULL, 343, 'Belakangan ini begitu banyak kunjungan pasien yang datang untuk berobat di Puskesmas Nanggung dan beberapa praktek Dokter lainnya. Banyak sekali masyarakat yang mengeluh mengenai beberapa penyakit lainnya, itu artinya banyak masyarakat yang mengkonsumsi obat yang berbahan kimia. Sedangkan masyarakat dapat menggunakan atau mengkonsumsi Obat Herbal yang di racik sendiri untuk dapat menyembuhkan berbagai macam penyakit yang di deritanya. dan sebetulnya banyak sekali manfaat yang di dapat dari obat herbal tersebut.Maka dari itu, Puskesmas mengadakan Inovasi baru yaitu dengan menyediakan minuman herbal/jamu setiap hari Rabu untuk Pasien yang berkunjung ke Puskesmas Nanggung secara gratis, dan Mijastan Broo Minum Jahe Instan yang dibuat oleh warga desa Hambaro.', '', 'Banyaknya pasien yang mengatakan bahwa setelah minum ramuan jamu sudah merasakan khasiatnya dari jamu tersebut yang membuat badan menjadi lebih segar', '', '', '', '343.png', '', ''),
(344, 'NGAGIRING BARUDAK', 'Diterima', 2020, 1, NULL, NULL, 344, 'NGAGIRING BARUDAK (Penguatan peran lintas sector dalam upaya peningkatan Balita ditimbang ke Posyandu)\n?Ngagiring?(Bahasa Sunda) arti kata menurut kamus besar bahasa Indonesia (KBBI) adalah menggiring [meng-gi-ring], mengantar (membawa) ke sesuatu tempat. ?Barudak? (Bahasa Sunda) artinya adalah anak-anak.', '', 'Meningkatkan status Gizi Balita di wilayah kerja puskesmas Tenjolaya dengan meningkatkan peran serta lintas sector dalam upaya pemenuhan PMT Penyuluhan untuk meningkatkan cakupan Balita di timbang (D/S)', '', '', '', '344.png', '', ''),
(345, 'NGAJI', 'Diterima', 2020, 1, NULL, NULL, 345, 'NGAJI (Ngariung Gizi Jeung ibu-ibu)', '', 'a. Mempunyai pengetahuan gizi yang baik.\nb. Adanya data status gizi\nc. Pelayanan yang komfrthensif dan terintegritasi.\n', '', '', '', '345.png', '', ''),
(346, 'PANCING DI CIGUDEG', 'Diterima', 2020, 1, NULL, NULL, 346, 'Pemeriksaan Hb dan persiapan pemeriksaan  faeces   di desa banyu resmi lokus stunting', '', 'Mencegah Stunting sejak dini dengan pemeriksaan HB (untuk penyakit anemia) dan pemeriksaan telur cacing (untuk penyakit kecacingan)', '', '', '', '346.png', '', ''),
(347, 'PASANGGIRI CATIN', 'Diterima', 2020, 1, NULL, NULL, 344, 'PASANGGIRI CATIN (Pasangan di girirng, dikonseling dan dilakukan pemeriksaan calon pengantin)', '', 'Melalui pemberian Konseling, Informasi dan Edukasi Kesehatan Reproduksi dan seksual bagi calon Pengantin diharapkan calon pengantin dapat mempersiapkan diri menjalani kehidupan berkeluarga termasuk merencanakan kehamilan yang sehat sehngga dapat melahirkan generasi penerus yang berkualitas.', '', '', '', '347.png', '', ''),
(348, 'PECINTA DRAKOR', 'Diterima', 2020, 1, NULL, NULL, 348, 'PECINTA DRAKOR ((Pencegahan Stunting Pada Anak dengan Makanan Tambahan ?Egg roll? dari Daun Kelor)', '', '? Masyarakat memiliki status gizi yang baik\n? Masyarakat mampu mengkreasikan cemilan sehat untuk balitanya\n? Masyarakat mampu memahami pentingnya pencegahan stunting sejak dini\n', '', '', '', '348.png', '', ''),
(349, 'PIO', 'Diterima', 2020, 1, NULL, NULL, 349, 'PIO (Pelayanan Informasi Obat)', '', 'Diharapkan dengan adanya Pelayanan Informasi Obat di Puskesmas akan meningkatkan pengetahuan dan kualitas hidup pasien', '', '', '', '349.png', '', ''),
(350, 'POS SEJIWA', 'Diterima', 2020, 3, NULL, NULL, 350, 'Banyak ODGJ putus berobat dan tidak adanya dukungan keluarga', '', 'Kualitas ODGJ jadi meningkat dan menghilangkan stigma negatif ODGJ di masyarakat', '', '', '', '350.png', '', ''),
(351, 'POSREM PERMATA', 'Diterima', 2020, 1, NULL, NULL, 351, 'POSREM (Poyandu remaja) Dibentuknya Posyandu oleh masyarakat yang peduli terhadap remaja', '', 'Meningkatnya kepedulian remaja terhadap status gizi dan kesehatannya serta pengetahuan tentang reproduksi remaja, narkoba, akibat sex bebas dll.', '', '', '', '351.png', '', ''),
(352, 'RADJAH', 'Diterima', 2020, 1, NULL, NULL, 352, 'RADJAH (Rebusan Daun Jambu Biji Merah)', '', '? Memberikan asuhan keperawatan pada pasien diabetes mellitus \n? Mengurangi biaya untuk perawatan luka diabetes\n? Memberikan informasi tentang perawatan luka pada keluarga pasien\n? Memberikan kesembuhan pada pasien gangrene terutama pada pasien yang positif amputasi\n', '', '', '', '352.png', '', ''),
(353, 'RASAMU', 'Diterima', 2020, 1, NULL, NULL, 353, 'RASAMU (Grebek Sarang Nyamuk) Banyaknya Kasus dan tingginya angka kasus Demam Berdarah (DBD) di wilayah kerja Puskesmas Pabuaran Indah dan menjadi wilayah endemis demam berdarah.', '', '- Mengurangi angka kesakitan akibat penyakit demam berdarah di wilayah kerja Puskesmas Pabuaran Indah\n- Angka bebas jentik (ABJ) meningkat lebih dari 95%\n- Lingkungan di masyarakat menjadi lebih bersih dan bebas dari tempat perindukan sarang nyamuk\n', '', '', '', '353.png', '', ''),
(354, 'REBEKA', 'Diterima', 2020, 1, NULL, NULL, 354, 'REBEKA (Remaja Bebas Tembakau)', '', '1. Berkurangnya angka remaja yang merokok. \n2. Hasil tatalaksana ini dapat digunakan sebagai \n    pertimbangan studi untuk membuat rencana \n    yang akan datang terkait penanggulangan \n    remaja yang menjadi perokok. \n3. Meningkatkan derajat kesehatan masyarakat  khususnya remaja di wilayah kerja Puskesmas Cihideung Udik. \n', '', '', '', '354.png', '', ''),
(355, 'REHAT SAJA', 'Diterima', 2020, 1, NULL, NULL, 355, 'REBEKA (Remaja Bebas Tembakau)', '', '1. Masyarakat memiliki pilihan metode Pengobatan  tradisional \n2. Menambah wawasan mengenai pemanfaatan toga \n3. Dya tahan tubuh masyarakat meningkat \n', '', '', '', '355.png', '', ''),
(356, 'SARUNG ROKOK', 'Diterima', 2020, 1, NULL, NULL, 356, 'SARUNG ROKOK (Sadar Ruang Rokok)', '', 'Bagi kesehatan masyarakat dan hak perokok. \na. Bagi masyarakat yang tidak merokok, tentu hak mereka untuk tidak menghirup asap rokok harus dipenuhi. Begitu pun hak para perokok yang juga perlu dipenuhi untuk mengonsumsi produk legal. \nb. Menyediakan ruang merokok sebagai langkah awal Toleran. \nc. Ketersediaan akan area khusus merokok menjadi langkah toleran yang melegakan satu sama  lain,tentulah tempat yang manusiawi,  tidak sempit dan sumpek atau sekedar ada. \nd. Hadirnya ruang rokok sudah pasti akan memberikan pelajaran bagi para perokok untuk tidak merokok sembarangan. Agar para  perokok melakukan aktivitas rokoknya di ruang yang sudah disediakan. ', '', '', '', '356.png', '', ''),
(357, 'SEGAR KEMARI', 'Diterima', 2020, 1, NULL, NULL, 357, 'SEGAR KEMARI (Sehat Bugar Sekarang dan Kemudian Hari)', '', 'a. Meningkatnya kesadaran para usia lanjut dalam membina kesehatannya secara mandiri\nb. Meningkatnya kemampuan dan peran serta keluarga dan masyarakat dalam menyehatkan dan mengatasi kesehatan usia lanjut.\nc. Meningkatnya jenis dan jangkauan pelayanan kesehatan usia lanjut\nd. Meningkatnya mutu pelayanan kesehatan usia lanjut.', '', '', '', '357.png', '', ''),
(358, 'SEKAPUR SIRIH', 'Diterima', 2020, 1, NULL, NULL, 358, 'SEKAPUR (Senin-Kamis Penuh Informasi)', '', '? Masyarakat mengetahui informasi kesehatan terkini dan mengurangi penyebaran berita yang tidak benar (hoax) mengenai kesehatan. \n? Menambah wawasan dan keterampilan kader untuk dapat menyampaikan informasi kesehatan kepada masyarakat \n', '', '', '', '358.png', '', ''),
(359, 'SELARAS', 'Diterima', 2020, 1, NULL, NULL, 359, 'SELARAS ( Selasa Lansia Rancabungur Sehat) Pelaksanaan Program Lansia, PTM dan Kesorga yang belum terintegrasi', '', 'Lansia dapat memeriksakan kondisi kesehatannya secara rutin', '', '', '', '359.png', '', ''),
(360, 'SIBARRES', 'Diterima', 2020, 1, NULL, NULL, 360, 'SIBBARES (SIAGA IBU BAYI BALITA RESTI), dengan Adanya kematian Ibu dan Bayi serta balita di wilayah kerja Puskesmas Sukamanah pada Tahun 2016. Adanya balita gizi kurang dan gizi buruk. Untuk mencegah kejadian tersebut, maka dibentuklah inovasi SIBBARES (Siaga Ibu Bayi Balita Resti).', '', '1. Tidak adanya kematian ibu, bayi dan balita yang dikarenakan oleh factor resiko di wilayah kerja Puskesmas Sukamanah\n2. Memiliki data akurat ibu hamil, bayi dan balita di masyarakat\n', '', '', '', '360.png', '', ''),
(361, 'SICAKEP', 'Diterima', 2020, 1, NULL, NULL, 361, 'Puskesmas Megamendung adalah Unit Pelaksana Teknis Dinas Kesehatan Kabupaten Bogor yang bertanggung jawab menyelenggarakan pembangunan kesehatan di wilayah kecamatan Megamendung. Secara nasional standar wilayah kerja Puskesmas adalah satu kecamatan. Apabila di satu kecamatan terdapat lebih dari satu Puskesmas, dengan memperhatikan keutuhan konsep wilayah yaitu desa/kelurahan atau dusun/rukun warga (RW). Visi pembangunan kesehatan yang diselenggarakan oleh Puskesmas Megamendung adalah tercapainya kecamatan sehat. Kecamatan sehat mencakup 4 indikator utama, yaitu lingkungan sehat, perilaku sehat, cakupan pelayanan kesehatan yang bermutu dan derajat kesehatan penduduk. Misi pembangunan kesehatan yang diselenggarakan Puskesmas Megamendung adalah mendukung tercapainya misi pembangunan kesehatan nasional dalam rangka mewujudkan masyarakat mandiri dalam hidup sehat. Untuk mencapai visi tersebut, Puskesmas Megamendung menyelenggarakan upaya kesehatan perorangan dan upaya kesehatan masyarakat. Dalam menyelenggarakan upaya kesehatan perorangan dan upaya kesehatan masyarakat, Puskesmas perlu ditunjang dengan pelayanan kefarmasian yang bermutu', '', 'Sebagai acuan bagi Apoteker dan Tenaga Teknis Kefarmasian untuk melaksanakan pelayanan kefarmasian yang berorientasi pada pasien (patient oriented) di Puskesmas Megamendung dan sebagai pedoman bagi Dinas Kesehatan dalam pembinaan pelayanan kefarmasian di Puskesmas Megamendung', '', '', '', '361.png', '', ''),
(362, 'SMS PENTING', 'Diterima', 2020, 1, NULL, NULL, 362, 'SMS PENTING (SUKA MINUM SUSU PENCEGAH STUNTING)', '', 'Masyarakat memiliki status gizi yang baik.Masyarakat memiliki pengetahuan terkait stunting dan isi piringku.Hasil tatalaksana ini dapat digunakan sebagai pertimbangan studi untuk rencana tatalaksana stunting di daerah', '', '', '', '362.png', '', ''),
(363, 'TASBE', 'Diterima', 2020, 1, NULL, NULL, 363, 'TASBE (BERANTAS TBC) Pencapaian target penderita TBC puskesmas dago masih belum tercapai yaitu 62 kasus untuk tahun 2019 sedangkan pencapaiannya yaitu di Desa Dago sebanyak 17 Orang, Desa Cikuda sebanyak 12 Orang, Desa Pingku sebanyak 14 Orang dan Desa Gorowong Sebanyak 11 Orang', '', 'Membantu masyarakat dalam mendapatkan pengobatan TBC dengan program DOTSMengantisipasi terjadinya kasus TBC resisten obat', '', '', '', 'default.png', '', ''),
(364, 'TAWAS IMUNISASI', 'Diterima', 2020, 1, NULL, NULL, 364, 'Imunisasi merupakan salah satu upaya pencegahan kematian pada bayi dengan memberikan vaksin. Dengan imunisasi, seseorang menjadi kebal terhadap penyakit khususnya penyakit infeksi. Dengan demikian, angka kejadian penyakit infeksi akan menurun, kecacatan serta kematian yang ditimbulkannya akan berkurang. Cakupan imunisasi masih ada yang belum tercapai. Peran serta ,masyarakat belum maksimal , masih ada orang tua yang tidak mau membawa anaknya untuk di imunisasi', '', 'Agar semua bayi yang ada di wilayah kerja Puskesmas mendapat Imunisasi Dasar2. Menjalin hubungan yang harmonis dengan lintas sektoral dalam pelayanan imunisasi di posyandu .3. Meningkatkan peran serta masyarakat, keluarga untuk perduli dan mau menjaga bayi datang ke posyandu untuk menimbang dan imunisasi.\n', '', '', '', '364.png', '', ''),
(365, 'TEBOS TB', 'Diterima', 2020, 1, NULL, NULL, 365, 'TEPOS TB (Tenjo Pos TBC), i Puskesmas Tenjo melaksanaan program P2P (pengendalian dan pemberantasan penyakit) untuk kasus TBC dan di wilayah kerja UPT Puskesmas Tenjo tapi masih belum maksimal, dan belum mencapai target. Cakupan, penemuan kasus P2TBC BTA masih belum mencapai target bisa disebabkan oleh beberapa faktor diantaranya adalah pemahaman dan pendidikan masyarakat tentang kebersihan lingkungan yang masih rendah, kurangnya pemanfaatan fasilitas kesehatan , Cakupan Penemuan Pasien TB BTA Positif juga masih dibawah target. Untuk itu diperlukan upaya perbaikan dan inovasi untuk mewujudkan eliminasi TBC nasional.', '', '#NAME?', '', '', '', '365.png', '', ''),
(366, 'UNINGA', 'Diterima', 2020, 1, NULL, NULL, 366, 'UNINGA (Usaha Meningkatkan Kesehatan Gigi dan Mulut Siswa Usia Dini)', '', 'Meningkatkan derajat Kesehatan gigi dan mulut yang optimal pada anak usia dini.', '', '', '', '366.png', '', ''),
(367, 'VIP', 'Diterima', 2020, 1, NULL, NULL, 367, 'VIP (VARIAN MO-ASI POSYANDU) Berdasarkan banyaknya kasus anak balita dengan status gizi (BB/TB atau PB) kurang atau sangat kurang dengan analisa karena pola makan yang tidak benar dan jenis makanan pendamping ASI atau MP-ASI yang tidak sesuai. Berdasarkan banyaknya orangtua yang mengeluhkan sulitnya anak makan serta rendahnya pengetahuan orangtua tentang tatacara pemberian makan pada anak balita baik dari jenis bahan makanan maupun cara memgolah makanan yang benar dan pola makan yang sesuai bagi anak balita. Berdasarkan data cakupan program Puskesmas pada tahun 2018, salah satu cakupan Program Gizi yaitu anak balita yang datang ke Posyandu berdasarkan jumlah sasaran yang ada hanya mencapai angka sebesar 65% dari target capaiannya 85%. Atas dasar beberapa hal tersebut, sehingga muncul inovasi cara menarik perhatian orangtua balita agar datang ke Posyandu dengan cara membuat variasi menu PMT (Pemberian Menu Tambahan)', '', 'Dapat menurunkan angka anak balita dengan status gizi kurang atau sangat kurang. Orangtua dapat mengetahui dan mempraktekan tentang tata cara pemberian MP-ASI yang sesuai. Dapat mengetahui pertumbuhan dan perkembangan anak balita yang berkunjung ke Posyandu setiap bulan. Dapat menjaring anak Balita dengan status gizi kurang dapat ditangani secara tepat', '', '', '', '367.png', '', ''),
(368, 'SAMPER ANTER', 'Diterima', 2020, 1, NULL, NULL, 368, 'SAMPER ANTER, Persalinan merupakan moment terpenting bagi ibu hamil dan keluarga dimana saat yang ditunggu-tunggu bahwa akan datangnya kelahiran bayi yang diharapkan dapat lahir selamat dan sehat, namun pada kenyataannya masih ada bayi yang terlahir dengan resiko bahkan kematian, begitupun pada ibu bersalin, dimana kehamilan merupakan hal yang alamiah namun tidak luput dari resiko baik pada saat hamil, bersalin dan nifas, dimana masih maraknya persalinan yang ditolong oleh paraji diwilayah-wilayah sulit dijangkau dan sulit masuknya  pemahaman pemahaman modern pada daerah tersebut yang menyebabkan  kuatnya tradisi-tradisi setempat.', '', 'mempermudah akses ibu hamil mendapatkan pertolongan  persalinan di fasilitas kesehatan', '', '', '', 'default.png', '', ''),
(369, 'KEBAL MSG', 'Diterima', 2020, 1, NULL, NULL, 369, 'KEBAL MSG (Kelompok Balita Makan Bersama  Sehat dan Bergizi), Pada tahun 2017 cakupan partisipasi masyarakat terhadap program gizi khususnya pada Posyandu Teratai 2 sebesar 80.62% dari target 85% yang berarti belum memenuhi target capaian. Jumlah rata-rata 2T berjumlah 6 orang dan jumlah anak terpantau BGM berjumlah 2 orang. Melihat pada capaian partisipasi masyarakat terhadap program gizi yang belum memenuhi target capaian, maka perlu sebuah intervensi melalui sebuah edukasi gizi yang berkesinambungan. Dari hasil analisis permasalahan pada ibu balita khususnya pada ibu balita yang menitipkan anaknya kepada pengasuh dikarenakan faktor ibu balita bekerja, faktor kebutuhan makanan yang diberikan oleh pengasuh menjadi permasalahan dikarenakan banyak pengasuh yang memberikan makanan yang praktis seperti mi instan dan makanan berpengawet lainnya pada balita. Hal itu menjadi perhatian tersendiri bagi program gizi guna mencegah hal tersebut secara terus menerus karena pemberian makanan berpengawet secara terus menerus pada balita akan menghambat tumbuh kembang pada balita. Berdasarkan analisis permasalahan di atas maka Puskesmas Gunungputri melalui program gizi membuat sebuah inovasi diberi nama ?KEBAL MSG? (Kelompok Balita Makan Bersama Sehat dan Bergizi?', '', 'Memberikan edukasi tentang makanan sehat dan bergizi pada balita 1. Meningkatkan status gizi pada balita 2. \nMeningkatkan partisipasi balita untuk datang ke Posyandu 3. Meningkatkan capaian program gizi Puskesmas', '', '', '', '369.png', '', ''),
(370, 'DARING TB', 'Diterima', 2020, 1, NULL, NULL, 370, '? DARING TB ?   (DAFTAR MENGGIRING TB) Berdasarkan Peraturan Bupati No. 70 Tahun 2017 tentang Rencana Aksi Daerah (RAD) Penanggulangan TBC di Kabupaten Bogor. Arah kebijakan tersebut bertujuan  mewujudkan Kabupaten Bogor Bebas TBC. Dengan menyelesaikan masalah dalam penanggulangan hambatan yang ada di Kabupaten Bogor terkait dengan kepatuhan minum obat penderita TB.\n Berdasarkan hasil analisa awal pendataan Pis-PK tahun 2019 , prioritas masalah yang ditetapkan  adalah penderita Tb paru tidak berobat teratur 85 orang dan 153 orang berobat teratur. . Kasus Penyakit Tuberkulosis di Puskesmas Cimandala menjadi masalah dan perlu segera diintervensi dan dibuat satu strategi khusus berupa inovasi  dalam mengatasi penyembuhan pasien Tb paru, menghindari munculnya MDR  dan menurunkan penyebaran penyakit TB paru di masyarakat . \nSelain itu pada tahun 2019 terjadi peningkatan angka MDR dan DO  penderita TBC,  oleh karena itu untuk menindaklanjuti permasalahan tersebut Puskesmas Cimandala berserta jajarang lintas program yang didukung Kementerian Kesehatan Rebuplik Indonesia membentuk suatu inovasi yaitu ?DARING TB? dimana kegiatan inovasi ini membuat sebuah aplikasi yang bisa memantau kegiatan penderita TBC saat minum obat, agar terpantau nya penderita dalam kepatuhan minum obat secara online.\n', '', 'a. Adanya dukungan dari semua pihak peduli TBC dalam menanggulangi masalah TBC di wilayah binaan Puskesmas Cimandala.\nb. Terbentuknya tim kemitraan penanggulangan masalah TBC dengan memberdayakan berbagai tatanan \nc. Meningkatnya cakupan  kesembuhan pasien TBC.\n', '', '', '', '370.png', '', ''),
(371, 'USAHA OLAHAN KRIPIK IKAN PAKANG (DECAPTERUS SP.)', 'Diterima', 2020, 2, NULL, NULL, 371, 'Olahan kripik dari ikan pakang, dimana ikan pakang ini yang semula hanya digunakan sebagai ikan asin menjadi olahan snack kripik yang sehat dan memiliki kandungan gizi yang tinggi. Sehingga secara simultan dapat memperbaiki nilai ekonomi komodite ikan pakang yang selanjutnya dapat memperbaiki income nelayan.', '', 'Dengan keberhasilan inovasi ini akan memberikan manfaat baik secara langsung maupun tidak langsung adalah :\n 1. Akan dihasilkan olahan berbentuk snack kripik yang memiliki kandungan gizi yang tinggi dan  harga yang terjangkau sehingga bisa membantu semua lapisan masyarakat memenuhi kebutuhan gizinya terumata protein, kalsium, fosfor.\n 2. Olahan yang dihasilkan akan memberikan nilai tambah produk yang secara langsung akan memperbaiki nilaitukar nelayan sehingga memperbaiki taraf hidup nelayan.\n 3. Aktifitas inovasi ini akan melahirkan star up yang secara langsung akan membuka lapangan pekerjaan baru bagi penduduk sekitar star up.', '', '', '', '371.png', '', ''),
(372, 'SCALE-UP45 BOARDGAME (?Papan Permainan UMKM Naik Kelas?)', 'Diterima', 2020, 5, NULL, NULL, 35, 'Scale-Up45 Boardgame  adalah pelaku usaha mengetahui proses bisnis yang dijalani melalui pencatatan yang rapi, mengetahui keberadaan bisnisnya di tengah ekosistem bisnis yang menjadi factor pendukung keberhasilan bisnis dan bagaimana meningkatkan performa bisnisnya melalui peningkatkan omzet dan profit yang tinggi.', '', 'Manfaat dari inovasi ini adalah menjadi media alternatif dalam melakukan penyebaran informasi, edukasi, komunikasi dan peningkatan kualitas UMKM supaya bisa naik kelas.', '', '', '', '372.png', '', ''),
(373, 'PEMBUATAN POT BUNGA DARI LIMBAH POPOK SEKALI PAKAI (DIAPERS)', 'Diterima', 2020, 4, NULL, NULL, 373, 'Kebutuhan pemakaian diapers (popok sekali pakai) pada usia balita telah\nmenjadi kebutuhan pokok para ibu-ibu sejak hampir 16 thn terakhir. Tentu saja dapat\nkita bayangkan berapa dan betapa banyaknya limbah popok sekali pakai yang di\nhasilkan dari limbah tersebut, dari limbah ini dan info dari rekan bahwa diapers dapat didaur ulang menjadi sebuah karya\nyaitu bisa di jadikan pot tanaman,lalu kami menggali informasi selanjutnya\nuntuk mengetahui bagaimana proses pembuatan nya lalu kita mencoba\nmengembangkan nya lagi sehingga menjadi produk yang beda dengan yang lain\ndan lebih menarik sehingga menjadi produk yang memiliki daya jual ( komersil).', '', '1. Pengumpulan cangkang popok sekali /diapers mendapatkan keuntungan\neknomis karena cangkang diapers nya kami beli seharga 5 ribu rupiah/10\npcs.\n2. Kami yang membuat pot mendapatkan keuntungan dari hasil penjualan pot\ntersebut.', '', '', '', '373.png', '', ''),
(374, 'INDUSTRI TEPUNG PANGAN LOKAL ANGKAT PEREKONOMIAN MASYARAKAT SUKARAJA', 'Diterima', 2020, 4, NULL, NULL, 374, 'Industri tepung pangan lokal sudah banyak dikembangkan di Indonesia.\nNamun konsep pemberdayaan masyarakat dan komponen desa dalam pengelolaan\nindustri belum dilaksanakan di tempat lain atau oleh industri sejenis lainnya.\nPembangunan dan pengembangan industri      tepung pangan lokal Sraja Maju tidak\nhanya profit oriented melainkan juga social oriented yang dapat memberikan\ndampak positif yang lebih luas. Selain itu Sraja Maju adalah industry tepung untuk\nsemua pangan lokal yang berpotensi diolah mnejadi tepung. Jadi tidak hanya\nindustry tepung mocaf.', '', 'ilkan jelas memberikan manfaat ekonomi. Bagi petani bahan pangan lokal\nakan membantu meningkatkan pendapatannya. Harga singkong mentah yang\nhanya Rp. 1.000 ? 1.500 per kg, menjadi Rp. 5.000 ? 7.000 per kg jika dijual dalam\nbentuk gaplek. Bagi masyarakat akan tersedia lapangan pekerjaan. Bagi desa\nkehadiran industry ini akan menggerakan semua komponen desa yang berujung\npada peningkatan pendapatan. Sedangkan bagi pemerintah jelas akan memberikan\npemasukan dari sisi pajak.', '', '', '', '374.png', '', ''),
(375, 'Pengentasan Pengangguran Dengan Mengelolah Sampah di lingkungan Masyar', 'Diterima', 2020, 4, NULL, NULL, 375, 'Yayasan Rumah Bata indonesia membuat Kampung Ramah Lingkungan untuk mewujudkan lingkungan yang bersih dengan tujuan agar sampah organink masyarakat lingkungan RW dapat di jadikan pupuk agar sampah tersebut terurai kembali, dengan gerakan Sedekah Sampah Yayasan RBI, dengan tujuan agar Rukun\ntetangga selalu kompak dan mendapatkan hasil nominal uang untuk santunan anak\nyatim dan dhuafa, dalam hal ini kegiatan sosial seperti Pendidikan Anak Usia Dini dan\nJumat Munajat santunan doa bersama anak yatim setiap jumat.', '', 'Manfaat dari ?Gerakan Sedekah Sampah ?\nSedekah merupakan salah satu amalan yang terpuji dalam agama Islam. sedekah lebih mencakup segala macam bantuan dari seseorang kepada orang lainnya dengan harapan mencari pahala dari Allah SWT. sedangkan sampah adalah penyebab lingkungan tidak bersih, sehingga sedekah sampah mempunyai konotasi bahwa bersedekah itu tidak harus dengan uang, dengan sampah pun kita bisa bersedekah, konotasi bahasa ini dapat memberi himbauan bahwa sampah jangan di buang sembarangan melainkan di jadikan ladang investasi akherat, dengan memberi Sedekah Sampah kepada Asosiasi Pengepul Sedekah Sampah, sampah tersebut akan dijadikan nilai ekonomi untuk memenuhi kebutuhan hidup para pengepul sedekah sampah itu senddiri.\n? Gerakan sedekah Sampah Seciteureup? merupakan gerakan yang di ciptakan oleh Yayasan Rumah Bata Indonesia yang di dukung penuh oleh Camat Citeureup bapak Ridwan Said,S.STP,M.SI beserta Kepala desa untuk memberikan informasi kepada masyarakat bahwa ?sampah jangan dibuang sembarangan melainkan di sedekahkan? kepada para Pengepul Sedekah Sampah disebut ( P2S ) agar sampah tersebut menjadi nilai ekonomi, sosial dan lingkungan bersih.', '', '', '', '375.png', '', ''),
(376, 'PEGGUNAAN DIAPERS/PAMPERS BEKA SEBAGAI MEDIA PENYIMPAN AIR UNTUK TANAM', 'Diterima', 2020, 4, NULL, NULL, 376, 'Inovasi media tanaman dari diapres/pampers yang dijasikan sebagai media penyimpanan air untuk tanaman dan media budidaya caing tanah', '', 'Selain sebagai media penyimpanan air bagi tanaman, kandungan air pada jelly diapres/pempers tersebut sangat bermanfaat sebagai pengatur kelembahan media ternak cacing tanah, dan nilai jual cacing tanah yang lumayan tinggi jika dijual ke pengepul atau tengkulak kisaran 25-35 ribu rupiah/kg', '', '', '', '376.png', '', ''),
(377, 'DIVERSIFIKASI PANGAN LOKAL CEMILAN TRADISIONAL (WAJIT TALAS)', 'Diterima', 2020, 2, NULL, NULL, 377, 'Wajit adalah salah satu makanan khas Jawa Barat atau suku Sunda yang\nmempunyai ciri khas tersendiri yaitu mempunyai cita rasa manis yang dominan,\nteksture kelapa dan beras ketan yang begitu terasa. Banyak orang yang dapat\nmembuat wajit itu dengan berbagai macam kreasi seperti wajit nanas, wajit\nsirsak, wajit kacang ijo, dll, saat ini tengah mengembangkan diversifikasi pangan lokal\nterhadap cemilan tradisional menjadi lebih modern. Salah satunya yaitu\nmengkombinasi wajit dengan pangan lokal khas Kabupaten Bogor yaitu Talas.\nDengan inovasi tersebut maka terciptalah olahan pangan lokal yang diberi nama\nWAJIT TALAS. Produk ini mempunyai cita rasa yang begitu lembut dan tidak\nterlalu manis seperti wajit asli nya.', '', 'Manfaat Olahan Pangan Lokal ini adalah :\n1. Meningkatnya pendapatan petani talas dan petani pangan lokal lainnya\n2. Wajit Talas bisa dikonsumsi berbagai kalangan karna lebih sehat\n3. Menjadi salah satu icon kabupaten bogor selain lapis talas\n4. Masyarakat hidup sehat dengan kembali ke pangan lokal\n5. Pemerintah terbantu dalam penyediaan lapangan kerja', '', '', '', '377.png', '', ''),
(378, 'OLAHAN NANGKA MUDA (DENDENG NAGKA MUDA)', 'Diterima', 2020, 2, NULL, NULL, 378, 'Dendeng adalah salah satu produk olahan daging dan termasuk dalam produk\nIMF (Intermediate Moisture Food). Produk IMF memili ki kisaran aw sebesar 0,6\n0,9 dan kadar air sebesar 10% 40% (BarbosaC?novas dkk., 2007), maka dari itu\ndendeng memiliki umur simpan yang panjang. Menurut Kusantati dkk. (2008). inovasi yang dibuat adalah dendeng dari nangka muda . Produk inovasi ini dibuat\nkhususnya untuk masyarakat menengah kebawah yang tidak dapat membeli daging,\nakan tetapi dari segi rasa, tekstur serta nilai gizi yang sama seperti daging sapi dan\njuga tetap memiliki banyak kandungan vitamin yang kaya akan manf aat bagi tubuh.\nSelain itu juga dapat meningkatkan nilai jual usaha kepada pasar di wilayah\nkabupaten bogor dan sekitarnya.', '', 'Nangka muda diketahui memil\niki kandungan mineral yang cukup baik bagi\ntubuh. Kandungan mineral tersebut di antaranya, yaitu kalsium dan fosfor.\nKandungan gizi lainnya dari nangka muda yaitu karbohidrat dan vitamin\nC. Dendeng nangka muda dapat memiliki cita rasa seperti rasa dendeng sapi .\nProses pembuatan dendeng nangka muda tidak sulit.Nangka muda yang baik untuk', '', '', '', '378.png', '', ''),
(379, 'SIMEUT GARUS', 'Diterima', 2020, 1, NULL, NULL, 379, 'Simeut Garus merupakan akronim dari sistem mencuci tangan pencegah vrus, Simeut Garus kepanjangannya Sistem MencUci Tangan untuk penceGah Virus, inovasi ini dirancang sebuah alat wastafel pintar terpadu yang memiliki 4 fungsi (4 in 1 smart wastafel) dengan menggunakan teknologi elektronik digitas secara otomatis yang dipadukan dengan Bahasa coding arduino', '', 'Maanfaat dari inovasi adalah menumbuhkan budaya hidup bersih/mencuci tangan dilingkungan sekolah, dapat menjadi alat peraga pembelajaran prakarya', '', '', '', '379.png', '', ''),
(380, 'IMMAGO DETOX HONEY', 'Diterima', 2020, 1, NULL, NULL, 380, 'Madu hutan dan herbal merupakan salah satu superfood yang menjadi perhatian\nmasyarakat saat ini. Daya beli masyarakat terhadap madu saat ini meningkat tajam\nbaiki untuk dikonsumsi Pribadi maupun untuk berbagi bersama rekan kerja atau\nkeluarga. Bearngkat dari kondisi ini lah kami menciptakan inovasi produk terbaru dari\nperusahaan kami untuk memenuhui permintaan pasar. Dan untuk memenuhi\npermintaan pasar ini, kami memerlukan peralatan dan mesin pendukung\nuntukmengoptimalkan produksi.', '', 'Manfaat dari inovasi produk yang kami ciptakan selain memberikan nilai gizi juga\nmemenuhi kebutuhan masyarakat dalam mendukung gerakan hidup sehat dengan\nmengkonsumsi minuman sehat berbagan dasar alam yang dikemas dengan praktis\ndan menarik.', '', '', '', '380.png', '', ''),
(381, 'KECAP IKAN VEGETARIAN', 'Diterima', 2020, 2, NULL, NULL, 381, 'Inovasi ini merupakan hasil karya sendiri ,  kecap ikan vegetarian hadir sebagai inovasi yang memberi solusi bagi pelaku vegetarian tidak boleh mengkonsumsi hewan', '', 'Hasil inovasi diharapkan dapat memberikan gambaran bagi pelaku UMKM untuk membuat\nproduk dengan kaidah Vegetarian pada produknya.', '', '', '', '381.png', '', ''),
(382, 'ALAT PERAGA LUBANG RESAPAN BIOPORI', 'Diterima', 2020, 5, NULL, NULL, 382, '', '', '', '', '', '', '382.png', '', ''),
(383, 'POLUBI SNACK', 'Diterima', 2020, 2, NULL, NULL, 383, 'Polubi Snack dikembangkan dan dibuat dengan konsep pemberdayaan dan kepedulian terhadap kampung halaman sendiri untuk tidak menjadi penonton investor luar dan bergantung pada lahan garapan.\nDengan memajukan UMKM, masyarakat bisa lebih mandiri dan bisa menjual\nmata pencaharian pokok', '', 'Polubi Snack hadir dengan sistem usaha yang inovatif dengan fokus pada\nsumber daya lokal dengan baik sumber daya alam maupun tenaga kerja. Sistem\nusaha ini tidak hanya fokus pada aspek ekonomi namun juga memperhatikan aspek\nsosial dan lingkungan. Membentuk sebuah sistem perusahaan yang dengan sejak\nawal melakukan sebuah uji produksi yang melibatkan berbagai sektor yang terkait\ndalam kegiatan. Keterkaitan dari berbagai sektor ini ternyata cukup efektif dalam hal\nmenyerap tenaga kerja dan melibatkan berbagai sektor sesuai dengan fungsinya\nmasing-masing.', '', '', '', '383.png', '', ''),
(384, 'MINI BIOKONVERSI', 'Diterima', 2020, 6, NULL, NULL, 384, 'MINI BIOKONVERSI dengan teknologi biokomposter dibuat untuk tujuan mempermudah proses\npengolahan sampah rumah tangga dengan cepat, karena proses pengolahan sampah dapat\ndilakukan oleh siapa saja anggota keluarga yang ada di rumah sehingga dapat mendidik sejak dini\nanggota keluarga lain untuk menjaga kelestarian lingkungan', '', '1. Membangun kesadaran warga melalui kemudahan memilah dan mengolah sampah rumah\ntangga langsung dari rumah\n2. Menghasilkan pupuk organik yang kaya akan unsur hara dengan proses dekomposisi yang\nsangat cepat\n3. Larva Lalat tentara hitam yang digunakan untuk memproses penguraian sampah memiliki\nkandungan protein yang tinggi, sehingga dapat dijadikan untuk pakan ternak\n4. Sampah yang dihasilkan dapat langsung dimanfaatkan sehingga daur ulang tercipta dan zero\nwaste bukan lagi wacana', '', '', '', '384.png', '', ''),
(385, 'CREATIVE LOCAL BOGOR KAHIJI (CLBK)', 'Diterima', 2020, 3, NULL, NULL, 385, '?Creative Local Bogor Kahiji? atau CLBK adalah suatu platform atau komunitas dengan fugsi sebagai wadah belajar dan bersinergi, inovasi ini akan diimplementasikan kepada masyarakat di Kabupaten Bogor khususnya bagi para pemuda pemudi yang memiliki minat untuk berwirausaha atau berkeinginan untuk membuat dampak positif terhadap sosial sehingga daerah kita menjadi daerah yang berdaya', '', '1. Untuk mengharumkan nama pemuda daerah di tingkat nasional.\n2. Untuk mengurangi tingkat pengangguran di daerah.\n3. Untuk menjadikan kabupaten Bogor sebagai kawasan kreatif.', '', '', '', '385.png', '', ''),
(386, 'NASI GORENG BUMBU CUKO', 'Diterima', 2020, 2, NULL, NULL, 386, 'Inovasi ini berawal dari bumbu cuko pempek sebagai tambahan bumbu pada nasi goreng dan rasanya sangat enak', '', '', '', '', '', '386.png', '', ''),
(387, 'APLIKASI ANDROID WISATA NANGGUNG', 'Diterima', 2020, 5, NULL, NULL, 387, 'Aplikasi android sebaran lokasi wisata di Wilayah Nanggung dengan menerapkan Metode Location Based Services (LBS) dan Algoritma SLOC. Metode LBS digunakan untuk menentukan lokasi pengguna aplikasi dengan memanfaatkan teknologi GPS pada smartphone, sedangkan Algoritma SLOC digunakan untuk mengukur jarak suatu lokasi wisata terhadap lokasi pengguna aplikasi berada. Eosina dan Ikhsan (2015) telah melakukan penelitian dengan pemanfaatan teknologi GPS pada smartphone android untuk memonitor kerusakan jalan di Kota Bogor berdasarkan laporan dari masyarakat dengan teknik LBS Geotagging [3]. Output dari penelitian ini juga dihasilkan sebuah aplikasi android yang dapat digunakan masyarakat (pengguna aplikasi) untuk melihat sebaran lokasi wisata di Kecamatan Nanggung Kabupaten Bogor, melihat perkiraan jarak lokasi wisata dari posisi pengguna, serta menemukan rute menuju ke lokasi wisata yang dipilih', '', 'Aplikasi ini dapat membantu untuk melihat sebaran lokasi wisata yang berada di wilayah Kecamatan Nanggug beserta jarak dari lokasi pengguna, serta menentukan rute menuju lokasi wisata yang ingin dituju', '', '', '', '387.png', '', ''),
(388, 'SMARTGORDEN', 'Diterima', 2020, 5, NULL, NULL, 388, '', '', '', '', '', '', 'default.png', '', ''),
(389, 'PEMANFAATAN LIMBAH BUAH LEMON MENJADI PRODUK YANG MEMILIKI NILAI TAMBA', 'Diterima', 2020, 4, NULL, NULL, 389, '', '', '', '', '', '', 'default.png', '', ''),
(390, 'PENERAPAN DEEP LEARNING UNTUK KLASIFIKASI DAN DETEKSI OBJEK MELALUI KA', 'Diterima', 2020, 5, NULL, NULL, 390, '', '', '', '', '', '', 'default.png', '', ''),
(391, 'ROKA (ROBOT KROPAK OTOMATIS)', 'Diterima', 2020, 5, NULL, NULL, 391, 'Salah satu upaya untuk mengantisipasi dan mencegah adanya penularan covid-19 melalui kotak amal masjid adalah dengan tidak menyentuh secara langsung ketika menjalankan kotak amal tersebut. Kita dapat membuat kotak amal yang dapat berjalan sendiri ditengah shaf jama?ah. Pembuatannya membutuhkan beberapa perangkat elektronik seperti mikrocontroller, driver L298N, motor DC, dan sensor infrared yang dibangun dalam sebuah sistem agar dapat bekerja sesuai dengan tujuannya', '', 'membantu DKM masjid di dalam pengambilan shodaqoh pada kegiatan sholat jum?at, serta menjalankan protokol kesehatan dimana jama?ah tidak menyentuh kropak amal tersebut', '', '', '', '391.png', '', ''),
(392, 'GARAM RUMPUT LAUT RENDAH NATRIUM DENGAN KANDUNGAN ANTIOKSIDAN BAGI PEN', 'Diterima', 2020, 1, NULL, NULL, 392, '', '', '', '', '', '', 'default.png', '', ''),
(393, 'E-CULTURE SEBAGAI SISTEM PELAYANAN PARIWISATA BUDAYA', 'Diterima', 2020, 5, NULL, NULL, 393, 'e-Culture adalah suatu aplikasi sistem informasi bagi para wisatawan lokal maupun mancanegara dengan berbagai bahasa untuk memudahkan wisatawan mengetahui tempat wisata dan budaya khususnya yang berada di Pulau Jawa. Dengan adanya aplikasi ini akan menambah daya tarik bagi para wisatawan karena selain dengan melihat langsung penampakan budaya yang indah pengunjung dapat mendengarkan langsung deskripsi asal usul, kejadian, dan sejarah dari suatu tempat. Pada tempat-tempat wisata budaya e-Culture akan menampilkan berbagai deskripsi informasi mengenai apa yang sedang dilihat oleh penggunanya.', '', 'Dengan adanya alat ini semoga indonesia bisa lebih solid dalam interaksi dan menghargai kebudayaan masing-masing yang berujung pada ketentraman.', '', '', '', '393.png', '', ''),
(394, 'APLIKASI SPORTS BOOKING UNTUK PEMESANAN LAPANGAN OLAH RAGA', 'Diterima', 2020, 5, NULL, NULL, 394, 'sistem yang diusulkan adalah Aplikasi Pemesanan Lapangan Olahraga secara online yang kami beri nama Sports Booking yang di implementasikan berbasis moblie', '', 'Membantu pihak penyedia jasa sewa lapangan olahraga dalam hal pelayanan bisnis dan sekaligus mempromosikannya, Memudahkan masyarakat dalam memperoleh informasi terkait sewa lapangan olahraga di wilayah bogor dan melakukan pemesanan lapangan secara online', '', '', '', '394.png', '', ''),
(395, 'E-TRACKING SEBAGAI SISTEM PEMANDU WISATA BERBASIS ANDROID DI KABUPATEN', 'Diterima', 2020, 5, NULL, NULL, 395, 'Aplikasi e-Tracking dapat membantu masyarakat dalam mengenal beragam kebudayaan dan tempat wisata khususnya di kabupaten Bogor. Dengan adanya aplikasi berbasis mobile yang dapat di unduh melalui play store dalam bentuk pengarahan yang akan meningkatkan pengetahuan masyarakat dalam mengenali budaya yang ada di kabupaten Bogor dengan menyajikan serta memandu para wisatawan', '', 'Dalam sistem ini menambah wawasan dan memudahkan bagi wisatawan asing maupun lokal di suatu lokasi tertentu, meningkatkan pemahaman perkembangan pariwisata dan menghidupkan kembali pelestarian unsur kebudayaan yang sudah hampir terlupakan. Dan membangun sistem ini menambah daya tarik wisatawan dari sesuatu yang memiliki keunikan, keindahan, dan nilai yang berupa kearagaman kekayaan alam, dan hasil buatan manusia yang menjadi sasaran atau tujuan kunjungan wiasatawan.', '', '', '', '395.png', '', ''),
(396, 'PEMANFAATAN SINGKONG MENJADI PRODUK OLAHAN PEMPEK SINGKONG DI DESA CIB', 'Diterima', 2020, 2, NULL, NULL, 396, 'Ide mengolah singkong menjadi empek-empek berawal dari ditemukannya perkebunan singkong dalam areal yang luas di lokasi KKN tepatnya di Desa Cibalung, Kecamatan Cijeruk. Untuk meningkatkan nilai tambah dari produk olahan tersebut, maka saya berinisiatif untuk mengolahnya menjadi produk yang bernilai cita rasa tinggi namun dengan biaya produksi yang terjangkau serta mudah diaplikasi oleh masyarakat setempat. Mengingat singkong memiliki kandungan gizi cukup lengkap, namun kadar proteinnya rendah, maka tercetus ide mengolah pangan berbahan baku singkong tetapi tetap memiliki unsur protein yang juga terpenuhi. Oleh karena itu, saya memilih produk olahan empek empek singkong dimana unsur proteinnya dapat terpenuhi dari penggunaan ikan selar dalam komposisi bahan.\nKeuntungan penggunaan singkong selain bahan yang mudah didapat karena tersebar di areal kebun milik masyarakat, penambahan singkong dapat mengurangi penggunaan tepung tapioka/kanji. Keuntungan penggunaan singkong juga menghasilkan pempek dengan tekstur padat dan cita rasa yang lembut, tidak terlalu kenyal seperti pempek yang menggunakan tepung tapioka/kanji. Pemilihan kualitas singkong sangat mempengaruhi pempek yang dihasilkan. Namun hal yang tetap harus diperhatikan bahwa Empek-Empek dengan kualitas singkong yang baik akan tetap terasa lembut walaupun pempek dalam keadaan dingin, sedangkan kualitas singkong yang kurang baik akan menyebabkan pempek menjadi keras apabila sudah dingin.', '', 'Dengan pengolahan bahan baku singkong menjadi empek-empek singkong telah mampu meningkat nilai jual produk sehingga dapat meningkatkan pendapatan masyarakat melalui kegiatan berwirausaha dengan memanfaatkan bahan baku yang mudah didapat. Berdasarkan hasil implementasi di lapangan, dengan modal Rp. 143.500,- dan omzet Rp.200.000,- diperoleh laba sekitar Rp 56.500,-. Berikut tabel rekapan rincian biaya dan penjualan produk olahan empek-empek singkong.', '', '', '', '396.png', '', ''),
(397, 'APLIKASI E-MATE', 'Diterima', 2020, 5, NULL, NULL, 397, 'Berdasarkan pengamatan penulis terhadap Aplikasi E-Mate Untuk Mencari Pasangan Berdasarkan Syariat Islam maka ide untuk membuat sistem ini dengan membuat aplikasi yang menyajikan informasi materi kajian Ta?aruf, penilaian, pencarian pasangan yang didampingi oleh wali orangtua dan perantara. Aplikasi yang akan dibuat akan bekerja sama dengan para ustadz yang sudah berpengalaman dan calon wali pasangan, sebagai contoh ketika pengguna aplikasi ingin mengetahui kriteria calon pasangan, maka Aplikasi E-Mate Untuk Mencari Pasangan Berdasarkan Syariat Islam akan memudahkan untuk memilih kriteria calon pasangan yang sudah terdaftar di wilayah kabupaten Bogor. Lalu pengguna juga dapat melihat biodata calon pasangan sesuai pilihan dan semua data pribadi ditangani dibawah syarat dan ketentuan kebijakan privasi dari aplikasi ini. Jadi, ketika pengguna mengakses aplikasi ini dapat mencari lokasi yang ada di wilayah Kabupaten Bogor. Informasi-informasi yang disajikan pada aplikasi ini akan berubah-ubah setiap waktunya oleh administrator dari tiap pengguna yang terkait. Contoh pengguna mencari calon pasangannya dengan cara menggeser layer Android.', '', 'Dengan dikembangkannya Aplikasi E-Mate Untuk Mencari Pasangan Berdasarkan Syariat Islam ini, adapun manfaat ekonomi yang dirasakan yaitu dengan aplikasi ini, bisa mengurangi mobilitas pada pasangan yg sedang mencari pasangan yang dimana harusnya mereka harus mengeluarkan dana untuk pergi kesana-kesini demi mencari pasangan hidup.', '', '', '', '397.png', '', ''),
(398, 'Blue Pea Vine TRANSHERBS (Transparant And Solid Herbs Soap) ?Pemanfaat', 'Diterima', 2020, 1, NULL, NULL, 398, 'Blue Pea Vine TRANSHERBS (Transparant And Solid Herbs Soap) terbuat dari bunga telang, serai, minyak VCO dan minyak zaitun, Produk sabun ini memiliki tekstur sabun yang padat dan lembut, aroma khas herbal dan berwarna untuk sabun transparan. Sabun ini dibuat tanpa penggunaan bahan kimia berbahaya. Produk sabun pada usulan inovasi produk kami ini, dikemas dalam plastic kemudian dikemas dengan kardus dan diberi stiker/label yang sesuai dengan karakteristik produk.', '', 'Manfaat adanya pengembangan usaha sabun antiseptik herbal ini adalah berpengaruh sedikit banyaknya pada perbaikan ekonomi negara, dengan adanya pemanfaatan bahan alami seperti bunga telang, serai, minyak zaitun dan VCO menyebabkan para petani atau tukang kebun untuk menyediakan bahan yang akan diproduksi. Dengan begitu, adanya sabun herbal dari bahan-bahan alam tersebut mampu menurunkan angka pengangguran atau membuka lapangan kerja baru', '', '', '', '398.png', '', ''),
(399, 'Medicines from Baluntas Leaves (MEFROBALE)', 'Diterima', 2020, 1, NULL, NULL, 399, 'Medicines from Baluntas Leaves (MEFROBALE) dari daun baluntas dan dau ini sering digunakan sebagai lalapan makanan di daerah pelosok desa, saya ingin mencoba menjadikan daun baluntas sebagai obat seriawan. Selain menjadi obat sariawan daun beluntas ini sering di gunakan masyarakat di pedesaan sebagai obat luluntur (obat untuk orang yang sudah melahirkan)  dan obat untuk menyembuhkan iritasi ringan dan ini sudah dikemas dalam bentuk kapsul', '', 'Manfaatnya dikalangan masyarakat dan dunia kesehatan,dengan menggunakan daun baluntas sebagai obat sariawan dapat mengurangi dampak buruk pencemaran lingkungan dari limbah kimia.', '', '', '', '399.png', '', ''),
(400, 'Tinta Organik Pekat Memikat', 'Diterima', 2020, 4, NULL, NULL, 400, 'Tinta Organik ini asalnya dari Buah harendong atau senggani memiliki nama latin melastoma affine dan pucuk merah, Buah harendong dan buah pucuk merah banyak terdapat di daerah kami yaitu di daerah Kecamatan Nanggung maka dari itu kami memanfaatkan kekayaan alam dari daerah kami agar masyarakat tahu bahwa buah harendong ternyata banyak sekali manfaatnya. Karena warnanya yang pekat dan cukup sukar dihilangkan membuat orang zaman dahulu berinisiatif menggunakannya sebagai pewarna alami untuk pakaian. Kami berinisiatif untuk membuat sebuah inovasi yaitu tinta dari ekstrak buah harendong dan buah pucuk merah. Hal yang utama adalah agar warga masyarak dapat memanfaatkan sumber daya alamnya .', '', 'Hasil dari pembuatan tinta tersebut dapat diperjual belikan kembali oleh masyarakat, karena bahan yang digunakan mudah didapatkan tentunya harga\nyang ditawarkan akan lebih terjangkau dan penjual dapat mengatur kembali untuk keuntungan yang ingin didapatkan, atau dengan menggunakan produk ini masyarakat ikut berpartisipasi dalam mengurangi limbah', '', '', '', '400.png', '', ''),
(401, 'KASET (KREATIVITAS DAN STRATEGIS ) UMKM APLIKASI SEDERHANA DALAM MEMBA', 'Diterima', 2020, 5, NULL, NULL, 401, 'Aplikasi KASET UMKM adalah untuk membantu pelaku usaha dalam menemukan strategi tepat dan mendapat wawasan serta dapat memberikan informasi terkait perizinan. Analisis data yang telah peneliti lakukan akan dimasukkan pada aplikasi KASET UMKM sehingga pelaku usaha dapat mengetahui terhadap dampak sosial akibat pandemi COVID-19 dan penerapan PSBB khususnya Kab. Bogor. Aplikasi KASET UMKM berukuran 17 Mega Byte (versi 1.0.30) dan akan terus bertambah atau berkurang seiring berkembangnya aplikasi, Peneliti bertujuan ingin mempublikasikannya ke dalam aplikasi unduh atau biasa dikenal play store pada perangkat android dengan tujuan agar semua masyarakat dapat mengaksesnya, tetapi untuk saat ini belum ada rencana untuk mempublikasikannya karena menurut peneliti butuh waktu dan beberapa bagian yang masih harus dipertimbangkan dan membuka bagi masyarakat untuk dapat memberikan kritik, saran dan penilaian terhadap aplikasi KASET UMKM.', '', 'Dengan adanya aplikasi pendukung yang dikembangkan oleh peneliti, para UMKM terbantu dalam beberapa hal sebagai berikut:\nA. Lebih mengenal sasaran pasar.\nB. Muncul inovasi dan strategi baru bagi para UMKM.\nC. Promosi yang lebih kreatif dan inovatif.\nD. Tercapainya strategi yang tepat bagi para UMKM bidang tertentu.', '', '', '', '401.png', '', ''),
(402, 'SOLEJAM (SOURSOP LEAVES JAM)', 'Diterima', 2020, 1, NULL, NULL, 402, 'Solejam (Soursop Leaves Jam) yaitu inovasi yang terbuat dari Daun Sirsak yang dijadikan Selai, karena Daun sirsak dimanfaatkan sebagai obat ambeien, hipertensi , dan sakit pinggang. Kandungan senyawa Asetogenin pada daun sirsak mampu membunuh sel kanker. Kandungan lain yang terdapat pada daun sirsak yaitu flavonoid, flavonoid memiliki senyawa fenol yang bersifat fungistatik atau anti jamur', '', 'Menurunkan tekanan darah, Mencegah Kanker dan Kesehatan paru-paru', '', '', '', '402.png', '', ''),
(403, 'LEAFCOS CAKE (BOLU DAUN KENIKIR)', 'Diterima', 2020, 2, NULL, NULL, 403, 'Kenikir memiliki nama ilmiah Cosmos caudatus Kunth (https://ccrc.farmasi.ugm.ac.id/?page_id=101). Kenikir merupakan tanaman obat yang daunnya sering dikonsumsi sebagai sayuran. Daun kenikir mengandung senyawa aktif flavonoid, polifenol, saponin, tanin, alkaloid dan minyak atsiri. (LenteraBio: Berkala Ilmiah Biologi 3 (1), 2014). Tanaman kenikir asli dari Amerika Latin, dan Hindia Barat, meskipun dinaturalisasi di bagian tropis Asia, Afrika, dan Australia (https://id.m.wikipedia.org/wiki/Kenikir). inovasi bolu dari daun kenikir. Alasannya, karena melihat banyaknya tanaman kenikir yang hanya dijadikan sebagai tanaman hias di pekarangan rumah. Padahal di masa pandemi ini hampir semua orang menjadi seorang wirausaha.', '', 'Bolu daun kenikir tidak hanya memiliki rasa yang lezat, namun memiliki banyak manfaat bagi kesehatan tubuh manusia. Dapat dikonsumsi oleh semua kalangan masyarakat. Beberapa manfaat bolu daun kenikir diantaranya : 1) Menambah Nafsu Makan. 2) Mengatasi Bau Mulut. 3) Meningkatkan Sistem Kekebalan Tubuh. 4) Menjaga Kekuatan Tulang dan Otot. 5) Mengobati Sakit Maag dan Gangguan Lambung. 6) Membersihkan Racun dalam Tubuh. 7) Menjaga Kesehatan Jantung. 8) Melawan pertumbuhan sel kanker. 9) Mengobati Diabetes (https://www.indozoneid.cdn.ampproject.org/v/s/www.indozone.id/amp/mnsEQE/manfaat-daun-kenikir-untuk-kesehatan-tubuh).', '', '', '', '403.png', '', '');
INSERT INTO `inovasi` (`id_inovasi`, `nama_inovasi`, `status_inovasi`, `tahun_pembuatan_inovasi`, `id_bidang_inovasi`, `id_bidang_inovasi_2`, `id_bidang_inovasi_3`, `id_inovator`, `deskripsi`, `penjaringan_ide`, `manfaat_inovasi`, `dampak_inovasi`, `proposal_inovasi`, `dokumentasi_inovasi`, `foto_inovasi`, `link_medsos`, `video_link_youtube`) VALUES
(404, 'HONDY (HONJE CANDY)', 'Diterima', 2020, 2, NULL, NULL, 404, 'Bunga honje atau kecombrang (Etlingera elatior) menjadi daya tarik tersendiri bagi kami untuk melakukan invosi salah satunya adalah kurangnya pemanfaatan kecombrang bagi komersial yang menarik bagi segala kalangan. Seperti yang kami kutip, Berdasarkan eksplorasi diketahui keberadaan tanaman honje di Bogor saat ini masih ditanam di pekarangan rumah tanpa ada pemeliharaan khusus. Masyarakat Bogor saat ini memanfaatkan semua variasi honje untuk kegunaan yang sama, yaitu sebagai bahan masakan, bahan wewangian, bahan obat-obatan tradisional, racun menangkap kepiting. Dari banyaknya sumber daya berupa bunga honje di Kabupaten Bogor dan kurangnya pemanfaatan yang bernilai jual tinggi dimasyarakat menjadi latar belakang kami membuat inovasi berbasis daerah, HONDY (Honje Candy) atau permen bunga honje', '', 'HONDY akan semakin memperkaya ragam variasi permen di masyarakat, serta menjadi opsi alternatif bagi mereka yang ingin tetap mengonsumsi permen dengan tetap mendapat manfaat tinggi bagi kesehatan tubuh.', '', '', '', 'default.png', '', ''),
(405, 'HABDLISESIR 3 in 1', 'Diterima', 2020, 1, NULL, NULL, 405, 'Hand sanitizer alami ini\nberbahan dasar daun sirih, lidah buaya dan daun serai. Kami menyebutnya dengan\n?Handlisersir 3 in 1? (Hand sanitizer lidah buaya, sereh dan sirih)', '', '1. Menambah pengetahuan tentang manfaat daun sirih,\nserai dan lidah buaya sebagai hand sanitizer alami.\n2. Dapat memanfaatkan daun sirih, serai dan lidah\nbuaya yang ada di lingkungan untuk dijadikan hand sanitizer alami.\n3.  Menambah informasi dan literatur tentang pembuatan\nhand sanitizer alami.', '', '', '', '405.png', '', ''),
(406, 'KULENGSER (KULKAS KALENG SEDERHANA)', 'Diterima', 2020, 5, NULL, NULL, 406, '?Kullengser? ini adalah:\nUntuk mengetahui apakah desain kulkas ?Kullengser? sesuai untuk dijadikan\nkulkas daur ulang penghasil listrik.', '', '1. Alat yang dihasilkan sangat bermanfaat dalam pengembangan teknologi\nberbasis sumber daya alam lokal yang hemat energi kedepannya, terutama\nuntuk pengembangan kulkas tanpa listrik dan Freon.\n2. Membantu mengurangi ketergantungan akan penggunaan sumber energi fosil\nsebagai pembangkit listrik yang semakin langka dari waktu kewaktu.\n3. Membantu mengurangi dampak negatif Freon pada atmosfer yang mengancam\npemanasan global.', '', '', '', '406.png', '', ''),
(407, 'PENDEKAR (ALAT PENDETEKSI KEBAKARAN)', 'Diterima', 2020, 5, NULL, NULL, 407, 'Peristiwa kebakaran pada umumnya terjadi akibat keteledoran masyarakat, seperti\nkebocoran gas, konsleting listrik, membuang puntung rokok. Berdasarkan peristiwa tersebut kami mendapatkan ide untuk membuat\n?PENDEKAR? yaitu ?Alat Pendeteksi Kebakaran?.', '', 'Manfaat ekonomi pada Alat ini adalah memudahkan masyarakat untuk lebih\naman dalam pengamanan terhadap lingkungan tempat tinggal dengan\nmeminimalisir dampak yang terjadi akibat kerusakan dari kebakaran. Alat ini pun\nmudah dalam membuatnya karena disusun dari rangkaian yang mudah dipelajari\ntidak perlu mendatangkan tim ahli yang tentunya memakan biaya yang besar\nsehingga dapat menghemat pengeluaran. Dampak positifnya bisa meminimalisir\nterjadinya kebakaran besar bagi masyarakat karena dapat mendeteksi adanya api\nagar masyarakat bisa segera menangani adanya kebakaran api.', '', '', '', '407.png', '', ''),
(408, 'PELIPUR RAJA (PENGENDALI LAMPU LISTRIK JARAK JAUH)', 'Diterima', 2020, 5, NULL, NULL, 408, 'pembuatan karya inovasi ini adalah merancang sebuah alat yang bisa mengendalikan lampu (menghidupakan dan mematikan) lampu secara otomatis baik seluruh lampu ruangan maupun ruangan terentu yang diinginkan menggunakan satu remot tanpa harus menyentuh saklar', '', '1. Dihasilkannya sebuah alat yang meminimalisir penggunaan barang yang umum di pakai sehingga memeperkecil penyebaran virus Covid-19\n2. Dapat menjadi acuan bagi rekan rekan siswa dalam pembuatan karya inovasi berbasis rangkaian elektronika\n3. Dapat memotivasi siswa lain dalam bereksperimen.', '', '', '', 'default.png', '', ''),
(409, 'SIRAH KU UTUH', 'Diterima', 2020, 5, NULL, NULL, 409, 'Sirah Ku Utuh adalah merancang sebuah alat system infra merah pengukur suhu tubuh dengan menggunakan teknologi elektronika otomatis, sehingga pada saat digunakan alat tersebut membantu untuk mengurangi kontak secara langsung dengan individu saat melakukan pengukuran.', '', '1. Dihasilkannya sebuah Sistem infra merah pengukur suhu tubuh yang berfungsi untuk membantu mengurangi kontak secara langsung.\n2. Dapat menjadi acuan bagi rekan-rekan siswa dalam pembuatan karya inovasi yang lain.\n3. Dapat memotivasi siswa lain untuk bereksperimen', '', '', '', '409.png', '', ''),
(410, 'SICAMAT (SISTEM SENSOR CAHAYA MATAHARI)', 'Diterima', 2020, 5, NULL, NULL, 410, 'karya inovasi ini adalah merancang sebuah alat Sensor LDR dengan menggunakan teknologi elektronika secara otomatis, sehingga pada saat terjadi adanya sinar matahari atau cahaya dapat bekerja secara otomatis akan mematikan lampu penerangan baik yang ada di dalam ruangan ataupun di luar dengan tanpa menyentuh saklar atau mencabut piting lampu.', '', '1. Dihasilkannya sebuah Sistem pengendali jarak jauh berfungsi untuk membantu atau meminimalisir tenaga dan ketergantungan.\n2. Dapat menjadi acuan bagi rekan rekan siswa dalam pembuatan karya inovasi berbasis rangkaian elektronika\n3. Dapat memotivasi siswa lain dalam bereksperimen.', '', '', '', '410.png', '', ''),
(411, 'KOMPOSISI RANSUM FLUSHING UNTUK SAPI BETINA BUNTING YANG MENGANDUNG ZE', 'Diterima', 2020, 9, NULL, NULL, 411, 'Ransum Flushing Untuk Sapi Betina Bunting Yang Mengandung Zeolit Terimpregnasi Urea ini sasarannya adalah peternak sapi ektensif yang membutuhkan jenis ransum flushing yang mengandung Zeolit Terimpregnasi Urea untuk memenuhi kebutuhan nutrisi ternak sapi betina bunting menjelang 3 bulan kelahiran untuk meningkatkan stamina induk dan meningkatkan pertumbuhan prenatal pada periode 3 bulan menjelang kelahiran', '', 'Meningkatkan stamina induk, meningkatkan pertumbuhan fetus prenatal 3 bulan menjelang kelahiran, dan memberikan bobot lahir yang lebih baik.', '', '', '', '411.png', '', ''),
(412, 'KOMPOSISI KROMIUM DAN NERACA KATION ANION RANSUM PUYUH PETELUR YANG DI', 'Diterima', 2020, 9, NULL, NULL, 412, 'Dari sisi geografis Ransum puyuh petelur yang disuplementasi kromium dan neraca kation anion secara umum memiliki segmentasi geografis seluruh wilayah Indonesia. Hal didasari telah tersebarnya usaha ternak puyuh petelur atau pun pedaging di beberapa wilayah Indonesia. Secara khusus produk ransum ini ditujukan pada peternak puyuh yang berada di wilayah dengan iklim cuaca yang sangat panas. Ransum puyuh petelur yang disuplementasi kromium dan neraca kation anion ini dapat diperoleh oleh setiap peternak puyuh dengan berbagai tingkat kelas ekonomi. Ransum puyuh ini juga memiliki target audienn ya adalah para peternak puyuh yang memiliki orientasi pada rendahnya kandungan kolesterol pada telur puyuh yang dihasilkan.', '', 'Mengatasi penurunan efisiensi ransum puyuh petelur yang mengalami cekaman panas, dan untuk mengupayakan penurunan kadar kolesterol telur puyuh.', '', '', '', '412.png', '', ''),
(413, 'KROMIUM ORGANIK (FEED ADDITIVE IMBUHAN PAKAN RANSUM PUYUH PETELUR)', 'Diterima', 2020, 9, NULL, NULL, 413, 'Kromium Organik ini berasal dari kromium anorganik CrCl3 yang merupakan bentuk kromium  nutrisi yang dibutuhkan dalam jumlah  sangat sedikit namun dalam pencernaan sangat sulit diserap. Dalam bentuk organik yang merupakan hasil inkorporasi CrCl3 selama proses fermentasi kacang kedelai akan meningkatkan penyerapan dalam saluran pencernaan. Feed additive ini kemudian dikombinasikan dengan sumber garam Na-, Cl-, K+ dan SO4 menghasilkan  kombinasi kromium organik dengan nilai neraca kation anion ransum sebesar 50 mq/kg', '', 'Penambahan kromium organik dalam  ransum puyuh petelur dengan dosis1,5 ppm akan meningkatkan efisiensi penggunaan ransum dan menurunkan kadar kolesterol telur puyuh', '', '', '', '413.png', '', ''),
(414, 'KEFIR AIR YANG DIKECILKAN DENGAN TKNOLOGI NANO SEBAGAI ALTERNATIF PENG', 'Diterima', 2020, 1, NULL, NULL, 414, 'Dengan mengecilaknukuran kefir air dengan menggunakan teknologi nano sifat fisiko kimia kefir air yang tidak larut dalam air hanya larut dalam larutan basa menjadi dapat larut air pada suhu 80oC. Kefir air dikecilkan ukurannya dengan Planetary Ball Mill dengan berat ball mill 3.8828 gram, kecepatan 400 rpm selama 20 menit, dapat dihasilkan kefir air nanoparticles dengan ukuran parttikel 293.2 nm', '', 'Sebagai substitusi penggati gelatin.', '', '', '', '414.png', '', ''),
(415, 'METODE PEMBUATAN GRANULA AMPAS KURMA KERING UNTUK SEDIAAN BAHAN PAKAN ', 'Diterima', 2020, 9, NULL, NULL, 415, 'Granula ampas kurma sebagai bahan pakan ternak ini memiliki segmentasi demografis masyarakat yang bekerja sebagai peternak, bahan pakan ini pun dapat diperoleh oleh masyarakat dengan berbagai kelas ekonomi. Hal ini didasari oleh harga jual pakan yang relatif lebih murah dari pakan konvensional impor.', '', 'pembuatan granula ampas kurma ini bertujuan untuk mendapatkan sediaan  ampas kurma kering untuk bahan pakan ternak dengan bentuk seragam ukuran 3 mm2, tingkat kekeringan yang merata 6% dan mempunyai daya simpan lebih lama (5 bulan) dibandingkan dengan tepung ampas kurma, dan kapasitas cetak 10 kg per orang/alat cetak.', '', '', '', '415.png', '', ''),
(416, 'TABLET EFFERVESCENT EKSTRAK KELOPAK BUNGA ROSELA', 'Diterima', 2020, 1, NULL, NULL, 416, 'Tablet Effervescent Kelopak Bunga Rosella ini memiliki target audiennya adalah masyarakat yang aktif, dinamis, dan memiliki mobilitas tinggi, serta membutuhkan kepraktisan dalam  mengonsumsi minuman yang baik untuk kesehatan. Tablet ini juga difokuskan pada instansi kesehatan', '', 'Tablet Effervescent Kelopak Bunga Rosella selain warnanya yang menarik juga karena kandungan senyawa fitokimia terutama antosianin dan juga vitamin C yang baik untuk menurunkan resiko penyakit degeneratif.', '', '', '', '416.png', '', ''),
(417, 'METODE IDENTIFIKASI DNA BABI PADA PRODUK BERBASIS LEMAK', 'Diterima', 2020, 1, NULL, NULL, 417, 'Metode identifikasi DNA Babi pada produk berbasis lemak  ini memiliki segmentasi pasar yang mencakup seluruh wilayah Indonesia. Hal ini didasari atas pentingnya konsumsi produk halal (non-babi) bagi seluruh masyarakat Indonesia. Selain itu, dominasi masyarakat Indonesia beragama islam, sehingga produk pangan , kosmetik, dll yang kehalalannya sudah jelas akan lebih meningkatkan kepercayaan konsumen untuk membeli', '', 'Sebagai metode identifikasi dna babi pada produk berbasis lemak dengan menggunakan real-time PCR', '', '', '', 'default.png', '', ''),
(418, 'DENAHONG (Halal TRAVEL SOAP', 'Diterima', 2020, 1, NULL, NULL, 418, 'DENAHONG (Halal Soap Travel) merupakan inovasi terbaru dari sabun travel berbahan dasar alami yang menggunakan ekstraksi dari daun binahong, perbedaannya terletak pada kehalalan sabun tersebut karena hampir 90% pembuatan sabun tersebut menggunakan bahan alami atau bebas dari ABS (Alkyl Benzene Sulphonate) yang jika digunakan jangka panjang akan berdampak negatif bagi kesehatan kulit. DENAHONG (Halal Soap Travel) merupakan solusi bagi para traveler karena selain halal dan memilik manfaat yang lebih, sabun ini mudah dibawa dan praktis sehingga dapat memudahkan para traveler.', '', 'Kandungan yang terdapat dalam DENAHONG (Halal Travel Soap) diantaranya saponin, alkaloid, polipenol, asam oleanik dan minyak atsiri yang sangat baik sekali bagi kesehatan kulit diantaranya mencerahkan dan melembabkan kulit, mecegah timbulnya jerawat, serta memperbaiki sel-sel kulit', '', '', '', '418.png', '', ''),
(419, 'SIMPLICIA DRY CONTROLLER', 'Diterima', 2020, 5, NULL, NULL, 419, 'Simplicia dry controller (SDC) merupakan alat pengering simplisia berbasis android dengan sistem arduino yang dapat mengefisiensi dan memudahkan pengerjaan pengeringan simplisia baik untuk pengusaha atau pada dunia pendidikan sebagai alat penelitian. Pegeringan dapat dilakukan kapan saja karena tidak membutuhkan sinar matahari, SDC berputar sebanyak 22 putaran per menit pada suhu 50?C dengan waktu pengeringan simplisia yang berbeda-beda sesuai dengan jenis simplisia. Aplikasi SDC pada android akan bekerja setelah user memilih simplisia dan memprosesnya.', '', '1. Simplicia Dry Controller (SDC) dapat mengontrol pengeringan simplisia pada jarak jauh. \n2. Mempermudah pelaku usaha dalam pengeringan simplisia tanpa terganggu oleh cuaca agar menghasilkan mutu simplisia yang berkualitas.\n3. Alat pegering memberikan hasil simplisia dengan mutu yang lebih baik karena menggunakan udara dalam proses pengeringannya.\n4. Bagi dunia pendidikan dapat menjadi sarana atau media penelitan yang berkaitan dengan simplisia.\n', '', '', '', '419.png', '', ''),
(420, 'MITALAN (MIE INSTAN TALAS ANTIOKSIDAN)', 'Diterima', 2020, 2, NULL, NULL, 420, 'MITALAN (Mie Instan Talas Anti Oksidan) merupakan inovasi  produk  mi  instan  sehat  berbasis pangan  lokal. Mie ini terbuat dari tepung talas dan tepung mocaf yang tidak mengandung gluten. MITALAN memiliki warna kemerahan yang menarik dengan terstur mie yang kenyal dan mudah dicerna. Warna merah MITALAN berasal dari ekstrak kayu secang yang ditambahkan. MITALAN juga dilengkapi dengan bumbu yang berasal dari bahan tambahan pangan alami berupa minyak kelapa, bawang merah, cabai, garam, kaldu jamur, dll.', '', 'Mie yang terbuat dari bahan  baku tepung talas dan mocaf serta kayu secang, memiliki banyak mamfaat diantaranya kaya akan serat dan antioksidan, serta termasuk pangan free glluten. Serat berasal dari tepung talas dan mocaf yang ditambahkan. Serat berperan dalam mengurangi jumlah kolesterol jahat dalam tubuh dan memperlancar sistem pencernaan di usus. Antioksidan berfungsi mengatasi radikal bebas dan mencegah kanker serta dapat meningkatkan sistem imun. MITALAN juga merupakan pangan yang termsuk free gluten sehingga dapat dikonsumsi oleh masyarakat yang alergi gluten seperti penyandang keterbelakangan mental dan celiac disease.', '', '', '', '420.png', '', ''),
(421, 'SNOIL', 'Diterima', 2020, 1, NULL, NULL, 421, 'SNOIL (Snow Wash Oil) shampo motor dari pemanfaatan minyak jelantah merupakan pengembangan dari shampo motor konvensional yang di bentuk sedemikian rupa sehingga menghasilkan berbagai variasi yang berbeda namun memiliki fungsi yang sama. SNOIL (Snow Wash Oil) Shampo motor dari pemanfaatan minyak jelantah merupakan inovasi terbaru karena pada proses pembuatan shampo ini menggunakan bahan dasar dari pemanfaatan minyak jelantah yang sudah dimurnikan dengan arang aktif, dan berbeda dengan pembuatan shampo pada umumnya serta dapat meminimalisirkan limbah rumah tangga, perbedaannya terletak pada proses pembuatannya  yang mudah dilakukan memanfaatkan minyak jelantah dengan proses permunian yang menggunakan bahan alami, yaitu salah satunya arang  bambu yang memiliki kandungan arang aktif yang bisa mengikat alfatoksin dan kasinogenik pada minyak jelantah, sehingga bisa di manfaatkan kembali.', '', 'SNOIL (Snow Wash Oil) shampo motor dari pemanfaatan minyak jelantah ini memiliki kandungan bahan yang terdiri dari surfaktan  alami sehingga mampu mengangkat kotoran-kotoran dan debu  yang sudah lama menempel di body motor dan juga mengkilapkan body motor serta hasil dari khasiat permurnian dari minyak jelantah  yang  dapat menambah daya busa  dan juga melembutkan sehingga dapat mengurangi risiko terjadinya lecet pada body motor yang membuat cat semakin awet serta ramah lingkungan.', '', '', '', '421.png', '', ''),
(422, 'Sanstile organic', 'Diterima', 2020, 1, NULL, NULL, 422, 'Sanstile organic merupakan inovasi terbaru dari facial wash yang berbahan dasar dari minyak biji bunga matahari dengan kombinasi minyak zaitun dan minyak kelapa yang dapat menutrisi kulit wajah, perbedaannya terletak pada kehalalan sabun tersebut karena hampir 95% pembuatan facial wash tersebut menggunakan bahan alami tanpa bahan kimia sintetik. Bisnis\nkosmetika dalam bidang personal care atau jenis produknya facial wash ini memiliki peluang yang sangat baik. Karena setiap orang pasti membutuhkan ketika akan membersihkan wajahnya sehabis pulang berpegian. Produk yang kami produksi dalam bisnis ini berbentuk cair yang dibuat dengan bahan alami tanpa bahan kimia sehingga aman untuk digunakan pada kulit sensitif.\n', '', 'Sastile organic mempunyai keunggulaan khasiat dibandingkan dengan facial wash pada\numumnya karena bahan baku yang digunakan kaya akan kandungan dan  khasiat untuk kesehatan kulit seperti vitamin E dari minyak biji bunga matahari dalam produk kami membantu melindungi kulit dari radikal bebas atau pencegahaan penuaan dini, vitamin D dan K dari minyak biji bunga matahari pada produk kamiefektif dalam pencegahan jerawat, tidak ada efek samping dalam pemakaian jangka panjang karena produk berbahan alami, Produk bersifat biodegradable dan bedanya dengan produk lain karena Produk kami berbahan alami tanpa bahan kimia, pengawet dan pewarna sintetik karena selain halal dan memiliki manfaat yang lebih, serta facial wash ini mudah dibawa dan praktis sehingga dapat dibawa kemanapun.\n', '', '', '', '422.png', '', ''),
(423, '?TEKNOSPRAYER?\nInovasi Pembuatan Sprayer Otomatis Alternatif Berteknol', 'Diterima', 2020, 7, NULL, NULL, 423, 'Teknosprayer merupakan sprayer alternatif dengan memodifikasi bahan sederhana yang dipadukan dengan spare parts sprayer utama agar alat tersebut kualitasnya tetap baik namun lebih terjangkau secara ekonomis jika dibandingkan dengan sprayer otomatis komersil lainnya. Sprayer otomatis ekonomis yang kami buat merupakan perpaduan dari bahan anorganik limbah seperti aki dan barang bekas plastik seperti jerigen. Ketersediaan bahan tersebut cukup berlimpah dan mudah di dapat dengan harga terjangkau', '', 'Teknosprayer memanfaatkan barang bekas yang ada di sekitar lingkungan dengan tujuan untuk memanfaatkan kembali barang yang dianggap sudah tidak terpakai sehingga barang tersebut dapat memiliki nilai jual, serta sebagai alternatif alat saprotan agar mudah dimiliki petani dengan harga terjangkau. Mengingat harga sprayer komersil di pasaran saat ini relatif tinggi, sehingga petani kecil belum tentu dapat memilki saprotan tersebut.', '', '', '', '423.png', '', ''),
(424, 'CRYSTAL SUGAR ZINGIMORI', 'Diterima', 2020, 2, NULL, NULL, 424, 'Crystal Sugar Zingimori ini  merupakan suatu produk minuman baru pada saat ini yang banyak sekali digemari oleh masyarakat terutama orang dewasa dan para remaja. Minuman yang terbuat dari bahan dasar herbal seperti jahe dan serai yang berguna sebagai obat masuk angin, gangguan pencernaan, sebagai analgesik, antipiretik, anti-inflamasi, dan lain-lain. Kemudian ditambahkan ekstrak daun antanan yang berfungsi untuk memberikan kontribusi terhadap aktivitas sel saraf sehingga akan meningkatkan daya ingat pada otak. Tambahan herbal lainnya adalah dari kayu secang yang  sumber zat warna merah, yang dapat dipakai sebagai bahan pewarna minuman ini. Selain itu produk ini juga ditambahkan serai yang mengandung minyak atsiri dengan tiga komponen penting sepeti sitronela, geraniol dan sitronelol ketiga komponen tersebut bersifat anti septik. Minytak atsiri bisa  memperlancar sisitem pencernaan dan penghangat badan.', '', 'Minuman Fungsional dari bahan alami ekstrak Jahe, antanan, kayu secang, serai yang memberikan efek kesehatan. Bahan dasar herbal seperti jahe dan serai yang berguna sebagai obat masuk angin, gangguan pencernaan, sebagai analgesik, antipiretik, anti-inflamasi, dan lain-lain. Kemudian ditambahkan ekstrak daun antanan yang berfungsi untuk memberikan kontribusi terhadap aktivitas sel saraf sehingga akan meningkatkan daya ingat pada otak.', '', '', '', '424.png', '', ''),
(425, 'APONIC (ANDROID HYDROPONIC)', 'Diterima', 2020, 7, NULL, NULL, 425, 'Aponic (Android hydroponic) adalah sebuah aplikasi berbasis android yang di dalamnya berfungsi untuk memantau sistem kerja hidroponik agar tanaman dapat tumbuh dengan baik. Dalam aplikasi Aponic terdapat beberapa parameter yang dibutuhkan oleh hidroponik diantaranya kelembaban media, suhu, kelembaban, dan kecukupan nutrisi. Sistem ini akan memantau semua kegiatan hidroponik serta menginformasikan kepada pengguna Aponic apabila terjadi kondisi yang tidak diharapkan, hal ini dapat dilakukan baik dalam jarak dekat maupun jarak jauh.Aponic ini dirancang dengan beberapa komponen dan sensor yang saling dihubungkan satu sama lain melalui sebuah mikrokontroller.', '', 'Unggul dalam otomatisan sistem kerja, memberikan informasi secara realtime, dapat dikondisikan baik dalam jarak dekat maupun jarak jauh dalam sistem pertanian hidroponik', '', '', '', '425.png', '', ''),
(426, 'SAMPERIN (Sambel Pecel Rindu)', 'Diterima', 2020, 2, NULL, NULL, 426, 'SAMPERIN (Sambal Pecel Rindu) merupakan produk sambal pecel yang terbuat dari bahan baku kacang tanah yang kemudian dikombinasikan dengan cabai, daun jeruk, asam jawa, gula jawa, garam, kencur, dan bawang putih yang berperan sebagai pengawet alami. SAMPERIN terdiri dari 3 varian rasa dengan nama varian yang sangat unik yakni ngahephep (sedikit pedas), hareudang (pedas sedang), dan guludug (sangat pedas). Produk SAMPERIN dikemas dengan 2 jenis kemasan yaitu kemasan ekonomis dan kemasan premium yang super praktis untuk dinikmati dimanapun.', '', 'Manfaat dari produk SAMPERIN yaitu sebagai pelengkap makan, dimana produk ini sangat sederhana dalam menikmatinya karena hanya dengan nasi putih anget atau gorengan sudah dapat memberikan sensasi rasa pedas, gurih, manis, dan ditambah dengan aroma daun jeruk yang khas dari SAMPERIN. Kemudian kehadiran produk SAMPERIN dapat memudahkan konsumen untuk menikmati dalam situasi dan kondisi apapun karena penyajiannya sangat praktis yaitu hanya dengan pemberian air hangat atau tanpa pemberian air anget karena hanya dengan cara dicocol.', '', '', '', '426.png', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inovator`
--

CREATE TABLE `inovator` (
  `id_inovator` int NOT NULL,
  `nama_inovator` varchar(50) NOT NULL,
  `nik` int DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `alamat` text NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `no_telp` varchar(13) DEFAULT NULL,
  `id_kategori_inovator` varchar(11) DEFAULT NULL,
  `id_instansi` int DEFAULT NULL,
  `id_kecamatan` int DEFAULT NULL,
  `id_desa` int DEFAULT NULL,
  `foto_inovator` varchar(50) NOT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `id_akun` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `inovator`
--

INSERT INTO `inovator` (`id_inovator`, `nama_inovator`, `nik`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `email`, `no_telp`, `id_kategori_inovator`, `id_instansi`, `id_kecamatan`, `id_desa`, `foto_inovator`, `latitude`, `longitude`, `id_akun`) VALUES
(1, 'Iman setiadi', NULL, NULL, 'L', 'Parung Panjang', NULL, NULL, '8', NULL, 320120, 232, '1.png', NULL, NULL, NULL),
(2, 'Febriyanti Wulandari', NULL, NULL, 'P', 'Babakan Madang', NULL, NULL, '8', NULL, 320105, 58, '2.png', NULL, NULL, NULL),
(3, 'Emma R', NULL, NULL, 'P', 'Cibinong', NULL, NULL, '8', NULL, 320101, 6, '3.png', NULL, NULL, NULL),
(4, 'Ariyanto', NULL, NULL, 'P', 'Ciampea', NULL, NULL, '8', NULL, 320115, 154, '4.png', NULL, NULL, NULL),
(5, 'Haidi', NULL, NULL, 'L', 'Bojong Gede', NULL, NULL, '8', NULL, 320113, 142, '5.png', NULL, NULL, NULL),
(6, 'Windi\r\n', NULL, NULL, 'P', 'Kemang\r\n', NULL, NULL, '8', NULL, 320112, 128, '6.png', NULL, NULL, NULL),
(7, 'Cahya\r\n', NULL, NULL, 'L', 'Cibinong\r\n', NULL, NULL, '8', NULL, 320101, 6, '7.png', NULL, NULL, NULL),
(8, 'Virgowati\r\n', NULL, NULL, 'P', 'Citeureup\r\n', NULL, NULL, '8', NULL, 320103, 27, '8.png', NULL, NULL, NULL),
(9, 'Yadi Maryadi\r\n', NULL, NULL, 'L', 'Citeureup\r\n', NULL, NULL, '8', NULL, 320103, 27, '9.png', NULL, NULL, NULL),
(10, 'Linar Hunaira\r\n', NULL, NULL, 'P', 'UNB\r\n', NULL, NULL, '8', NULL, 320101, 8, '10.png', NULL, NULL, NULL),
(11, 'Dewi Sartika\r\n', NULL, NULL, 'P', 'Ciomas\r\n', NULL, NULL, '8', NULL, 320129, 333, '11.png', NULL, NULL, NULL),
(12, 'Haryati\r\n', NULL, NULL, 'P', 'Cijjeruk\r\n', NULL, NULL, '8', NULL, 320128, 320, 'default.png', NULL, NULL, NULL),
(13, 'Yuyun Yuningsih\r\n', NULL, NULL, 'P', 'Cijjeruk\r\n', NULL, NULL, '8', NULL, 320128, 320, '13.png', NULL, NULL, NULL),
(14, 'Iis Ismiati\r\n', NULL, NULL, 'P', 'Leuwiliang\r\n', NULL, NULL, '8', NULL, 320114, 143, '14.png', NULL, NULL, NULL),
(15, 'Heni\r\n', NULL, NULL, 'P', 'Megamendung\r\n', NULL, NULL, '8', NULL, 320126, 300, '15.png', NULL, NULL, NULL),
(16, 'Herman\r\n', NULL, NULL, 'L', 'Megamendung\r\n', NULL, NULL, '8', NULL, 320126, 300, '16.png', NULL, NULL, NULL),
(17, 'Yuli Sujatmoko\r\n', NULL, NULL, 'L', 'Bojong Gede\r\n', NULL, NULL, '8', NULL, 320113, 142, '17.png', NULL, NULL, NULL),
(18, 'Udin Sukandi\r\n', NULL, NULL, 'L', 'Parung Panjang\r\n', NULL, NULL, '8', NULL, 320120, 232, '18.png', NULL, NULL, NULL),
(19, 'Iwan Tiswan\r\n', NULL, NULL, 'L', 'Parung Panjang\r\n', NULL, NULL, '8', NULL, 320120, 232, '19.png', NULL, NULL, NULL),
(20, 'CV. Adisina Solusioni\r\n', NULL, NULL, 'L', 'Parung Panjang\r\n', NULL, NULL, '8', NULL, 320120, 232, '20.png', NULL, NULL, NULL),
(21, 'Betty Nurbaeti\r\n', NULL, NULL, 'P', 'Leuwiliang\r\n', NULL, NULL, '8', NULL, 320114, 143, '21.png', NULL, NULL, NULL),
(23, 'Wida Winingsih\r\n', NULL, NULL, 'P', 'Dramaga\r\n', NULL, NULL, '8', NULL, 320130, 348, '23.png', NULL, NULL, NULL),
(24, 'Taufiqurahman\r\n', NULL, NULL, 'L', 'Ciawi\r\n', NULL, NULL, '8', NULL, 320124, 284, 'default.png', NULL, NULL, NULL),
(25, 'Dede Danial\r\n', NULL, NULL, 'L', 'Babakan Madang\r\n', NULL, NULL, '8', NULL, 320105, 58, '25.png', NULL, NULL, NULL),
(26, 'Jaro Halimi\r\n', NULL, NULL, 'L', 'Tenjo\r\n', NULL, NULL, '8', NULL, 320123, 268, '26.png', NULL, NULL, NULL),
(27, 'Basrudin\r\n', NULL, NULL, 'L', 'Parung Panjang\r\n', NULL, NULL, '8', NULL, 320120, 232, '27.png', NULL, NULL, NULL),
(28, 'Surya Purnama, ST\r\n', NULL, NULL, 'L', 'Cibungbulang\r\n', NULL, NULL, '8', NULL, 320116, 170, '28.png', NULL, NULL, NULL),
(29, 'Ma\'mun\r\n', NULL, NULL, 'L', 'Ciomas\r\n', NULL, NULL, '8', NULL, 320129, 333, '29.png', NULL, NULL, NULL),
(30, 'Ujang\r\n', NULL, NULL, 'L', 'Dramaga\r\n', NULL, NULL, '8', NULL, 320130, 348, '30.png', NULL, NULL, NULL),
(31, 'Sudana\r\n', NULL, NULL, 'L', 'Sukaraja\r\n', NULL, NULL, '8', NULL, 320104, 44, '31.png', NULL, NULL, NULL),
(32, 'Budi Untari\r\n', NULL, NULL, 'L', 'Cibinong\r\n', NULL, NULL, '8', NULL, 320101, 6, '32.png', NULL, NULL, NULL),
(33, 'HERI HERMAWAN\r\n', NULL, NULL, 'L', 'KP. SUKABIRUS 03/06, GADOG, MEGAMENDUNG\r\n', NULL, NULL, '8', NULL, 320126, 298, '33.png', NULL, NULL, NULL),
(34, 'YOHAN SEPTIAN\r\n', NULL, NULL, 'L', 'KP. PASIRTANJUNG 07/03, PASIRTANJUNG, TANJUNGSARI\r\n', NULL, NULL, '8', NULL, 320136, 399, '34.png', NULL, NULL, NULL),
(35, 'BABAN SARBANA', NULL, NULL, 'L', 'KP. TAMANSARI 01/05, TAMANSARI, TAMANSARI', NULL, NULL, '8', NULL, 320131, 353, '35.png', NULL, NULL, NULL),
(37, 'CEPI AL HAKIM', NULL, NULL, 'L', 'KP. KEBON AWI 02/02, NANGGUNG, NANGGUNG', NULL, NULL, '8', NULL, 320121, 244, '37.png', NULL, NULL, NULL),
(38, 'ADIT BARJANJI', NULL, NULL, 'L', 'KP. MUHARA 01/08, CITEUREUP, CITEUREUP', NULL, NULL, '3', NULL, 320103, 27, '38.png', NULL, NULL, NULL),
(39, 'MAHFID YUDISTIRA', NULL, NULL, 'L', 'SMKN 1 GUNUNG PUTRI KP. KEDEP 02/19, TLAJUNG UDIK, GUNUNGPUTRI', NULL, NULL, '3', NULL, 320102, 19, '39.png', NULL, NULL, NULL),
(40, 'MUHAMMAD AGRI PAHLEVI', NULL, NULL, 'L', 'JL. SANDING 1, 02/01 NO 51, BOJONG NANGKA, GUNUNGPUTRI', NULL, NULL, '3', NULL, 320102, 18, '40.png', NULL, NULL, NULL),
(41, 'M. RIDHO RAMADHAN', NULL, NULL, 'L', 'KP. TLAJUNG 01/13, TLAJUNG, GUNUNGPUTRI', NULL, NULL, '3', NULL, 320102, 19, 'default.png', NULL, NULL, NULL),
(42, 'ACHMAD NURSYAM', NULL, NULL, 'L', 'JL. HR. EDI SUKMA, KP. BARU 3/7, WATES JAYA, CIGOMBONG', NULL, NULL, '8', NULL, 320138, 413, '42.png', NULL, NULL, NULL),
(43, 'SITI FAKHRIYAH', NULL, NULL, 'P', 'PERUM LIDO PERMAI, CIBURUY, CIGOMBONG\nUNIDA', NULL, NULL, '4', NULL, 320138, 414, '43.png', NULL, NULL, NULL),
(44, 'SRI WURYANTO', NULL, NULL, 'P', 'PURI NIRWANA 3 BLOK DJ NO 23, KARADENAN, CIBINONG', NULL, NULL, '8', NULL, 320101, 2, '44.png', NULL, NULL, NULL),
(45, 'MISBAHUDIN', NULL, NULL, 'L', 'KP. ANGSANA, LEUWILIANG, LEUWILIANG', NULL, NULL, '8', NULL, 320114, 143, 'default.png', NULL, NULL, NULL),
(46, 'Prof. Dr. LINAWATI, MS', NULL, NULL, 'P', 'TAMAN DARMAGA PERMAI 2-3, CIHIDEUNG UDIK, CIAMPEA\nIPB', NULL, NULL, '8', NULL, 320115, 156, '46.png', NULL, NULL, NULL),
(47, 'TAUFIK HIDAYAT', NULL, NULL, 'L', 'LINGKUNGAN PALAMANIS 02/05, CIRIMEKAR, CIBINONG', NULL, NULL, '8', NULL, 320101, 11, '47.png', NULL, NULL, NULL),
(48, 'TATANG SUYANTO', NULL, NULL, 'L', 'KP. CARIU 01/04, CARIU', NULL, NULL, '8', NULL, 320108, 90, '48.png', NULL, NULL, NULL),
(49, 'MAULIDAN ISBAR', NULL, NULL, 'L', 'BOJONGGEDE TIMUR 01/012, BOJONGGEDE', NULL, NULL, '8', NULL, 320113, 142, '49.png', NULL, NULL, NULL),
(50, 'EDI KUSNAEDI', NULL, NULL, 'L', 'JL. GANDAMANAH 02/12, TUGU SELATAN, CISARUA', NULL, NULL, '8', NULL, 320125, 292, '50.png', NULL, NULL, NULL),
(51, 'SUDANA', NULL, NULL, 'L', 'CIMANDALA 07/01, CIMANDALA, SUKARAJA', NULL, NULL, '8', NULL, 320104, 47, '51.png', NULL, NULL, NULL),
(52, 'SITI NIKMATIN', NULL, NULL, 'P', 'KAMPUS IPB, DRAMAGA', NULL, NULL, '8', NULL, 320130, 347, '52.png', NULL, NULL, NULL),
(53, 'APRILIA MAWARNI', NULL, NULL, 'P', 'SMKN 1 BOJONGGEDE', NULL, NULL, '3', NULL, 320137, 405, '53.png', NULL, NULL, NULL),
(54, 'HARTINI SULISTIAWATI', NULL, NULL, 'P', 'SMKN 1 BOJONGGEDE', NULL, NULL, '3', NULL, 320137, 405, '54.png', NULL, NULL, NULL),
(55, 'SABRI ELLA AFNI', NULL, NULL, 'P', 'JL. ULIN NO 1, GEDUNG SEAFAST CENTER IPB, DRAMAGA', NULL, NULL, '8', NULL, 320130, 347, '55.png', NULL, NULL, NULL),
(56, 'M. ABUN', NULL, NULL, 'L', 'KP. KOTA BATU 3/3, CILEMBER, CISARUA', NULL, NULL, '8', NULL, 320125, 290, '56.png', NULL, NULL, NULL),
(57, 'M. TOHA', NULL, NULL, 'L', 'CIMENDO, SUKAGALIH, JONGGOL', NULL, NULL, '8', NULL, 320106, 73, '57.png', NULL, NULL, NULL),
(58, 'RAHMAT MULYADI', NULL, NULL, 'L', 'KP. CIMANGGIS 1/13, CIMANGGIS, BOJONGGEDE', NULL, NULL, '8', NULL, 320113, 136, '58.png', NULL, NULL, NULL),
(59, 'MUHAMMAD LUTFI', NULL, NULL, 'L', 'PERUM BUKIT ASRI BLOK E1 NO 3, PABUARAN, CIBINONG', NULL, NULL, '8', NULL, 320101, 12, '59.png', NULL, NULL, NULL),
(60, 'IDIK', NULL, NULL, 'L', 'KP. PAMIPIRAN 2/1, SUKAJADI, CARIU', NULL, NULL, '8', NULL, 320108, 93, '60.png', NULL, NULL, NULL),
(61, 'YAYA WARYA, S.TP, M.Pd', NULL, NULL, 'L', 'KP. BABAKAN 1/8, BUBULAK (SMKN 1 LEUWILIANG)', NULL, NULL, '8', NULL, 320114, 149, '61.png', NULL, NULL, NULL),
(62, 'AHMAD RIZAL', NULL, NULL, 'L', 'KP. PABUARAN KULON 02/06, CIBANTENG, CIAMPEA', NULL, NULL, '8', NULL, 320115, 164, '62.png', NULL, NULL, NULL),
(63, 'IMAM MUBAROK', NULL, NULL, 'L', 'KP. SABRANG 01/09, WARGAJAYA, CIGUDEG', NULL, NULL, '8', NULL, 320122, 258, '63.png', NULL, NULL, NULL),
(64, 'SRI DARWATI', NULL, NULL, 'P', 'KP. CIAWI GIRANG, CIAWI, CIAWI\nIPB', NULL, NULL, '4', NULL, 320124, 284, '64.png', NULL, NULL, NULL),
(65, 'MUNAWAR ARAFAT', NULL, NULL, 'L', 'PERUM PESONA PALAD BLOK C NO. 36 RT 03/12, CIKAHURIPAN, KLAPANUNGGAL', NULL, NULL, '8', NULL, 320132, 362, '65.png', NULL, NULL, NULL),
(67, 'EKO ASPRIYONO', NULL, NULL, 'L', 'PERUM CIAMPEA ASRI BLOK A 6 NO. 20 RT 02/06, BENTENG, CIAMPEA', NULL, NULL, '8', NULL, 320115, 165, '67.png', NULL, NULL, NULL),
(68, 'FEBRIYANTI WULANDARI', NULL, NULL, 'P', 'JL. MAHKOTA ZAMRUD 29, BABAKAN MADANG', NULL, NULL, '8', NULL, 320105, 58, '68.png', NULL, NULL, NULL),
(69, 'KRISNA DANI BAHARI', NULL, NULL, 'L', 'JL. VETERAN 3, KP CARINGIN 02/03, BANJARSARI, CIAWI', NULL, NULL, '8', NULL, 320124, 277, '69.png', NULL, NULL, NULL),
(70, 'AGUNG SURYAWIJAYA', NULL, NULL, 'L', 'PERUMAHAN ALAM SARI 01/04, SINARSARI, DRAMAGA', NULL, NULL, '8', NULL, 320130, 342, '70.png', NULL, NULL, NULL),
(71, 'ASEP SAMSUL HIDAYAT', NULL, NULL, 'L', 'DARMAGA PRATAMA BLOK B.1 RT 02/05, CIBADAK, CIAMPEA', NULL, NULL, '8', NULL, 320115, 161, '71.png', NULL, NULL, NULL),
(72, 'ASEP SAMSUL HIDAYAT', NULL, NULL, 'L', 'DARMAGA PRATAMA BLOK B.1 RT 02/05, CIBADAK, CIAMPEA', NULL, NULL, '8', NULL, 320115, 161, '72.png', NULL, NULL, NULL),
(73, 'R. HARYO BIMO SETIARTO, S.SI, M.Si', NULL, NULL, 'L', 'KP. CIBADAK PESANTERN 05/02, CIBADAK CIAMPEA', NULL, NULL, '8', NULL, 320115, 161, '73.png', NULL, NULL, NULL),
(74, 'REGI AGUSTIAN', NULL, NULL, 'L', 'JL. TANJUNG NO. 4, BABAKAN, DRAMAGA', NULL, NULL, '8', NULL, 320130, 347, '74.png', NULL, NULL, NULL),
(75, 'R.A. HANGESTI EMI WIDYASARI', NULL, NULL, 'P', 'JL. CIBANTENG PROYEK NO. 3 RT 05/02, CIHIDEUNG ILIR CIAMPEA', NULL, NULL, '8', NULL, 320115, 163, '75.png', NULL, NULL, NULL),
(76, 'WIWIN WINALASARI', NULL, NULL, 'P', 'UNIVERSITAS MUHAMMADIYAH JAKARTA', NULL, NULL, '4', NULL, 320101, 8, '76.png', NULL, NULL, NULL),
(77, 'BALAI PENGELOLAAN ALIH TEKNOLOGI PERTANIAN', NULL, NULL, NULL, 'BPATP', NULL, NULL, '4', NULL, 320101, 8, '77.png', NULL, NULL, NULL),
(78, 'OVIDRA ROLIO. D', NULL, NULL, NULL, 'UNIVERSITAS JENDERAL SUDIRMAN', NULL, NULL, '4', NULL, 320101, 8, 'default.png', NULL, NULL, NULL),
(79, 'DEASY RAMATIA', NULL, NULL, 'P', 'Institut Pertanian Bogor', NULL, NULL, '4', NULL, 320130, 347, '79.png', NULL, NULL, NULL),
(80, 'YOGA RIVALDI', NULL, NULL, 'L', 'Institut Pertanian Bogor', NULL, NULL, '4', NULL, 320130, 347, 'default.png', NULL, NULL, NULL),
(81, 'YOGA RIVALDI', NULL, NULL, 'L', 'Institut Pertanian Bogor', NULL, NULL, '4', NULL, 320130, 347, 'default.png', NULL, NULL, NULL),
(82, 'MICHAEL LAZUARDY', NULL, NULL, 'L', 'Universitas Ibnu Khaldun', NULL, NULL, '4', NULL, 320101, 8, 'default.png', NULL, NULL, NULL),
(83, 'YOGI AHMAD NUGRAHA', NULL, NULL, 'L', 'Universitas Djuanda', NULL, NULL, '4', NULL, 320124, 284, '83.png', NULL, NULL, NULL),
(84, 'ANDI MASSOEANG ABDILLAH', NULL, NULL, 'L', 'Institut Pertanian Bogor', NULL, NULL, '4', NULL, 320130, 347, '84.png', NULL, NULL, NULL),
(85, 'ANGGUN RAHMAN', NULL, NULL, 'P', 'Institut Pertanian Bogor', NULL, NULL, '4', NULL, 320130, 347, '85.png', NULL, NULL, NULL),
(86, 'Dra. IKE YULIA WIENDARLINA,M.Farm,Apt', NULL, NULL, 'P', 'Universitas Pakuan', NULL, NULL, '4', NULL, 320101, 8, '86.png', NULL, NULL, NULL),
(87, 'ENENG TIRTA T AGUNG DJATI WALUJO M.IQBAL SURIYANSY', NULL, NULL, 'P', 'Universitas Pakuan', NULL, NULL, '4', NULL, 320101, 8, '87.png', NULL, NULL, NULL),
(88, 'YULI WAHYUNI', NULL, NULL, 'P', 'Universitas Pakuan', NULL, NULL, '4', NULL, 320101, 8, '88.png', NULL, NULL, NULL),
(89, 'NOVI FAJAR UTAMI M.Farm, Apt', NULL, NULL, 'P', 'Universitas Pakuan', NULL, NULL, '4', NULL, 320101, 8, '89.png', NULL, NULL, NULL),
(90, 'DINI SUHARTINI, S.Kom', NULL, NULL, 'P', 'Universitas Pakuan', NULL, NULL, '4', NULL, 320101, 8, '90.png', NULL, NULL, NULL),
(91, 'AGUNG PRAJUHANA PUTRA.S.Kom', NULL, NULL, 'L', 'Universitas Pakuan', NULL, NULL, '4', NULL, 320101, 8, '91.png', NULL, NULL, NULL),
(92, ' MAMAY MASLAHAT, S.Si', NULL, NULL, 'P', '(UNB)/PERGURUAN TINGGI', NULL, NULL, '4', NULL, 320101, 8, '92.png', NULL, NULL, NULL),
(93, 'FIKRI AZIS MAULANA', NULL, NULL, 'L', '(UNB)/PERGURUAN TINGGI', NULL, NULL, '4', NULL, 320101, 8, '93.png', NULL, NULL, NULL),
(94, 'MAMAY MASLAHAT, S.Si, M.Si', NULL, NULL, 'P', '(UNB)/PERGURUAN TINGGI', NULL, NULL, '4', NULL, 320101, 8, '94.png', NULL, NULL, NULL),
(95, 'INDAH AYU LESTARI', NULL, NULL, 'P', 'Universitas Djuanda', NULL, NULL, '4', NULL, 320124, 284, '95.png', NULL, NULL, NULL),
(96, 'HERMAN, SE', NULL, NULL, 'L', 'Universitas Djuanda', NULL, NULL, '4', NULL, 320124, 284, '96.png', NULL, NULL, NULL),
(97, 'ADI SANTOSO', NULL, NULL, 'L', '', NULL, NULL, '4', NULL, 320101, 8, 'default.png', NULL, NULL, NULL),
(98, 'ACHMAD ZAKI RAHMAN', NULL, NULL, 'L', 'PUSPIPTEK', NULL, NULL, '4', NULL, 320101, 8, '98.png', NULL, NULL, NULL),
(99, 'Prof. Dr. Ir. NURJANAH, MS', NULL, NULL, 'P', '', NULL, NULL, '4', NULL, 320101, 8, '99.png', NULL, NULL, NULL),
(100, 'ABDUL MALIK', NULL, NULL, 'L', '', NULL, NULL, '4', NULL, 320101, 8, '100.png', NULL, NULL, NULL),
(101, 'IKA HERAWATI (MASYARAKAT UMUM)', NULL, NULL, 'P', '', NULL, NULL, '8', NULL, 320101, 8, '101.png', NULL, NULL, NULL),
(102, 'VINA NOVITA', NULL, NULL, 'P', '', NULL, NULL, '8', NULL, 320101, 8, '102.png', NULL, NULL, NULL),
(103, 'SITI MUSIROH (MASYARAKAT UMUM)', NULL, NULL, 'P', '', NULL, NULL, '8', NULL, 320101, 8, '103.png', NULL, NULL, NULL),
(104, 'MILATI AHSANI   DAN RIDZKI MAULANA HIDAYAT(MASYARA', NULL, NULL, 'P', '', NULL, NULL, '8', NULL, 320101, 8, '104.png', NULL, NULL, NULL),
(105, 'UGAN SUGANDHI (MASYARAKAT UMUM)', NULL, NULL, 'L', '', NULL, NULL, '8', NULL, 320101, 8, '105.png', NULL, NULL, NULL),
(108, 'MUHAMMAD LUTFI (MASYARAKAT UMUM)', NULL, NULL, 'L', '', NULL, NULL, '8', NULL, 320101, 8, 'default.png', NULL, NULL, NULL),
(109, 'WILLIAM WIJAYA (MASYARAKAT UMUM)', NULL, NULL, 'L', '', NULL, NULL, '8', NULL, 320101, 8, '109.png', NULL, NULL, NULL),
(110, 'BABAN SABARNA (MASYARAKAT UMUM)', NULL, NULL, 'L', '', NULL, NULL, '8', NULL, 320101, 8, 'default.png', NULL, NULL, NULL),
(111, 'NANI KEMAL  (MASYARAKAT UMUM)', NULL, NULL, 'P', '', NULL, NULL, '8', NULL, 320101, 8, '111.png', NULL, NULL, NULL),
(112, 'DEDE ZAENAB  (MASYARAKAT UMUM)', NULL, NULL, 'P', '', NULL, NULL, '8', NULL, 320101, 8, '112.png', NULL, NULL, NULL),
(113, 'MUHTIAWAN MUHAMMAD SAPUTRA (MASYARAKAT UMUM)', NULL, NULL, 'L', '', NULL, NULL, '8', NULL, 320101, 8, '113.png', NULL, NULL, NULL),
(114, 'CITRA YULISTINA (MASYARAKAT UMUM)', NULL, NULL, 'P', '', NULL, NULL, '8', NULL, 320101, 8, '114.png', NULL, NULL, NULL),
(115, 'INDIRA DEWI BR GINTING (MASYARAKAT UMUM)', NULL, NULL, 'P', '', NULL, NULL, '8', NULL, 320101, 8, '115.png', NULL, NULL, NULL),
(116, 'YOHAN SEPTIAN (MASYARAKAT UMUM)', NULL, NULL, 'L', '', NULL, NULL, '8', NULL, 320101, 8, '116.png', NULL, NULL, NULL),
(117, 'HAMANDANA  EKA PUTRI', NULL, NULL, 'L', '', NULL, NULL, '8', NULL, 320101, 8, '117.png', NULL, NULL, NULL),
(118, 'RIDWAL KAMIL', NULL, NULL, 'L', 'Bojong Gede', NULL, NULL, '8', NULL, 320113, 142, '118.png', NULL, NULL, NULL),
(119, 'DARMA YUDHA', NULL, NULL, 'L', '(SMAN 1 CITEUREUP)', NULL, NULL, '3', NULL, 320103, 32, '119.png', NULL, NULL, NULL),
(120, 'ANDIKA RIESMAYUNI', NULL, NULL, 'L', 'SMKN 1 KEMANG', NULL, NULL, '3', NULL, 320112, 128, '120.png', NULL, NULL, NULL),
(121, 'MAYA NUR PARAMITHA', NULL, NULL, 'P', 'SMKN 1 KEMANG', NULL, NULL, '3', NULL, 320112, 128, '121.png', NULL, NULL, NULL),
(122, 'RIZKI NURSANDI ISKANDAR', NULL, NULL, 'L', 'SMAN 1 SUKARAJA', NULL, NULL, '3', NULL, 320104, 44, '122.png', NULL, NULL, NULL),
(123, 'AHMAD SOFIAN', NULL, NULL, 'L', 'SMAN 1 CARIU', NULL, NULL, '3', NULL, 320108, 90, '123.png', NULL, NULL, NULL),
(124, 'ANIS FITRIA', NULL, NULL, 'P', 'SMAN 1 NANGGUNG', NULL, NULL, '3', NULL, 320121, 244, '124.png', NULL, NULL, NULL),
(125, 'PIANSAH', NULL, NULL, 'P', 'SMAN 1 NANGGUNG', NULL, NULL, '3', NULL, 320121, 244, '125.png', NULL, NULL, NULL),
(126, 'IRWANUDIN ', NULL, NULL, 'L', 'SMAN 1 CIGOMBONG', NULL, NULL, '3', NULL, 320138, 413, '126.png', NULL, NULL, NULL),
(127, 'MUHAMMAD ZULKIFLI', NULL, NULL, 'L', 'SMAN 1 CARINGIN', NULL, NULL, '3', NULL, 320127, 311, '127.png', NULL, NULL, NULL),
(128, 'FARROS HILMI PRATAMA', NULL, NULL, 'L', 'SMAN 2 CIBINONG', NULL, NULL, '3', NULL, 320101, 2, '128.png', NULL, NULL, NULL),
(130, 'FATHYA NEYSA OKTAVIA', NULL, NULL, 'P', 'SMAN 2 CIBINONG', NULL, NULL, '3', NULL, 320101, 2, '130.png', NULL, NULL, NULL),
(131, 'KAMILA MEILINA', NULL, NULL, 'P', 'SMAN 2 CIBINONG', NULL, NULL, '3', NULL, 320101, 2, '131.png', NULL, NULL, NULL),
(132, 'ANGGITA AYU PARAMITA', NULL, NULL, 'P', 'SMAN 2 CIBINONG', NULL, NULL, '3', NULL, 320101, 2, '132.png', NULL, NULL, NULL),
(133, 'HAIFA SALSABILA HUDA', NULL, NULL, 'P', 'SMAN 1 CIAMPEA', NULL, NULL, '3', NULL, 320115, 161, '133.png', NULL, NULL, NULL),
(134, 'THANIA GITA KIRANA MASDI', NULL, NULL, 'P', 'SMAN 1 CIAMPEA', NULL, NULL, '3', NULL, 320115, 161, '134.png', NULL, NULL, NULL),
(135, 'SYAIFUL FADLI', NULL, NULL, 'L', 'SMAN 1 GUNUNG SINDUR', NULL, NULL, '3', NULL, 320111, 119, '135.png', NULL, NULL, NULL),
(136, 'ALYA SUGIARTI', NULL, NULL, 'P', 'SMAN 1  TAJURHALANG', NULL, NULL, '3', NULL, 320137, 405, 'default.png', NULL, NULL, NULL),
(137, 'MUHAMMAD RIFKY RIDWAN', NULL, NULL, 'L', 'SMK INSAN KREATTIF', NULL, NULL, '3', NULL, 320101, 12, '137.png', NULL, NULL, NULL),
(138, 'SITI AULIA', NULL, NULL, 'P', 'SMAN 1 BOJONGGEDE', NULL, NULL, '3', NULL, 320113, 136, '138.png', NULL, NULL, NULL),
(139, 'FAHMI MUFTHI', NULL, NULL, 'L', 'SMAN 1 BABAKAN MADANG', NULL, NULL, '3', NULL, 320105, 58, '139.png', NULL, NULL, NULL),
(140, 'Dian Triwahyuni', NULL, NULL, 'P', 'POLTEKKES KEMENKES BANDUNG', NULL, NULL, '4', NULL, 320101, 8, 'default.png', NULL, NULL, NULL),
(141, 'Latifah Tauhid', NULL, NULL, 'P', 'POLTEKKES KEMENKES BANDUNG', NULL, NULL, '4', NULL, 320101, 8, 'default.png', NULL, NULL, NULL),
(142, 'Naufal Ahmad Shidiq', NULL, NULL, 'L', 'UNIDA', NULL, NULL, '4', NULL, 320124, 284, '142.png', NULL, NULL, NULL),
(143, 'Andre Amba Matarru', NULL, NULL, 'L', 'UNIVERSITAS PERTAHANAN', NULL, NULL, '4', NULL, 320103, 35, '143.png', NULL, NULL, NULL),
(144, 'Siti Patimah Indriyani', NULL, NULL, 'P', 'UNIDA', NULL, NULL, '4', NULL, 320124, 284, 'default.png', NULL, NULL, NULL),
(145, 'Siti Malihatul Aviah', NULL, NULL, 'P', 'UNIDA', NULL, NULL, '4', NULL, 320124, 284, 'default.png', NULL, NULL, NULL),
(146, 'Dwi Aryanti', NULL, NULL, 'P', 'UNIDA', NULL, NULL, '4', NULL, 320124, 284, 'default.png', NULL, NULL, NULL),
(147, 'Dr. Mala Nurimala, S.TP, M.Si.', NULL, NULL, 'P', 'IPB', NULL, NULL, '4', NULL, 320130, 347, '147.png', NULL, NULL, NULL),
(148, 'Balai Pengelolaan Alih Teknologi Pertanian (BPATP)', NULL, NULL, NULL, ' ', NULL, NULL, '4', NULL, 320101, 8, 'default.png', NULL, NULL, NULL),
(149, 'ADRIANA SARI ARYANI', NULL, NULL, 'P', 'UNIVERSITAS PAKUAN', NULL, NULL, '4', NULL, 320122, 263, 'default.png', NULL, NULL, NULL),
(150, 'WAWAT SRINAWATI, S.Pd, M.Pd', NULL, NULL, 'P', 'STKIP MUAHAMMADIYAH', NULL, NULL, '4', NULL, 320114, 143, '150.png', NULL, NULL, NULL),
(151, 'Ir. LINAR HUMAIRA, M.S', NULL, NULL, 'P', 'UNIVERSITAS NUSA BANGSA', NULL, NULL, '4', NULL, 320101, 8, '151.png', NULL, NULL, NULL),
(152, 'ENENG TITA TOSIDA', NULL, NULL, 'P', 'UNIVERSITAS PAKUAN', NULL, NULL, '4', NULL, 320101, 8, '152.png', NULL, NULL, NULL),
(153, 'NICOLAS SANTORO', NULL, NULL, 'L', 'UNIVERSITAS PAKUAN', NULL, NULL, '4', NULL, 320101, 8, 'default.png', NULL, NULL, NULL),
(154, 'NABILATUN SOLIKHA', NULL, NULL, 'P', 'IPB', NULL, NULL, '4', NULL, 320130, 347, 'default.png', NULL, NULL, NULL),
(155, 'SITI AMINAH', NULL, NULL, 'P', 'UNIDA', NULL, NULL, '4', NULL, 320124, 284, 'default.png', NULL, NULL, NULL),
(156, 'PROF. Dr. Ir. NURJANAH, MS', NULL, NULL, 'P', 'IPB', NULL, NULL, '4', NULL, 320130, 347, '156.png', NULL, NULL, NULL),
(157, 'JUANG GEMA KARTIKA, SP.M,SI', NULL, NULL, 'P', 'IPB', NULL, NULL, '4', NULL, 320130, 347, '157.png', NULL, NULL, NULL),
(158, 'Dr. RISTIKA HADARINI', NULL, NULL, 'P', 'UNIDA', NULL, NULL, '4', NULL, 320124, 284, '158.png', NULL, NULL, NULL),
(159, 'Dr. Ir. MARDIAH , M.Si', NULL, NULL, 'P', 'UNIDA', NULL, NULL, '4', NULL, 320124, 284, '159.png', NULL, NULL, NULL),
(160, 'MAMAY MASLAHAT', NULL, NULL, 'P', 'UNIVERSITAS NUSA BANGSA', NULL, NULL, '4', NULL, 320101, 8, '160.png', NULL, NULL, NULL),
(161, 'KECAMATAN BABAKAN MADANG', NULL, NULL, NULL, 'KECAMATAN BABAKAN MADANG', NULL, NULL, '5', NULL, 320105, 58, '161.png', NULL, NULL, NULL),
(162, 'KECAMATA MEGAMENDUNG', NULL, NULL, NULL, 'KECAMATA MEGAMENDUNG', NULL, NULL, '5', NULL, 320126, 300, '162.png', NULL, NULL, NULL),
(163, 'DINAS KESEHATAN', NULL, NULL, NULL, 'DINAS KESEHATAN', NULL, NULL, '5', NULL, 320101, 8, '163.png', NULL, NULL, NULL),
(164, 'DINAS PENDIDIKAN', NULL, NULL, NULL, 'DINAS PENDIDIKAN', NULL, NULL, '5', NULL, 320101, 8, 'default.png', NULL, NULL, NULL),
(165, 'RSUD CIBINONG', NULL, NULL, NULL, 'RSUD CIBINONG', NULL, NULL, '5', NULL, 320101, 8, 'default.png', NULL, NULL, NULL),
(166, 'INSPEKTORAT', NULL, NULL, NULL, 'INSPEKTORAT', NULL, NULL, '5', NULL, 320101, 8, 'default.png', NULL, NULL, NULL),
(167, 'DINAS PERUMAHAN, KAWASAN PERMUKIMAN DAN PERTANAHAN', NULL, NULL, NULL, 'DINAS PERUMAHAN, KAWASAN PERMUKIMAN DAN PERTANAHAN (DPKPP)', NULL, NULL, '5', NULL, 320101, 8, 'default.png', NULL, NULL, NULL),
(168, 'DINAS LINGKUNGAN HIDUP', NULL, NULL, NULL, 'DINAS LINGKUNGAN HIDUP', NULL, NULL, '5', NULL, 320101, 8, 'default.png', NULL, NULL, NULL),
(169, 'DP3AP2KB', NULL, NULL, NULL, 'DP3AP2KB', NULL, NULL, '5', NULL, 320101, 8, 'default.png', NULL, NULL, NULL),
(170, 'DISKOP-UKM', NULL, NULL, NULL, 'DISKOP-UKM', NULL, NULL, '5', NULL, 320101, 8, 'default.png', NULL, NULL, NULL),
(171, 'DINAS KETAHANAN PANGAN', NULL, NULL, NULL, 'DINAS KETAHANAN PANGAN', NULL, NULL, '5', NULL, 320101, 8, 'default.png', NULL, NULL, NULL),
(172, 'BUDI SOLEH KURNIAWAN, SE', NULL, NULL, 'L', 'KELURAHAN PABUARAN', NULL, NULL, '5', NULL, 320101, 12, '172.png', NULL, NULL, NULL),
(173, 'Hj. ARUM BEKTI PERTIWI', NULL, NULL, 'P', 'JONGGOL', NULL, NULL, '5', NULL, 320106, 68, 'default.png', NULL, NULL, NULL),
(174, 'ERNI WINARTI', NULL, NULL, 'P', 'CIAWI', NULL, NULL, '5', NULL, 320124, 284, 'default.png', NULL, NULL, NULL),
(175, 'Ir. Hj. NAN DJUNARNI, MSc', NULL, NULL, 'P', 'CIAWI', NULL, NULL, '5', NULL, 320124, 284, 'default.png', NULL, NULL, NULL),
(176, 'SULASTRI APRIYANTI', NULL, NULL, 'P', 'KLAPANUNGGAL', NULL, NULL, '5', NULL, 320132, 358, 'default.png', NULL, NULL, NULL),
(177, 'ABDUL AJIZ', NULL, NULL, 'L', 'CIJERUK', NULL, NULL, '5', NULL, 320128, 320, 'default.png', NULL, NULL, NULL),
(178, 'ABDUL AJIZ', NULL, NULL, 'L', 'CIJERUK', NULL, NULL, '5', NULL, 320128, 320, '178.png', NULL, NULL, NULL),
(179, 'WAWAN RISWANDA', NULL, NULL, 'L', 'MEGAMENDUNG', NULL, NULL, '5', NULL, 320126, 300, 'default.png', NULL, NULL, NULL),
(180, 'IYAN', NULL, NULL, 'L', 'NANGGUNG', NULL, NULL, '5', NULL, 320121, 244, 'default.png', NULL, NULL, NULL),
(181, 'TPID CARINGIN', NULL, NULL, NULL, 'CARINGIN', NULL, NULL, '5', NULL, 320127, 311, '181.png', NULL, NULL, NULL),
(182, 'dr. DINI SRIE AGUSTIN', NULL, NULL, 'P', 'PAPIH (PARUNG PEDULI HOIV/AIDS)', NULL, NULL, '9', NULL, 320110, 106, 'default.png', NULL, NULL, NULL),
(183, 'dr. JAMES GH TAMBUNAN', NULL, NULL, 'L', 'Desa Cibatok', NULL, NULL, '9', NULL, 320116, 170, '183.png', NULL, NULL, NULL),
(184, 'SHELVIANA HANDAYANI, STR.KEB', NULL, NULL, 'P', 'JARAPAN (REMAJA GENERASI TERDEPAN)', NULL, NULL, '9', NULL, 320101, 6, '184.png', NULL, NULL, NULL),
(185, 'dr. TAVIP TRIJONO', NULL, NULL, 'L', 'FORMULA PEKAT (FORMULA MASYARAKAT PEDULI KEHAMILAN DAN PERSALINAN SEHAT)', NULL, NULL, '9', NULL, 320101, 6, '185.png', NULL, NULL, NULL),
(186, 'dr. VERA LINDA', NULL, NULL, 'P', 'POLLING (POS BINDU KELILING)', NULL, NULL, '9', NULL, 320101, 6, 'default.png', NULL, NULL, NULL),
(187, 'dr. VERA LINDA', NULL, NULL, 'P', 'ANTARIKSA (ANTAR DAN PERIKSA)', NULL, NULL, '9', NULL, 320101, 6, '187.png', NULL, NULL, NULL),
(188, 'LELI', NULL, NULL, 'L', 'KTP JAMPANG (KEBON TOGA PERCONTOHAN)', NULL, NULL, '9', NULL, 320112, 128, '188.png', NULL, NULL, NULL),
(189, 'dr. VERA LINDA', NULL, NULL, 'P', 'JABESUNG (JAMPANG BEBAS PASUNG)', NULL, NULL, '9', NULL, 320112, 128, 'default.png', NULL, NULL, NULL),
(190, 'dr. VERA LINDA', NULL, NULL, 'P', 'GEMAR ANTING MASS ( GERAKAN MASYARAKAT ANTI STUNTING DENGAN MONITORING AKTIF SUPAYA SEHAT)', NULL, NULL, '9', NULL, 320112, 128, 'default.png', NULL, NULL, NULL),
(191, 'dr. VERA LINDA', NULL, NULL, 'P', 'APIK (ANAK PEMANTAU JENTIK)', NULL, NULL, '9', NULL, 320112, 128, 'default.png', NULL, NULL, NULL),
(192, 'FRISKA DEVITA SARI', NULL, NULL, 'P', 'U-PELITA (Urang PEduli PenderitA Gangguan JiwA)', NULL, NULL, '9', NULL, 320101, 6, '192.png', NULL, NULL, NULL),
(193, 'PIPIH SOPIAH, AMK', NULL, NULL, 'P', 'BERKASI (BERI KAMI KESEMPATAN HIDUP BAHAGIA)', NULL, NULL, '9', NULL, 320101, 6, '193.png', NULL, NULL, NULL),
(194, 'dr. SITI MASITOH', NULL, NULL, 'P', 'PESAT JIWA (PELAYANAN KESEHATAN JIWA)', NULL, NULL, '9', NULL, 320101, 6, 'default.png', NULL, NULL, NULL),
(195, 'drg. DONI ARIA CANDRA', NULL, NULL, 'L', 'CITA KERSA WARGA TPA GALUGA', NULL, NULL, '9', NULL, 320116, 180, 'default.png', NULL, NULL, NULL),
(196, 'dr. INDYAH RUKMI WIRASTUTI', NULL, NULL, 'P', 'MAMA BUSER (MARI MAKAN BUAH SEGAR)', NULL, NULL, '9', NULL, 320113, 142, '196.png', NULL, NULL, NULL),
(197, 'dr. MOHAMAD IRFAN', NULL, NULL, 'L', 'PELAYANAN RAMAH LANSIA, IBU HAMIL DAN ANAK BERKEBUTUHAN KHUSUS DIPOLI GIGI DAN MULUT', NULL, NULL, '9', NULL, 320101, 6, 'default.png', NULL, NULL, NULL),
(198, 'SUKMAWATI', NULL, NULL, 'P', 'KEBAL MSG (KELOMPOK BALITA MAKANAN SEHAT DAN BERGIZI)', NULL, NULL, '9', NULL, 320102, 20, 'default.png', NULL, NULL, NULL),
(199, 'SRI HARDANI', NULL, NULL, 'P', 'PHK (PEMANTAUAN IBU HAMIL OLEH KADER)', NULL, NULL, '9', NULL, 320101, 6, 'default.png', NULL, NULL, NULL),
(200, 'ALIVA IKMA YUHATARI', NULL, NULL, 'P', 'GREBEK AIR MU', NULL, NULL, '9', NULL, 320101, 6, 'default.png', NULL, NULL, NULL),
(201, 'PUSKESMAS CICANGKAL', NULL, NULL, NULL, 'PUSKESMAS CICANGKAL', NULL, NULL, '9', NULL, 320118, 206, '201.png', NULL, NULL, NULL),
(202, 'PUSKESMAS CICANGKAL', NULL, NULL, NULL, 'PUSKESMAS CICANGKAL', NULL, NULL, '9', NULL, 320118, 206, 'default.png', NULL, NULL, NULL),
(203, 'IQBAL ZAINUL HAQ', NULL, NULL, 'L', 'SIASAT (SIARAN SEHAT)', NULL, NULL, '9', NULL, 320101, 6, '203.png', NULL, NULL, NULL),
(204, 'dr. ADI NURYADIN', NULL, NULL, 'L', 'KOPI GANJA (KELOMPOK PEDULI GANGGUAN JIWA)', NULL, NULL, '9', NULL, 320136, 395, '204.png', NULL, NULL, NULL),
(205, 'dr. Ilmi', NULL, NULL, 'P', 'SIAGA NGAJURU', NULL, NULL, '9', NULL, 320118, 200, '205.png', NULL, NULL, NULL),
(206, 'dr. RIKA', NULL, NULL, 'P', 'TOWS (TB ONE WAY SERVIS)', NULL, NULL, '9', NULL, 320101, 6, 'default.png', NULL, NULL, NULL),
(207, '', NULL, NULL, NULL, 'SAKINAH ( SREENING, KONSELING CALON PENGANTIN TANG HARMONIS)', NULL, NULL, '9', NULL, 320101, 6, 'default.png', NULL, NULL, NULL),
(208, '', NULL, NULL, NULL, 'TIRIS ( TEST IVA RENCANA IBU SEHAT )', NULL, NULL, '9', NULL, 320101, 6, 'default.png', NULL, NULL, NULL),
(209, '', NULL, NULL, NULL, 'TAWAS IMUNISASI (TABEL, WHATS APP, SERTIFIKAT)', NULL, NULL, '9', NULL, 320101, 6, 'default.png', NULL, NULL, NULL),
(210, 'ROSANO DWI MONTANA, AMP, Kep', NULL, NULL, 'P', 'PUSKEMAS SUKADAMAI', NULL, NULL, '9', NULL, 320109, 98, '210.png', NULL, NULL, NULL),
(211, 'UGAN SUGANDHI', NULL, NULL, 'L', 'DRAMAGA', NULL, NULL, '8', NULL, 320130, 348, '211.png', NULL, NULL, NULL),
(213, 'SRI SAKTI EKAWATI', NULL, NULL, 'P', 'BOJONG GEDE', NULL, NULL, '8', NULL, 320113, 142, '213.png', NULL, NULL, NULL),
(214, 'Dr. YANIF DWI KUNCORO', NULL, NULL, 'L', 'GUNUNG PUTRI', NULL, NULL, '8', NULL, 320102, 17, '214.png', NULL, NULL, NULL),
(215, 'SITI NURHASANAH', NULL, NULL, 'P', 'CIBINONG', NULL, NULL, '8', NULL, 320101, 6, '215.png', NULL, NULL, NULL),
(216, 'Dr. SUDARNO', NULL, NULL, 'L', 'CIBUNBULANG', NULL, NULL, '8', NULL, 320116, 173, '216.png', NULL, NULL, NULL),
(217, 'BETTY NURBAETY', NULL, NULL, 'P', 'LEUWILIANG', NULL, NULL, '8', NULL, 320114, 143, '217.png', NULL, NULL, NULL),
(218, 'ARIYANTO', NULL, NULL, 'L', 'CIAMPEA', NULL, NULL, '8', NULL, 320115, 154, '218.png', NULL, NULL, NULL),
(219, 'SITI MARYAM', NULL, NULL, 'P', 'CIBINONG', NULL, NULL, '8', NULL, 320101, 6, '219.png', NULL, NULL, NULL),
(220, 'RACHMIWATI', NULL, NULL, 'P', 'CILEUNGSI', NULL, NULL, '8', NULL, 320107, 85, '220.png', NULL, NULL, NULL),
(221, 'INDIRA DEWI BR GINTING', NULL, NULL, 'P', 'CIBINONG', NULL, NULL, '8', NULL, 320101, 6, '221.png', NULL, NULL, NULL),
(222, 'HARUN ARASYID', NULL, NULL, 'L', 'CIAWI', NULL, NULL, '8', NULL, 320124, 284, '222.png', NULL, NULL, NULL),
(223, 'PUGUH LESTARI WIYONO', NULL, NULL, 'L', 'CITEUREUP', NULL, NULL, '8', NULL, 320103, 27, '223.png', NULL, NULL, NULL),
(224, 'H. NYOTO', NULL, NULL, 'L', 'CITEUREUP', NULL, NULL, '8', NULL, 320103, 27, '224.png', NULL, NULL, NULL),
(225, 'HERIYANTO,S.Kom', NULL, NULL, 'L', 'CITEUREUP', NULL, NULL, '8', NULL, 320103, 27, '225.png', NULL, NULL, NULL),
(226, 'AZIZAH HALIMAH', NULL, NULL, 'P', 'TAMANSARI', NULL, NULL, '8', NULL, 320131, 353, '226.png', NULL, NULL, NULL),
(227, 'FEBRI YANTI', NULL, NULL, 'P', '', NULL, NULL, '8', NULL, 320115, 154, '227.png', NULL, NULL, NULL),
(228, 'SITI MUSIROH', NULL, NULL, 'P', '', NULL, NULL, '8', NULL, 320124, 284, '228.png', NULL, NULL, NULL),
(229, 'ROBIYANSAH', NULL, NULL, 'L', 'CIBINONG', NULL, NULL, '8', NULL, 320101, 6, 'default.png', NULL, NULL, NULL),
(230, 'IMAS HAYATI', NULL, NULL, 'P', 'CIBINONG', NULL, NULL, '8', NULL, 320101, 6, '230.png', NULL, NULL, NULL),
(231, 'WIDA WININGSIH', NULL, NULL, 'P', 'DRAMAGA', NULL, NULL, '8', NULL, 320130, 348, 'default.png', NULL, NULL, NULL),
(232, 'INDARIYANTI', NULL, NULL, 'P', 'BOJONG GEDE', NULL, NULL, '8', NULL, 320113, 142, 'default.png', NULL, NULL, NULL),
(233, 'INDARIYANTI', NULL, NULL, 'P', 'BOJONG GEDE', NULL, NULL, '8', NULL, 320113, 142, 'default.png', NULL, NULL, NULL),
(234, 'EDI KUSNAEDI', NULL, NULL, 'L', 'CISARUA', NULL, NULL, '8', NULL, 320125, 286, '234.png', NULL, NULL, NULL),
(235, 'RENDY RENALDI AGUSTIAN', NULL, NULL, 'L', 'PAMIJAHAN', NULL, NULL, '8', NULL, 320117, 189, '235.png', NULL, NULL, NULL),
(239, 'HERU MAHA PUTRA', NULL, NULL, 'L', 'PARUNG', NULL, NULL, '8', NULL, 320110, 106, '239.png', NULL, NULL, NULL),
(240, 'DIANTI', NULL, NULL, 'P', 'SMAN 1 CIGOMBONG', NULL, NULL, '3', NULL, 320138, 413, 'default.png', NULL, NULL, NULL),
(241, 'MUHAMMAD ASNUR RAMDANI', NULL, NULL, 'L', 'SMK INSAN KREATIF', NULL, NULL, '3', NULL, 320101, 12, 'default.png', NULL, NULL, NULL),
(242, 'DZUL ARSI MAJID ANWAR', NULL, NULL, 'L', 'SMK INSAN KREATIF', NULL, NULL, '3', NULL, 320101, 12, 'default.png', NULL, NULL, NULL),
(243, 'RAFLY SAPUTRA', NULL, NULL, 'L', 'SMK INSAN KREATIF', NULL, NULL, '3', NULL, 320101, 12, 'default.png', NULL, NULL, NULL),
(244, 'MUHAMMAD RAMDANI', NULL, NULL, 'L', 'SMK INSAN KREATIF', NULL, NULL, '3', NULL, 320101, 12, 'default.png', NULL, NULL, NULL),
(245, 'AHMAD ABDILLAH', NULL, NULL, 'L', 'SMK INSAN KREATIF', NULL, NULL, '3', NULL, 320101, 12, 'default.png', NULL, NULL, NULL),
(246, 'SHAHRANI NAWAWI', NULL, NULL, 'L', 'SMAN 1 BOJONG GEDE', NULL, NULL, '3', NULL, 320113, 136, '246.png', NULL, NULL, NULL),
(247, 'SAKURA LAILA SANTOSO', NULL, NULL, 'P', 'SMAN 2 CIBINONG', NULL, NULL, '3', NULL, 320101, 2, 'default.png', NULL, NULL, NULL),
(248, 'ANGGITA AYU PARAMITA', NULL, NULL, 'P', 'SMAN 2 CIBINONG', NULL, NULL, '3', NULL, 320101, 2, 'default.png', NULL, NULL, NULL),
(249, 'ARFIA MAHARANI', NULL, NULL, 'P', 'SMAN 2 CIBINONG', NULL, NULL, '3', NULL, 320101, 2, 'default.png', NULL, NULL, NULL),
(250, 'FRIDA AGISTINA', NULL, NULL, 'P', 'SMAN 1 CIAMPEA', NULL, NULL, '3', NULL, 320115, 161, 'default.png', NULL, NULL, NULL),
(251, 'SYVA PUTRI AZ-ZAHRA', NULL, NULL, 'P', 'SMAN 1 CIAMPEA', NULL, NULL, '3', NULL, 320115, 161, 'default.png', NULL, NULL, NULL),
(252, 'ANISA AMBARWATI', NULL, NULL, 'P', 'SMAN 1 BABAKAN MADANG', NULL, NULL, '3', NULL, 320105, 58, 'default.png', NULL, NULL, NULL),
(253, 'RYAN YUSUF FIRDAUS', NULL, NULL, 'L', 'SMAN 1 BABAKAN MADANG', NULL, NULL, '3', NULL, 320105, 58, 'default.png', NULL, NULL, NULL),
(254, 'ANNABILA FATIMAH', NULL, NULL, 'P', 'SMAN 1 CIAWI', NULL, NULL, '3', NULL, 320124, 283, 'default.png', NULL, NULL, NULL),
(255, 'SYIFA MEIDINA PUTRI', NULL, NULL, 'P', 'SMAN 1 CITEUREUP', NULL, NULL, '3', NULL, 320103, 32, 'default.png', NULL, NULL, NULL),
(256, 'DARMA YUDHA', NULL, NULL, 'L', 'SMAN 1 CITEUREUP', NULL, NULL, '3', NULL, 320103, 32, '256.png', NULL, NULL, NULL),
(257, 'RISKA AWALIYAH', NULL, NULL, 'P', 'SMAN NANGGUNG', NULL, NULL, '3', NULL, 320121, 244, '257.png', NULL, NULL, NULL),
(258, 'RISKA AWALIYAH', NULL, NULL, 'P', 'SMAN NANGGUNG', NULL, NULL, '3', NULL, 320121, 244, '258.png', NULL, NULL, NULL),
(259, 'ALTIA PURI', NULL, NULL, 'P', 'SMKN LEUWILIANG', NULL, NULL, '3', NULL, 320114, 149, 'default.png', NULL, NULL, NULL),
(260, 'SRI HANDAYANI', NULL, NULL, 'P', 'SMAN 1 TENJOLAYA', NULL, NULL, '3', NULL, 320140, 429, 'default.png', NULL, NULL, NULL),
(261, 'ADELA SEPTIA', NULL, NULL, 'P', 'SMK KESEHATAN Prof.dr.MOESTOPO', NULL, NULL, '3', NULL, 320139, 428, 'default.png', NULL, NULL, NULL),
(262, 'DYAH ALIT ANANDITA', NULL, NULL, 'P', 'SMAN 1 DRAMAGA', NULL, NULL, '3', NULL, 320130, 348, 'default.png', NULL, NULL, NULL),
(263, 'AHMAD RANUAGRIRI', NULL, NULL, 'L', 'SMAN 1 DRAMAGA', NULL, NULL, '3', NULL, 320130, 348, 'default.png', NULL, NULL, NULL),
(264, 'DESIYANTI', NULL, NULL, 'P', 'SMAN 1 DRAMAGA', NULL, NULL, '3', NULL, 320130, 348, 'default.png', NULL, NULL, NULL),
(265, 'SABRINA NURHALIZA', NULL, NULL, 'P', 'SMA CITRA NUSA', NULL, NULL, '3', NULL, 320101, 8, 'default.png', NULL, NULL, NULL),
(266, 'MUHAMMAD FAHRI SUGANDHI', NULL, NULL, 'L', 'SMPN 4 LEUWILIANG', NULL, NULL, '3', NULL, 320114, 152, '266.png', NULL, NULL, NULL),
(267, 'AKBAR MAULANA', NULL, NULL, 'L', 'SMPN 4 LEUWILIANG', NULL, NULL, '3', NULL, 320114, 152, '267.png', NULL, NULL, NULL),
(268, 'PUTRI LURI', NULL, NULL, 'P', 'SMPN 1 CIBINONG', NULL, NULL, '3', NULL, 320101, 10, '268.png', NULL, NULL, NULL),
(269, 'SARAH MURALIFA', NULL, NULL, 'P', 'SMPN 1 CIBINONG', NULL, NULL, '3', NULL, 320101, 10, '269.png', NULL, NULL, NULL),
(270, 'ALDY', NULL, NULL, 'L', 'SMPN 1 CIBINONG', NULL, NULL, '3', NULL, 320101, 10, '270.png', NULL, NULL, NULL),
(271, 'AHMAD FADHIL ABIYYU', NULL, NULL, 'L', 'SMP CITRANUSA', NULL, NULL, '3', NULL, 320101, 8, 'default.png', NULL, NULL, NULL),
(272, 'SALSABILA', NULL, NULL, 'P', 'SMP ISLAM MIFTAHUL HUDA', NULL, NULL, '3', NULL, 320126, 304, 'default.png', NULL, NULL, NULL),
(273, 'Prof. Dr.Ir. NURJANAH, MS', NULL, NULL, 'P', 'IPB', NULL, NULL, '4', NULL, 320130, 347, '273.png', NULL, NULL, NULL),
(274, 'Dr.ASSADATUN ABDULLAH, Spi, Msi, MSM', NULL, NULL, 'L', 'IPB', NULL, NULL, '4', NULL, 320130, 347, '274.png', NULL, NULL, NULL),
(275, 'AMINULLAH, STP, Msi', NULL, NULL, 'P', 'UNIVERSITAS DJUANDA', NULL, NULL, '4', NULL, 320124, 284, '275.png', NULL, NULL, NULL),
(276, 'IMMAS NURHAYATI', NULL, NULL, 'P', 'UNIVERSITAS IBNU KHALDHUN (UIKA)', NULL, NULL, '4', NULL, 320101, 8, '276.png', NULL, NULL, NULL),
(277, 'Ir. M. HARLANSYAH, MT', NULL, NULL, 'L', 'UNIVERSITAS IBNU KHALDHUN (UIKA)', NULL, NULL, '4', NULL, 320101, 8, '277.png', NULL, NULL, NULL),
(278, 'Dr. SITI NIKMATIN', NULL, NULL, 'P', 'IPB', NULL, NULL, '4', NULL, 320130, 347, '278.png', NULL, NULL, NULL),
(279, 'PUTRI RIA ANGELINA, M.Pd.Kons', NULL, NULL, 'P', 'UNIVERSITAS IBNU KHALDHUN (UIKA)', NULL, NULL, '4', NULL, 320101, 8, 'default.png', NULL, NULL, NULL),
(280, 'ENENG TITA TOSIDA', NULL, NULL, 'P', 'UNIVERSITAS PAKUAN (UNPAK)', NULL, NULL, '4', NULL, 320101, 8, '280.png', NULL, NULL, NULL),
(281, 'ROSY HUTAMI,S.TP, M.Si', NULL, NULL, 'P', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '4', NULL, 320124, 284, 'default.png', NULL, NULL, NULL),
(282, 'BADAN PENGELOLAAN KEUANGAN DAN ASET DAERAH', NULL, NULL, NULL, 'BADAN PENGELOLAAN KEUANGAN DAN ASET DAERAH', NULL, NULL, '7', NULL, 320101, 8, '282.png', NULL, NULL, NULL),
(283, 'DINAS TANAMAN PANGAN, HORTIKULTURA DAN PERKEBUNAN', NULL, NULL, NULL, 'DINAS TANAMAN PANGAN, HORTIKULTURA DAN PERKEBUNAN', NULL, NULL, '7', NULL, 320101, 8, '283.png', NULL, NULL, NULL),
(284, 'RSUD LEUWILIANG', NULL, NULL, NULL, 'RSUD LEUWILIANG', NULL, NULL, '7', NULL, 320114, 151, '284.png', NULL, NULL, NULL),
(285, 'DINAS KEPENDUDUKAN DAN PENCATATAN SIPIL', NULL, NULL, NULL, 'DINAS KEPENDUDUKAN DAN PENCATATAN SIPIL', NULL, NULL, '7', NULL, 320101, 8, '285.png', NULL, NULL, NULL),
(286, 'DINAS PENANAMAN MODAL, PERIZINAN TERPADU SATU PINT', NULL, NULL, NULL, 'DINAS PENANAMAN MODAL, PERIZINAN TERPADU SATU PINTU', NULL, NULL, '7', NULL, 320101, 8, '286.png', NULL, NULL, NULL),
(287, 'DINAS KESEHATAN', NULL, NULL, NULL, 'DINAS KESEHATAN', NULL, NULL, '7', NULL, 320101, 8, '287.png', NULL, NULL, NULL),
(288, 'DINAS KETAHANAN PANGAN', NULL, NULL, NULL, 'DINAS KETAHANAN PANGAN', NULL, NULL, '7', NULL, 320101, 8, '288.png', NULL, NULL, NULL),
(289, 'DINAS KOPERASI USAHA KECIL DAN MENENGAH', NULL, NULL, NULL, 'DINAS KOPERASI USAHA KECIL DAN MENENGAH', NULL, NULL, '7', NULL, 320101, 8, '289.png', NULL, NULL, NULL),
(290, 'DINAS PEMADAM KEBAKARAN', NULL, NULL, NULL, 'DINAS PEMADAM KEBAKARAN', NULL, NULL, '7', NULL, 320101, 7, '290.png', NULL, NULL, NULL),
(291, 'DINAS PENDIDIKAN', NULL, NULL, NULL, 'DINAS PENDIDIKAN', NULL, NULL, '7', NULL, 320101, 8, 'default.png', NULL, NULL, NULL),
(292, 'RSUD CIAWI', NULL, NULL, NULL, 'RSUD CIAWI', NULL, NULL, '7', NULL, 320124, 280, '292.png', NULL, NULL, NULL),
(293, 'DINAS KETAHANAN PANGAN', NULL, NULL, NULL, 'DINAS KETAHANAN PANGAN', NULL, NULL, '7', NULL, 320101, 8, 'default.png', NULL, NULL, NULL),
(294, 'KECAMATAN BABAKAN MADANG', NULL, NULL, NULL, 'KECAMATAN BABAKAN MADANG', NULL, NULL, '5', NULL, 320105, 58, 'default.png', NULL, NULL, NULL),
(295, 'KECAMATAN CIBINONG', NULL, NULL, NULL, 'Kecamatan Cibinong', NULL, NULL, '5', NULL, 320101, 6, '295.png', NULL, NULL, NULL),
(296, 'KECAMATAN PARUNG', NULL, NULL, NULL, 'Kecamatan Parung', NULL, NULL, '5', NULL, 320110, 106, '296.png', NULL, NULL, NULL),
(297, 'KECAMATAN KEMANG', NULL, NULL, NULL, 'Kecamatan Kemang', NULL, NULL, '5', NULL, 320112, 128, '297.png', NULL, NULL, NULL),
(298, 'KECAMATAN PARUNG PANJANG', NULL, NULL, NULL, 'Kecamatan Parung Panjang', NULL, NULL, '5', NULL, 320120, 232, 'default.png', NULL, NULL, NULL),
(299, 'KECAMATAN RUMPIN', NULL, NULL, NULL, 'Kecamatan Rumpin', NULL, NULL, '5', NULL, 320118, 197, '299.png', NULL, NULL, NULL),
(300, 'KECAMATAN TANJUNGSARI', NULL, NULL, NULL, 'Kecamatan Tanjungsari', NULL, NULL, '5', NULL, 320136, 395, '300.png', NULL, NULL, NULL),
(301, 'KECAMATAN KLAPANUNGGAL', NULL, NULL, NULL, 'Kecamatn Klapanunggal', NULL, NULL, '5', NULL, 320132, 358, 'default.png', NULL, NULL, NULL),
(302, 'KECAMATAN KLAPANUNGGAL', NULL, NULL, NULL, 'Kecamatan Klapanunggal', NULL, NULL, '5', NULL, 320132, 358, 'default.png', NULL, NULL, NULL),
(303, 'KECAMATAN KLAPANUNGGAL', NULL, NULL, NULL, 'Kecamatn Klapanunggal', NULL, NULL, '5', NULL, 320132, 358, 'default.png', NULL, NULL, NULL),
(304, 'KECAMATAN KLAPANUNGGAL', NULL, NULL, NULL, 'Kecamatn Klapanunggal', NULL, NULL, '5', NULL, 320132, 358, 'default.png', NULL, NULL, NULL),
(305, 'KECAMATAN CIOMAS', NULL, NULL, NULL, 'Kecamatan Ciomas', NULL, NULL, '5', NULL, 320129, 333, 'default.png', NULL, NULL, NULL),
(306, 'KECAMATAN CIBINONG', NULL, NULL, NULL, 'Kecamatan Cibinong', NULL, NULL, '5', NULL, 320101, 6, 'default.png', NULL, NULL, NULL),
(307, 'KECAMATAN CIITEUREUP', NULL, NULL, NULL, 'Kecamatan Citeureup', NULL, NULL, '5', NULL, 320103, 27, '307.png', NULL, NULL, NULL),
(308, 'KELURAHAN CIRIUNG', NULL, NULL, NULL, 'KELURAHAN CIRIUNG', NULL, NULL, '5', NULL, 320101, 6, '308.png', NULL, NULL, NULL),
(309, 'KELURAHAN KARADENAN', NULL, NULL, NULL, 'KELURAHAN KARADENAN', NULL, NULL, '5', NULL, 320101, 2, '309.png', NULL, NULL, NULL),
(310, 'KELURAHAN NANGGEWER MEKAR', NULL, NULL, NULL, 'KELURAHAN NANGGEWER MEKAR', NULL, NULL, '5', NULL, 320101, 5, '310.png', NULL, NULL, NULL),
(311, 'DESA TAJUR', NULL, NULL, NULL, 'Desa Tajur', NULL, NULL, '5', NULL, 320103, 29, '311.png', NULL, NULL, NULL),
(312, 'DESA GUNUNG PUTRI', NULL, NULL, NULL, 'Desa Gunung Putri', NULL, NULL, '5', NULL, 320102, 17, 'default.png', NULL, NULL, NULL),
(313, 'PUSKESMAS PURASEDA', NULL, NULL, NULL, 'Puraseda, Leuwiliang, Bogor, West Java 16640', NULL, NULL, '9', NULL, 320114, 150, '313.png', NULL, NULL, NULL),
(314, 'PUSKESMAS JAMPANG', NULL, NULL, NULL, 'Jl. Kp. Jampang No.42, RT.1/RW.6, Jampang, Kec. Kemang, Bogor, Jawa Barat 16310', NULL, NULL, '9', NULL, 320112, 131, '314.png', NULL, NULL, NULL),
(315, 'PUSKESMAS CIAPUS', NULL, NULL, NULL, 'JL Raya Sukamakmur, Sukamakmur. Ciomas, Sukamakmur, Ciomas, Bogor, Jawa Barat 16610', NULL, NULL, '9', NULL, 320129, 335, '315.png', NULL, NULL, NULL),
(316, 'PUSKESMAS CURUG', NULL, NULL, NULL, 'Jl. Raya Rangkas Bitung - Bogor Km.38, Kec. Jasinga, Bogor\nBogor, Jawa Barat, Indonesia 16670', NULL, NULL, '9', NULL, 320119, 211, '316.png', NULL, NULL, NULL),
(317, 'PUSKESMAS JASINGA', NULL, NULL, NULL, 'Pamagersari, Jasinga, Bogor, West Java 16670', NULL, NULL, '9', NULL, 320119, 222, '317.png', NULL, NULL, NULL),
(318, 'PUSKESMAS CANGKURAWOK', NULL, NULL, NULL, 'Jalan Raya Desa Cikarawang, RT.004/RW.006, Babakan, Kec. Dramaga, Bogor, Jawa Barat 16680', NULL, NULL, '9', NULL, 320130, 347, '318.png', NULL, NULL, NULL),
(319, 'PUSKESMAS CIAWI', NULL, NULL, NULL, 'Pakemitan, Ciawi, Tasikmalaya, West Java 46156', NULL, NULL, '9', NULL, 320124, 280, 'default.png', NULL, NULL, NULL),
(320, 'PUSKESMAS SULIWER', NULL, NULL, NULL, 'Jl. Raya Pahlawan No.30, RW.5, Cibinong, Kec. Gn. Sindur, Bogor, Jawa Barat 16340', NULL, NULL, '9', NULL, 320101, 6, '320.png', NULL, NULL, NULL),
(321, 'PUSKESMAS BABAKAN MADANG', NULL, NULL, NULL, 'Jl. Raya Babakan Madang No.32, RT.4/RW.2, Babakan Madang, Kec. Babakan Madang, Bogor, Jawa Barat 16810', NULL, NULL, '9', NULL, 320105, 58, '321.png', NULL, NULL, NULL),
(322, 'PUSKESMAS LEUWINUTUG', NULL, NULL, NULL, 'Jl. Leuwi Nutug No.35, Leuwinutug, Kec. Citeureup, Bogor, Jawa Barat 16810', NULL, NULL, '9', NULL, 320103, 28, '322.png', NULL, NULL, NULL),
(323, 'PUSKESMAS TANJUNGSARI', NULL, NULL, NULL, 'Sirnasari, Tanjungsari, Bogor, West Java 16840', NULL, NULL, '9', NULL, 320136, 402, '323.png', NULL, NULL, NULL),
(324, 'PUSKESMAS CIJERUK', NULL, NULL, NULL, 'Jl. RE Sumanta Direja No.424, Tj. Sari, Kec. Cijeruk, Bogor, Jawa Barat 16740', NULL, NULL, '9', NULL, 320128, 328, '324.png', NULL, NULL, NULL),
(325, 'PUSKESMAS SUKARESMI', NULL, NULL, NULL, 'Jl. mariwati Taman Bunga Nusantara, Kawungluwuk, Kec. Sukaresmi, Kabupaten Cianjur, Jawa Barat 43254', NULL, NULL, '9', NULL, 320131, 355, '325.png', NULL, NULL, NULL),
(326, 'PUSKESMAS PARUNG PANJANG', NULL, NULL, NULL, 'Jl. Mohamad Toha No.3, Cibunar, Kec. Parung Panjang, Bogor, Jawa Barat 16360', NULL, NULL, '9', NULL, 320120, 234, 'default.png', NULL, NULL, NULL),
(327, 'PUSKESMAS CIBENING', NULL, NULL, NULL, 'Jl. Kapten Dasuki Bakri No.1, Cibening, Kec. Pamijahan, Bogor, Jawa Barat 16810', NULL, NULL, '9', NULL, 320117, 190, '327.png', NULL, NULL, NULL),
(328, 'PUSKEMAS SIRNAGLIH', NULL, NULL, NULL, 'Jl. Raya Ciapus desa No.RT.04/01, Sirnagalih, Kec. Tamansari, Bogor, Jawa Barat 16610', NULL, NULL, '9', NULL, 320131, 351, '328.png', NULL, NULL, NULL),
(329, 'PUSKESMAS LEBAK WANGI', NULL, NULL, NULL, 'Jl. Raya Lebakwangi - Parung Panjang Ds. Rengasjajar, Kec. Cigudeg, Bogor\nBogor, Jawa Barat, Indonesia 16660', NULL, NULL, '9', NULL, 320122, 256, '329.png', NULL, NULL, NULL),
(330, 'PUSKEMAS SUKARAJA', NULL, NULL, NULL, 'Pasirhalang, Sukaraja, Sukabumi, West Java 43192', NULL, NULL, '9', NULL, 320101, 8, '330.png', NULL, NULL, NULL),
(331, 'PUSKESMAS COGREG', NULL, NULL, NULL, 'Jl. Raya Pahlawan Desa, RT.01/RW.06, Cogreg, Kec. Parung, Bogor, Jawa Barat 16330', NULL, NULL, '9', NULL, 320110, 110, '331.png', NULL, NULL, NULL),
(332, 'PUSKESMAS PAMIJAHAN', NULL, NULL, NULL, 'Jl. Raya Gn. Salak Endah, Gn. Sari, Kec. Pamijahan, Bogor, Jawa Barat 16810', NULL, NULL, '9', NULL, 320117, 195, '332.png', NULL, NULL, NULL),
(333, 'PUSKESMAS CIBURAYUT', NULL, NULL, NULL, 'JL Ciburayut No.4, Ciburayut, Cigombong, Bogor, Jawa Barat 16110', NULL, NULL, '9', NULL, 320138, 419, '333.png', NULL, NULL, NULL),
(334, 'PUSKESMAS SUKAJAYA', NULL, NULL, NULL, 'SUKAJAYA', NULL, NULL, '9', NULL, 320135, 387, '334.png', NULL, NULL, NULL),
(335, 'PUSKESMAS LEUWISADENG', NULL, NULL, NULL, 'LEUWISADENG', NULL, NULL, '9', NULL, 320139, 427, '335.png', NULL, NULL, NULL),
(336, 'PUSKESMAS RANCABUNGUR', NULL, NULL, NULL, 'RANCABUNGUR', NULL, NULL, '9', NULL, 320134, 380, '336.png', NULL, NULL, NULL),
(337, 'PUSKESMAS TAMANSARI', NULL, NULL, NULL, 'TAMANSARI', NULL, NULL, '9', NULL, 320131, 356, '337.png', NULL, NULL, NULL),
(338, 'PUSKESMAS CIAWI', NULL, NULL, NULL, 'CIAWI', NULL, NULL, '9', NULL, 320124, 280, '338.png', NULL, NULL, NULL),
(339, 'PUSKESMAS JAMPANG', NULL, NULL, NULL, 'JAMPANG', NULL, NULL, '9', NULL, 320112, 131, '339.png', NULL, NULL, NULL),
(340, 'PUSKESMAS SUKARAJA', NULL, NULL, NULL, 'SUKARAJA', NULL, NULL, '9', NULL, 320104, 45, '340.png', NULL, NULL, NULL),
(341, 'PUSKESMAS RAGAJAYA', NULL, NULL, NULL, 'RAGAJAYA', NULL, NULL, '9', NULL, 320127, 309, '341.png', NULL, NULL, NULL),
(342, 'PUSKESMAS KEMANG', NULL, NULL, NULL, 'KEMANG', NULL, NULL, '9', NULL, 320112, 128, '342.png', NULL, NULL, NULL),
(343, 'PUSKESMAS NANGGUNG', NULL, NULL, NULL, 'KECAMATAN NANGGUNG', NULL, NULL, '9', NULL, 320121, 245, '343.png', NULL, NULL, NULL),
(344, 'PUSKESMAS TENJOLAYA', NULL, NULL, NULL, 'TENJOLAYA', NULL, NULL, '9', NULL, 320140, 433, '344.png', NULL, NULL, NULL),
(345, 'PUSKESMAS CINAGARA', NULL, NULL, NULL, ' CINAGARA', NULL, NULL, '9', NULL, 320119, 220, 'default.png', NULL, NULL, NULL),
(346, 'PUSKESMAS CIGUDEG', NULL, NULL, NULL, 'CIGUDEG', NULL, NULL, '9', NULL, 320122, 250, 'default.png', NULL, NULL, NULL),
(348, 'PUSKESMAS BAGOANG', NULL, NULL, NULL, 'BAGOANG', NULL, NULL, '9', NULL, 320119, 220, '348.png', NULL, NULL, NULL),
(349, 'PUSKESMAS MEGAMENDUNG', NULL, NULL, NULL, 'MEGAMENDUNG', NULL, NULL, '9', NULL, 320126, 304, '349.png', NULL, NULL, NULL),
(350, 'PUSKESMAS CITAPEN', NULL, NULL, NULL, 'CITAPEN', NULL, NULL, '9', NULL, 320124, 274, '350.png', NULL, NULL, NULL),
(351, 'PUSKESMAS CIGOMBONG', NULL, NULL, NULL, 'CIGOMBONG', NULL, NULL, '9', NULL, 320138, 413, '351.png', NULL, NULL, NULL),
(352, 'PUSKESMAS PURWASARI', NULL, NULL, NULL, 'PURWASARI', NULL, NULL, '9', NULL, 320130, 345, '352.png', NULL, NULL, NULL),
(353, 'PUSKESMAS PABUARAN INDAH', NULL, NULL, NULL, ' PABUARAN INDAH', NULL, NULL, '9', NULL, 320101, 12, 'default.png', NULL, NULL, NULL),
(354, 'PUSKESMAS CIHIDEUNG UDIK', NULL, NULL, NULL, 'CIHIDEUNG UDIK', NULL, NULL, '9', NULL, 320115, 156, 'default.png', NULL, NULL, NULL),
(355, 'PUSKESMAS CISARUA', NULL, NULL, NULL, 'CISARUA', NULL, NULL, '9', NULL, 320125, 295, 'default.png', NULL, NULL, NULL),
(356, 'PUSKESMAS CIOMAS', NULL, NULL, NULL, 'CIOMAS', NULL, NULL, '9', NULL, 320129, 334, '356.png', NULL, NULL, NULL),
(357, 'PUSKESMAS CILEUBUT', NULL, NULL, NULL, 'CILEUBUT', NULL, NULL, '9', NULL, 320104, 39, 'default.png', NULL, NULL, NULL),
(358, 'PUSKESMAS CITAPEN', NULL, NULL, NULL, 'CITAPEN', NULL, NULL, '9', NULL, 320124, 274, 'default.png', NULL, NULL, NULL),
(359, 'PUSKESMAS RANCABUNGUR', NULL, NULL, NULL, 'RANCABUNGUR', NULL, NULL, '9', NULL, 320134, 380, 'default.png', NULL, NULL, NULL),
(360, 'PUSKESMAS SUKAMANAH', NULL, NULL, NULL, 'SUKAMANAH', NULL, NULL, '9', NULL, 320126, 302, '360.png', NULL, NULL, NULL),
(361, 'PUSKESMAS MEGAMENDUNG', NULL, NULL, NULL, 'MEGAMENDUNG', NULL, NULL, '9', NULL, 320126, 304, '361.png', NULL, NULL, NULL),
(362, 'PUSKESMAS BOJONG', NULL, NULL, NULL, 'KLAPANUNGGAL', NULL, NULL, '9', NULL, 320132, 363, '362.png', NULL, NULL, NULL),
(363, 'PUSKESMAS DAGO', NULL, NULL, NULL, ' DAGO', NULL, NULL, '9', NULL, 320120, 229, 'default.png', NULL, NULL, NULL),
(364, 'PUSKESMAS CIRIMEKAR', NULL, NULL, NULL, ' CIRIMEKAR', NULL, NULL, '9', NULL, 320101, 11, '364.png', NULL, NULL, NULL),
(365, 'PUSKESMAS TENJO', NULL, NULL, NULL, 'TENJO', NULL, NULL, '9', NULL, 320119, 221, 'default.png', NULL, NULL, NULL),
(366, 'PUSKESMAS CARINGIN', NULL, NULL, NULL, 'CARINGIN', NULL, NULL, '9', NULL, 320127, 311, '366.png', NULL, NULL, NULL),
(367, 'PUSKESMAS LALADON', NULL, NULL, NULL, 'LALADON', NULL, NULL, '9', NULL, 320129, 338, 'default.png', NULL, NULL, NULL),
(368, 'PUSKESMAS LEUWILIANG', NULL, NULL, NULL, 'LEUWILIANG', NULL, NULL, '9', NULL, 320114, 149, 'default.png', NULL, NULL, NULL),
(369, 'PUSKESMAS GUNUNG PUTRI', NULL, NULL, NULL, 'GUNUNG PUTRI', NULL, NULL, '9', NULL, 320102, 14, 'default.png', NULL, NULL, NULL),
(370, 'PUSKESMAS CIMANDALA', NULL, NULL, NULL, ' CIMANDALA', NULL, NULL, '9', NULL, 320104, 47, '370.png', NULL, NULL, NULL),
(371, 'CIPTOYOSO', NULL, NULL, 'L', 'SUKARAJA', NULL, NULL, '8', NULL, 320104, 44, '371.png', NULL, NULL, NULL),
(373, 'WAHYUNINGSIH', NULL, NULL, 'P', 'SUKARAJA', NULL, NULL, '8', NULL, 320101, 8, '373.png', NULL, NULL, NULL),
(374, 'ETI YUNIATI', NULL, NULL, 'P', 'SUKARAJA', NULL, NULL, '8', NULL, 320104, 44, '374.png', NULL, NULL, NULL),
(375, 'RAHMAT FAUZI', NULL, NULL, 'L', 'CITEUREUP', NULL, NULL, '8', NULL, 320103, 27, 'default.png', NULL, NULL, NULL),
(376, 'CHADMAN NURZAEN', NULL, NULL, 'L', 'CITEUREUP', NULL, NULL, '8', NULL, 320103, 27, '376.png', NULL, NULL, NULL),
(377, 'SURAHMAN ARDIANSYAH', NULL, NULL, 'L', 'SUKARAJA', NULL, NULL, '8', NULL, 320104, 44, '377.png', NULL, NULL, NULL),
(378, 'FITRIAH', NULL, NULL, 'P', 'CIOMAS', NULL, NULL, '8', NULL, 320129, 333, '378.png', NULL, NULL, NULL),
(379, 'UGAN SUGANDHI, S.Pd, MM', NULL, NULL, 'L', 'DRAMAGA', NULL, NULL, '8', NULL, 320130, 348, '379.png', NULL, NULL, NULL),
(380, 'HENRY', NULL, NULL, 'L', 'CILEUNGSI', NULL, NULL, '8', NULL, 320107, 85, '380.png', NULL, NULL, NULL);
INSERT INTO `inovator` (`id_inovator`, `nama_inovator`, `nik`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `email`, `no_telp`, `id_kategori_inovator`, `id_instansi`, `id_kecamatan`, `id_desa`, `foto_inovator`, `latitude`, `longitude`, `id_akun`) VALUES
(381, 'WILLIAM WIJAYA', NULL, NULL, 'L', 'CILEUNGSI', NULL, NULL, '8', NULL, 320107, 85, '381.png', NULL, NULL, NULL),
(382, 'HARIS KAMAJAYA', NULL, NULL, 'L', 'GUNUNG PUTRI', NULL, NULL, '8', NULL, 320102, 17, '382.png', NULL, NULL, NULL),
(383, 'Hj. DWI SULISTIA NINGSIH, A.Md', NULL, NULL, 'P', 'BABAKAN MADANG', NULL, NULL, '8', NULL, 320105, 58, 'default.png', NULL, NULL, NULL),
(384, 'HARIS KAMAJAYA', NULL, NULL, 'L', 'BOJONG GEDE', NULL, NULL, '8', NULL, 320113, 142, '384.png', NULL, NULL, NULL),
(385, 'AHMAD SOBONIAWAN WAHYUDI', NULL, NULL, 'L', 'CIBINONG', NULL, NULL, '8', NULL, 320101, 6, 'default.png', NULL, NULL, NULL),
(386, 'SITI MARYAM', NULL, NULL, 'P', 'CIBINONG', NULL, NULL, '8', NULL, 320101, 6, '386.png', NULL, NULL, NULL),
(387, 'RISKI ADIT PRATAMA', NULL, NULL, 'L', 'UNIVERSITAS IBNU KHALDUN (UIKA)', NULL, NULL, '1', NULL, 320101, 8, '387.png', NULL, NULL, NULL),
(388, 'MUHYIDDIEN RABBANI A', NULL, NULL, 'L', 'UNIVERSITAS IBNU KHALDUN (UIKA)', NULL, NULL, '1', NULL, 320101, 8, 'default.png', NULL, NULL, NULL),
(389, 'INDAH PUSPITA', NULL, NULL, 'P', 'IPB', NULL, NULL, '1', NULL, 320130, 347, 'default.png', NULL, NULL, NULL),
(390, 'ALFIN FAUZA', NULL, NULL, 'L', 'UNIVERSITAS IBNU KHALDUN (UIKA)', NULL, NULL, '1', NULL, 320101, 8, 'default.png', NULL, NULL, NULL),
(391, 'PRAYOGA ALDI KURNIAWAN', NULL, NULL, 'L', 'UNIVERSITAS IBNU KHALDUN (UIKA)', NULL, NULL, '1', NULL, 320101, 8, '391.png', NULL, NULL, NULL),
(392, 'KIKI DWI RAHMAWATI', NULL, NULL, 'P', 'IPB', NULL, NULL, '1', NULL, 320130, 347, 'default.png', NULL, NULL, NULL),
(393, 'HANIF HIDAYATURAHMAN', NULL, NULL, 'L', 'UNIVERSITAS IBNU KHALDUN (UIKA)', NULL, NULL, '1', NULL, 320101, 8, '393.png', NULL, NULL, NULL),
(394, 'BAGUS FATWAN ALFIAT', NULL, NULL, 'L', 'UNIVERSITAS IBNU KHALDUN (UIKA)', NULL, NULL, '1', NULL, 320101, 8, '394.png', NULL, NULL, NULL),
(395, 'HANIF HIDAYATURAHMAN', NULL, NULL, 'L', 'UNIVERSITAS IBNU KHALDUN (UIKA)', NULL, NULL, '1', NULL, 320101, 8, '395.png', NULL, NULL, NULL),
(396, 'RISKA NURLAELIAH', NULL, NULL, 'P', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '1', NULL, 320124, 284, 'default.png', NULL, NULL, NULL),
(397, 'MELINIA SUCI RAMADHANI', NULL, NULL, 'P', 'UNIVERSITAS IBNU KHALDUN (UIKA)', NULL, NULL, '3', NULL, 320101, 8, 'default.png', NULL, NULL, NULL),
(398, 'DEWI SINTA', NULL, NULL, 'P', 'SMKN 1 LEUWILIANG', NULL, NULL, '3', NULL, 320114, 149, '398.png', NULL, NULL, NULL),
(399, 'BAHARUDIN PUTRA NUGRAHA', NULL, NULL, 'P', 'SMAN 1 NANGGUNG', NULL, NULL, '3', NULL, 320121, 244, '399.png', NULL, NULL, NULL),
(400, 'ATIKA', NULL, NULL, 'P', 'SMAN 1 NANGGUNG', NULL, NULL, '3', NULL, 320121, 244, '400.png', NULL, NULL, NULL),
(401, 'MUHAMMAD ALVARO RIANDI', NULL, NULL, 'L', 'SMAN 2 CIBINONG', NULL, NULL, '3', NULL, 320101, 2, 'default.png', NULL, NULL, NULL),
(402, 'MOHAMAD KELFIANA', NULL, NULL, 'L', 'SMAN 1 DRAMAGA', NULL, NULL, '3', NULL, 320130, 348, '402.png', NULL, NULL, NULL),
(403, 'DESYANTI', NULL, NULL, 'P', 'SMAN 1 DRAMAGA', NULL, NULL, '3', NULL, 320130, 348, '403.png', NULL, NULL, NULL),
(404, 'AHMAD RANUAGIRI DHARMASATRIA', NULL, NULL, 'L', 'SMAN 1 DRAMAGA', NULL, NULL, '3', NULL, 320130, 348, '404.png', NULL, NULL, NULL),
(405, 'FARHAH MASIAH PUTRI', NULL, NULL, 'L', 'SMPN 1 CIBINONG', NULL, NULL, '2', NULL, 320101, 10, '405.png', NULL, NULL, NULL),
(406, 'PUTRI LURI ASAPARY', NULL, NULL, 'P', 'SMPN 1 CIBINONG', NULL, NULL, '2', NULL, 320101, 10, '406.png', NULL, NULL, NULL),
(407, 'AILLEN KIRAMATA', NULL, NULL, 'P', 'SMPN 1 CIBINONG', NULL, NULL, '2', NULL, 320101, 10, '407.png', NULL, NULL, NULL),
(408, 'AMIH', NULL, NULL, 'P', 'SMPN 4 LEUWILIANG', NULL, NULL, '2', NULL, 320114, 152, '408.png', NULL, NULL, NULL),
(409, 'ANISA APRILIANTI', NULL, NULL, 'P', 'SMPN 4 LEUWILIANG', NULL, NULL, '2', NULL, 320114, 152, '409.png', NULL, NULL, NULL),
(410, 'ALYA PUTRI UTAMAI', NULL, NULL, 'P', 'SMPN 4 LEUWILIANG', NULL, NULL, '2', NULL, 320114, 152, '410.png', NULL, NULL, NULL),
(411, 'Dr. Ir Dede Kardaya', NULL, NULL, 'L', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '4', NULL, 320124, 284, '411.png', NULL, NULL, NULL),
(412, 'Dr. Ir. Deden Sudrajat', NULL, NULL, 'L', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '4', NULL, 320124, 284, '412.png', NULL, NULL, NULL),
(413, 'Dr. Ir. Deden Sudrajat, M.Si', NULL, NULL, 'L', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '4', NULL, 320124, 284, '413.png', NULL, NULL, NULL),
(414, 'Ir. Noli Novidahlia, M.Si, Ir. Sri Rejeki Retna Pe', NULL, NULL, 'P', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '4', NULL, 320124, 284, '414.png', NULL, NULL, NULL),
(415, 'Dr. Ir. Ristika Handarini', NULL, NULL, 'P', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '4', NULL, 320124, 284, '415.png', NULL, NULL, NULL),
(416, 'Dr. Ir. Mardiah, M.Si', NULL, NULL, 'P', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '4', NULL, 320124, 284, '416.png', NULL, NULL, NULL),
(417, 'Aminullah, STP, M.Si', NULL, NULL, 'P', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '4', NULL, 320124, 284, '417.png', NULL, NULL, NULL),
(418, 'Rizki Bastian Firdaus', NULL, NULL, 'L', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '1', NULL, 320124, 284, '418.png', NULL, NULL, NULL),
(419, 'Siti Patimah Indriyani', NULL, NULL, 'P', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '1', NULL, 320124, 284, '419.png', NULL, NULL, NULL),
(420, 'Silmi Hikmatun \n', NULL, NULL, 'P', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '1', NULL, 320124, 284, '420.png', NULL, NULL, NULL),
(421, 'Yuli Sumantri', NULL, NULL, 'P', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '1', NULL, 320124, 284, '421.png', NULL, NULL, NULL),
(422, 'Yuli Sumantri', NULL, NULL, 'P', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '1', NULL, 320124, 284, '422.png', NULL, NULL, NULL),
(423, 'Indira Dewi Noor Fitria', NULL, NULL, 'P', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '1', NULL, 320124, 284, '423.png', NULL, NULL, NULL),
(424, 'Siti Cahya Wulan A', NULL, NULL, 'P', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '1', NULL, 320124, 284, '424.png', NULL, NULL, NULL),
(425, 'Nida Fitriasari', NULL, NULL, 'P', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '1', NULL, 320124, 284, '425.png', NULL, NULL, NULL),
(426, 'Mardiyah Nur Hidayah', NULL, NULL, 'P', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '1', NULL, 320124, 284, '426.png', NULL, NULL, NULL),
(427, 'test', NULL, NULL, 'P', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '4', NULL, NULL, NULL, 'default.png', NULL, NULL, NULL),
(428, 'test', NULL, NULL, 'P', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '4', NULL, NULL, NULL, 'default.png', NULL, NULL, NULL),
(429, 'test', NULL, NULL, 'P', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '4', NULL, NULL, NULL, 'default.png', NULL, NULL, NULL),
(430, 'test', NULL, NULL, 'P', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '1', NULL, NULL, NULL, 'default.png', NULL, NULL, NULL),
(431, 'test', NULL, NULL, 'P', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '1', NULL, NULL, NULL, 'default.png', NULL, NULL, NULL),
(432, 'test', NULL, NULL, 'P', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '1', NULL, NULL, NULL, 'default.png', NULL, NULL, NULL),
(433, 'test', NULL, NULL, 'P', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '1', NULL, NULL, NULL, 'default.png', NULL, NULL, NULL),
(434, 'test', NULL, NULL, 'P', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '1', NULL, NULL, NULL, 'default.png', NULL, NULL, NULL),
(435, 'test', NULL, NULL, 'P', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '1', NULL, NULL, NULL, 'default.png', NULL, NULL, NULL),
(436, 'test', NULL, NULL, 'P', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '1', NULL, NULL, NULL, 'default.png', NULL, NULL, NULL),
(437, 'test', NULL, NULL, 'P', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '1', NULL, NULL, NULL, 'default.png', NULL, NULL, NULL),
(438, 'test', NULL, NULL, 'P', 'UNIVERSITAS DJUANDA (UNIDA)', NULL, NULL, '1', NULL, NULL, NULL, 'default.png', NULL, NULL, NULL),
(439, 'test', 2147483647, '2022-06-16', 'L', 'RW 02, Gambir, Central Jakarta, Jakarta Special Capital Region, 10110, Indonesia', 'rpluikase@gmail.com', '12930', '5', NULL, 320104, 41, 'default.png', -6.17499, 106.828, 667);

-- --------------------------------------------------------

--
-- Struktur dari tabel `instansi`
--

CREATE TABLE `instansi` (
  `id_instansi` int NOT NULL,
  `nama_instansi` varchar(70) NOT NULL,
  `email_instansi` varchar(50) NOT NULL,
  `alamat_instansi` text NOT NULL,
  `no_telp_instansi` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `instansi`
--

INSERT INTO `instansi` (`id_instansi`, `nama_instansi`, `email_instansi`, `alamat_instansi`, `no_telp_instansi`) VALUES
(1, 'uika', 'uika@gmail.com', 'samping jalan', '000000'),
(2, 'sma pluto', 'pluto@gmail.com', 'angkasa', '039320');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_inovator`
--

CREATE TABLE `kategori_inovator` (
  `id_kategori_inovator` int NOT NULL,
  `nama_kategori_inovator` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `kategori_inovator`
--

INSERT INTO `kategori_inovator` (`id_kategori_inovator`, `nama_kategori_inovator`) VALUES
(1, 'SD / MI / SEDERAJAT'),
(2, 'SMP/ MTS / SEDERAJAT'),
(3, 'SMA / SMK / MA/ SEDERAJAT'),
(4, 'Mahasiswa'),
(5, 'Dosen Peneliti'),
(6, 'Desa/Kelurahan'),
(7, 'Kecamatan'),
(8, 'Puskesmas'),
(9, 'Perangkat Daerah Instansi'),
(10, 'Masyarakat Umum');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id_kecamatan` int NOT NULL,
  `id_kota` char(5) NOT NULL,
  `nama_kecamatan` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  `shp` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `kecamatan`
--

INSERT INTO `kecamatan` (`id_kecamatan`, `id_kota`, `nama_kecamatan`, `created_at`, `updated_at`, `deleted_at`, `shp`) VALUES
(320101, '3201', 'Cibinong', '2021-11-10 22:58:35', '2022-04-20 05:01:32', NULL, 'cibinong.geojson'),
(320102, '3201', 'Gunung Putri', '2021-11-10 22:58:35', NULL, NULL, 'gunungputri.geojson'),
(320103, '3201', 'Citeureup', '2021-11-10 22:58:35', NULL, NULL, 'citeureup.geojson'),
(320104, '3201', 'Sukaraja', '2021-11-10 22:58:35', NULL, NULL, 'sukaraja.geojson'),
(320105, '3201', 'Babakan Madang', '2021-11-10 22:58:35', NULL, NULL, 'babakanmadang.geojson'),
(320106, '3201', 'Jonggol', '2021-11-10 22:58:35', NULL, NULL, 'jonggol.geojson'),
(320107, '3201', 'Cileungsi', '2021-11-10 22:58:35', NULL, NULL, 'cileungsi.geojson'),
(320108, '3201', 'Cariu', '2021-11-10 22:58:35', NULL, NULL, 'cariu.geojson'),
(320109, '3201', 'Sukamakmur', '2021-11-10 22:58:35', NULL, NULL, 'sukamakmur.geojson'),
(320110, '3201', 'Parung', '2021-11-10 22:58:35', NULL, NULL, 'parung.geojson'),
(320111, '3201', 'Gunung Sindur', '2021-11-10 22:58:35', NULL, NULL, 'gunungsindur.geojson'),
(320112, '3201', 'Kemang', '2021-11-10 22:58:35', NULL, NULL, 'kemang.geojson'),
(320113, '3201', 'Bojong Gede', '2021-11-10 22:58:35', NULL, NULL, 'bojonggede.geojson'),
(320114, '3201', 'Leuwiliang', '2021-11-10 22:58:35', '2022-04-20 05:08:56', NULL, 'leuwiliang.geojson'),
(320115, '3201', 'Ciampea', '2021-11-10 22:58:35', NULL, NULL, 'ciampea.geojson'),
(320116, '3201', 'Cibungbulang', '2021-11-10 22:58:35', NULL, NULL, 'cibungbulang.geojson'),
(320117, '3201', 'Pamijahan', '2021-11-10 22:58:35', NULL, NULL, 'pamijahan.geojson'),
(320118, '3201', 'Rumpin', '2021-11-10 22:58:35', NULL, NULL, 'rumpin.geojson'),
(320119, '3201', 'Jasinga', '2021-11-10 22:58:35', NULL, NULL, 'jasinga.geojson'),
(320120, '3201', 'Parung Panjang', '2021-11-10 22:58:35', NULL, NULL, 'parungpanjang.geojson'),
(320121, '3201', 'Nanggung', '2021-11-10 22:58:35', NULL, NULL, 'nanggung.geojson'),
(320122, '3201', 'Cigudeg', '2021-11-10 22:58:35', NULL, NULL, 'cigudeg.geojson'),
(320123, '3201', 'Tenjo', '2021-11-10 22:58:35', NULL, NULL, 'tenjo.geojson'),
(320124, '3201', 'Ciawi', '2021-11-10 22:58:35', NULL, NULL, 'ciawi.geojson'),
(320125, '3201', 'Cisarua', '2021-11-10 22:58:35', NULL, NULL, 'cisarua.geojson'),
(320126, '3201', 'Megamendung', '2021-11-10 22:58:35', NULL, NULL, 'megamendung.geojson'),
(320127, '3201', 'Caringin', '2021-11-10 22:58:35', NULL, NULL, 'caringin.geojson'),
(320128, '3201', 'Cijeruk', '2021-11-10 22:58:35', NULL, NULL, 'cijeruk.geojson'),
(320129, '3201', 'Ciomas', '2021-11-10 22:58:35', NULL, NULL, 'ciomas.geojson'),
(320130, '3201', 'Dramaga', '2021-11-10 22:58:35', NULL, NULL, 'dramaga.geojson'),
(320131, '3201', 'Tamansari', '2021-11-10 22:58:35', NULL, NULL, 'tamansari.geojson'),
(320132, '3201', 'Klapanunggal', '2021-11-10 22:58:35', '2022-06-17 14:27:06', NULL, 'klapanunggal.geojson'),
(320133, '3201', 'Ciseeng', '2021-11-10 22:58:35', NULL, NULL, 'ciseeng.geojson'),
(320134, '3201', 'Ranca Bungur', '2021-11-10 22:58:35', NULL, NULL, 'rancabungur.geojson'),
(320135, '3201', 'Sukajaya', '2021-11-10 22:58:35', NULL, NULL, 'sukajaya.geojson'),
(320136, '3201', 'Tanjungsari', '2021-11-10 22:58:35', NULL, NULL, 'tanjungsari.geojson'),
(320137, '3201', 'Tajurhalang', '2021-11-10 22:58:35', NULL, NULL, 'tajurhalang.geojson'),
(320138, '3201', 'Cigombong', '2021-11-10 22:58:35', NULL, NULL, 'cigombong.geojson'),
(320139, '3201', 'Leuwisadeng', '2021-11-10 22:58:35', NULL, NULL, 'leuwisadeng.geojson'),
(320140, '3201', 'Tenjolaya', '2021-11-10 22:58:35', NULL, NULL, 'tenjolaya.geojson');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kode_aktivasi`
--

CREATE TABLE `kode_aktivasi` (
  `id_kode_aktivasi` int NOT NULL,
  `id_akun` int NOT NULL,
  `token` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `waktu` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `token_aktivasi`
--

CREATE TABLE `token_aktivasi` (
  `id_token_aktivasi` int NOT NULL,
  `id_akun` int NOT NULL,
  `token` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `waktu_token_aktivasi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `token_aktivasi`
--

INSERT INTO `token_aktivasi` (`id_token_aktivasi`, `id_akun`, `token`, `email`, `waktu_token_aktivasi`) VALUES
(22, 667, 'uj1Jg2CrtY83TG7jNHfSOoW8OcEFaPf4mu1xmyqfR1ZA5YD1cY', 'rpluikase@gmail.com', '2022-06-17 21:34:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `token_notifikasi`
--

CREATE TABLE `token_notifikasi` (
  `id_token_notifikasi` int NOT NULL,
  `id_akun` int NOT NULL,
  `email` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `token_reset_password`
--

CREATE TABLE `token_reset_password` (
  `id_token_reset_password` int NOT NULL,
  `id_akun` int NOT NULL,
  `token` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `waktu_token_reser_password` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `waktu_crud`
--

CREATE TABLE `waktu_crud` (
  `nama_waktu_CRUD` varchar(20) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `waktu_crud`
--

INSERT INTO `waktu_crud` (`nama_waktu_CRUD`, `waktu`) VALUES
('inovasi_terbaru', '2022-06-04 07:28:59'),
('kategori_terbaru', '2022-06-04 07:28:59');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_akun`) USING BTREE;

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`) USING BTREE,
  ADD KEY `id_inovasi` (`id_inovasi`) USING BTREE;

--
-- Indeks untuk tabel `bidang_inovasi`
--
ALTER TABLE `bidang_inovasi`
  ADD PRIMARY KEY (`id_bidang_inovasi`) USING BTREE;

--
-- Indeks untuk tabel `desa`
--
ALTER TABLE `desa`
  ADD PRIMARY KEY (`id_desa`) USING BTREE,
  ADD KEY `id_kecamatan` (`id_kecamatan`) USING BTREE;

--
-- Indeks untuk tabel `inovasi`
--
ALTER TABLE `inovasi`
  ADD PRIMARY KEY (`id_inovasi`) USING BTREE,
  ADD KEY `id_bidang_inovasi` (`id_bidang_inovasi`) USING BTREE,
  ADD KEY `id_inovator` (`id_inovator`) USING BTREE,
  ADD KEY `id_bidang_inovasi_2` (`id_bidang_inovasi_2`) USING BTREE,
  ADD KEY `id_bidang_inovasi_3` (`id_bidang_inovasi_3`) USING BTREE;

--
-- Indeks untuk tabel `inovator`
--
ALTER TABLE `inovator`
  ADD PRIMARY KEY (`id_inovator`) USING BTREE,
  ADD KEY `id_kategori_inovator` (`id_kategori_inovator`) USING BTREE,
  ADD KEY `id_kecamatan` (`id_kecamatan`) USING BTREE,
  ADD KEY `id_desa` (`id_desa`) USING BTREE,
  ADD KEY `id_akun` (`id_akun`) USING BTREE,
  ADD KEY `id_instansi` (`id_instansi`) USING BTREE;

--
-- Indeks untuk tabel `instansi`
--
ALTER TABLE `instansi`
  ADD PRIMARY KEY (`id_instansi`) USING BTREE;

--
-- Indeks untuk tabel `kategori_inovator`
--
ALTER TABLE `kategori_inovator`
  ADD PRIMARY KEY (`id_kategori_inovator`) USING BTREE;

--
-- Indeks untuk tabel `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`) USING BTREE;

--
-- Indeks untuk tabel `kode_aktivasi`
--
ALTER TABLE `kode_aktivasi`
  ADD PRIMARY KEY (`id_kode_aktivasi`) USING BTREE,
  ADD KEY `id_akun` (`id_akun`) USING BTREE;

--
-- Indeks untuk tabel `token_aktivasi`
--
ALTER TABLE `token_aktivasi`
  ADD PRIMARY KEY (`id_token_aktivasi`) USING BTREE,
  ADD KEY `id_akun` (`id_akun`) USING BTREE;

--
-- Indeks untuk tabel `token_notifikasi`
--
ALTER TABLE `token_notifikasi`
  ADD PRIMARY KEY (`id_token_notifikasi`) USING BTREE,
  ADD KEY `id_akun` (`id_akun`) USING BTREE;

--
-- Indeks untuk tabel `token_reset_password`
--
ALTER TABLE `token_reset_password`
  ADD PRIMARY KEY (`id_token_reset_password`) USING BTREE,
  ADD KEY `id_akun` (`id_akun`) USING BTREE;

--
-- Indeks untuk tabel `waktu_crud`
--
ALTER TABLE `waktu_crud`
  ADD UNIQUE KEY `nama_waktu_CRUD` (`nama_waktu_CRUD`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun`
--
ALTER TABLE `akun`
  MODIFY `id_akun` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=668;

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT untuk tabel `bidang_inovasi`
--
ALTER TABLE `bidang_inovasi`
  MODIFY `id_bidang_inovasi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `desa`
--
ALTER TABLE `desa`
  MODIFY `id_desa` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=436;

--
-- AUTO_INCREMENT untuk tabel `inovasi`
--
ALTER TABLE `inovasi`
  MODIFY `id_inovasi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;

--
-- AUTO_INCREMENT untuk tabel `inovator`
--
ALTER TABLE `inovator`
  MODIFY `id_inovator` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440;

--
-- AUTO_INCREMENT untuk tabel `instansi`
--
ALTER TABLE `instansi`
  MODIFY `id_instansi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kategori_inovator`
--
ALTER TABLE `kategori_inovator`
  MODIFY `id_kategori_inovator` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `kode_aktivasi`
--
ALTER TABLE `kode_aktivasi`
  MODIFY `id_kode_aktivasi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `token_aktivasi`
--
ALTER TABLE `token_aktivasi`
  MODIFY `id_token_aktivasi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `token_notifikasi`
--
ALTER TABLE `token_notifikasi`
  MODIFY `id_token_notifikasi` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `token_reset_password`
--
ALTER TABLE `token_reset_password`
  MODIFY `id_token_reset_password` int NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD CONSTRAINT `anggota_ibfk_1` FOREIGN KEY (`id_inovasi`) REFERENCES `inovasi` (`id_inovasi`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `desa`
--
ALTER TABLE `desa`
  ADD CONSTRAINT `desa_ibfk_1` FOREIGN KEY (`id_kecamatan`) REFERENCES `kecamatan` (`id_kecamatan`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `inovasi`
--
ALTER TABLE `inovasi`
  ADD CONSTRAINT `inovasi_ibfk_1` FOREIGN KEY (`id_bidang_inovasi_2`) REFERENCES `bidang_inovasi` (`id_bidang_inovasi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inovasi_ibfk_2` FOREIGN KEY (`id_bidang_inovasi_3`) REFERENCES `bidang_inovasi` (`id_bidang_inovasi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kode_aktivasi`
--
ALTER TABLE `kode_aktivasi`
  ADD CONSTRAINT `kode_aktivasi_ibfk_1` FOREIGN KEY (`id_akun`) REFERENCES `akun` (`id_akun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `token_aktivasi`
--
ALTER TABLE `token_aktivasi`
  ADD CONSTRAINT `token_aktivasi_ibfk_1` FOREIGN KEY (`id_akun`) REFERENCES `akun` (`id_akun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `token_notifikasi`
--
ALTER TABLE `token_notifikasi`
  ADD CONSTRAINT `token_notifikasi_ibfk_1` FOREIGN KEY (`id_akun`) REFERENCES `akun` (`id_akun`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `token_reset_password`
--
ALTER TABLE `token_reset_password`
  ADD CONSTRAINT `token_reset_password_ibfk_1` FOREIGN KEY (`id_akun`) REFERENCES `akun` (`id_akun`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
