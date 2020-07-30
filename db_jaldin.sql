-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Sep 2019 pada 05.13
-- Versi server: 10.3.15-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_jaldin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kwitansi`
--

CREATE TABLE `kwitansi` (
  `id_kwitansi` int(5) NOT NULL,
  `ta` varchar(150) NOT NULL,
  `no` varchar(150) NOT NULL,
  `mak` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kwitansi`
--

INSERT INTO `kwitansi` (`id_kwitansi`, `ta`, `no`, `mak`) VALUES
(1, '2017', 'KPU/KEU.1256/XII/2015', '1965.003.015.524111');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_temp`
--

CREATE TABLE `log_temp` (
  `id_log` int(5) NOT NULL,
  `id_pegawai` varchar(150) NOT NULL,
  `tgl_temp` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `log_temp`
--

INSERT INTO `log_temp` (`id_log`, `id_pegawai`, `tgl_temp`) VALUES

(101, '34', '25/09/2019');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pokja_d`
--

CREATE TABLE `pokja_d` (
  `id_pokjad` int(11) NOT NULL,
  `id_pokja` int(11) NOT NULL,
  `id_pegawai` int(5) NOT NULL,
  `jabatan_pokja` varchar(250) NOT NULL,
  `honor` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pokja_d`
--

INSERT INTO `pokja_d` (`id_pokjad`, `id_pokja`, `id_pegawai`, `jabatan_pokja`, `honor`) VALUES
(20, 20, 2, 'ANGGOTA', 150000),
(22, 20, 3, 'ANGGOTA', 150000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pokja_h`
--

CREATE TABLE `pokja_h` (
  `id_pokja` int(11) NOT NULL,
  `no_pokja` varchar(30) NOT NULL,
  `tentang` varchar(300) NOT NULL,
  `tanggal` varchar(150) NOT NULL,
  `ket` varchar(250) NOT NULL,
  `file` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pokja_h`
--

INSERT INTO `pokja_h` (`id_pokja`, `no_pokja`, `tentang`, `tanggal`, `ket`, `file`) VALUES
(20, '1', '<p>sdf</p>', '20-10-2010', '<p>asdf</p>', 'PHPU-JABAR.pdf');

-- --------------------------------------------------------

 

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(5) NOT NULL,
  `id_peg` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `level` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `id_peg`, `username`, `password`, `level`) VALUES
(5, '34', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'super_user'),
(12, '2', 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'user'),
(13, '5', 'aing', 'b08d94f317b9500d6be0d1f2c76a9538', 'verifikasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_biayakendaraan`
--

CREATE TABLE `tbl_biayakendaraan` (
  `id_biayakendaraan` int(5) NOT NULL,
  `provinsi` varchar(150) NOT NULL,
  `satuan` varchar(150) NOT NULL,
  `rodaempat` varchar(150) NOT NULL,
  `bussedang` varchar(150) NOT NULL,
  `busbesar` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_biayakendaraan`
--

INSERT INTO `tbl_biayakendaraan` (`id_biayakendaraan`, `provinsi`, `satuan`, `rodaempat`, `bussedang`, `busbesar`) VALUES
(1, '1', 'Per Hari', '766000', '2050000', '3670000'),
(2, '2', 'Per Hari', '702000', '1950000', '2920000'),
(3, '3', 'Per Hari', '788000', '2160000', '3130000'),
(4, '4', 'Per Hari', '820000', '2160000', '3560000'),
(5, '5', 'Per Hari', '702000', '1950000', '3020000'),
(6, '6', 'Per Hari', '691000', '1840000', '2920000'),
(7, '7', 'Per Hari', '691000', '1950000', '3670000'),
(8, '8', 'Per Hari', '691000', '1840000', '2920000'),
(9, '9', 'Per Hari', '702000', '1950000', '3020000'),
(10, '10', 'Per Hari', '766000', '2050000', '3130000'),
(11, '11', 'Per Hari', '691000', '1840000', '2920000'),
(12, '12', 'Per Hari', '702000', '2050000', '3020000'),
(13, '13', 'Per Hari', '302000', '1950000', '3020000'),
(14, '14', 'Per Hari', '691000', '1840000', '2920000'),
(15, '15', 'Per Hari', '702000', '1950000', '2920000'),
(16, '16', 'Per Hari', '691000', '1840000', '2920000'),
(17, '17', 'Per Hari', '788000', '2270000', '3020000'),
(18, '18', 'Per Hari', '788000', '2270000', '3020000'),
(19, '19', 'Per Hari', '799000', '2380000', '3240000'),
(20, '20', 'Per Hari', '777000', '2050000', '3350000'),
(21, '21', 'Per Hari', '820000', '2590000', '3670000'),
(22, '22', 'Per Hari', '702000', '1950000', '3130000'),
(23, '23', 'Per Hari', '809000', '2160000', '3560000'),
(24, '24', 'Per Hari', '809000', '2160000', '3560000'),
(25, '25', 'Per Hari', '799000', '2050000', '3460000'),
(26, '26', 'Per Hari', '734000', '1950000', '3020000'),
(27, '27', 'Per Hari', '702000', '1950000', '3020000'),
(28, '28', 'Per Hari', '691000', '2270000', '3020000'),
(29, '29', 'Per Hari', '766000', '1950000', '3130000'),
(30, '30', 'Per Hari', '766000', '2.50.000', '3130000'),
(31, '31', 'Per Hari', '885000', '2700000', '3780000'),
(32, '32', 'Per Hari', '896000', '2810000', '3890000'),
(33, '33', 'Per Hari', '1025000', '3780000', '4860000'),
(34, '34', 'Per Hari', '971000', '3240000', '4210000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_biayapenginapan`
--

CREATE TABLE `tbl_biayapenginapan` (
  `id_biapeng` int(5) NOT NULL,
  `provinsi` varchar(150) NOT NULL,
  `satuan` varchar(150) NOT NULL,
  `pnpeI` varchar(150) NOT NULL,
  `pnpeII` varchar(150) NOT NULL,
  `pnpeIIIgolIV` varchar(150) NOT NULL,
  `peIVgolIII` varchar(150) NOT NULL,
  `golongan` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_biayapenginapan`
--

INSERT INTO `tbl_biayapenginapan` (`id_biapeng`, `provinsi`, `satuan`, `pnpeI`, `pnpeII`, `pnpeIIIgolIV`, `peIVgolIII`, `golongan`) VALUES
(1, '1', 'OH', '4420000', '1308000', '1080000', '410000', '370000'),
(2, '2', 'OH', '4960000', '1214000', '703000', '505000', '310000'),
(3, '3', 'OH', '3817000', '1168000', '868000', '450000', '380000'),
(4, '4', 'OH', '4275000', '1285000', '650000', '502000', '280000'),
(5, '5', 'OH', '4000000', '1175000', '697000', '382000', '290000'),
(6, '6', 'OH', '4240000', '1155000', '884000', '477000', '370000'),
(7, '7', 'OH', '4680000', '1228000', '605000', '514000', '310000'),
(8, '8', 'OH', '3960000', '1299000', '790000', '374000', '356000'),
(9, '9', 'OH', '1300000', '790000', '712000', '599000', '510000'),
(10, '10', 'OH', '3335000', '1310000', '850000', '533000', '304000'),
(11, '11', 'OH', '3808000', '1430000', '1024000', '797000', '400000'),
(12, '12', 'OH', '3664000', '1753000', '949000', '515000', '463000'),
(13, '13', 'OH', '8720000', '1086000', '800000', '610000', '400000'),
(14, '14', 'OH', '4146000', '1478000', '1024000', '497000', '350000'),
(15, '15', 'OH', '4620000', '1334000', '747000', '629000', '461000'),
(16, '16', 'OH', '4400000', '1359000', '841000', '499000', '329000'),
(17, '17', 'OH', '4881000', '1810000', '1304000', '904000', '658000'),
(18, '18', 'OH', '3429000', '2738000', '737000', '540000', '360000'),
(19, '19', 'OH', '3000000', '1000000', '700000', '662000', '400000'),
(20, '20', 'OH', '2400000', '1130000', '866000', '430000', '361000'),
(21, '21', 'OH', '3000000', '1596000', '923000', '558000', '436000'),
(22, '22', 'OH', '4250000', '1679000', '816000', '500000', '379000'),
(23, '23', 'OH', '4000000', '3021000', '1596000', '550000', '450000'),
(24, '24', 'OH', '4000000', '3021000', '1596000', '550000', '450000'),
(25, '25', 'OH', '3200000', '1553000', '640000', '549000', '342000'),
(26, '26', 'OH', '1320000', '1134000', '910000', '423000', '240000'),
(27, '27', 'OH', '1260000', '1030000', '910000', '425000', '360000'),
(28, '28', 'OH', '4820000', '1912000', '968000', '539000', '378000'),
(29, '29', 'OH', '2030000', '1298000', '894000', '493000', '389000'),
(30, '30', 'OH', '1850000', '1070000', '802000', '488000', '420000'),
(31, '31', 'OH', '3000000', '1030000', '680000', '545000', '414000'),
(32, '32', 'OH', '3110000', '1512000', '600000', '478000', '380000'),
(33, '33', 'OH', '2850000', '1668000', '754000', '460000', '414000'),
(34, '34', 'OH', '2750000', '1482000', '976000', '798000', '370000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_biayarapat`
--

CREATE TABLE `tbl_biayarapat` (
  `id_biarap` int(5) NOT NULL,
  `provinsi` varchar(150) NOT NULL,
  `satuan` varchar(150) NOT NULL,
  `fullboardluar` varchar(150) NOT NULL,
  `fullboarddalam` varchar(150) NOT NULL,
  `fulldaydalam` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_biayarapat`
--

INSERT INTO `tbl_biayarapat` (`id_biarap`, `provinsi`, `satuan`, `fullboardluar`, `fullboarddalam`, `fulldaydalam`) VALUES
(1, '1', 'OH', '120000', '100000', '85000'),
(2, '2', 'OH', '130000', '110000', '95000'),
(3, '3', 'OH', '130000', '100000', '85000'),
(4, '4', 'OH', '130000', '110000', '95000'),
(5, '5', 'OH', '130000', '110000', '95000'),
(6, '6', 'OH', '120000', '100000', '85000'),
(7, '7', 'OH', '120000', '100000', '85000'),
(8, '8', 'OH', '130000', '110000', '95000'),
(9, '9', 'OH', '130000', '110000', '95000'),
(10, '10', 'OH', '130000', '110000', '95000'),
(11, '11', 'OH', '120000', '100000', '85000'),
(12, '12', 'OH', '150000', '125000', '105000'),
(13, '13', 'OH', '180000', '150000', '130000'),
(14, '14', 'OH', '130000', '110000', '95000'),
(15, '15', 'OH', '140000', '115000', '100000'),
(16, '16', 'OH', '140000', '115000', '100000'),
(17, '17', 'OH', '160000', '135000', '115000'),
(18, '18', 'OH', '150000', '125000', '105000'),
(19, '19', 'OH', '140000', '115000', '100000'),
(20, '20', 'OH', '130000', '110000', '95000'),
(21, '21', 'OH', '120000', '100000', '85000'),
(22, '22', 'OH', '130000', '110000', '95000'),
(23, '23', 'OH', '150000', '125000', '105000'),
(24, '24', 'OH', '150000', '125000', '105000'),
(25, '25', 'OH', '130000', '110000', '95000'),
(26, '26', 'OH', '130000', '100000', '95000'),
(27, '27', 'OH', '120000', '125000', '85000'),
(28, '28', 'OH', '150000', '125000', '105000'),
(29, '29', 'OH', '130000', '110000', '95000'),
(30, '30', 'OH', '130000', '110000', '95000'),
(31, '31', 'OH', '120000', '100000', '85000'),
(32, '32', 'OH', '130000', '110000', '95000'),
(33, '33', 'OH', '200000', '170000', '140000'),
(34, '34', 'OH', '160000', '135000', '115000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_biayataksi`
--

CREATE TABLE `tbl_biayataksi` (
  `id_biayataksi` int(5) NOT NULL,
  `provinsi` varchar(150) NOT NULL,
  `satuan` varchar(150) NOT NULL,
  `biaya` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_biayataksi`
--

INSERT INTO `tbl_biayataksi` (`id_biayataksi`, `provinsi`, `satuan`, `biaya`) VALUES
(1, '1', 'Orang/Kali', '123000'),
(2, '2', 'Orang/Kali', '232000'),
(3, '3', 'Orang/Kali', '70000'),
(4, '4', 'Orang/Kali', '105000'),
(5, '5', 'Orang/Kali', '128000'),
(6, '6', 'Orang/Kali', '192000'),
(7, '7', 'Orang/Kali', '124000'),
(8, '8', 'Orang/Kali', '148000'),
(9, '9', 'Orang/Kali', '92000'),
(10, '10', 'Orang/Kali', '86000'),
(11, '11', 'Orang/Kali', '320000'),
(12, '12', 'Orang/Kali', '118000'),
(13, '13', 'Orang/Kali', '170000'),
(14, '14', 'Orang/Kali', '50000'),
(15, '15', 'Orang/Kali', '141000'),
(16, '16', 'Orang/Kali', '148000'),
(17, '17', 'Orang/Kali', '160000'),
(18, '18', 'Orang/Kali', '218000'),
(19, '19', 'Orang/Kali', '81000'),
(20, '20', 'Orang/Kali', '145000'),
(21, '21', 'Orang/Kali', '94000'),
(22, '22', 'Orang/Kali', '141000'),
(23, '23', 'Orang/Kali', '401000'),
(24, '24', 'Orang/Kali', '353000'),
(25, '25', 'Orang/Kali', '310000'),
(26, '26', 'Orang/Kali', '134000'),
(27, '27', 'Orang/Kali', '217000'),
(28, '28', 'Orang/Kali', '128000'),
(29, '29', 'Orang/Kali', '151000'),
(30, '30', 'Orang/Kali', '332000'),
(31, '31', 'Orang/Kali', '340000'),
(32, '32', 'Orang/Kali', '403000'),
(33, '33', 'Orang/Kali', '354000'),
(34, '34', 'Orang/Kali', '130000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dasar`
--

CREATE TABLE `tbl_dasar` (
  `id_keg` int(5) NOT NULL,
  `keperluan` varchar(150) NOT NULL,
  `tglmulai` varchar(150) NOT NULL,
  `status` varchar(10) NOT NULL,
  `menimbang` text NOT NULL,
  `dasar` text NOT NULL,
  `jml_kel` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_dasar`
--

INSERT INTO `tbl_dasar` (`id_keg`, `keperluan`, `tglmulai`, `status`, `menimbang`, `dasar`, `jml_kel`) VALUES
(16, '<p>sf dfdfj fgghh jadadfg</p>', '20/09/2019', '', '<p>&nbsp;dfgsdfh</p>', '<p>s dfhsdfgh</p>', 2),
(17, '<p>gsdfgd</p>', '23/09/2019', '', '<p>sdasdf</p>', '', 0),
(18, '<p>fsdf</p>', '23/09/2019', '', '<p>sdfasd</p>', '', 0),
(19, '<p>SDFASDG</p>', '23/09/2019', '', '<p>ASDFASD</p>', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kegiatan`
--

CREATE TABLE `tbl_kegiatan` (
  `id_kegiatan` int(5) NOT NULL,
  `id_keg` int(5) NOT NULL,
  `no_kegiatan` text NOT NULL,
  `pergi` varchar(150) NOT NULL,
  `kota` varchar(150) NOT NULL,
  `berkendaraan` varchar(150) NOT NULL,
  `tglberangkat` varchar(150) NOT NULL,
  `tglmulai` varchar(150) NOT NULL,
  `tglselesai` varchar(150) NOT NULL,
  `tgl_spt` varchar(100) NOT NULL,
  `id_staf` varchar(100) NOT NULL,
  `keter` text NOT NULL,
  `keter2` varchar(150) NOT NULL,
  `keter3` varchar(150) NOT NULL,
  `status` varchar(10) NOT NULL,
  `tahun_ang` varchar(150) NOT NULL,
  `kel` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kegiatan`
--

INSERT INTO `tbl_kegiatan` (`id_kegiatan`, `id_keg`, `no_kegiatan`, `pergi`, `kota`, `berkendaraan`, `tglberangkat`, `tglmulai`, `tglselesai`, `tgl_spt`, `id_staf`, `keter`, `keter2`, `keter3`, `status`, `tahun_ang`, `kel`) VALUES
(127, 16, '1', '12', 'garut, depok', 'UMUM', '01-02-2019', '', '03-02-2019', '20/09/2019', '34', '1. Selesai tugas harap melaporkan hasil kepada pimpinan.', '2. Biaya Perjalanan Dinas dibebankan pada KPU PROV. JABAR', '', '1', 'APBD', 1),
(128, 16, '1', '12', 'kota banjar dan kab. pangandaran', 'UMUM', '01-02-2019', '', '03-02-2019', '20/09/2019', '34', '1. Selesai tugas harap melaporkan hasil kepada pimpinan.', '2. Biaya Perjalanan Dinas dibebankan pada KPU PROV. JABAR', '', '1', 'APBD', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pegawai`
--

CREATE TABLE `tbl_pegawai` (
  `id_pegawai` int(5) NOT NULL,
  `jabatan` varchar(150) NOT NULL,
  `kj` varchar(150) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `nip` varchar(150) NOT NULL,
  `temlah` varchar(150) NOT NULL,
  `tgllah` varchar(150) NOT NULL,
  `agama` varchar(150) NOT NULL,
  `pendidikan` varchar(150) NOT NULL,
  `pangkat` varchar(150) NOT NULL,
  `gol` varchar(150) NOT NULL,
  `bagian` varchar(150) NOT NULL,
  `jk` varchar(150) NOT NULL,
  `instansi` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pegawai`
--

INSERT INTO `tbl_pegawai` (`id_pegawai`, `jabatan`, `kj`, `nama`, `nip`, `temlah`, `tgllah`, `agama`, `pendidikan`, `pangkat`, `gol`, `bagian`, `jk`, `instansi`) VALUES
(1, 'Sekretaris KPU Provinsi Jawa Barat', '', 'AinG Tea', '19600125 198603 1 007', '', '', '', '', 'Pembina Utama Madya (IV/d)', '(IV/d)', '', '', ''),

(75, 'TKK', '', 'Aing Juga', '-', '', '', '', '', '-', '', '', '', 'KOMISI PEMILIHAN UMUM PROVINSI JAWA BARAT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pembatalan`
--

CREATE TABLE `tbl_pembatalan` (
  `id_pembatalan` int(5) NOT NULL,
  `id_spt` varchar(150) NOT NULL,
  `no_su` varchar(150) NOT NULL,
  `id_pempernyataan` varchar(100) NOT NULL,
  `penyebab` text NOT NULL,
  `tgl_pembatalan` varchar(150) NOT NULL,
  `id_login` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pembebanan`
--

CREATE TABLE `tbl_pembebanan` (
  `id_pembebanan` int(5) NOT NULL,
  `transport` varchar(150) NOT NULL,
  `total` varchar(150) NOT NULL,
  `no_dipa` varchar(150) NOT NULL,
  `tgl_dipa` varchar(150) NOT NULL,
  `satker` varchar(150) NOT NULL,
  `id_pempetnyataandipa` varchar(150) NOT NULL,
  `id_spt` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengikut`
--

CREATE TABLE `tbl_pengikut` (
  `id_pengikut` int(5) NOT NULL,
  `id_spt` varchar(150) NOT NULL,
  `nama_pengikut` varchar(150) NOT NULL,
  `tgl_lahir` varchar(150) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_provinsi`
--

CREATE TABLE `tbl_provinsi` (
  `id_provinsi` int(5) NOT NULL,
  `nama_provinsi` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_provinsi`
--

INSERT INTO `tbl_provinsi` (`id_provinsi`, `nama_provinsi`) VALUES
(1, 'ACEH'),
(2, 'SUMATERA UTARA'),
(3, 'RIAU'),
(4, 'KEPULAUAN RIAU'),
(5, 'JAMBI'),
(6, 'SUMATERA BARAT'),
(7, 'SUMATERA SELATAN'),
(8, 'LAMPUNG'),
(9, 'BENGKULU'),
(10, 'BANGKA BELITUNG'),
(11, 'BANTEN'),
(12, 'JAWA BARAT'),
(13, 'D.K.I JAKARTA'),
(14, 'JAWA TENGAH'),
(15, 'D.I YOKARTA '),
(16, 'JAWA TIMUR'),
(17, 'BALI'),
(18, 'NUSA TENGGARA BARAT'),
(19, 'NUSA TENGGRA TIMUR'),
(20, 'KALIMANTAN BARAT'),
(21, 'KALIMANTAN TENGAH'),
(22, 'KALIMANTAN SELATAN '),
(23, 'KALIMANTANTIMUR'),
(24, 'KALIMANTAN UTARA'),
(25, 'SULAWESI UTARA'),
(26, 'GORONTALO'),
(27, 'SULAWESI BARAT'),
(28, 'SULAWESI SELATAN'),
(29, 'SULAWESI TENGAH'),
(30, 'SULAWESI TENGGARA'),
(31, 'MALUKU'),
(32, 'MALUKU UTARA'),
(33, 'PAPUA'),
(34, 'PAPUA BARAT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_representasi`
--

CREATE TABLE `tbl_representasi` (
  `id_representasi` int(5) NOT NULL,
  `uraian` varchar(150) NOT NULL,
  `satuan` varchar(150) NOT NULL,
  `luarkota` varchar(150) NOT NULL,
  `dalamkota` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_representasi`
--

INSERT INTO `tbl_representasi` (`id_representasi`, `uraian`, `satuan`, `luarkota`, `dalamkota`) VALUES
(1, 'PEJABAT NEGARA', 'OH', '250000', '125000'),
(2, 'PEJABAT ESELON I', 'OH', '200000', '100000'),
(3, 'PEJABAT ESELON II', 'OH', '150000', '75000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_spt`
--

CREATE TABLE `tbl_spt` (
  `id_spt` int(5) NOT NULL,
  `id_kegiatan` varchar(150) NOT NULL,
  `id_pegawai` varchar(150) NOT NULL,
  `nomor_sppd` text NOT NULL,
  `tgl_modify` varchar(150) NOT NULL,
  `pem_komitmen` varchar(150) NOT NULL,
  `ting_biayapd` varchar(150) NOT NULL,
  `tempat_berangkat` varchar(150) NOT NULL,
  `lama_pd` varchar(150) NOT NULL,
  `tgl_berangkat` varchar(150) NOT NULL,
  `tgl_kembali` varchar(150) NOT NULL,
  `akun` varchar(150) NOT NULL,
  `sudah_dibayar` varchar(100) NOT NULL,
  `ket_lain` text NOT NULL,
  `ket_lain2` varchar(150) NOT NULL,
  `ket_lain3` varchar(150) NOT NULL,
  `buk_rpd` varchar(100) NOT NULL,
  `buk_sppd` varchar(100) NOT NULL,
  `buk_spt` varchar(100) NOT NULL,
  `buk_tiket` varchar(100) NOT NULL,
  `buk_tax` varchar(100) NOT NULL,
  `buk_pass` varchar(100) NOT NULL,
  `buk_penginapan` varchar(100) NOT NULL,
  `buk_pengriil` varchar(100) NOT NULL,
  `buk_pernyataan` varchar(100) NOT NULL,
  `buk_kwitansi` varchar(100) NOT NULL,
  `buk_lap` varchar(100) NOT NULL,
  `ket1` varchar(100) NOT NULL,
  `ket2` varchar(100) NOT NULL,
  `ket3` varchar(100) NOT NULL,
  `ket4` varchar(100) NOT NULL,
  `ket5` varchar(100) NOT NULL,
  `ket6` varchar(100) NOT NULL,
  `ket7` varchar(100) NOT NULL,
  `ket8` varchar(100) NOT NULL,
  `ket9` varchar(100) NOT NULL,
  `ket10` varchar(100) NOT NULL,
  `ket11` varchar(100) NOT NULL,
  `tgl_diserahkan` varchar(100) NOT NULL,
  `setuju1` varchar(100) NOT NULL,
  `setuju2` varchar(100) NOT NULL,
  `setuju3` varchar(100) NOT NULL,
  `setuju4` varchar(100) NOT NULL,
  `setuju5` varchar(100) NOT NULL,
  `setuju6` varchar(100) NOT NULL,
  `setuju7` varchar(100) NOT NULL,
  `usulan1` varchar(100) NOT NULL,
  `usulan2` varchar(100) NOT NULL,
  `usulan3` varchar(100) NOT NULL,
  `usulan4` varchar(100) NOT NULL,
  `usulan5` varchar(100) NOT NULL,
  `usulan6` varchar(100) NOT NULL,
  `usulan7` varchar(100) NOT NULL,
  `kete1` varchar(150) NOT NULL,
  `kete2` varchar(150) NOT NULL,
  `kete3` varchar(150) NOT NULL,
  `kete4` varchar(150) NOT NULL,
  `kete5` varchar(150) NOT NULL,
  `kete6` varchar(150) NOT NULL,
  `kete7` varchar(150) NOT NULL,
  `la1` varchar(100) NOT NULL,
  `la2` varchar(100) NOT NULL,
  `la3` varchar(100) NOT NULL,
  `la4` varchar(100) NOT NULL,
  `lb1` varchar(100) NOT NULL,
  `lb2` varchar(100) NOT NULL,
  `lb3` varchar(100) NOT NULL,
  `lb4` varchar(100) NOT NULL,
  `lc1` varchar(100) NOT NULL,
  `lc2` varchar(100) NOT NULL,
  `lc3` varchar(100) NOT NULL,
  `lc4` varchar(100) NOT NULL,
  `tim_verifikasi` varchar(100) NOT NULL,
  `men1` varchar(150) NOT NULL,
  `men2` varchar(150) NOT NULL,
  `men3` varchar(150) NOT NULL,
  `men4` varchar(150) NOT NULL,
  `men5` varchar(150) NOT NULL,
  `men6` varchar(150) NOT NULL,
  `men7` varchar(150) NOT NULL,
  `men8` varchar(150) NOT NULL,
  `men9` varchar(150) NOT NULL,
  `men10` varchar(150) NOT NULL,
  `men11` varchar(150) NOT NULL,
  `men12` varchar(150) NOT NULL,
  `men13` varchar(150) NOT NULL,
  `men14` varchar(150) NOT NULL,
  `men15` varchar(150) NOT NULL,
  `men16` varchar(150) NOT NULL,
  `men17` varchar(150) NOT NULL,
  `men18` varchar(150) NOT NULL,
  `men19` varchar(150) NOT NULL,
  `men20` varchar(150) NOT NULL,
  `men21` varchar(150) NOT NULL,
  `men22` varchar(150) NOT NULL,
  `men23` varchar(150) NOT NULL,
  `men24` varchar(150) NOT NULL,
  `men25` varchar(150) NOT NULL,
  `men26` varchar(150) NOT NULL,
  `men27` varchar(150) NOT NULL,
  `men28` varchar(150) NOT NULL,
  `men29` varchar(150) NOT NULL,
  `men30` varchar(150) NOT NULL,
  `men31` varchar(150) NOT NULL,
  `men32` varchar(150) NOT NULL,
  `men33` varchar(150) NOT NULL,
  `men34` varchar(150) NOT NULL,
  `men35` varchar(150) NOT NULL,
  `men36` varchar(150) NOT NULL,
  `men37` varchar(150) NOT NULL,
  `men38` varchar(150) NOT NULL,
  `men39` varchar(150) NOT NULL,
  `men40` varchar(150) NOT NULL,
  `men41` varchar(150) NOT NULL,
  `men42` varchar(150) NOT NULL,
  `men43` varchar(150) NOT NULL,
  `men44` varchar(150) NOT NULL,
  `men45` varchar(150) NOT NULL,
  `men46` varchar(150) NOT NULL,
  `men47` varchar(150) NOT NULL,
  `men48` varchar(150) NOT NULL,
  `men49` varchar(150) NOT NULL,
  `men50` varchar(150) NOT NULL,
  `men51` varchar(150) NOT NULL,
  `men52` varchar(150) NOT NULL,
  `cat_lain` varchar(100) NOT NULL,
  `total_pengeluaran` varchar(100) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_spt`
--

INSERT INTO `tbl_spt` (`id_spt`, `id_kegiatan`, `id_pegawai`, `nomor_sppd`, `tgl_modify`, `pem_komitmen`, `ting_biayapd`, `tempat_berangkat`, `lama_pd`, `tgl_berangkat`, `tgl_kembali`, `akun`, `sudah_dibayar`, `ket_lain`, `ket_lain2`, `ket_lain3`, `buk_rpd`, `buk_sppd`, `buk_spt`, `buk_tiket`, `buk_tax`, `buk_pass`, `buk_penginapan`, `buk_pengriil`, `buk_pernyataan`, `buk_kwitansi`, `buk_lap`, `ket1`, `ket2`, `ket3`, `ket4`, `ket5`, `ket6`, `ket7`, `ket8`, `ket9`, `ket10`, `ket11`, `tgl_diserahkan`, `setuju1`, `setuju2`, `setuju3`, `setuju4`, `setuju5`, `setuju6`, `setuju7`, `usulan1`, `usulan2`, `usulan3`, `usulan4`, `usulan5`, `usulan6`, `usulan7`, `kete1`, `kete2`, `kete3`, `kete4`, `kete5`, `kete6`, `kete7`, `la1`, `la2`, `la3`, `la4`, `lb1`, `lb2`, `lb3`, `lb4`, `lc1`, `lc2`, `lc3`, `lc4`, `tim_verifikasi`, `men1`, `men2`, `men3`, `men4`, `men5`, `men6`, `men7`, `men8`, `men9`, `men10`, `men11`, `men12`, `men13`, `men14`, `men15`, `men16`, `men17`, `men18`, `men19`, `men20`, `men21`, `men22`, `men23`, `men24`, `men25`, `men26`, `men27`, `men28`, `men29`, `men30`, `men31`, `men32`, `men33`, `men34`, `men35`, `men36`, `men37`, `men38`, `men39`, `men40`, `men41`, `men42`, `men43`, `men44`, `men45`, `men46`, `men47`, `men48`, `men49`, `men50`, `men51`, `men52`, `cat_lain`, `total_pengeluaran`, `status`) VALUES
(309, '128', '2', '', '21-09-2019', '', '', 'BANDUNG', '3', '01-02-2019', '03-02-2019', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Y'),
(310, '128', '3', '', '21-09-2019', '', '', 'BANDUNG', '3', '01-02-2019', '03-02-2019', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Y'),
(311, '127', '4', '', '21-09-2019', '', '', 'BANDUNG', '3', '01-02-2019', '03-02-2019', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Y'),
(312, '127', '5', '', '21-09-2019', '', '', 'BANDUNG', '3', '01-02-2019', '03-02-2019', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Y'),
(313, '127', '7', '', '21-09-2019', '', '', 'BANDUNG', '3', '01-02-2019', '03-02-2019', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Y'),
(314, '127', '10', '', '21-09-2019', '', '', 'BANDUNG', '3', '01-02-2019', '03-02-2019', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Y'),
(315, '19', '1', '', '25-09-2019', '', '', 'BANDUNG', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Y'),
(316, '19', '1', '', '25-09-2019', '', '', 'BANDUNG', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Y'),
(317, '19', '1', '', '25-09-2019', '', '', 'BANDUNG', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Y'),
(318, '19', '2', '', '25-09-2019', '', '', 'BANDUNG', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Y'),
(319, '19', '2', '', '25-09-2019', '', '', 'BANDUNG', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Y'),
(320, '19', '2', '', '25-09-2019', '', '', 'BANDUNG', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Y'),
(321, '19', '1', '', '25-09-2019', '', '', 'BANDUNG', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Y'),
(322, '19', '1', '', '26-09-2019', '', '', 'BANDUNG', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_uangharian`
--

CREATE TABLE `tbl_uangharian` (
  `id_uangharian` int(5) NOT NULL,
  `provinsi` varchar(150) NOT NULL,
  `satuan` varchar(150) NOT NULL,
  `luarkota` varchar(150) NOT NULL,
  `dalamkota` varchar(150) NOT NULL,
  `diklat` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_uangharian`
--

INSERT INTO `tbl_uangharian` (`id_uangharian`, `provinsi`, `satuan`, `luarkota`, `dalamkota`, `diklat`) VALUES
(1, '1', 'OH', '360000', '140000', '110000'),
(2, '2', 'OH', '370000', '150000', '110000'),
(3, '3', 'OH', '370000', '150000', '110000'),
(4, '4', 'OH', '370000', '150000', '110000'),
(5, '5', 'OH', '370000', '150000', '110000'),
(6, '6', 'OH', '380000', '150000', '110000'),
(7, '7', 'OH', '380000', '150000', '110000'),
(8, '8', 'OH', '380000', '150000', '110000'),
(9, '9', 'OH', '380000', '150000', '110000'),
(10, '10', 'OH', '410000', '160000', '120000'),
(11, '11', 'OH', '370000', '150000', '110000'),
(12, '12', 'OH', '430000', '170000', '130000'),
(13, '13', 'OH', '530000', '210000', '160000'),
(14, '14', 'OH', '370000', '150000', '110000'),
(15, '15', 'OH', '420000', '170000', '130000'),
(16, '16', 'OH', '410000', '160000', '120000'),
(17, '17', 'OH', '480000', '190000', '140000'),
(18, '18', 'OH', '440000', '180000', '130000'),
(19, '19', 'OH', '430000', '170000', '130000'),
(20, '20', 'OH', '380000', '150000', '110000'),
(21, '21', 'OH', '360000', '140000', '110000'),
(22, '22', 'OH', '380000', '150000', '110000'),
(23, '23', 'OH', '430000', '170000', '130000'),
(24, '24', 'OH', '430000', '170000', '130000'),
(25, '25', 'OH', '370000', '150000', '110000'),
(26, '26', 'OH', '370000', '150000', '110000'),
(27, '27', 'OH', '410000', '160000', '120000'),
(28, '28', 'OH', '430000', '170000', '130000'),
(29, '29', 'OH', '370000', '150000', '110000'),
(30, '30', 'OH', '380000', '150000', '110000'),
(31, '31', 'OH', '380000', '150000', '110000'),
(32, '32', 'OH', '430000', '170000', '130000'),
(33, '33', 'OH', '580000', '230000', '170000'),
(34, '34', 'OH', '480000', '190000', '140000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ttd_spd`
--

CREATE TABLE `ttd_spd` (
  `id_ttd` int(5) NOT NULL,
  `dikeluarkandi` varchar(150) NOT NULL,
  `tanggal` varchar(150) NOT NULL,
  `komitmen` varchar(150) NOT NULL,
  `lembarke` varchar(150) NOT NULL,
  `kodeno` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ttd_spd`
--

INSERT INTO `ttd_spd` (`id_ttd`, `dikeluarkandi`, `tanggal`, `komitmen`, `lembarke`, `kodeno`) VALUES
(1, 'Bandung', '24/11/2017', '', '1', '14-11-2017'),
(2, 'Bandung', '', '7', '1', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ttd_spt`
--

CREATE TABLE `ttd_spt` (
  `id_ttd` int(5) NOT NULL,
  `desk` text NOT NULL,
  `id_pegawai` varchar(150) NOT NULL,
  `dikeluarkan` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ttd_spt`
--

INSERT INTO `ttd_spt` (`id_ttd`, `desk`, `id_pegawai`, `dikeluarkan`) VALUES
(1, 'Plt. Sekretaris', '3', 'BANDUNG');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kwitansi`
--
ALTER TABLE `kwitansi`
  ADD PRIMARY KEY (`id_kwitansi`);

--
-- Indeks untuk tabel `log_temp`
--
ALTER TABLE `log_temp`
  ADD PRIMARY KEY (`id_log`);

--
-- Indeks untuk tabel `pokja_d`
--
ALTER TABLE `pokja_d`
  ADD PRIMARY KEY (`id_pokjad`);

--
-- Indeks untuk tabel `pokja_h`
--
ALTER TABLE `pokja_h`
  ADD PRIMARY KEY (`id_pokja`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tbl_biayakendaraan`
--
ALTER TABLE `tbl_biayakendaraan`
  ADD PRIMARY KEY (`id_biayakendaraan`);

--
-- Indeks untuk tabel `tbl_biayapenginapan`
--
ALTER TABLE `tbl_biayapenginapan`
  ADD PRIMARY KEY (`id_biapeng`);

--
-- Indeks untuk tabel `tbl_biayarapat`
--
ALTER TABLE `tbl_biayarapat`
  ADD PRIMARY KEY (`id_biarap`);

--
-- Indeks untuk tabel `tbl_biayataksi`
--
ALTER TABLE `tbl_biayataksi`
  ADD PRIMARY KEY (`id_biayataksi`);

--
-- Indeks untuk tabel `tbl_dasar`
--
ALTER TABLE `tbl_dasar`
  ADD PRIMARY KEY (`id_keg`);

--
-- Indeks untuk tabel `tbl_kegiatan`
--
ALTER TABLE `tbl_kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indeks untuk tabel `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indeks untuk tabel `tbl_pembatalan`
--
ALTER TABLE `tbl_pembatalan`
  ADD PRIMARY KEY (`id_pembatalan`);

--
-- Indeks untuk tabel `tbl_pembebanan`
--
ALTER TABLE `tbl_pembebanan`
  ADD PRIMARY KEY (`id_pembebanan`);

--
-- Indeks untuk tabel `tbl_pengikut`
--
ALTER TABLE `tbl_pengikut`
  ADD PRIMARY KEY (`id_pengikut`);

--
-- Indeks untuk tabel `tbl_provinsi`
--
ALTER TABLE `tbl_provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- Indeks untuk tabel `tbl_representasi`
--
ALTER TABLE `tbl_representasi`
  ADD PRIMARY KEY (`id_representasi`);

--
-- Indeks untuk tabel `tbl_spt`
--
ALTER TABLE `tbl_spt`
  ADD PRIMARY KEY (`id_spt`);

--
-- Indeks untuk tabel `tbl_uangharian`
--
ALTER TABLE `tbl_uangharian`
  ADD PRIMARY KEY (`id_uangharian`);

--
-- Indeks untuk tabel `ttd_spd`
--
ALTER TABLE `ttd_spd`
  ADD PRIMARY KEY (`id_ttd`);

--
-- Indeks untuk tabel `ttd_spt`
--
ALTER TABLE `ttd_spt`
  ADD PRIMARY KEY (`id_ttd`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kwitansi`
--
ALTER TABLE `kwitansi`
  MODIFY `id_kwitansi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `log_temp`
--
ALTER TABLE `log_temp`
  MODIFY `id_log` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT untuk tabel `pokja_d`
--
ALTER TABLE `pokja_d`
  MODIFY `id_pokjad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `pokja_h`
--
ALTER TABLE `pokja_h`
  MODIFY `id_pokja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_biayakendaraan`
--
ALTER TABLE `tbl_biayakendaraan`
  MODIFY `id_biayakendaraan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `tbl_biayapenginapan`
--
ALTER TABLE `tbl_biayapenginapan`
  MODIFY `id_biapeng` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `tbl_biayarapat`
--
ALTER TABLE `tbl_biayarapat`
  MODIFY `id_biarap` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `tbl_biayataksi`
--
ALTER TABLE `tbl_biayataksi`
  MODIFY `id_biayataksi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `tbl_dasar`
--
ALTER TABLE `tbl_dasar`
  MODIFY `id_keg` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tbl_kegiatan`
--
ALTER TABLE `tbl_kegiatan`
  MODIFY `id_kegiatan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT untuk tabel `tbl_pegawai`
--
ALTER TABLE `tbl_pegawai`
  MODIFY `id_pegawai` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT untuk tabel `tbl_pembatalan`
--
ALTER TABLE `tbl_pembatalan`
  MODIFY `id_pembatalan` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_pembebanan`
--
ALTER TABLE `tbl_pembebanan`
  MODIFY `id_pembebanan` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengikut`
--
ALTER TABLE `tbl_pengikut`
  MODIFY `id_pengikut` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_provinsi`
--
ALTER TABLE `tbl_provinsi`
  MODIFY `id_provinsi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `tbl_representasi`
--
ALTER TABLE `tbl_representasi`
  MODIFY `id_representasi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_spt`
--
ALTER TABLE `tbl_spt`
  MODIFY `id_spt` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT untuk tabel `tbl_uangharian`
--
ALTER TABLE `tbl_uangharian`
  MODIFY `id_uangharian` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `ttd_spd`
--
ALTER TABLE `ttd_spd`
  MODIFY `id_ttd` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `ttd_spt`
--
ALTER TABLE `ttd_spt`
  MODIFY `id_ttd` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
