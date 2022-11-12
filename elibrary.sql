-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2022 at 12:44 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `nama_buku` varchar(500) NOT NULL,
  `buku_tersedia` varchar(1000) NOT NULL,
  `buku_dipinjam` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `nama_buku`, `buku_tersedia`, `buku_dipinjam`) VALUES
(1, 'Botol plastik menjadi anting', 'Bahan :\r\n• Botol plastik bekas minuman bersoda\r\n• Cat khusus akrilik\r\n• Kawat (atau Anda dapat menggunakan tempat belakang anting yang sudah jadi)\r\n• Gunting\r\n• Lilin\r\n• Stiker berlian (opsional)\r\n• Spidol\r\nCara Pembuatan :\r\n• Gambar pola kelopak bunga di atas kertas\r\n• Potong botol plastik mengikuti ukuran yang sama dengan pola kelopak. Untuk membuat satu bunga Anda membutuhkan lima kelopak.\r\n• Rapikan potongan di ujung kelopak, dan gunakan gunting untuk membuat kelopak melengkung atau bisa dengan cara ditekuk. Cara lain, buat lengkungan kelopak dengan memanaskannya di atas lilin (jarak 8 inci) hingga kelopak lentur dan mudah dibentuk.\r\n• Setelah kelopak terbentuk, lakukan proses tumpang tindih lima kelopak untuk membentuk sebuah bunga. Untuk menyatukannya, lelehkan ujung setiap kelopak di atas lilin.\r\n• Setelah selesai bagian belakang mungkin akan tampak hitam karena proses pemanasan. Namun jangan khawatir, hal ini akan hilang karena proses pengecatan.', '8'),
(2, 'Celengan', 'Bahan dan alat yang diperlukan, adalah:\r\n• Botol bekas\r\n• Cat semprot\r\n• Cutter/gunting\r\n• Kertas warna-warni\r\n• Lem\r\nCara membuat celengan kerajinan dari botol bekas:\r\n• Cobalah untuk memotong botol menjadi lebih pendek, lalu sambungkan kembali;\r\n• Warnai permukaan botol dengan cat semprot sesuai dengan selera kamu;\r\n• Jika tidak ada cat semprot, kamu bisa menggunakan tempelan kertas warna-warni dari kertas lipat atau kertas manila di permukaan botol;\r\n• Buat pola telinga dan kaki dari kertas, lalu coba tempelkan di botol dengan menggunakan lem;\r\n• Lubangi bagian atas botol sesuai dengan besarnya uang. Lubang ini akan berfungsi sebagai jalur uang masuk;', '5');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `image` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(3, 'junday junaedi', 'junaedi@gmail.com', 'default.jpg', '$2y$10$1QlNdt0Nl8D0SvTHqt/0LOa18VFs.t0IzAvuts9nGABfpQ6xbwhbu', 1, 1, 1668206315);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
