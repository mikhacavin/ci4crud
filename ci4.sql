-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Sep 2021 pada 11.53
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nama_guru` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `hp` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id_guru`, `nama_guru`, `alamat`, `gambar`, `hp`) VALUES
(1, 'yanto', 'jl. jamin ginting', 'guru', 2147483647);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-04-20-143141', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1618929619, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `orang`
--

INSERT INTO `orang` (`id`, `nama`, `kelas`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'mikha cavin', 'KELAS 10', 'jl medan', '2021-04-20 11:39:42', '2021-04-20 11:39:42'),
(2, 'yanto', 'KELAS 10', 'jl medan', '2021-04-20 11:39:42', '2021-04-20 11:39:42'),
(3, 'alex', 'KELAS 10', 'jl medan', '2021-04-20 11:39:42', '2021-04-20 11:39:42'),
(4, 'erik', 'KELAS 12', 'jl medan', '2021-04-20 11:39:42', '2021-04-20 11:39:42'),
(5, '$faker->name', 'KELAS 12', '$faker->address', '2021-04-20 11:56:04', '2021-04-20 11:56:04'),
(6, '$faker->name()', 'KELAS 12', '$faker->address()', '2021-04-20 11:58:55', '2021-04-20 11:58:55'),
(7, 'Matilde Stehr', 'KELAS 11', '295 Vivien Turnpike\nLednerhaven, OK 40990', '2021-04-20 12:00:29', '2021-04-20 12:00:29'),
(8, 'Itzel Thiel', 'KELAS 11', '8465 Schmidt Drive\nNorth Tommie, AL 15842-7382', '1994-02-20 10:45:05', '2021-04-20 12:03:16'),
(9, 'Yuliana Mandasari', 'KELAS 11', 'Jln. Eka No. 610, Tanjung Pinang 93509, Aceh', '1993-03-07 05:19:15', '2021-04-20 12:13:34'),
(10, 'Dirja Pradipta', '', 'Ds. Moch. Yamin No. 631, Bukittinggi 49618, Lampung', '2013-02-25 22:46:14', '2021-04-20 12:13:34'),
(11, 'Rama Nababan', '', 'Psr. Radio No. 677, Denpasar 36350, Riau', '1981-01-19 08:38:31', '2021-04-20 12:13:34'),
(12, 'Mutia Nasyiah', '', 'Gg. Arifin No. 173, Tegal 85573, Sumbar', '2018-01-31 06:45:43', '2021-04-20 12:13:34'),
(13, 'Dewi Calista Andriani S.Pd', '', 'Ki. Baranang Siang No. 836, Gorontalo 42095, Sultra', '2003-11-25 01:24:43', '2021-04-20 12:13:34'),
(14, 'Winda Nasyiah S.Sos', '', 'Gg. Karel S. Tubun No. 602, Metro 55841, NTT', '2004-06-02 16:01:15', '2021-04-20 12:13:34'),
(15, 'Umi Nasyidah', '', 'Gg. Bata Putih No. 418, Payakumbuh 58120, Gorontalo', '1978-11-20 09:27:22', '2021-04-20 12:13:34'),
(16, 'Titin Padmasari', '', 'Jln. Setia Budi No. 170, Pekalongan 11904, Sumut', '2012-03-26 16:38:52', '2021-04-20 12:13:34'),
(17, 'Elisa Ira Purnawati M.TI.', '', 'Ds. Sadang Serang No. 803, Gunungsitoli 14587, Sulut', '1972-09-13 07:51:01', '2021-04-20 12:13:34'),
(18, 'Lanjar Tampubolon', '', 'Jr. Ters. Pasir Koja No. 589, Prabumulih 92531, Bali', '1981-03-14 22:36:16', '2021-04-20 12:13:34'),
(19, 'Amelia Oktaviani', '', 'Kpg. Sam Ratulangi No. 133, Tasikmalaya 88718, Riau', '1986-10-03 03:44:06', '2021-04-20 12:13:34'),
(20, 'Melinda Siska Hassanah', '', 'Ds. Ujung No. 650, Mojokerto 71153, Sumut', '2002-03-25 12:26:06', '2021-04-20 12:13:34'),
(21, 'Darmanto Vero Firgantoro', '', 'Psr. Sugiyopranoto No. 22, Bogor 86676, Jabar', '1981-12-04 11:07:50', '2021-04-20 12:13:34'),
(22, 'Karsa Wacana', '', 'Ds. Suharso No. 785, Lubuklinggau 51365, Sumsel', '1983-06-03 09:03:47', '2021-04-20 12:13:34'),
(23, 'Gada Najmudin S.IP', '', 'Psr. Otto No. 808, Salatiga 69355, Jambi', '1973-06-05 11:34:48', '2021-04-20 12:13:34'),
(24, 'Maimunah Zalindra Melani', '', 'Gg. Pelajar Pejuang 45 No. 913, Gorontalo 96131, Sumut', '2003-01-12 14:49:47', '2021-04-20 12:13:34'),
(25, 'Soleh Pranowo', '', 'Psr. Sadang Serang No. 728, Administrasi Jakarta Barat 80438, Jambi', '2005-02-06 19:36:15', '2021-04-20 12:13:34'),
(26, 'Safina Syahrini Pudjiastuti S.Pt', '', 'Ds. Basoka No. 116, Kendari 49568, Sulsel', '1977-02-01 06:14:13', '2021-04-20 12:13:34'),
(27, 'Daliono Manullang', '', 'Psr. Pasteur No. 544, Tangerang 88472, Banten', '2004-04-28 18:01:32', '2021-04-20 12:13:34'),
(28, 'Karimah Ulya Puspita', '', 'Ds. B.Agam 1 No. 73, Lubuklinggau 47782, Sulut', '2014-02-08 09:17:02', '2021-04-20 12:13:34'),
(29, 'Daryani Saefullah', '', 'Ki. Banal No. 270, Bau-Bau 71903, Jateng', '1970-12-18 08:22:54', '2021-04-20 12:13:34'),
(30, 'Gaduh Adriansyah M.TI.', '', 'Psr. Asia Afrika No. 73, Administrasi Jakarta Pusat 23009, Jatim', '2009-07-25 06:17:21', '2021-04-20 12:13:34'),
(31, 'Jelita Utami', '', 'Jr. K.H. Wahid Hasyim (Kopo) No. 853, Administrasi Jakarta Selatan 88336, Banten', '1973-10-01 15:09:04', '2021-04-20 12:13:34'),
(32, 'Olga Anggriawan', '', 'Ki. Bhayangkara No. 823, Bontang 36371, Aceh', '2012-04-06 07:21:59', '2021-04-20 12:13:34'),
(33, 'Maria Ella Mandasari', '', 'Kpg. Supomo No. 562, Padangpanjang 64336, Sulsel', '1974-09-05 03:34:04', '2021-04-20 12:13:34'),
(34, 'Septi Nadine Zulaika', '', 'Psr. Wahid Hasyim No. 223, Gorontalo 31924, Sumbar', '1982-10-20 03:02:17', '2021-04-20 12:13:34'),
(35, 'Imam Rajata', '', 'Psr. Sutarto No. 519, Pasuruan 40216, Kaltara', '2012-09-11 17:28:13', '2021-04-20 12:13:34'),
(36, 'Lidya Ami Hartati S.I.Kom', '', 'Gg. Jagakarsa No. 613, Padang 60512, Banten', '2020-12-10 14:09:32', '2021-04-20 12:13:34'),
(37, 'Sakti Winarno', '', 'Gg. Bazuka Raya No. 802, Sukabumi 70814, Sulsel', '1990-05-30 14:09:18', '2021-04-20 12:13:34'),
(38, 'Septi Wastuti', '', 'Gg. Honggowongso No. 830, Cilegon 82929, Banten', '1983-07-21 15:40:15', '2021-04-20 12:13:34'),
(39, 'Dewi Maryati S.I.Kom', '', 'Jr. Basudewo No. 230, Tangerang Selatan 88584, Jabar', '2016-12-30 04:02:13', '2021-04-20 12:13:34'),
(40, 'Gina Almira Pratiwi S.Kom', '', 'Jln. Bakti No. 108, Banjar 81553, Sumbar', '2000-05-08 13:40:00', '2021-04-20 12:13:34'),
(41, 'Malik Najam Latupono', '', 'Psr. Astana Anyar No. 319, Surabaya 87446, Bali', '1980-06-10 19:49:03', '2021-04-20 12:13:34'),
(42, 'Hardana Kurniawan M.M.', '', 'Jln. Bakau No. 105, Pekalongan 16118, Jabar', '2004-04-24 20:18:00', '2021-04-20 12:13:34'),
(43, 'Pandu Pranowo', '', 'Jr. Eka No. 574, Gunungsitoli 90599, Pabar', '2012-12-16 20:50:59', '2021-04-20 12:13:34'),
(44, 'Putri Hassanah', '', 'Kpg. Imam Bonjol No. 911, Pematangsiantar 72448, Kaltara', '1992-07-26 15:13:21', '2021-04-20 12:13:34'),
(45, 'Hilda Usamah M.Pd', '', 'Ki. Panjaitan No. 168, Bekasi 35948, Pabar', '1983-05-12 01:00:17', '2021-04-20 12:13:34'),
(46, 'Winda Ajeng Halimah', '', 'Kpg. Dr. Junjunan No. 74, Tangerang 83476, Kepri', '2014-02-19 14:19:19', '2021-04-20 12:13:34'),
(47, 'Vera Nova Yulianti S.H.', '', 'Psr. Bakau Griya Utama No. 126, Tangerang 49046, Kaltara', '2005-04-27 12:42:35', '2021-04-20 12:13:34'),
(48, 'Hendra Zulkarnain', '', 'Dk. Moch. Toha No. 588, Ambon 20111, Aceh', '2016-07-27 16:44:46', '2021-04-20 12:13:34'),
(49, 'Arsipatra Situmorang S.Psi', '', 'Kpg. Jambu No. 149, Solok 48109, Kaltara', '1973-04-08 08:19:16', '2021-04-20 12:13:34'),
(50, 'Rafi Pradana M.Farm', '', 'Gg. R.M. Said No. 459, Tomohon 88377, Kaltim', '1994-09-09 09:23:30', '2021-04-20 12:13:34'),
(51, 'Jarwa Budiman', '', 'Ds. Baung No. 421, Tual 61480, Sultra', '2001-07-01 21:19:36', '2021-04-20 12:13:34'),
(52, 'Bakijan Setiawan M.Kom.', '', 'Gg. Bakin No. 822, Cilegon 66547, Lampung', '1985-08-19 14:13:32', '2021-04-20 12:13:34'),
(53, 'Hesti Sudiati', '', 'Jr. Ahmad Dahlan No. 306, Pematangsiantar 86768, Jambi', '1985-03-17 00:22:08', '2021-04-20 12:13:34'),
(54, 'Panca Prakasa S.Kom', '', 'Gg. Ters. Buah Batu No. 548, Pangkal Pinang 89944, Pabar', '1998-06-27 11:41:26', '2021-04-20 12:13:34'),
(55, 'Vera Laksmiwati M.Pd', '', 'Kpg. Pahlawan No. 99, Pangkal Pinang 86036, Bali', '1987-02-08 11:34:41', '2021-04-20 12:13:34'),
(56, 'Paulin Pratiwi', '', 'Jln. Bambu No. 916, Administrasi Jakarta Pusat 44346, Banten', '1992-01-22 09:52:28', '2021-04-20 12:13:34'),
(57, 'Jamalia Winarsih', '', 'Kpg. Ki Hajar Dewantara No. 83, Payakumbuh 42503, Jambi', '1978-02-12 17:52:26', '2021-04-20 12:13:34'),
(58, 'Gantar Adriansyah', '', 'Jln. Jamika No. 587, Yogyakarta 50702, Kepri', '1973-01-08 02:45:12', '2021-04-20 12:13:34'),
(59, 'Martana Raharja Pradipta', '', 'Ki. Bakin No. 581, Salatiga 42222, Sumbar', '2007-06-28 18:31:31', '2021-04-20 12:13:34'),
(60, 'Hani Wahyuni', '', 'Jln. Basuki No. 229, Bandar Lampung 60799, Gorontalo', '1997-11-12 16:29:18', '2021-04-20 12:13:34'),
(61, 'Zelda Yuliarti', '', 'Jr. Gading No. 955, Sorong 86096, Sulsel', '2017-05-09 20:42:43', '2021-04-20 12:13:34'),
(62, 'Galar Mulyanto Pradipta', '', 'Jln. Sudiarto No. 391, Pekanbaru 49633, Gorontalo', '2005-03-25 22:42:30', '2021-04-20 12:13:34'),
(63, 'Mala Laksmiwati', '', 'Dk. Mulyadi No. 664, Parepare 29440, Kepri', '2000-01-12 05:53:27', '2021-04-20 12:13:34'),
(64, 'Gina Fitria Nasyidah', '', 'Dk. Samanhudi No. 629, Surakarta 64437, Riau', '2012-08-06 14:45:16', '2021-04-20 12:13:34'),
(65, 'Cindy Novitasari', '', 'Jr. Villa No. 44, Ternate 43881, Sulbar', '1989-08-20 04:14:21', '2021-04-20 12:13:34'),
(66, 'Ella Pudjiastuti', '', 'Kpg. Ir. H. Juanda No. 459, Administrasi Jakarta Utara 48630, Kaltim', '1999-12-20 10:29:26', '2021-04-20 12:13:34'),
(67, 'Malika Usamah', '', 'Jln. Wahid No. 486, Manado 97970, Sultra', '2016-08-07 19:36:26', '2021-04-20 12:13:34'),
(68, 'Hadi Adiarja Budiyanto', '', 'Gg. Asia Afrika No. 975, Depok 10337, Kalteng', '2002-01-06 05:53:43', '2021-04-20 12:13:34'),
(69, 'Wani Prastuti', '', 'Kpg. Sadang Serang No. 449, Lhokseumawe 71147, Sulbar', '1985-03-19 01:07:27', '2021-04-20 12:13:34'),
(70, 'Opung Kurniawan', '', 'Ds. Bagas Pati No. 586, Madiun 50065, Jateng', '2001-04-03 16:53:07', '2021-04-20 12:13:34'),
(71, 'Dewi Puspita S.T.', '', 'Psr. Padang No. 558, Bima 41816, NTB', '2007-06-06 22:18:21', '2021-04-20 12:13:34'),
(72, 'Mulyanto Nasrullah Irawan', '', 'Ds. Bass No. 577, Palu 47138, Jabar', '2004-11-27 10:07:52', '2021-04-20 12:13:34'),
(73, 'Harjasa Hardana Utama', '', 'Ki. Bata Putih No. 202, Yogyakarta 84937, Sulteng', '1995-12-29 08:51:45', '2021-04-20 12:13:34'),
(74, 'Betania Puspasari M.Pd', '', 'Dk. Urip Sumoharjo No. 83, Bukittinggi 88447, Kaltara', '1995-03-31 12:38:52', '2021-04-20 12:13:34'),
(75, 'Ghaliyati Kusmawati', '', 'Jr. Gedebage Selatan No. 269, Padangsidempuan 75655, Jambi', '1997-11-07 00:27:00', '2021-04-20 12:13:34'),
(76, 'Kiandra Karen Suryatmi', '', 'Ds. Ciumbuleuit No. 667, Payakumbuh 38524, Babel', '1996-07-03 18:59:01', '2021-04-20 12:13:34'),
(77, 'Lintang Lestari S.Sos', '', 'Jr. Banceng Pondok No. 806, Binjai 41824, Sumbar', '2009-08-29 09:22:55', '2021-04-20 12:13:34'),
(78, 'Gangsar Mustofa', '', 'Jr. Bhayangkara No. 183, Palangka Raya 48614, Malut', '1997-04-10 14:08:05', '2021-04-20 12:13:34'),
(79, 'Ganjaran Enteng Megantara', '', 'Jln. Teuku Umar No. 76, Malang 31096, Sulsel', '2001-07-13 06:22:07', '2021-04-20 12:13:34'),
(80, 'Mustofa Ardianto M.Pd', '', 'Jr. Thamrin No. 994, Tebing Tinggi 78630, Jatim', '2011-02-02 16:35:05', '2021-04-20 12:13:34'),
(81, 'Prayogo Napitupulu', '', 'Jr. Ir. H. Juanda No. 826, Bandar Lampung 11392, Pabar', '1970-07-28 20:49:20', '2021-04-20 12:13:34'),
(82, 'Upik Panca Mahendra S.Psi', '', 'Gg. Pasir Koja No. 58, Denpasar 13934, Sulsel', '2004-01-05 16:31:56', '2021-04-20 12:13:34'),
(83, 'Lutfan Adriansyah S.Gz', '', 'Kpg. Banceng Pondok No. 362, Padangsidempuan 32677, Sumut', '1992-08-18 01:08:36', '2021-04-20 12:13:34'),
(84, 'Rafid Saefullah', '', 'Psr. Kusmanto No. 356, Sungai Penuh 85079, Sulbar', '2002-07-09 19:11:05', '2021-04-20 12:13:34'),
(85, 'Mutia Wulandari', '', 'Jr. BKR No. 125, Singkawang 75407, Kalbar', '1980-04-25 05:38:08', '2021-04-20 12:13:34'),
(86, 'Purwadi Sinaga S.E.', '', 'Psr. Muwardi No. 597, Denpasar 46426, Kalsel', '1983-07-26 17:30:36', '2021-04-20 12:13:34'),
(87, 'Hendra Latupono', '', 'Dk. Casablanca No. 864, Denpasar 91812, Bengkulu', '2003-04-05 18:12:32', '2021-04-20 12:13:34'),
(88, 'Najam Rajasa', '', 'Ki. Bawal No. 725, Madiun 12437, Pabar', '2015-09-13 18:06:19', '2021-04-20 12:13:34'),
(89, 'Ade Widiastuti S.Gz', '', 'Ds. Laswi No. 464, Malang 97096, Bali', '2021-04-14 22:58:43', '2021-04-20 12:13:34'),
(90, 'Dwi Uwais S.Pt', '', 'Kpg. Ters. Jakarta No. 382, Pekanbaru 68492, Sulut', '2001-06-02 17:57:58', '2021-04-20 12:13:34'),
(91, 'Safina Sarah Wastuti S.E.I', '', 'Gg. Warga No. 921, Pariaman 69708, Jambi', '1990-12-07 15:42:24', '2021-04-20 12:13:34'),
(92, 'Iriana Lestari', '', 'Ds. Halim No. 696, Palu 86126, Riau', '1997-01-14 07:28:05', '2021-04-20 12:13:34'),
(93, 'Hana Rahayu', '', 'Kpg. Abdul Muis No. 308, Tangerang Selatan 27238, Bali', '2008-09-15 23:45:15', '2021-04-20 12:13:34'),
(94, 'Dian Dinda Andriani', '', 'Jln. Bappenas No. 798, Tebing Tinggi 95943, Pabar', '1974-09-09 02:56:54', '2021-04-20 12:13:34'),
(95, 'Marsudi Ajimin Maulana S.Gz', '', 'Kpg. Flores No. 55, Padangsidempuan 62348, Sultra', '1993-12-03 20:20:43', '2021-04-20 12:13:34'),
(96, 'Gaiman Salahudin S.Kom', '', 'Jln. Yoga No. 616, Subulussalam 36267, Jatim', '1982-11-24 09:45:19', '2021-04-20 12:13:34'),
(97, 'Ellis Melani', '', 'Ki. Bara Tambar No. 921, Langsa 95650, Pabar', '1992-09-19 05:34:29', '2021-04-20 12:13:34'),
(98, 'Salman Setiawan', '', 'Ki. Padma No. 183, Palembang 66549, Pabar', '1971-04-24 10:34:02', '2021-04-20 12:13:34'),
(99, 'Prayoga Marpaung', '', 'Ki. Bazuka Raya No. 588, Solok 86640, Kalbar', '1995-01-22 18:06:32', '2021-04-20 12:13:34'),
(100, 'Tomi Darijan Haryanto S.E.', '', 'Jln. Kyai Gede No. 450, Tanjung Pinang 11118, Sultra', '1970-06-01 07:37:13', '2021-04-20 12:13:34'),
(101, 'Anom Simbolon', '', 'Ds. Baja No. 467, Bontang 49776, Sulteng', '1984-01-05 13:25:03', '2021-04-20 12:13:34'),
(102, 'Daniswara Maulana', '', 'Psr. Salatiga No. 649, Ternate 95185, Sulut', '1988-12-16 00:42:01', '2021-04-20 12:13:34'),
(103, 'Ina Haryanti', '', 'Ki. Abdullah No. 619, Payakumbuh 31678, Lampung', '2017-06-23 04:11:03', '2021-04-20 12:13:34'),
(104, 'Bakti Karman Saptono', '', 'Dk. Daan No. 625, Cimahi 62255, Sulteng', '2004-01-24 12:23:30', '2021-04-20 12:13:34'),
(105, 'Restu Wastuti', '', 'Ds. Ikan No. 920, Ternate 59855, Kalsel', '1983-10-03 22:44:32', '2021-04-20 12:13:34'),
(106, 'Dewi Usada', '', 'Ds. Cihampelas No. 999, Gorontalo 29901, Jateng', '1980-07-19 21:57:29', '2021-04-20 12:13:34'),
(107, 'Prayogo Jailani', '', 'Jln. Bakin No. 72, Bontang 83951, Riau', '2002-11-16 03:51:29', '2021-04-20 12:13:34'),
(108, 'Saadat Kurniawan', '', 'Psr. Gading No. 970, Kotamobagu 25867, Sulbar', '1987-08-11 01:17:09', '2021-04-20 12:13:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `slug`, `kelas`, `jurusan`, `gambar`, `created_at`, `updated_at`) VALUES
(5, 'siska aja', 'siska-aja', 'kelas11', 'ips', 'default.png', '2021-04-21 03:45:40', '2021-09-07 04:46:51'),
(8, 'yanti', 'yanti', 'kelas 12', 'ipa', 'default.png', '2021-04-21 03:59:10', '2021-09-07 04:50:03'),
(9, 'Prapto', 'prapto', 'kelas 12', 'IPS', 'default.png', '2021-04-21 03:59:22', '2021-09-07 04:51:39');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
