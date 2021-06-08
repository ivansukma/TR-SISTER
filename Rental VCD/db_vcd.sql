-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 28, 2021 at 04:44 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_vcd`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_uservcd`
--

DROP TABLE IF EXISTS `tb_detail_uservcd`;
CREATE TABLE IF NOT EXISTS `tb_detail_uservcd` (
  `id` varchar(4) NOT NULL,
  `nama_user` varchar(25) CHARACTER SET latin1 NOT NULL,
  `judul` varchar(25) CHARACTER SET latin1 NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_detail_uservcd`
--

INSERT INTO `tb_detail_uservcd` (`id`, `nama_user`, `judul`, `tanggal`) VALUES
('1', 'devi', 'Proyektor Masa Depan', '2021-03-26'),
('10', 'ivan', 'Jenazah dikala malam', '2021-03-28'),
('11', 'ivan', 'Oh hai', '2021-03-28'),
('2', 'devi', 'Seberang Jalan Warung Aya', '2021-03-26'),
('3', 'leo', 'Muah 4', '2021-03-26'),
('4', 'leo', 'Seberang Jalan Warung Aya', '2021-03-26'),
('5', 'ivan', 'Seberang Jalan Warung Aya', '2021-03-26'),
('6', 'vika', 'Proyektor Masa Depan', '2021-03-26'),
('7', 'vika', 'Malam pertama', '2021-03-26'),
('8', 'vika', 'Muah 2', '2021-03-26'),
('9', 'bambang', 'Seberang Jalan Warung Aya', '2021-03-26');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pegawai`
--

DROP TABLE IF EXISTS `tb_pegawai`;
CREATE TABLE IF NOT EXISTS `tb_pegawai` (
  `pegawai` varchar(15) NOT NULL,
  `pas` varchar(10) NOT NULL,
  PRIMARY KEY (`pegawai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`pegawai`, `pas`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE IF NOT EXISTS `tb_user` (
  `user` varchar(15) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `no_handphone` varchar(13) NOT NULL,
  `email` varchar(35) NOT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user`, `pass`, `no_handphone`, `email`) VALUES
('bambang', '12345678', '91203192749', 'bambang@gmail.com'),
('devi', '12345', '081231231924', 'devi@gmail.com'),
('ivan', '123', '081328915920', 'ivanrzr12@gmail.com'),
('leo', '1234', '12312412421', 'sadasd'),
('vika', '123456', '08231312748', 'vika@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tb_vcd`
--

DROP TABLE IF EXISTS `tb_vcd`;
CREATE TABLE IF NOT EXISTS `tb_vcd` (
  `no_vcd` varchar(20) NOT NULL,
  `judul` varchar(25) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `nama_pencipta` varchar(25) NOT NULL,
  `nama_penerbit` varchar(25) NOT NULL,
  `tahun_rilis` varchar(4) NOT NULL,
  `sinopsis` text NOT NULL,
  PRIMARY KEY (`no_vcd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_vcd`
--

INSERT INTO `tb_vcd` (`no_vcd`, `judul`, `kategori`, `nama_pencipta`, `nama_penerbit`, `tahun_rilis`, `sinopsis`) VALUES
('00000000000000000002', 'Muah 2', 'Fiksi', 'Anda Hebat', 'Anda Production', '2005', ''),
('00000000000000000003', 'Seberang Jalan Warung Aya', 'Non-Fiksi', 'Hebata Nda', 'Bathe Product', '2003', ''),
('00000000000000000004', 'Proyektor Masa Depan', 'Ilmiah', 'Pantu Tunpa', 'Pannap Write', '2009', ''),
('00000000000000000009', 'Jenazah dikala malam', 'Sci-fi', 'Fauzi', 'Zipeco', '2020', 'Fuzui-kun yang sedang berkelana di tengah malam yang gelap dan sunyi, dia bertemu seseorang wanita yang totemo kawaii. selesai.'),
('00000000000000000012', 'Muah 4', 'Fiksi', 'Anda Hebat', 'Anda Production', '2013', ''),
('000000000123', 'Malam pertama', 'SF', 'Zuizui', 'Zipeco', '2020', 'Oh indahnya'),
('0000000012345', 'Oh hai', 'Unknown', 'Zuizui', 'Zipeco', '2020', 'Dummy buku yang berisi ke waw an si penulis			');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
