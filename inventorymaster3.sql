-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 25, 2016 at 01:32 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `inventorymaster3`
--
CREATE DATABASE IF NOT EXISTS `inventorymaster3` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `inventorymaster3`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) NOT NULL,
  `blokir` enum('Y','N') NOT NULL DEFAULT 'N',
  `foto` varchar(50) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`username`, `password`, `nama_lengkap`, `level`, `blokir`, `foto`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', '01', 'N', 'foto1.jpg'),
('iko', 'kiko', 'rizky septanto', '03', 'N', ''),
('kiko', 'baa80ec4e76734d710c5084558bc2d5f', 'rizky septanto', '03', 'N', ''),
('thobi', 'c4ca4238a0b923820dcc509a6f75849b', 'Thobie Danudoro', '02', 'N', 'IMG_20160804_220825.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `kode_barang` char(15) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `satuan` char(10) NOT NULL,
  `harga_beli` bigint(20) NOT NULL,
  `harga_jual` bigint(20) NOT NULL,
  `stok_awal` int(11) NOT NULL,
  PRIMARY KEY (`kode_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode_barang`, `nama_barang`, `satuan`, `harga_beli`, `harga_jual`, `stok_awal`) VALUES
('123456', 'Sprite Kaleng', 'PCS', 6000, 6500, 10),
('B001', 'Hardisk 40Gb', 'PCS', 230000, 250000, 1),
('B002', 'Hardisk 60Gb', 'BOX', 240000, 260000, 4),
('B003', 'Hardisk 80Gb', 'PCS', 250000, 270000, 17),
('B005', 'Keyboard PS2', 'PCS', 35000, 45000, 70),
('B006', 'Mouse PS2', 'PCS', 25000, 30000, 0),
('B007', 'Processor Dual Core', 'PCS', 1200000, 1400000, 10),
('B008', 'Prosesor Core 2 Duo', 'PCS', 1500000, 1720000, 5),
('B009', 'Sampurna Mild', 'PCS', 10000, 12000, 5),
('B010', 'Dji Sam Soe', 'PCS', 9000, 11000, 5),
('B011', 'Kopi Kapal Api', 'PCS', 450, 500, 10),
('KP0009', 'kopi tubruk', 'pc', 500, 600, 3),
('SP0011', 'sprite', 'mili liter', 6000, 7000, 3),
('SU02100', 'susu fresh milk', 'LTR', 17000, 20000, 12);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('4e2d6526bd6405a4d90fc3ac81cd7ba0', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.19.2704.63 Safari/537.36', 1474781501, 'a:6:{s:9:"user_data";s:0:"";s:9:"logged_in";s:13:"aingLoginYeuh";s:8:"username";s:5:"thobi";s:12:"nama_lengkap";s:15:"Thobie Danudoro";s:4:"foto";s:0:"";s:5:"level";s:2:"02";}'),
('6329e9425dae380081fde4ae57efb5fd', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.19.2704.63 Safari/537.36', 1474780292, 'a:6:{s:9:"user_data";s:0:"";s:9:"logged_in";s:13:"aingLoginYeuh";s:8:"username";s:5:"admin";s:12:"nama_lengkap";s:13:"Administrator";s:4:"foto";s:9:"foto1.jpg";s:5:"level";s:2:"01";}'),
('df1acb22bbb3b5e6c28dd48a77681d82', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.19.2704.63 Safari/537.36', 1474780292, '');

-- --------------------------------------------------------

--
-- Table structure for table `d_beli`
--

CREATE TABLE IF NOT EXISTS `d_beli` (
  `idbeli` smallint(6) NOT NULL AUTO_INCREMENT,
  `kodebeli` char(15) NOT NULL,
  `kode_barang` char(15) NOT NULL,
  `jmlbeli` int(11) NOT NULL,
  `hargabeli` double NOT NULL,
  PRIMARY KEY (`idbeli`),
  KEY `kodebeli` (`kodebeli`),
  KEY `kode_barang` (`kode_barang`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `d_beli`
--

INSERT INTO `d_beli` (`idbeli`, `kodebeli`, `kode_barang`, `jmlbeli`, `hargabeli`) VALUES
(2, 'BL00002', 'B002', 2, 240000),
(3, 'BL00003', 'B005', 2, 35000),
(4, 'BL00003', 'B009', 1, 10000),
(5, 'BL00004', 'B007', 2, 1200000),
(6, 'BL00004', 'B010', 2, 9000),
(7, 'BL00005', 'B006', 2, 25000),
(8, 'BL00005', 'B008', 1, 1500000),
(12, 'BL00006', 'B003', 2, 250000),
(13, 'BL00006', 'B010', 3, 9000),
(14, 'BL00007', 'B007', 2, 1200000),
(16, 'BL00007', 'B003', 2, 250000),
(17, 'BL00008', '123456', 2, 5000),
(18, 'BL00008', 'B009', 2, 10000),
(19, 'BL00006', 'B005', 2, 35000),
(20, 'BL00006', 'B009', 5, 10000),
(21, 'BL00004', 'B005', 10, 35000),
(31, 'BL00001', '123456', 5, 5000),
(32, 'BL00001', 'B006', 5, 25000),
(36, 'BL00009', 'B001', 20, 230000),
(40, 'BL00010', '123456', 20, 5000),
(41, 'BL00011', 'B002', 100, 240000),
(42, 'BL00012', '123456', 2, 0),
(43, 'BL00012', 'B005', 10, 0),
(44, 'BL00013', 'B002', 2, 0),
(45, 'BL00014', '123456', 9, 0),
(46, 'BL00015', '123456', 10, 0),
(47, 'BL00016', 'SU02100', 12, 0),
(48, 'BL00017', 'KP0009', 10, 0),
(49, 'BL00017', 'SU02100', 12, 0),
(50, 'BL00018', 'KP0009', 5, 0),
(51, 'BL00019', 'KP0009', 10, 0),
(52, 'BL00020', 'KP0009', 2, 0),
(53, 'BL00021', 'KP0009', 10, 0),
(54, 'BL00021', 'SU02100', 10, 0),
(55, 'BL00022', 'KP0009', 5, 0),
(56, 'BL00022', 'SU02100', 5, 0),
(58, 'BL00023', 'KP0009', 10, 0),
(59, 'BL00023', 'SU02100', 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `d_jual`
--

CREATE TABLE IF NOT EXISTS `d_jual` (
  `idjual` smallint(6) NOT NULL AUTO_INCREMENT,
  `kodejual` char(15) NOT NULL,
  `kode_barang` char(15) NOT NULL,
  `jmljual` int(11) NOT NULL,
  `hargajual` double NOT NULL,
  PRIMARY KEY (`idjual`),
  KEY `kode_barang` (`kode_barang`),
  KEY `kodejual` (`kodejual`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `d_jual`
--

INSERT INTO `d_jual` (`idjual`, `kodejual`, `kode_barang`, `jmljual`, `hargajual`) VALUES
(2, 'JL00001', 'B001', 2, 230000),
(3, 'JL00001', 'B002', 2, 240000),
(5, 'JL00002', 'B005', 10, 35000),
(6, 'JL00003', 'B006', 2, 25000),
(7, 'JL00004', 'B007', 2, 1200000),
(8, 'JL00004', 'B009', 5, 10000),
(9, 'JL00004', 'B011', 2, 450),
(10, 'JL00005', 'B001', 3, 230000),
(11, 'JL00005', 'B002', 2, 240000),
(12, 'JL00006', 'B001', 2, 230000),
(13, 'JL00006', 'B002', 2, 240000),
(14, 'JL00006', '123456', 2, 5000),
(15, 'JL00007', 'B001', 10, 230000),
(16, 'JL00007', 'B002', 10, 240000),
(17, 'JL00008', 'B002', 2, 240000),
(18, 'JL00008', 'B001', 2, 230000),
(19, 'JL00009', 'B003', 2, 270000),
(20, 'JL00009', 'B002', 10, 260000),
(21, 'JL00010', 'B001', 2, 230000),
(22, 'JL00011', '123456', 4, 6500),
(23, 'JL00012', 'B002', 2, 260000),
(24, 'JL00012', 'B009', 2, 12000),
(25, 'JL00013', '123456', 2, 6500),
(26, 'JL00013', 'B005', 4, 45000),
(27, 'JL00014', '123456', 2, 6500),
(28, 'JL00014', 'B002', 2, 260000),
(29, 'JL00015', '123456', 8, 6500),
(30, 'JL00016', 'KP0009', 20, 600),
(31, 'JL00016', 'SU02100', 6, 20000),
(32, 'JL00017', 'KP0009', 5, 600),
(33, 'JL00017', 'SU02100', 5, 20000),
(34, 'JL00018', 'KP0009', 20, 600),
(35, 'JL00018', 'SU02100', 20, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `h_beli`
--

CREATE TABLE IF NOT EXISTS `h_beli` (
  `kodebeli` char(15) NOT NULL,
  `tglbeli` date NOT NULL,
  `kode_supplier` char(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`kodebeli`),
  KEY `kode_supplier` (`kode_supplier`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `h_beli`
--

INSERT INTO `h_beli` (`kodebeli`, `tglbeli`, `kode_supplier`, `username`) VALUES
('BL00001', '2012-08-27', 'SP001', 'admin'),
('BL00002', '2012-08-27', 'SP004', 'admin'),
('BL00003', '2012-08-27', 'SP005', 'admin'),
('BL00004', '2012-08-27', 'SP004', 'admin'),
('BL00005', '2012-08-27', 'SP007', 'admin'),
('BL00006', '2012-08-27', 'SP009', 'admin'),
('BL00007', '2012-08-27', 'SP007', 'admin'),
('BL00008', '2012-08-26', 'SP004', 'admin'),
('BL00009', '2013-04-09', 'SP001', 'admin'),
('BL00010', '2013-04-09', 'SP002', 'admin'),
('BL00011', '2013-04-09', 'SP006', 'admin'),
('BL00012', '2016-09-23', 'SP003', 'thobi'),
('BL00013', '2016-09-23', 'SP006', 'thobi'),
('BL00014', '2016-09-23', 'SP001', 'thobi'),
('BL00015', '2016-09-23', 'SP001', 'admin'),
('BL00016', '2016-09-25', 'SU021', 'admin'),
('BL00017', '2016-09-25', 'KP010', 'admin'),
('BL00018', '2016-09-25', 'KP010', 'admin'),
('BL00019', '2016-09-25', 'KP010', 'admin'),
('BL00020', '2016-09-26', 'KP010', 'admin'),
('BL00021', '2016-09-25', 'KP010', 'thobi'),
('BL00022', '2016-09-25', 'SU021', 'thobi'),
('BL00023', '2016-09-25', 'SU021', 'kiko');

-- --------------------------------------------------------

--
-- Table structure for table `h_jual`
--

CREATE TABLE IF NOT EXISTS `h_jual` (
  `kodejual` char(15) NOT NULL,
  `tgljual` date NOT NULL,
  `username` varchar(50) NOT NULL,
  PRIMARY KEY (`kodejual`),
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `h_jual`
--

INSERT INTO `h_jual` (`kodejual`, `tgljual`, `username`) VALUES
('JL00001', '2012-08-27', 'admin'),
('JL00002', '2012-08-27', 'admin'),
('JL00003', '2012-08-27', 'admin'),
('JL00004', '2012-08-30', 'admin'),
('JL00005', '2012-08-30', 'admin'),
('JL00006', '2013-04-09', 'admin'),
('JL00007', '2013-04-09', 'admin'),
('JL00008', '2013-04-09', 'admin'),
('JL00009', '2013-04-10', 'admin'),
('JL00010', '2013-05-21', 'admin'),
('JL00011', '2016-09-23', 'iko'),
('JL00012', '2016-09-23', 'iko'),
('JL00013', '2016-09-23', 'iko'),
('JL00014', '2016-09-23', 'iko'),
('JL00015', '2016-09-23', 'thobi'),
('JL00016', '2016-09-25', 'admin'),
('JL00017', '2016-09-25', 'thobi'),
('JL00018', '2016-09-25', 'kiko');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE IF NOT EXISTS `level` (
  `id_level` char(2) NOT NULL,
  `level` char(30) NOT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id_level`, `level`) VALUES
('01', 'Super Admin'),
('02', 'Admin'),
('03', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
  `kode_supplier` char(5) NOT NULL DEFAULT '',
  `nama_supplier` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  PRIMARY KEY (`kode_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`kode_supplier`, `nama_supplier`, `alamat`) VALUES
('KP010', 'kedai Kopi', 'Jln. Kentungan, Sleman, Yogyakarta'),
('SP001', 'Maju Terus,CV.', 'A.Yani 30 tes'),
('SP002', 'Maju Mundur,CV.', 'A.Yani 31'),
('SP003', 'Maju Lambat,PT.', 'A.Yani 32'),
('SP004', 'Deddy', 'Cimuncang Sidomuncul'),
('SP005', 'Jangan Dihapus', 'Makannya jangan diedit kebanayakalasdkal '),
('SP006', 'Bantex', 'Dimana aja boleh'),
('SP007', 'Coba lagi dong', 'biar mantap'),
('SP008', 'Kapal Api', 'Jalan Mana Saja'),
('SP009', 'ITB Piksi Input', 'Serang'),
('SP010', 'Edifier', 'Serang'),
('SP011', 'Font Arial', 'Jakarta'),
('SP012', 'Font Verdana', 'Jakarta Selatan'),
('SP013', 'Tes', 'tes'),
('SU021', 'greenfield', 'sagan, yogyakarta ');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `d_beli`
--
ALTER TABLE `d_beli`
  ADD CONSTRAINT `d_beli_ibfk_1` FOREIGN KEY (`kodebeli`) REFERENCES `h_beli` (`kodebeli`),
  ADD CONSTRAINT `d_beli_ibfk_2` FOREIGN KEY (`kode_barang`) REFERENCES `barang` (`kode_barang`);

--
-- Constraints for table `d_jual`
--
ALTER TABLE `d_jual`
  ADD CONSTRAINT `d_jual_ibfk_1` FOREIGN KEY (`kode_barang`) REFERENCES `barang` (`kode_barang`),
  ADD CONSTRAINT `d_jual_ibfk_2` FOREIGN KEY (`kodejual`) REFERENCES `h_jual` (`kodejual`);

--
-- Constraints for table `h_beli`
--
ALTER TABLE `h_beli`
  ADD CONSTRAINT `h_beli_ibfk_1` FOREIGN KEY (`kode_supplier`) REFERENCES `supplier` (`kode_supplier`),
  ADD CONSTRAINT `h_beli_ibfk_2` FOREIGN KEY (`username`) REFERENCES `admins` (`username`);

--
-- Constraints for table `h_jual`
--
ALTER TABLE `h_jual`
  ADD CONSTRAINT `h_jual_ibfk_1` FOREIGN KEY (`username`) REFERENCES `admins` (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
