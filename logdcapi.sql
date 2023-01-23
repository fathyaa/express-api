-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Jan 2023 pada 04.19
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logdcapi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cc_options`
--

CREATE TABLE `cc_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_name` varchar(200) NOT NULL,
  `option_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `cc_options`
--

INSERT INTO `cc_options` (`id`, `option_name`, `option_value`) VALUES
(1, 'active_theme', 'cicool'),
(2, 'favicon', 'default.png'),
(3, 'site_name', 'LOG DATACENTER'),
(4, 'timezone', 'asia/jakarta'),
(5, 'site_description', NULL),
(6, 'keywords', NULL),
(7, 'author', NULL),
(8, 'logo', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tref_aktivitas_kunjungan`
--

CREATE TABLE `tref_aktivitas_kunjungan` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tref_aktivitas_kunjungan`
--

INSERT INTO `tref_aktivitas_kunjungan` (`id`, `name`, `is_active`) VALUES
(1, 'Di Staging Data Center', 1),
(2, 'Di Dalam Data Center', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tref_jenis_server`
--

CREATE TABLE `tref_jenis_server` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tref_jenis_server`
--

INSERT INTO `tref_jenis_server` (`id`, `name`, `description`, `is_active`) VALUES
(1, 'Mail Server', NULL, 1),
(2, 'Web Server', NULL, 1),
(3, 'FTP Server', NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tref_kategori_kunjungan`
--

CREATE TABLE `tref_kategori_kunjungan` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tref_kategori_kunjungan`
--

INSERT INTO `tref_kategori_kunjungan` (`id`, `name`, `is_active`) VALUES
(1, 'Kunjungan Biasa', 1),
(2, 'Co-location', 1),
(3, 'Follow Up Insiden', 1),
(4, 'Monitoring', 1),
(5, 'Maintenance', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tref_sites`
--

CREATE TABLE `tref_sites` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `lokasi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tref_sites`
--

INSERT INTO `tref_sites` (`id`, `nama`, `lokasi`) VALUES
(1, 'CRCS', 'Kampus Ganesha'),
(2, 'CCAR', 'Rektorat'),
(3, 'Labtek V', 'Kampus Ganesha'),
(4, 'PAU', 'Kampus Ganesha'),
(5, 'Labtek VIII', 'Kampus Ganesha');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tref_status_uninstall`
--

CREATE TABLE `tref_status_uninstall` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tref_status_uninstall`
--

INSERT INTO `tref_status_uninstall` (`id`, `name`, `description`, `is_active`) VALUES
(1, 'Habis Masa Kontrak', NULL, 1),
(2, 'Ganti Server Baru', 'Ganti server baru', 1),
(3, 'Server Rusak', NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tref_unit_kerja`
--

CREATE TABLE `tref_unit_kerja` (
  `kode_unit` varchar(50) NOT NULL COMMENT 'Kode unit kerja',
  `nama` varchar(255) NOT NULL COMMENT 'Nama Unit yang dikenal di Sispran',
  `nama_jenis` varchar(100) DEFAULT NULL,
  `nama_singkat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tref_unit_kerja`
--

INSERT INTO `tref_unit_kerja` (`kode_unit`, `nama`, `nama_jenis`, `nama_singkat`) VALUES
('A001', 'KK Geodesi', 'KELOMPOK KEAHLIAN', 'KK G'),
('A002', 'KK Geodinamika dan Sedimentologi', 'KELOMPOK KEAHLIAN', 'KK GdS'),
('A003', 'KK Geologi Terapan', 'KELOMPOK KEAHLIAN', 'KK GT'),
('A004', 'KK Inderaja dan Sains Informasi Geografis', 'KELOMPOK KEAHLIAN', 'KK IdS'),
('A005', 'KK Oseanografi', 'KELOMPOK KEAHLIAN', 'KK O'),
('A006', 'KK Paleontologi dan Geologi Kuarter', 'KELOMPOK KEAHLIAN', 'KK PdG'),
('A007', 'KK Petrologi, Vulkanologi, dan Geokimia', 'KELOMPOK KEAHLIAN', 'KK PVd'),
('A008', 'KK Rekayasa Wilayah Pesisir, Laut dan Maritim', 'KELOMPOK KEAHLIAN', 'KK RWP'),
('A009', 'KK Sains Atmosfer', 'KELOMPOK KEAHLIAN', 'KK SA'),
('A010', 'KK Surveying dan Kadaster', 'KELOMPOK KEAHLIAN', 'KK SdK'),
('A011', 'KK Aljabar', 'KELOMPOK KEAHLIAN', 'KK A'),
('A012', 'KK Analisis & Geometri', 'KELOMPOK KEAHLIAN', 'KK A&G'),
('A013', 'KK Astronomi', 'KELOMPOK KEAHLIAN', 'KK A'),
('A014', 'KK Biokimia', 'KELOMPOK KEAHLIAN', 'KK B'),
('A015', 'KK Fisika Bumi dan Sistem Kompleks', 'KELOMPOK KEAHLIAN', 'KK FBd'),
('A016', 'KK Fisika Magnetik dan Fotonik', 'KELOMPOK KEAHLIAN', 'KK FMd'),
('A017', 'KK Fisika Material Elektronik', 'KELOMPOK KEAHLIAN', 'KK FME'),
('A018', 'KK Fisika Nuklir dan Biofisika', 'KELOMPOK KEAHLIAN', 'KK FNd'),
('A020', 'KK Kimia Analitik', 'KELOMPOK KEAHLIAN', 'KK KA'),
('A021', 'KK Kimia Anorganik dan Fisik', 'KELOMPOK KEAHLIAN', 'KK KAd'),
('A022', 'KK Kimia Organik', 'KELOMPOK KEAHLIAN', 'KK KO'),
('A023', 'KK Matematika Industri dan Keuangan', 'KELOMPOK KEAHLIAN', 'KK MId'),
('A024', 'KK Matematika Kombinatorika', 'KELOMPOK KEAHLIAN', 'KK MK'),
('A025', 'KK Statistika', 'KELOMPOK KEAHLIAN', 'KK S'),
('A026', 'KK Estetika dan Ilmu-ilmu Seni', 'KELOMPOK KEAHLIAN', 'KK EdI'),
('A027', 'KK Ilmu-Ilmu Desain dan Budaya Visual', 'KELOMPOK KEAHLIAN', 'KK IDd'),
('A028', 'KK Ilmu-Ilmu Kemanusiaan', 'KELOMPOK KEAHLIAN', 'KK IK'),
('A029', 'KK Komunikasi Visual dan Multimedia', 'KELOMPOK KEAHLIAN', 'KK KVd'),
('A030', 'KK Kriya dan Tradisi', 'KELOMPOK KEAHLIAN', 'KK KdT'),
('A031', 'KK Manusia dan Desain Produk Industri', 'KELOMPOK KEAHLIAN', 'KK MdD'),
('A032', 'KK Manusia dan Ruang Interior', 'KELOMPOK KEAHLIAN', 'KK MdR'),
('A033', 'KK Seni Rupa', 'KELOMPOK KEAHLIAN', 'KK SR'),
('A034', 'KK Energi dan Sistem Pemroses Teknik Kimia', 'KELOMPOK KEAHLIAN', 'KK EdS'),
('A035', 'KK Ergonomi, Rekayasa Kerja dan Keselamatan Kerja', 'KELOMPOK KEAHLIAN', 'KK ERK'),
('A036', 'KK Fisika Bangunan', 'KELOMPOK KEAHLIAN', 'KK FB'),
('A037', 'KK Instrumentasi dan Kontrol', 'KELOMPOK KEAHLIAN', 'KK IdK'),
('A038', 'KK Manajemen Industri', 'KELOMPOK KEAHLIAN', 'KK MI'),
('A039', 'KK Material Fungsional Maju', 'KELOMPOK KEAHLIAN', 'KK MFM'),
('A040', 'KK Perancangan dan Pengembangan Produk Teknik Kimia', 'KELOMPOK KEAHLIAN', 'KK PdP'),
('A041', 'KK Perancangan dan Pengembangan Proses Teknik Kimia', 'KELOMPOK KEAHLIAN', 'KK PdP'),
('A042', 'KK Sistem Industri dan Tekno-ekonomi', 'KELOMPOK KEAHLIAN', 'KK SId'),
('A043', 'KK Sistem Informasi dan Keputusan', 'KELOMPOK KEAHLIAN', 'KK SId'),
('A044', 'KK Sistem Manufaktur', 'KELOMPOK KEAHLIAN', 'KK SM'),
('A045', 'KK Teknik Fisika', 'KELOMPOK KEAHLIAN', 'KK TF'),
('A046', 'KK Teknologi Pengolahan Biomassa dan Pangan', 'KELOMPOK KEAHLIAN', 'KK TPB'),
('A047', 'KK Teknologi Reaksi Kimia dan Katalis', 'KELOMPOK KEAHLIAN', 'KK TRK'),
('A048', 'KK Desain, Operasi dan Perawatan Pesawat Terbang', 'KELOMPOK KEAHLIAN', 'KK DOd'),
('A049', 'KK Fisika Terbang', 'KELOMPOK KEAHLIAN', 'KK FT'),
('A050', 'KK Ilmu dan Teknik Material', 'KELOMPOK KEAHLIAN', 'KK IdT'),
('A051', 'KK Konversi Energi', 'KELOMPOK KEAHLIAN', 'KK KE'),
('A052', 'KK Perancangan Mesin', 'KELOMPOK KEAHLIAN', 'KK PM'),
('A053', 'KK Struktur Ringan', 'KELOMPOK KEAHLIAN', 'KK SR'),
('A054', 'KK Teknik dan Produksi Mesin', 'KELOMPOK KEAHLIAN', 'KK TdP'),
('A055', 'KK Manajemen dan Rekayasa Konstruksi', 'KELOMPOK KEAHLIAN', 'KK MdR'),
('A056', 'KK Pengelolaan Udara dan Limbah', 'KELOMPOK KEAHLIAN', 'KK PUd'),
('A057', 'KK Rekayasa Air dan Limbah Cair', 'KELOMPOK KEAHLIAN', 'KK RAd'),
('A058', 'KK Rekayasa Geoteknik', 'KELOMPOK KEAHLIAN', 'KK RG'),
('A059', 'KK Rekayasa Struktur', 'KELOMPOK KEAHLIAN', 'KK RS'),
('A060', 'KK Rekayasa Transportasi', 'KELOMPOK KEAHLIAN', 'KK RT'),
('A061', 'KK Teknik Lepas Pantai', 'KELOMPOK KEAHLIAN', 'KK TLP'),
('A062', 'KK Teknik Pantai', 'KELOMPOK KEAHLIAN', 'KK TP'),
('A063', 'KK Teknik Sumber Daya Air', 'KELOMPOK KEAHLIAN', 'KK TSD'),
('A064', 'KK Teknologi Pengelolaan Lingkungan', 'KELOMPOK KEAHLIAN', 'KK TPL'),
('A065', 'KK Eksplorasi Sumber Daya Bumi', 'KELOMPOK KEAHLIAN', 'KK ESD'),
('A066', 'KK Geofisika Global', 'KELOMPOK KEAHLIAN', 'KK GG'),
('A067', 'KK Geofisika Terapan dan Eksplorasi', 'KELOMPOK KEAHLIAN', 'KK GTd'),
('A068', 'KK Geotermal', 'KELOMPOK KEAHLIAN', 'KK G'),
('A069', 'KK Seismologi Eksplorasi dan Rekayasa', 'KELOMPOK KEAHLIAN', 'KK SEd'),
('A070', 'KK Teknik Metalurgi', 'KELOMPOK KEAHLIAN', 'KK TM'),
('A071', 'KK Teknik Pemboran, Produksi dan Manajemen Migas', 'KELOMPOK KEAHLIAN', 'KK TPP'),
('A072', 'KK Teknik Pertambangan', 'KELOMPOK KEAHLIAN', 'KK TP'),
('A073', 'KK Teknik Reservoir', 'KELOMPOK KEAHLIAN', 'KK TR'),
('A074', 'KK Pengelolaan Pembangunan dan Pengembangan Kebijakan', 'KELOMPOK KEAHLIAN', 'KK PPd'),
('A075', 'KK Perancangan Arsitektur', 'KELOMPOK KEAHLIAN', 'KK PA'),
('A076', 'KK Perencanaan dan Perancangan Kota', 'KELOMPOK KEAHLIAN', 'KK PdP'),
('A077', 'KK Perencanaan Wilayah dan Perdesaan', 'KELOMPOK KEAHLIAN', 'KK PWd'),
('A078', 'KK Perumahan dan Pemukiman', 'KELOMPOK KEAHLIAN', 'KK PdP'),
('A079', 'KK Sejarah, Teori dan Kritik Arsitektur', 'KELOMPOK KEAHLIAN', 'KK STd'),
('A080', 'KK Sistem dan Pemodelan Ekonomi', 'KELOMPOK KEAHLIAN', 'KK SdP'),
('A081', 'KK Sistem Infrastruktur Wilayah dan Kota', 'KELOMPOK KEAHLIAN', 'KK SIW'),
('A082', 'KK Teknologi Bangunan', 'KELOMPOK KEAHLIAN', 'KK TB'),
('A083', 'KK Kewirausahaan dan Manajemen Teknologi', 'KELOMPOK KEAHLIAN', 'KK KdM'),
('A084', 'KK Manajemen Manusia dan Pengetahuan', 'KELOMPOK KEAHLIAN', 'KK MMd'),
('A085', 'KK Manajemen Operasi dan Kinerja', 'KELOMPOK KEAHLIAN', 'KK MOd'),
('A086', 'KK Pengambilan Keputusan dan Negosiasi Strategis', 'KELOMPOK KEAHLIAN', 'KK PKd'),
('A087', 'KK Risiko Bisnis dan Keuangan', 'KELOMPOK KEAHLIAN', 'KK RBd'),
('A088', 'KK Strategi Bisnis dan Pemasaran', 'KELOMPOK KEAHLIAN', 'KK SBd'),
('A089', 'KK Biologi Farmasi', 'KELOMPOK KEAHLIAN', 'KK BF'),
('A090', 'KK Farmakokimia', 'KELOMPOK KEAHLIAN', 'KK F'),
('A091', 'KK Farmakologi-Farmasi Klinik', 'KELOMPOK KEAHLIAN', 'KK FK'),
('A092', 'KK Farmasetika', 'KELOMPOK KEAHLIAN', 'KK F'),
('A093', 'KK Ilmu Keolahragaan', 'KELOMPOK KEAHLIAN', 'KK IK'),
('A094', 'KK Agroteknologi dan Teknologi Bioproduk', 'KELOMPOK KEAHLIAN', 'KK AdT'),
('A095', 'KK Bioteknologi Mikroba', 'KELOMPOK KEAHLIAN', 'KK BM'),
('A096', 'KK Ekologi', 'KELOMPOK KEAHLIAN', 'KK E'),
('A097', 'KK Fisiologi, Perkembangan Hewan dan Sains Biomedika', 'KELOMPOK KEAHLIAN', 'KK FPH'),
('A098', 'KK Genetika dan Bioteknologi Molekular', 'KELOMPOK KEAHLIAN', 'KK GdB'),
('A099', 'KK Manajemen Sumber Daya Hayati', 'KELOMPOK KEAHLIAN', 'KK MSD'),
('A100', 'KK Sains dan Bioteknologi Tumbuhan', 'KELOMPOK KEAHLIAN', 'KK SdB'),
('A101', 'KK Teknologi Kehutanan', 'KELOMPOK KEAHLIAN', 'KK TK'),
('A102', 'KK Elektronika', 'KELOMPOK KEAHLIAN', 'KK E'),
('A103', 'KK Informatika', 'KELOMPOK KEAHLIAN', 'KK I'),
('A104', 'KK Rekayasa Perangkat Lunak dan Pengetahuan', 'KELOMPOK KEAHLIAN', 'KK RPL'),
('A105', 'KK Sistem Kendali dan Komputer', 'KELOMPOK KEAHLIAN', 'KK SKd'),
('A106', 'KK Teknik Biomedika', 'KELOMPOK KEAHLIAN', 'KK TB'),
('A107', 'KK Teknik Ketenagalistrikan', 'KELOMPOK KEAHLIAN', 'KK TK'),
('A108', 'KK Teknik Komputer', 'KELOMPOK KEAHLIAN', 'KK TK'),
('A109', 'KK Teknik Telekomunikasi', 'KELOMPOK KEAHLIAN', 'KK TT'),
('A110', 'KK Teknologi Informasi', 'KELOMPOK KEAHLIAN', 'KK TI'),
('B001', 'Administrasi Bisnis (S2)', 'PRODI', ''),
('B002', 'Matematika (S1)', 'PRODI', ''),
('B003', 'Administrasi Bisnis (Kampus Jakarta) (S2)', 'PRODI', ''),
('B004', 'Administrasi Bisnis (S2)', 'PRODI', ''),
('B006', 'Aktuaria (S2)', 'PRODI', ''),
('B007', 'Arsitektur (S1)', 'PRODI', ''),
('B008', 'Arsitektur (S2)', 'PRODI', ''),
('B009', 'Arsitektur (S3)', 'PRODI', ''),
('B010', 'Arsitektur Lanskap (S2)', 'PRODI', ''),
('B011', 'Astronomi (S1)', 'PRODI', ''),
('B012', 'Astronomi (S2)', 'PRODI', ''),
('B013', 'Astronomi (S3)', 'PRODI', ''),
('B014', 'Biologi (S1)', 'PRODI', ''),
('B015', 'Biologi (S2)', 'PRODI', ''),
('B016', 'Biologi (S3)', 'PRODI', ''),
('B017', 'Biomanajemen (S2)', 'PRODI', ''),
('B018', 'Bioteknologi (S2)', 'PRODI', ''),
('B019', 'Desain (S2)', 'PRODI', ''),
('B020', 'Desain Interior (S1)', 'PRODI', ''),
('B021', 'Desain Komunikasi Visual (S1)', 'PRODI', ''),
('B022', 'Desain Produk (S1)', 'PRODI', ''),
('B023', 'Farmasi (S2)', 'PRODI', ''),
('B024', 'Farmasi (S3)', 'PRODI', ''),
('B025', 'Farmasi Industri (S2)', 'PRODI', ''),
('B026', 'Farmasi Klinik Dan Komunitas (S1)', 'PRODI', ''),
('B027', 'Fisika (S1)', 'PRODI', ''),
('B028', 'Fisika (S2)', 'PRODI', ''),
('B029', 'Fisika (S3)', 'PRODI', ''),
('B030', 'Ilmu Dan Teknik Material (S2)', 'PRODI', ''),
('B031', 'Ilmu Dan Teknik Material (S3)', 'PRODI', ''),
('B032', 'Ilmu Seni Rupa Dan Desain (S3)', 'PRODI', ''),
('B033', 'Informatika (S2)', 'PRODI', ''),
('B034', 'Instrumentasi Dan Kontrol (S2)', 'PRODI', ''),
('B035', 'Keolahragaan (S2)', 'PRODI', ''),
('B036', 'Kewirausahaan (S1)', 'PRODI', ''),
('B037', 'Kimia (S1)', 'PRODI', ''),
('B038', 'Kimia (S2)', 'PRODI', ''),
('B039', 'Kimia (S3)', 'PRODI', ''),
('B040', 'Kriya (S1)', 'PRODI', ''),
('B041', 'Logistik (S2)', 'PRODI', ''),
('B042', 'Manajemen (S1)', 'PRODI', ''),
('B043', 'Manajemen Rekayasa (S1)', 'PRODI', ''),
('B044', 'Matematika (S1)', 'PRODI', ''),
('B045', 'Matematika (S2)', 'PRODI', ''),
('B046', 'Matematika (S3)', 'PRODI', ''),
('B047', 'Meteorologi (S1)', 'PRODI', ''),
('B048', 'Mikrobiologi (S1)', 'PRODI', ''),
('B049', 'Oseanografi (S1)', 'PRODI', ''),
('B050', 'Pengajaran Fisika (S2)', 'PRODI', ''),
('B051', 'Pengajaran Kimia (S2)', 'PRODI', ''),
('B052', 'Pengajaran Matematika (S2)', 'PRODI', ''),
('B053', 'Pengelolaan Infrastruktur Air Bersih dan Sanitasi (S2)', 'PRODI', ''),
('B054', 'Pengelolaan Sumberdaya Air (S2)', 'PRODI', ''),
('B055', 'Perencanaan Kepariwisataan (S2)', 'PRODI', ''),
('B056', 'Perencanaan Wilayah Dan Kota (S1)', 'PRODI', ''),
('B057', 'Perencanaan Wilayah Dan Kota (S2)', 'PRODI', ''),
('B058', 'Perencanaan Wilayah Dan Kota (S3)', 'PRODI', ''),
('B059', 'Profesi Apoteker (Profesi)', 'PRODI', ''),
('B060', 'Profesi Insinyur (Profesi)', 'PRODI', ''),
('B061', 'Rancang Kota (S2)', 'PRODI', ''),
('B062', 'Rekayasa Hayati (S1)', 'PRODI', ''),
('B063', 'Rekayasa Infrastruktur Lingkungan (S1)', 'PRODI', ''),
('B064', 'Rekayasa Kehutanan (S1)', 'PRODI', ''),
('B065', 'Rekayasa Pertambangan (S2)', 'PRODI', ''),
('B066', 'Rekayasa Pertambangan (S3)', 'PRODI', ''),
('B067', 'Rekayasa Pertanian (S1)', 'PRODI', ''),
('B068', 'Sains Dan Teknologi Farmasi (S1)', 'PRODI', ''),
('B069', 'Sains Kebumian (S2)', 'PRODI', ''),
('B070', 'Sains Kebumian (S3)', 'PRODI', ''),
('B071', 'Sains Komputasi (S2)', 'PRODI', ''),
('B072', 'Sains Manajemen (S2)', 'PRODI', ''),
('B073', 'Sains Manajemen (S3)', 'PRODI', ''),
('B074', 'Seni Rupa (S1)', 'PRODI', ''),
('B075', 'Seni Rupa (S2)', 'PRODI', ''),
('B076', 'Sistem Dan Teknik Jalan Raya (S2)', 'PRODI', ''),
('B077', 'Sistem dan Teknologi Informasi (S1)', 'PRODI', ''),
('B078', 'Studi Pembangunan (S2)', 'PRODI', ''),
('B079', 'Teknik Air Tanah (S2)', 'PRODI', ''),
('B080', 'Teknik Bioenergi dan Kemurgi (S1)', 'PRODI', ''),
('B081', 'Teknik Biomedis (S1)', 'PRODI', ''),
('B082', 'Teknik Dan Manajemen Industri (S2)', 'PRODI', ''),
('B083', 'Teknik Dan Manajemen Industri (S3)', 'PRODI', ''),
('B084', 'Teknik dan Pengelolaan Sumber Daya Air (S1)', 'PRODI', ''),
('B085', 'Teknik Dirgantara (S1)', 'PRODI', ''),
('B086', 'Teknik Dirgantara (S2)', 'PRODI', ''),
('B087', 'Teknik Dirgantara (S3)', 'PRODI', ''),
('B088', 'Teknik Elektro (S1)', 'PRODI', ''),
('B089', 'Teknik Elektro (S2)', 'PRODI', ''),
('B090', 'Teknik Elektro dan Informatika (S3)', 'PRODI', ''),
('B091', 'Teknik Fisika (S1)', 'PRODI', ''),
('B092', 'Teknik Fisika (S2)', 'PRODI', ''),
('B093', 'Teknik Fisika (S3)', 'PRODI', ''),
('B094', 'Teknik Geodesi & Geomatika (S3)', 'PRODI', ''),
('B095', 'Teknik Geodesi Dan Geomatika (S1)', 'PRODI', ''),
('B096', 'Teknik Geodesi Dan Geomatika (S2)', 'PRODI', ''),
('B097', 'Teknik Geofisika (S1)', 'PRODI', ''),
('B098', 'Teknik Geofisika (S2)', 'PRODI', ''),
('B099', 'Teknik Geofisika (S3)', 'PRODI', ''),
('B100', 'Teknik Geologi (S1)', 'PRODI', ''),
('B101', 'Teknik Geologi (S2)', 'PRODI', ''),
('B102', 'Teknik Geologi (S3)', 'PRODI', ''),
('B103', 'Teknik Industri (S1)', 'PRODI', ''),
('B104', 'Teknik Informatika (S1)', 'PRODI', ''),
('B105', 'Teknik Kelautan (S1)', 'PRODI', ''),
('B106', 'Teknik Kelautan (S2)', 'PRODI', ''),
('B107', 'Teknik Kimia (S1)', 'PRODI', ''),
('B108', 'Teknik Kimia (S2)', 'PRODI', ''),
('B109', 'Teknik Kimia (S3)', 'PRODI', ''),
('B110', 'Teknik Lingkungan (S1)', 'PRODI', ''),
('B111', 'Teknik Lingkungan (S2)', 'PRODI', ''),
('B112', 'Teknik Lingkungan (S3)', 'PRODI', ''),
('B113', 'Teknik Material (S1)', 'PRODI', ''),
('B114', 'Teknik Mesin (S1)', 'PRODI', ''),
('B115', 'Teknik Mesin (S2)', 'PRODI', ''),
('B116', 'Teknik Mesin (S3)', 'PRODI', ''),
('B117', 'Teknik Metalurgi (S1)', 'PRODI', ''),
('B118', 'Teknik Metalurgi (S2)', 'PRODI', ''),
('B119', 'Teknik Geotermal (S2)', 'PRODI', ''),
('B120', 'Teknik Pangan (S1)', 'PRODI', ''),
('B121', 'Teknik Perminyakan (S1)', 'PRODI', ''),
('B122', 'Teknik Perminyakan (S2)', 'PRODI', ''),
('B123', 'Teknik Perminyakan (S3)', 'PRODI', ''),
('B124', 'Teknik Pertambangan (S1)', 'PRODI', ''),
('B125', 'Teknik Sipil (S1)', 'PRODI', ''),
('B126', 'Teknik Sipil (S2)', 'PRODI', ''),
('B127', 'Teknik Sipil (S3)', 'PRODI', ''),
('B128', 'Teknik Telekomunikasi (S1)', 'PRODI', ''),
('B129', 'Teknik Tenaga Listrik (S1)', 'PRODI', ''),
('B130', 'Teknologi Pasca Panen (S1)', 'PRODI', ''),
('B131', 'Transportasi (S2)', 'PRODI', ''),
('B132', 'Transportasi (S3)', 'PRODI', ''),
('B272', 'Senat SF', 'SENAT', 'SENAT-SF'),
('B273', 'KK Hidrografi', 'KELOMPOK KEAHLIAN', 'KKHidro'),
('B275', 'KK Fisika Instrumentasi dan Komputasi', 'KELOMPOK KEAHLIAN', 'KK FIK'),
('B276', 'KK Fisika Teoritik Energi Tinggi', 'KELOMPOK KEAHLIAN', 'KK FTETi'),
('B277', 'Satuan Usaha Komersial', 'UNIT KERJA PENDUKUNG', 'SUK'),
('B278', 'Pusat Pendayagunaan Open Source Software', 'UNIT KERJA PENDUKUNG', ''),
('B279', 'Kantor Majelis Guru Besar', 'UNIT KERJA PENDUKUNG', 'MGB'),
('B280', 'Kantor Satuan Kekayaan dan Dana', 'UNIT KERJA PENDUKUNG', 'SKD'),
('B281', 'Pusat Mitigasi Bencana', 'UNIT KERJA PENDUKUNG', ''),
('B282', 'Pusat Penelitian Teknologi Informasi dan Komunikasi', 'UNIT KERJA PENDUKUNG', ''),
('B283', 'Pusat Penginderaan Jauh', 'UNIT KERJA PENDUKUNG', ''),
('B284', 'Pusat Teknologi Instrumentasi dan Otomasi', 'UNIT KERJA PENDUKUNG', ''),
('B285', 'Pusat Kebijakan Publik dan Kepemerintahan', 'UNIT KERJA PENDUKUNG', ''),
('B286', 'Pusat Infrastruktur Data Spasial', 'UNIT KERJA PENDUKUNG', ''),
('B287', 'Pusat Pengembangan Sumberdaya Air', 'UNIT KERJA PENDUKUNG', ''),
('B288', 'Pusat Studi Sistem Tak Berawak', 'UNIT KERJA PENDUKUNG', ''),
('B289', 'Pusat Teknologi Kesehatan & Keolahragaan', 'UNIT KERJA PENDUKUNG', ''),
('B290', 'Pusat pengkajian Logistik dan Sistem Rantai Pasok', 'UNIT KERJA PENDUKUNG', ''),
('B291', 'Laboratorium Produksi Litbang Integrasi & Aplikasi ITB', 'UNIT KERJA PENDUKUNG', 'N'),
('B292', 'Pusat Studi Sarana dan Prasarana Tahan Gempa', 'UNIT KERJA PENDUKUNG', ''),
('B293', 'Pusat Perubahan Iklim', 'UNIT KERJA PENDUKUNG', ''),
('B294', 'Pusat Pemberdayaan Perdesaan', 'UNIT KERJA PENDUKUNG', ''),
('B295', 'Pusat Pangan, Kesehatan dan Obat-obatan', 'UNIT KERJA PENDUKUNG', ''),
('B296', 'Pusat Penelitian Nanosains dan Nanoteknologi', 'UNIT KERJA PENDUKUNG', ''),
('B297', 'HaKI', 'UNIT KERJA PENDUKUNG', ''),
('B298', 'Pusat Ilmu Hayati', 'UNIT KERJA PENDUKUNG', ''),
('B299', 'Pusat Kebijakan Keenergian', 'UNIT KERJA PENDUKUNG', ''),
('B300', 'Pusat Perencanaan dan Pengembangan Kepariwisataan', 'UNIT KERJA PENDUKUNG', ''),
('B301', 'Pusat Lingkungan Hidup', 'UNIT KERJA PENDUKUNG', ''),
('B302', 'Pusat Mikroelektronika', 'UNIT KERJA PENDUKUNG', ''),
('B303', 'Pusat Pemodelan Matematika dan Simulasi', 'UNIT KERJA PENDUKUNG', ''),
('B304', 'Pusat Penelitian Bioteknologi', 'UNIT KERJA PENDUKUNG', ''),
('B305', 'Pusat Penelitian Pengembangan Wilayah dan Infrastruktur', 'UNIT KERJA PENDUKUNG', ''),
('B306', 'Pusat Penelitian Produk Budaya dan Lingkungan', 'UNIT KERJA PENDUKUNG', ''),
('B307', 'Pusat Pengembangan Kawasan Pesisir dan Laut', 'UNIT KERJA PENDUKUNG', ''),
('B308', 'Pusat Rekayasa Industri', 'UNIT KERJA PENDUKUNG', ''),
('B309', 'KK Teknik Kelautan', 'KELOMPOK KEAHLIAN', 'N'),
('B314', 'KK Literasi Media dan Budaya', 'KELOMPOK KEAHLIAN', 'KK LMB'),
('B315', 'Kantor Wakil Rektor Bidang Sumber Daya', 'UNIT KERJA PENDUKUNG', 'WRSD'),
('B316', 'Sekretariat Institut', 'UNIT KERJA PENDUKUNG', 'KSI'),
('B317', 'Biro Administrasi Umum dan Informasi', 'UNIT KERJA PENDUKUNG', 'BAI'),
('B318', 'Biro Komunikasi dan Hubungan Masyarakat', 'UNIT KERJA PENDUKUNG', 'BKHM'),
('B319', 'Biro Kemitraan', 'UNIT KERJA PENDUKUNG', 'BKM'),
('B320', 'Kantor Hukum', 'UNIT KERJA PENDUKUNG', 'KHM'),
('B321', 'Kantor Kealumnian', 'UNIT KERJA PENDUKUNG', 'KAU'),
('B322', 'Direktorat Pengembangan Pendidikan', 'UNIT KERJA PENDUKUNG', 'DPP'),
('B323', 'Direktorat Kemahasiswaan', 'UNIT KERJA PENDUKUNG', 'DKM'),
('B324', 'Direktorat Pendidikan Non Reguler', 'UNIT KERJA PENDUKUNG', 'DPNR'),
('B325', 'UPT Saraga dan Sabuga', 'UNIT KERJA PENDUKUNG', 'SABUGA'),
('B326', 'UPT Pengembangan SDM', 'UNIT KERJA PENDUKUNG', 'PSDM'),
('B327', 'Direktorat Perencanaan Sumberdaya', 'UNIT KERJA PENDUKUNG', 'DPS'),
('B328', 'UPT Pengadaan', 'UNIT KERJA PENDUKUNG', 'UPTPD'),
('B329', 'Sains Farmasi (S2)', 'PRODI', ''),
('B330', 'Aktuaria (S1)', 'PRODI', ''),
('B331', 'Ilmu dan Rekayasa Nuklir (S2)', 'PRODI', ''),
('B332', 'Rekayasa Nuklir (S3)', 'PRODI', ''),
('B333', 'Teknologi Nano (S2)', 'PRODI', ''),
('B334', 'Sains dan Teknologi Nano (S3)', 'PRODI', ''),
('BPUD', 'Badan Pengelola Usaha dan Dana Lestari', 'UNIT KERJA PENDUKUNG', 'BPUDL'),
('DAUM', 'Direktorat Administrasi Umum', 'UNIT KERJA PENDUKUNG', 'DITADU'),
('DDIK', 'Direktorat Pendidikan', 'UNIT KERJA PENDUKUNG', 'DITDIK'),
('DEIJ', 'Direktorat Kampus ITB Jatinangor', 'UNIT KERJA PENDUKUNG', 'ITBJN'),
('DEMK', 'Direktorat Eksekutif Pengelolaan Penerimaan Mahasiswa dan Kerjasama Pendidikan', 'UNIT KERJA PENDUKUNG', 'DEKTM'),
('DHMA', 'Direktorat Hubungan Masyarakat dan Alumni', 'UNIT KERJA PENDUKUNG', 'HUMAS'),
('DITP', 'Direktorat Pengembangan', 'UNIT KERJA PENDUKUNG', 'DITBANG'),
('DKEU', 'Direktorat Keuangan', 'UNIT KERJA PENDUKUNG', 'DIKEU'),
('DKHI', 'Direktorat Kemitraan & Hubungan Internasional', 'UNIT KERJA PENDUKUNG', 'DKHI'),
('DLOG', 'Direktorat Logistik', 'UNIT KERJA PENDUKUNG', 'DITLOG'),
('DPEG', 'Direktorat Kepegawaian', 'UNIT KERJA PENDUKUNG', 'DITPEG'),
('DPRN', 'Direktorat Perencanaan', 'UNIT KERJA PENDUKUNG', 'DITPRAN'),
('DSPR', 'Direktorat Sarana dan Prasarana', 'UNIT KERJA PENDUKUNG', 'DSP'),
('DSTI', 'Direktorat Sistem dan Teknologi Informasi', 'UNIT KERJA PENDUKUNG', 'DSTI'),
('FITB', 'Fakultas Ilmu dan Teknologi Kebumian', 'UNIT KERJA AKADEMIK', 'FITB'),
('FMIP', 'Fakultas Matematika dan Ilmu Pengetahuan Alam', 'UNIT KERJA AKADEMIK', 'FMIPA'),
('FSRD', 'Fakultas Seni Rupa dan Desain', 'UNIT KERJA AKADEMIK', 'FSRD'),
('FTI0', 'Fakultas Teknologi Industri', 'UNIT KERJA AKADEMIK', 'FTI'),
('FTMD', 'Fakultas Teknik Mesin dan Dirgantara', 'UNIT KERJA AKADEMIK', 'FTMD'),
('FTPP', 'Fakultas Teknik Pertambangan dan Perminyakan', 'UNIT KERJA AKADEMIK', 'FTTM'),
('FTSL', 'Fakultas Teknik Sipil dan Lingkungan', 'UNIT KERJA AKADEMIK', 'FTSL'),
('ITB0', 'Kampus ITB', 'UNIT KERJA PENDUKUNG', 'ITB'),
('KICR', 'Kampus ITB Cirebon', 'UNIT KERJA PENDUKUNG', 'ITBCIREBON'),
('LBK0', 'Lembaga Bimbingan Konseling', 'UNIT KERJA PENDUKUNG', 'LBK'),
('LIK0', 'Lembaga Inovasi & Kewirausahaan', 'UNIT KERJA PENDUKUNG', 'LIK'),
('LKM0', 'Lembaga Kemahasiswaan', 'UNIT KERJA PENDUKUNG', 'LKM'),
('LLH0', 'Lembaga Layanan Hukum', 'UNIT KERJA PENDUKUNG', 'LLH'),
('LPIK', 'Lembaga Pengembangan Inovasi dan Kewirausahaan', 'UNIT KERJA PENDUKUNG', 'LPIK'),
('LPPK', 'Lembaga Penelitian dan Pengabdian kepada Masyarakat', 'UNIT KERJA PENDUKUNG', 'LPPM'),
('LTPB', 'Program Tahap Persiapan Bersama', 'UNIT KERJA PENDUKUNG', 'LTPB'),
('MWA0', 'Majelis Wali Amanat', 'UNIT KERJA PENDUKUNG', 'MWA'),
('PMO0', 'UPT Pengembangan Manusia dan Organisasi', 'UNIT KERJA PENDUKUNG', 'PMO'),
('PPP0', 'Pusat Penelitian dan Pengembangan', 'UNIT KERJA PENDUKUNG', 'UPP'),
('RKTR', 'Institut Teknologi Bandung', 'UNIT KERJA PENDUKUNG', 'REKTOR'),
('SAPP', 'Sekolah Arsitektur, Perencanaan dan Pengembangan Kebijakan', 'UNIT KERJA AKADEMIK', 'SAPPK'),
('SBGN', 'Sasana Budaya Ganesa (SABUGA)', 'SABUGA', 'SBG'),
('SBM0', 'Sekolah Bisnis dan Manajemen', 'UNIT KERJA AKADEMIK', 'SBM'),
('SF00', 'Sekolah Farmasi', 'UNIT KERJA AKADEMIK', 'SF'),
('SF01', 'Senat Fakultas FITB', 'SENAT', 'SENAT-FITB'),
('SF02', 'Senat Fakultas FMIPA', 'SENAT', 'SENAT-FMIPA'),
('SF03', 'Senat Fakultas FSRD', 'SENAT', 'SENAT-FSRD'),
('SF04', 'Senat Fakultas FTI', 'SENAT', 'SENAT-FTI'),
('SF05', 'Senat Fakultas FTMD', 'SENAT', 'SENAT-FTMD'),
('SF06', 'Senat Fakultas FTSL', 'SENAT', 'SENAT-FTSL'),
('SF07', 'Senat Fakultas FTTM', 'SENAT', 'SENAT-FTTM'),
('SF08', 'Senat SAPPK', 'SENAT', 'SENAT-SAPPK'),
('SF09', 'Senat SBM', 'SENAT', 'SENAT-SBM'),
('SF10', 'Senat SITH', 'SENAT', 'SENAT-SITH'),
('SF11', 'Senat STEI', 'SENAT', 'SENAT-STEI'),
('SITH', 'Sekolah Ilmu dan Teknologi Hayati', 'UNIT KERJA AKADEMIK', 'SITH'),
('SNA0', 'Senat Akademik', 'SENAT', 'SA'),
('SNF0', 'Senat Fakultas', 'SENAT', 'SF'),
('SPI0', 'Satuan Pengawas Internal', 'UNIT KERJA PENDUKUNG', 'SPI'),
('SPM0', 'Satuan Penjaminan Mutu', 'UNIT KERJA PENDUKUNG', 'SPM'),
('SPS0', 'Sekolah Pasca Sarjana', 'UNIT KERJA PENDUKUNG', 'SPS'),
('STEI', 'Sekolah Teknik Elektro dan Informatika', 'UNIT KERJA AKADEMIK', 'STEI'),
('UPT0', 'UPT E-Learning', 'UNIT KERJA PENDUKUNG', 'UPT EL'),
('UPT1', 'UPT Olahraga', 'UNIT KERJA PENDUKUNG', 'UPTOR'),
('UPT2', 'UPT Pusat Bahasa', 'UNIT KERJA PENDUKUNG', 'BAHASA'),
('UPT3', 'UPT Perpustakaan', 'UNIT KERJA PENDUKUNG', 'PERPUS'),
('UPTA', 'Unit Pelaksana Teknis Asrama', 'UNIT KERJA PENDUKUNG', 'UPT ASRAMA'),
('WRAM', 'Kantor Wakil Rektor Bidang Akademik dan Kemahasiswaan', 'UNIT KERJA PENDUKUNG', 'WRAM'),
('WRIM', 'Kantor Wakil Rektor Bidang Riset, Inovasi dan Kemitraan', 'UNIT KERJA PENDUKUNG', 'WRRIM'),
('WRUK', 'Kantor Wakil Rektor Bidang Keuangan, Perencanaan, dan Pengembangan', 'UNIT KERJA PENDUKUNG', 'WRURK'),
('YKSH', 'UPT Pelayanan Kesehatan', 'UNIT KERJA PENDUKUNG', 'YANKES');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_approval`
--

CREATE TABLE `t_approval` (
  `id` int(11) NOT NULL,
  `kunjungan_id` int(11) DEFAULT NULL,
  `is_approved` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=approved, 0=not approved',
  `keterangan` varchar(255) DEFAULT NULL,
  `stamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `userinput` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `t_approval`
--

INSERT INTO `t_approval` (`id`, `kunjungan_id`, `is_approved`, `keterangan`, `stamp`, `userinput`) VALUES
(67, 92, 1, NULL, '2022-08-19 07:54:51', ''),
(68, 108, 0, 'Sebab tidak memenuhi syarat', '2022-08-19 08:14:15', ''),
(73, 103, 1, NULL, '2022-08-19 09:29:51', ''),
(74, 93, 0, NULL, '2022-08-19 10:42:55', ''),
(77, 104, 0, NULL, '2022-08-21 05:55:33', ''),
(78, 105, 1, NULL, '2022-08-21 05:55:45', ''),
(79, 106, 1, NULL, '2022-08-21 05:55:57', ''),
(80, 102, 1, NULL, '2022-08-28 08:05:28', ''),
(81, 107, 0, NULL, '2022-08-28 08:15:41', ''),
(82, 110, 1, NULL, '2022-09-02 07:32:03', ''),
(83, 111, 1, NULL, '2022-09-02 08:38:00', ''),
(84, 109, 1, NULL, '2022-09-02 09:14:08', ''),
(85, 112, 1, NULL, '2022-09-08 14:06:04', ''),
(86, 101, 1, NULL, '2022-09-08 15:45:41', ''),
(87, 113, 1, 'Ya', '2022-09-14 04:46:46', ''),
(88, 114, 1, 'aaa', '2022-09-15 00:40:11', ''),
(89, 115, 1, 'Go', '2022-09-19 03:21:41', ''),
(90, 116, 1, '...', '2022-09-21 07:44:41', ''),
(91, 117, 1, 'Setuju', '2022-09-21 08:08:47', ''),
(92, 118, 1, '...', '2022-09-21 08:28:55', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_grup`
--

CREATE TABLE `t_grup` (
  `nama_grup` varchar(50) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `t_grup`
--

INSERT INTO `t_grup` (`nama_grup`, `keterangan`) VALUES
('Superadmin', NULL),
('Admin', NULL),
('Fakultas / Sekolah', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kunjungan`
--

CREATE TABLE `t_kunjungan` (
  `id` int(11) NOT NULL,
  `waktu_masuk` datetime NOT NULL,
  `tujuan` varchar(255) DEFAULT NULL,
  `ringkasan` text DEFAULT NULL,
  `pic_kunjungan` varchar(255) NOT NULL,
  `unit_kerja` varchar(100) NOT NULL,
  `is_itb` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=ITB, 0=non ITB',
  `stamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `userinput` varchar(100) NOT NULL,
  `sites_id` int(11) NOT NULL,
  `pic_unit_kerja` varchar(100) NOT NULL COMMENT 'PIC unit kerja yg berkunjung',
  `waktu_keluar` datetime DEFAULT NULL COMMENT 'Waktu selesai kunjungan',
  `kategori_kunjungan_id` int(11) NOT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `no_kontak` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `aktivitas_kunjungan_id` int(11) NOT NULL,
  `approval` tinyint(4) NOT NULL DEFAULT 2 COMMENT '1=approved, 0=rejected, 2=waitingforapprove',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `t_kunjungan`
--

INSERT INTO `t_kunjungan` (`id`, `waktu_masuk`, `tujuan`, `ringkasan`, `pic_kunjungan`, `unit_kerja`, `is_itb`, `stamp`, `userinput`, `sites_id`, `pic_unit_kerja`, `waktu_keluar`, `kategori_kunjungan_id`, `nip`, `no_kontak`, `email`, `aktivitas_kunjungan_id`, `approval`, `is_deleted`) VALUES
(91, '2022-04-16 11:10:00', 'sads', 'sadas', '', 'aaaaa', 1, '2022-04-15 04:31:12', 'admin', 1, 'aaaa', '0000-00-00 00:00:00', 1, '198609262015051001', '432', 'f@gmail.com', 1, 2, 1),
(92, '2022-04-13 15:54:00', 'kjkk', 'aaa', 'Adi Wahyudi Nurhadi', 'Direktorat Eksekutif Pengelolaan Penerimaan Mahasiswa dan Kerjasama Pendidikan', 1, '2022-04-15 09:03:53', 'admin', 1, 'Sulthan', '2022-08-28 02:28:21', 2, '19860926201505', '029', 'f@gmail.com', 1, 1, 0),
(93, '2022-04-13 15:54:00', 'aaa', 'aaa', 'Stevano', 'Biro Administrasi Umum dan Informasi', 1, '2022-04-15 09:04:12', 'admin', 1, 'aaa', '0000-00-00 00:00:00', 2, '1986092620150', '029', 'f@gmail.com', 1, 0, 0),
(101, '2022-09-09 14:00:00', 'bb', 'ss', '  Salimaah', 'UPT Pelayanan Kesehatan', 0, '2022-04-21 04:03:23', 'admin', 3, 'budi', '2022-09-14 11:58:34', 2, '198609262015051', '123321', 'andy@gmail.com', 1, 1, 0),
(102, '2022-08-01 08:30:00', 'aa', 'aa', 'Salimah', 'asaa', 0, '2022-04-29 01:59:53', 'admin', 1, 'budi', '2022-04-30 10:00:00', 1, '198609262015', '082931871493', 'andy@gmail.com', 2, 1, 0),
(103, '2022-10-18 15:00:00', 'Untuk', 'Begini', ' Zida', 'Pusat Pengembangan Kawasan Pesisir dan Laut', 1, '2022-06-27 08:09:34', 'admin', 2, 'Salim', '0000-00-00 00:00:00', 3, '1986002620150510', '078978678587', 'aslim@gmail.com', 2, 1, 0),
(104, '2022-06-28 14:00:00', 'Mau', 'Mau', ' Adel', 'Direktorat Logistik', 1, '2022-06-27 08:17:13', 'admin', 3, 'Asiah', '0000-00-00 00:00:00', 1, '1986002690150510', '08465453575', 'susan@gmail.com', 1, 0, 0),
(105, '2022-06-27 14:00:00', 'Untuk', 'Begini', ' Baron', 'UPT Pusat Bahasa', 0, '2022-06-27 08:19:16', 'admin', 4, 'Sarah', '0000-00-00 00:00:00', 4, '19860026208888', '088896578586', 'sarahh@gmail.com', 2, 1, 0),
(106, '2022-06-27 13:00:00', 'Mau', 'Mau', ' Darsa', 'Direktorat Perencanaan Sumberdaya', 1, '2022-06-27 08:20:26', 'admin', 5, 'Yaya', '2022-08-30 08:51:20', 1, '19860026901999', '081886875645', 'yaya@gmail.com', 1, 1, 0),
(107, '2022-07-12 14:00:00', 'Untuk melihat', 'Melihat', ' Sulis', 'Sekolah Ilmu dan Teknologi Hayati', 0, '2022-07-12 06:47:44', 'admin', 1, 'Kodam', '0000-00-00 00:00:00', 1, '1986026201501001', '082319728271', 'kodam@gmail.com', 2, 0, 0),
(108, '2023-11-14 12:00:00', 'Untuk menyurvei', 'Survei', 'Gashina', 'Sasana Budaya Ganesa (SABUGA)', 1, '2022-08-19 05:22:16', 'admin', 1, 'Evan', '0000-00-00 00:00:00', 1, '198609262015053', '0823918379204', 'evan@gmail.com', 1, 0, 0),
(109, '2022-09-12 13:00:00', 'Untuk', '', ' Salim', 'Unit Pelaksana Teknis Asrama', 1, '2022-09-02 06:14:33', 'admin', 1, 'Sally', '0000-00-00 00:00:00', 2, '1986092620150512', '082327293874', 'sally@gmail.com', 1, 1, 0),
(110, '2022-09-09 13:00:00', 'Untuk melihat', NULL, ' Salimah', 'UPT E-Learning', 1, '2022-09-02 06:22:59', 'admin', 2, 'Evan', '2022-09-02 02:33:50', 3, '198600262015051', '082327293875', 'ev@gmail.com', 1, 1, 0),
(111, '2022-09-05 11:00:00', 'Untuk melihat', NULL, ' Salam', 'Kantor Wakil Rektor Bidang Akademik dan Kemahasiswaan', 0, '2022-09-02 08:31:01', 'admin', 1, 'Sari', '2022-09-02 03:42:50', 1, '19860026201505', '082327293871', 'sari@gmail.com', 1, 1, 0),
(112, '2022-09-02 15:00:00', 'Untuk', NULL, 'Salimah', 'UPT Pelayanan Kesehatan', 0, '2022-09-02 09:28:15', 'admin', 1, 'Asih', '0000-00-00 00:00:00', 1, '19860232650510', '082327293875', 'susan@gmail.com', 1, 1, 0),
(113, '2022-09-14 14:00:00', 'Untuk', NULL, ' Salimah', 'Direktorat Sistem dan Teknologi Informasi', 1, '2022-09-14 04:33:52', 'admin', 1, 'Ardianto', '2022-09-14 11:57:01', 2, '1910926201505101', '082327293875', 'ardi@gmail.com', 1, 1, 0),
(114, '2022-09-15 09:00:00', 'Untuk', NULL, ' Salimah', 'UPT Pelayanan Kesehatan', 1, '2022-09-15 00:38:26', 'admin', 1, 'Sari', '2022-09-15 09:32:05', 2, '1986092620151001', '082327293875', 'susan@gmail.com', 2, 1, 0),
(115, '2022-09-19 12:00:00', 'Untuk', NULL, ' Salimah', 'Direktorat Sistem dan Teknologi Informasi', 1, '2022-09-19 03:17:41', 'admin', 1, 'Agung', '0000-00-00 00:00:00', 2, '199262015051001', '082327293871', 'andygung@gmail.com', 1, 1, 0),
(116, '2022-09-22 12:00:00', 'Untuk melihat', NULL, ' Arif', 'Sekolah Bisnis dan Manajemen', 0, '2022-09-21 07:39:54', 'admin', 1, 'Sofwan', '2022-09-21 02:54:47', 1, '23279120392891', '081293872632', 'sofwan@gmail.com', 1, 1, 0),
(117, '2022-09-22 12:00:00', 'Untuk', NULL, ' Arisa', 'Sekolah Bisnis dan Manajemen', 0, '2022-09-21 08:07:02', 'admin', 1, 'Diah', '2022-09-21 03:22:06', 1, '018237819237292', '081192837448', 'diah@gmail.com', 1, 1, 0),
(118, '2022-09-22 11:00:00', 'Menempatkan ', NULL, ' Salimah', 'Senat Akademik', 1, '2022-09-21 08:24:57', 'admin', 1, 'Salda', '2022-09-21 03:39:38', 2, '012839272939849', '08927381793', 'sal@gmail.com', 2, 1, 0),
(119, '2022-04-13 08:54:00', 'edit', 'edit', 'test', 'test', 0, '2023-01-23 00:54:12', 'admin', 1, 'test', NULL, 1, '32111182438920008', '0827837132897', 'test@gmail.com', 2, 2, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pengunjung`
--

CREATE TABLE `t_pengunjung` (
  `id` int(11) NOT NULL,
  `kunjungan_id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `unit_kerja` varchar(100) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `is_itb` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=ITB, 0=non ITB',
  `stamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `userinput` varchar(100) NOT NULL,
  `id_pengunjung` varchar(50) DEFAULT NULL COMMENT 'NIP/NOPEG/NO.KTP',
  `no_kontak` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `is_pic` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'PIC Teknis Unit Kerja/Vendor',
  `is_present` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=hadir, 0=tidak hadir',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=deleted, 0=not deleted'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `t_pengunjung`
--

INSERT INTO `t_pengunjung` (`id`, `kunjungan_id`, `nama`, `unit_kerja`, `keterangan`, `is_itb`, `stamp`, `userinput`, `id_pengunjung`, `no_kontak`, `email`, `is_pic`, `is_present`, `is_deleted`) VALUES
(49, 91, 'aaa', 'UnivTelkom@a.com', 'aaaaaaa', 1, '2022-04-15 04:31:12', 'admin', '5342', '432', 'f@gmail.com', 1, 0, 0),
(50, 92, 'aaa', 'aaaa', 'aa', 1, '2022-04-19 05:51:06', 'admin', '12321', '13', 'andy@gmail.com', 1, 0, 1),
(51, 92, 'aaa', 'aaa', 'aaa', 0, '2022-04-19 06:26:58', 'admin', '1321', '1342', 'andy@gmail.com', 0, 0, 1),
(52, 92, 'Racheliya', 'aaa', 'aaaa', 0, '2022-04-19 06:33:44', 'admin', '122123', '082138729321', 'susan@gmail.com', 1, 1, 0),
(58, 101, 'Fathya Ariyani', 'ada', 'okok', 0, '2022-04-21 06:06:12', 'admin', '9823219381232', '082378928732', 'fathya@gmail.com', 0, 0, 0),
(62, 101, 'Ele', 'aaa', 'okok', 0, '2022-04-25 02:43:43', 'admin', '111111111111', '082923389732', 'nadev@gmail.com', 0, 0, 0),
(63, 102, 'Ele', 'aaa', 'aaa', 0, '2022-04-29 02:00:50', 'admin', '8797979999999', '08231297389', 'susan@gmail.com', 0, 0, 0),
(64, 92, 'Fathya Ariyani', 'uk', 'nyenye', 0, '2022-05-09 04:40:38', 'admin', '2139891280230', '082931938263', 'nadev@gmail.com', 0, 1, 0),
(65, 92, 'Fathya Ariyani', 'uk', 'nyenye', 0, '2022-05-09 04:42:40', 'admin', '2139891280230', '082931938263', 'nadev@gmail.com', 0, 0, 1),
(66, 107, 'Fathya', 'Telkom University', 'Pengunjung', 0, '2022-07-12 07:00:36', 'admin', '0812197319201938', '081289732878', 'fathyariyani@gmail.com', 0, 0, 0),
(67, 111, 'Racheliya', 'Telkom University', '', 0, '2022-09-02 08:35:59', 'admin', '9021372981092', '082327293874', 'racheliya@gmail.com', 1, 1, 0),
(68, 111, 'Ari', 'Telkom University', '', 0, '2022-09-02 08:36:30', 'admin', '31903820182390', '082327293875', 'fathyariyani@gmail.com', 0, 0, 0),
(69, 112, 'Mona', 'Mahasiswa Telkom University', '', 0, '2022-09-08 09:14:21', 'admin', '20180000323738', '089236183861', '', 0, 0, 0),
(70, 116, 'Raihan', 'Mahasiswa Telkom University', 'Pengunjung', 0, '2022-09-21 07:42:02', 'admin', '02137229371298', '082917367128', 'rai@gmail.com', 1, 0, 0),
(71, 116, 'Talia', 'Mahasiswa Telkom University', 'Pengunjung', 0, '2022-09-21 07:42:59', 'admin', '23792103792721', '0812973286312', 'talia@gmail.com', 0, 0, 0),
(72, 118, 'Alim', 'Senat Akademik', '', 1, '2022-09-21 08:25:56', 'admin', '07392728382934', '0812973846183', 'alim@gmail.com', 0, 1, 0),
(73, 118, 'Darsa', 'Senat Akademik', '', 1, '2022-09-21 08:26:33', 'admin', '90731287437642', '082931784972', 'darsa@gmail.com', 1, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_presensi`
--

CREATE TABLE `t_presensi` (
  `id` int(11) NOT NULL,
  `kunjungan_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_masuk` time NOT NULL,
  `jam_keluar` time NOT NULL,
  `status_presensi` int(11) NOT NULL COMMENT '1 = masuk, 2 = keluar',
  `hasil` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `t_presensi`
--

INSERT INTO `t_presensi` (`id`, `kunjungan_id`, `tanggal`, `jam_masuk`, `jam_keluar`, `status_presensi`, `hasil`) VALUES
(1, 103, '2022-08-22', '01:04:59', '01:23:43', 2, 'Hasil dari kunjungan ini blablabla'),
(13, 92, '2022-08-28', '01:57:29', '02:28:21', 2, ''),
(16, 106, '2022-08-30', '08:50:47', '08:51:20', 2, ''),
(17, 110, '2022-09-02', '02:33:17', '02:33:50', 2, 'Hasilny ablaaba'),
(18, 111, '2022-09-02', '03:42:09', '03:42:50', 2, ''),
(19, 101, '2022-09-10', '04:14:26', '04:30:00', 2, NULL),
(20, 113, '2022-09-14', '11:54:17', '11:57:01', 2, NULL),
(21, 114, '2022-09-15', '07:41:10', '09:32:00', 2, 'Pengunjung sudah meninggalkan data center namun installation belum dilakukan karena ...'),
(22, 116, '2022-09-21', '02:49:19', '02:54:47', 2, NULL),
(25, 117, '2022-09-21', '03:21:02', '03:22:06', 2, 'Hasilnya ....'),
(28, 118, '2022-09-21', '03:36:44', '03:39:38', 2, 'Hasilnya...');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_role`
--

CREATE TABLE `t_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `nama_grup` varchar(50) NOT NULL,
  `stamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `t_role`
--

INSERT INTO `t_role` (`id`, `nama_user`, `nama_grup`, `stamp`, `created_by`, `modified_at`, `modified_by`) VALUES
(1, '1', '1', '2015-09-17 21:47:42', NULL, NULL, NULL),
(2, '2', '1', '2015-10-07 03:06:08', 2, NULL, NULL),
(5, '6', '1', '2015-12-14 20:55:19', 0, NULL, NULL),
(4, '4', '1', '2015-12-14 02:36:50', 0, NULL, NULL),
(6, '7', '1', '2015-12-28 02:12:12', 0, NULL, NULL),
(11, '11', '1', '2015-12-28 21:30:02', 0, NULL, NULL),
(24, '4', '2', '2016-11-29 04:54:38', 0, NULL, NULL),
(12, '12', '2', '2015-12-28 22:14:58', 0, NULL, NULL),
(13, '12', '1', '2015-12-29 20:32:20', 0, NULL, NULL),
(14, '13', '2', '2015-12-29 20:41:40', 0, NULL, NULL),
(15, '7', '2', '2015-12-29 21:35:34', 0, NULL, NULL),
(16, '14', '1', '2015-12-29 22:23:19', 0, NULL, NULL),
(17, '15', '1', '2015-12-29 22:24:28', 0, NULL, NULL),
(18, '16', '1', '2016-02-19 03:03:03', 0, NULL, NULL),
(19, '17', '1', '2016-08-03 22:11:27', 0, NULL, NULL),
(27, '24', '1', '2017-10-17 19:07:30', 0, NULL, NULL),
(26, '23', '1', '2017-01-05 22:07:19', 0, NULL, NULL),
(25, '22', '1', '2016-11-29 22:13:41', 0, NULL, NULL),
(23, '21', '2', '2016-08-19 03:52:21', 0, NULL, NULL),
(32, '29', '1', '2018-06-03 13:45:32', 0, NULL, NULL),
(29, '27', '2', '2017-10-24 18:59:33', 0, NULL, NULL),
(30, '28', '2', '2017-10-24 18:59:51', 0, NULL, NULL),
(31, '25', '2', '2017-10-24 20:53:51', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_server`
--

CREATE TABLE `t_server` (
  `id` int(11) NOT NULL,
  `sites_id` int(11) NOT NULL,
  `tanggal` datetime DEFAULT current_timestamp(),
  `pic_unit_kerja` varchar(100) NOT NULL,
  `unit_kerja` varchar(100) NOT NULL,
  `pic_email` varchar(100) DEFAULT NULL,
  `pic_telp` varchar(50) DEFAULT NULL,
  `admin_unit_kerja` varchar(100) DEFAULT NULL,
  `admin_email` varchar(100) DEFAULT NULL,
  `admin_telp` varchar(50) DEFAULT NULL,
  `jenis_server_id` int(11) NOT NULL,
  `periode_awal` datetime NOT NULL,
  `periode_akhir` datetime DEFAULT NULL,
  `spek` text DEFAULT NULL COMMENT 'JSON encoded string',
  `port` varchar(255) DEFAULT NULL COMMENT 'JSON encoded string',
  `domain` varchar(255) DEFAULT NULL,
  `jumlah_eth` tinyint(4) NOT NULL DEFAULT 1,
  `software` text DEFAULT NULL COMMENT 'JSON encoded string',
  `status` tinyint(4) NOT NULL DEFAULT 2 COMMENT '0=rejected, 1=accepted, 2=waitingforapprove, 4=installed, 5=uninstalled',
  `stamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `userinput` varchar(100) NOT NULL,
  `moddate` datetime DEFAULT NULL,
  `moduser` varchar(100) DEFAULT NULL,
  `kunjungan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `t_server`
--

INSERT INTO `t_server` (`id`, `sites_id`, `tanggal`, `pic_unit_kerja`, `unit_kerja`, `pic_email`, `pic_telp`, `admin_unit_kerja`, `admin_email`, `admin_telp`, `jenis_server_id`, `periode_awal`, `periode_akhir`, `spek`, `port`, `domain`, `jumlah_eth`, `software`, `status`, `stamp`, `userinput`, `moddate`, `moduser`, `kunjungan_id`) VALUES
(1, 1, '2022-05-30 17:00:00', 'sul', 'aaa', 'f@gmail.com', '029', 'Sarina', 'a@aa.com', '12333333333', 1, '2022-05-30 18:00:00', '2022-05-30 19:00:00', 'aaaaaaaaaaaa', 'a', 'a', 12, 'aaa', 4, '2022-05-30 09:24:42', '', NULL, NULL, 92),
(2, 1, '2022-04-13 15:54:00', 'aaa', 'aaa', 'f@gmail.com', '029', 'Badrul', 'a@aa.com', '082346328197', 1, '2022-05-30 18:00:00', '2022-06-14 14:00:00', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'a', 'a', 12, 'itu', 0, '2022-06-13 06:43:20', '', NULL, NULL, 93),
(3, 3, '2022-08-26 14:00:00', 'budi', 'UPT Pelayanan Kesehatan', 'andy@gmail.com', '123321', 'Nafa', 'nafaya@gmail.com', '082346328197', 2, '2022-09-09 00:00:00', '2023-09-09 00:00:00', 'processor, RAM, HDD, konsumsi listrik (ampere/watt), merk.', '1', 'http://nafa.com/', 1, 'Microsoft', 4, '2022-09-08 15:42:07', '', NULL, NULL, 101),
(4, 1, '2022-09-12 13:00:00', 'Sally', 'Unit Pelaksana Teknis Asrama', 'sally@gmail.com', '082327293874', 'Salim', 'ariasalim@gmail.com', '082346328197', 1, '2022-09-02 00:00:00', '2022-04-28 00:00:00', 'processor, RAM, HDD, konsumsi listrik (ampere/watt), merk.', '1', 'http://d.m.com/', 1, 'It', 3, '2022-09-02 09:06:21', '', NULL, NULL, 109),
(6, 1, '2022-09-14 14:00:00', 'Ardianto', 'Direktorat Sistem dan Teknologi Informasi', 'ardi@gmail.com', '082327293875', 'Marina', 'marina@gmail.com', '082346328197', 2, '2022-09-14 00:00:00', '2023-01-14 00:00:00', 'processor, RAM, HDD, konsumsi listrik (ampere/watt), merk.', '1', 'http://marina.com/', 1, 'Microsoft', 3, '2022-09-14 04:37:32', '', NULL, NULL, 113),
(7, 1, '2022-09-15 09:00:00', 'Sari', 'UPT Pelayanan Kesehatan', 'susan@gmail.com', '082327293875', 'Ardi', 'ariasalim@gmail.com', '082346328197', 1, '2022-09-15 00:00:00', '2022-11-15 00:00:00', 'processor, RAM, HDD, konsumsi listrik (ampere/watt), merk.', '1', 'http://nafa.com/', 1, 'Microsoft', 1, '2022-09-15 00:39:28', '', NULL, NULL, 114),
(9, 1, '2022-09-19 12:00:00', 'Agung', 'Direktorat Sistem dan Teknologi Informasi', 'andygung@gmail.com', '082327293871', 'Raka', 'araka@gmail.com', '082346328197', 1, '2022-09-19 00:00:00', '2023-01-19 00:00:00', 'processor, RAM, HDD, konsumsi listrik (ampere/watt), merk.', '1', 'http://nr.com/', 1, 'LAPOR!!', 1, '2022-09-19 03:19:20', '', NULL, NULL, 115),
(10, 1, '2022-09-22 11:00:00', 'Salda', 'Senat Akademik', 'sal@gmail.com', '08927381793', 'Fata', 'fata@gmail.com', '08923728732', 1, '2022-09-22 00:00:00', '2023-01-22 00:00:00', 'processor, RAM, HDD, konsumsi listrik (ampere/watt), merk.', '1', 'https://lala.com/', 1, 'Example', 3, '2022-09-21 08:28:00', '', NULL, NULL, 118);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_server_installation`
--

CREATE TABLE `t_server_installation` (
  `id` int(11) NOT NULL,
  `server_id` int(11) NOT NULL,
  `nomor_rak` varchar(10) DEFAULT NULL,
  `posisi` varchar(10) DEFAULT NULL,
  `ipaddress` varchar(50) DEFAULT NULL,
  `nomor_steker_listrik` varchar(10) DEFAULT NULL,
  `nomor_post_switch` varchar(10) DEFAULT NULL,
  `waktu_pemasangan` datetime DEFAULT NULL,
  `staf_dsti` varchar(100) DEFAULT NULL,
  `staf_unit` varchar(100) DEFAULT NULL,
  `stamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `userinput` varchar(100) NOT NULL,
  `moddate` datetime DEFAULT NULL,
  `moduser` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `t_server_installation`
--

INSERT INTO `t_server_installation` (`id`, `server_id`, `nomor_rak`, `posisi`, `ipaddress`, `nomor_steker_listrik`, `nomor_post_switch`, `waktu_pemasangan`, `staf_dsti`, `staf_unit`, `stamp`, `userinput`, `moddate`, `moduser`) VALUES
(4, 1, '21', 'Bawah', '238.809.892', '12', '1', '2022-05-30 17:00:00', 'Nurul', 'Afrianto', '2022-08-26 08:51:05', '', NULL, NULL),
(5, 4, '2', '1', '111.111.111', '1', '1', '2022-09-13 16:16:00', ' Nurul', 'Afrianto', '2022-09-02 09:16:57', '', NULL, NULL),
(6, 3, '1', 'Bawah', '1111111111', '1', '2', '2022-09-13 10:00:00', ' Nurul', 'Lola', '2022-09-13 07:14:17', '', NULL, NULL),
(9, 6, '12', 'Bawah', '238.809.892', '1', '2', '2022-09-15 14:40:00', ' Nurul', 'Afrianto', '2022-09-15 07:41:04', '', NULL, NULL),
(11, 10, '15', 'Atas', '111.111.111', '1', '1', '2022-09-22 08:00:00', 'Salimah', 'Alim', '2022-09-21 08:37:53', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_server_uninstallation`
--

CREATE TABLE `t_server_uninstallation` (
  `id` int(11) NOT NULL,
  `server_id` int(11) NOT NULL,
  `tanggal_rencana` datetime NOT NULL,
  `staf_dsti` varchar(100) DEFAULT NULL,
  `staf_unit` varchar(100) DEFAULT NULL,
  `status_uninstall_id` int(11) NOT NULL DEFAULT 1,
  `keterangan` varchar(255) DEFAULT NULL,
  `stamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `userinput` varchar(100) NOT NULL,
  `moddate` datetime DEFAULT NULL,
  `moduser` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `t_server_uninstallation`
--

INSERT INTO `t_server_uninstallation` (`id`, `server_id`, `tanggal_rencana`, `staf_dsti`, `staf_unit`, `status_uninstall_id`, `keterangan`, `stamp`, `userinput`, `moddate`, `moduser`) VALUES
(2, 1, '2022-06-05 11:00:00', ' Nurul', 'Afrianto', 1, 'Masa kontrak habis, harus diperbarui', '2022-08-26 08:52:59', '', NULL, NULL),
(4, 3, '2022-09-15 15:00:00', ' Nurul', 'Afrianto', 3, 'Rusak', '2022-09-15 07:36:48', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_user`
--

CREATE TABLE `t_user` (
  `nama_user` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `unit_kerja` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(200) NOT NULL,
  `is_active` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=ya,0=tidak',
  `level` tinyint(3) NOT NULL DEFAULT 2 COMMENT '1=superadmin, 2=admin',
  `stamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(100) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `t_user`
--

INSERT INTO `t_user` (`nama_user`, `nama_lengkap`, `unit_kerja`, `email`, `password`, `is_active`, `level`, `stamp`, `created_by`, `modified_at`, `modified_by`) VALUES
('arioss', 'Ario Sutomo', 'Dit. STI', 'arioss@pusat.itb.ac.id', '', 1, 1, '2015-09-17 21:45:31', NULL, NULL, NULL),
('nueno170', 'Aris Triyanto, S.Sn', 'Direktorat Sistem dan Teknologi Informasi', 'nueno170@staff.itb.ac.id', '', 1, 1, '2015-12-14 20:55:19', '0', NULL, NULL),
('wahyuna', 'Wahyuna Tunggal Rahayu', 'Direktorat Sistem dan Teknologi Informasi', 'wahyuna@pusat.itb.ac.id', '', 1, 1, '2015-12-14 02:00:25', NULL, NULL, NULL),
('agungye', 'Agung Yunanto, S.Kom', 'Direktorat Sistem dan Teknologi Informasi', 'agung@pusat.itb.ac.id', '', 1, 1, '2015-12-28 02:12:12', '0', NULL, NULL),
('pelita', 'Pelita Fajarhati, ST', 'Direktorat Sistem dan Teknologi Informasi', 'pelita@pusat.itb.ac.id', '', 1, 1, '2016-02-19 03:03:03', '0', NULL, NULL),
('mugi', 'Mugi Sugiarto, S.Si, MAB.', 'Direktorat Sistem dan Teknologi Informasi', 'mugi_s@pusat.itb.ac.id', '', 1, 1, '2016-08-03 22:10:34', NULL, NULL, NULL),
('joy', 'Wijaya Kusuma, S.Sn.', 'Direktorat Sistem dan Teknologi Informasi', 'joy@pusat.itb.ac.id', '', 1, 1, '2017-10-17 19:07:30', '0', NULL, NULL),
('dindihidayat', 'Muh Dindi Hidayat', 'Direktorat Sistem dan Teknologi Informasi', 'dindihidayat@itb.ac.id', '', 1, 1, '2018-06-03 13:45:32', '0', NULL, NULL),
('admin', 'Admin', 'Direktorat Sistem dan Teknologi Informasi', 'admin@gmail.com', '', 1, 2, '2022-09-16 06:13:36', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cc_options`
--
ALTER TABLE `cc_options`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `tref_aktivitas_kunjungan`
--
ALTER TABLE `tref_aktivitas_kunjungan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `tref_jenis_server`
--
ALTER TABLE `tref_jenis_server`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `tref_kategori_kunjungan`
--
ALTER TABLE `tref_kategori_kunjungan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `tref_sites`
--
ALTER TABLE `tref_sites`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `tref_status_uninstall`
--
ALTER TABLE `tref_status_uninstall`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `tref_unit_kerja`
--
ALTER TABLE `tref_unit_kerja`
  ADD PRIMARY KEY (`kode_unit`) USING BTREE;

--
-- Indeks untuk tabel `t_approval`
--
ALTER TABLE `t_approval`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `fk_t_kunjungan` (`kunjungan_id`);

--
-- Indeks untuk tabel `t_grup`
--
ALTER TABLE `t_grup`
  ADD PRIMARY KEY (`nama_grup`) USING BTREE;

--
-- Indeks untuk tabel `t_kunjungan`
--
ALTER TABLE `t_kunjungan`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `idx_t_pengunjung` (`sites_id`) USING BTREE,
  ADD KEY `fk_t_pengunjung_tref_kategori_kunjungan` (`kategori_kunjungan_id`) USING BTREE,
  ADD KEY `fk_t_kunjungan_tref_aktivitas_kunjungan` (`aktivitas_kunjungan_id`) USING BTREE;

--
-- Indeks untuk tabel `t_pengunjung`
--
ALTER TABLE `t_pengunjung`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `idx_t_pengunjung_detil` (`kunjungan_id`) USING BTREE;

--
-- Indeks untuk tabel `t_presensi`
--
ALTER TABLE `t_presensi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kunjungan_id` (`kunjungan_id`);

--
-- Indeks untuk tabel `t_role`
--
ALTER TABLE `t_role`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `unq_t_role` (`nama_user`,`nama_grup`) USING BTREE,
  ADD KEY `idx_t_role` (`nama_user`) USING BTREE,
  ADD KEY `idx_t_role_0` (`nama_grup`) USING BTREE;

--
-- Indeks untuk tabel `t_server`
--
ALTER TABLE `t_server`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `idx_t_server` (`jenis_server_id`) USING BTREE,
  ADD KEY `idx_t_server_0` (`sites_id`) USING BTREE,
  ADD KEY ` fk_t_server_t_kunjungan` (`kunjungan_id`);

--
-- Indeks untuk tabel `t_server_installation`
--
ALTER TABLE `t_server_installation`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `idx_t_server_installation` (`server_id`) USING BTREE;

--
-- Indeks untuk tabel `t_server_uninstallation`
--
ALTER TABLE `t_server_uninstallation`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `idx_t_server_uninstallation` (`server_id`) USING BTREE,
  ADD KEY `idx_t_server_uninstallation_0` (`status_uninstall_id`) USING BTREE;

--
-- Indeks untuk tabel `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`nama_user`) USING BTREE,
  ADD KEY `fk_t_user_tref_unit_kerja` (`unit_kerja`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cc_options`
--
ALTER TABLE `cc_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tref_aktivitas_kunjungan`
--
ALTER TABLE `tref_aktivitas_kunjungan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tref_jenis_server`
--
ALTER TABLE `tref_jenis_server`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tref_kategori_kunjungan`
--
ALTER TABLE `tref_kategori_kunjungan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tref_sites`
--
ALTER TABLE `tref_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tref_status_uninstall`
--
ALTER TABLE `tref_status_uninstall`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `t_approval`
--
ALTER TABLE `t_approval`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT untuk tabel `t_kunjungan`
--
ALTER TABLE `t_kunjungan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT untuk tabel `t_pengunjung`
--
ALTER TABLE `t_pengunjung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT untuk tabel `t_presensi`
--
ALTER TABLE `t_presensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `t_role`
--
ALTER TABLE `t_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `t_server`
--
ALTER TABLE `t_server`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `t_server_installation`
--
ALTER TABLE `t_server_installation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `t_server_uninstallation`
--
ALTER TABLE `t_server_uninstallation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `t_approval`
--
ALTER TABLE `t_approval`
  ADD CONSTRAINT `fk_t_kunjungan` FOREIGN KEY (`kunjungan_id`) REFERENCES `t_kunjungan` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `t_kunjungan`
--
ALTER TABLE `t_kunjungan`
  ADD CONSTRAINT `fk_t_kunjungan_tref_aktivitas_kunjungan` FOREIGN KEY (`aktivitas_kunjungan_id`) REFERENCES `tref_aktivitas_kunjungan` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_t_pengunjung` FOREIGN KEY (`sites_id`) REFERENCES `tref_sites` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_t_pengunjung_tref_kategori_kunjungan` FOREIGN KEY (`kategori_kunjungan_id`) REFERENCES `tref_kategori_kunjungan` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `t_pengunjung`
--
ALTER TABLE `t_pengunjung`
  ADD CONSTRAINT `fk_t_pengunjung_detil` FOREIGN KEY (`kunjungan_id`) REFERENCES `t_kunjungan` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `t_presensi`
--
ALTER TABLE `t_presensi`
  ADD CONSTRAINT `fk_kunjungan_id` FOREIGN KEY (`kunjungan_id`) REFERENCES `t_kunjungan` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `t_server`
--
ALTER TABLE `t_server`
  ADD CONSTRAINT ` fk_t_server_t_kunjungan` FOREIGN KEY (`kunjungan_id`) REFERENCES `t_kunjungan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_t_server` FOREIGN KEY (`jenis_server_id`) REFERENCES `tref_jenis_server` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_t_server_0` FOREIGN KEY (`sites_id`) REFERENCES `tref_sites` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `t_server_installation`
--
ALTER TABLE `t_server_installation`
  ADD CONSTRAINT `fk_t_server_installation` FOREIGN KEY (`server_id`) REFERENCES `t_server` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `t_server_uninstallation`
--
ALTER TABLE `t_server_uninstallation`
  ADD CONSTRAINT `fk_t_server_uninstallation` FOREIGN KEY (`server_id`) REFERENCES `t_server` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_t_server_uninstallation_0` FOREIGN KEY (`status_uninstall_id`) REFERENCES `tref_status_uninstall` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
