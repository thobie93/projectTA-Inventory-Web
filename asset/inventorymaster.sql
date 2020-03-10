-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 10, 2016 at 04:42 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `inventorymaster`
--
CREATE DATABASE IF NOT EXISTS `inventorymaster` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `inventorymaster`;

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
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', '01', 'N', 'images1.jpg'),
('danu', 'c81e728d9d4c2f636f067f89cc14862c', 'danudoro', '02', 'N', ''),
('kiko', 'baa80ec4e76734d710c5084558bc2d5f', 'rizky astia', '03', 'N', ''),
('thobi', 'c4ca4238a0b923820dcc509a6f75849b', 'Thobie Danudoro', '02', 'N', '');

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
('12345', 'royko', 'sacet', 500, 600, 0),
('BUM001K', 'Masako', 'gram', 500, 600, 0),
('BUM002K', 'Aji No Moto', 'gram', 400, 500, 0),
('BUM003K', 'Garam ', 'gram', 7500, 8000, 0),
('DAG001K', 'Daging Sapi', 'kg', 80000, 90000, 0),
('DAG002K', 'Daging Ayam', 'kg', 55000, 60000, 0),
('GL001B', 'Gula pasir', 'kg', 13000, 15000, 0),
('KP001B', 'Kopi Toraja', 'gram', 45000, 55000, 0),
('KP002B', 'Kopi Wamena', 'gram', 45000, 55000, 0),
('KP003B', 'Kopi Aceh Gayo', 'gram', 50000, 60000, 0),
('KP004B', 'Kopi Bali Kintamani', 'gram', 65000, 75000, 0),
('SP004B', 'Davinci Hazelnut  ', 'ml', 36000, 40000, 0),
('SRP001B', 'Marjan Melon', 'ml', 25000, 30000, 0),
('SRP002B', 'Marjan Strawberry', 'ml', 25000, 30000, 0),
('SRP003B', 'Marjan Vanilla', 'ml', 35000, 40000, 0),
('SRP005B', 'Davinci Mocca', 'ml', 35000, 40000, 0),
('STR001B', 'buah Strawberry', 'gram', 500, 600, 0),
('SU001B', 'Susu Indomilk Putih', 'ml', 7500, 8000, 0),
('SU002B', 'Susu Indomilk Coklat', 'ml', 7500, 8000, 0);

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
('5238a4fd16d24cfd1ab0ace02ee0f83d', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.12.2785.90 Safari/537.36', 1475932776, 'a:6:{s:9:"user_data";s:0:"";s:9:"logged_in";s:13:"aingLoginYeuh";s:8:"username";s:5:"admin";s:12:"nama_lengkap";s:13:"Administrator";s:4:"foto";s:11:"images1.jpg";s:5:"level";s:2:"01";}'),
('a9d7a8049ba225224061bbeb9ac4a73a', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.12.2785.90 Safari/537.36', 1476074477, ''),
('cbdf3c5c75239087985635b4575de505', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.12.2785.90 Safari/537.36', 1475932776, ''),
('d26442246cc96596441b623cb155e317', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; rv:47.0) Gecko/20100101 Firefox/47.0', 1475932406, '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=71 ;

--
-- Dumping data for table `d_beli`
--

INSERT INTO `d_beli` (`idbeli`, `kodebeli`, `kode_barang`, `jmlbeli`, `hargabeli`) VALUES
(44, 'BL00001', 'KP002B', 10, 45000),
(45, 'BL00001', 'KP003B', 10, 50000),
(46, 'BL00001', 'KP004B', 12, 65000),
(47, 'BL00001', 'SP004B', 5, 36000),
(48, 'BL00002', 'KP003B', 5, 50000),
(49, 'BL00002', 'KP004B', 2, 65000),
(51, 'BL00004', 'KP001B', 5, 45000),
(54, 'BL00005', 'KP001B', 10, 45000),
(55, 'BL00006', 'SRP001B', 15, 25000),
(56, 'BL00006', 'SU001B', 20, 7500),
(58, 'BL00007', 'DAG002K', 20, 55000),
(59, 'BL00007', 'SRP002B', 10, 25000),
(60, 'BL00008', 'SRP003B', 8, 35000),
(61, 'BL00009', 'DAG002K', 3, 55000),
(65, 'BL00010', 'SRP005B', 5, 35000),
(66, 'BL00011', 'SU002B', 5, 7500),
(67, 'BL00012', 'DAG001K', 15, 80000),
(68, 'BL00012', 'BUM003K', 2, 7500),
(69, 'BL00013', 'SRP001B', 5, 25000),
(70, 'BL00014', '12345', 10, 500);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `d_jual`
--

INSERT INTO `d_jual` (`idjual`, `kodejual`, `kode_barang`, `jmljual`, `hargajual`) VALUES
(4, 'JL00003', 'KP001B', 5, 55000),
(5, 'JL00004', 'SRP001B', 5, 30000),
(6, 'JL00005', 'DAG002K', 5, 60000),
(7, 'JL00006', 'DAG002K', 2, 60000),
(8, 'JL00007', 'DAG002K', 3, 60000),
(9, 'JL00008', 'KP002B', 5, 55000),
(10, 'JL00008', 'KP003B', 2, 60000),
(11, 'JL00009', 'DAG001K', 5, 90000),
(12, 'JL00009', '12345', 5, 600);

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
('BL00001', '2016-09-27', 'SRP01', 'admin'),
('BL00002', '2016-09-28', 'KP01B', 'admin'),
('BL00004', '2016-09-28', 'KP01B', 'thobi'),
('BL00005', '2016-09-28', 'KP01B', 'admin'),
('BL00006', '2016-09-28', 'SU01B', 'admin'),
('BL00007', '2016-09-28', 'SRP01', 'admin'),
('BL00008', '2016-09-28', 'SRP00', 'admin'),
('BL00009', '2016-10-02', 'DAG00', 'kiko'),
('BL00010', '2016-10-05', 'SRP00', 'admin'),
('BL00011', '2016-10-05', 'SU01B', 'admin'),
('BL00012', '2016-10-05', 'DG001', 'admin'),
('BL00013', '2016-10-06', 'KP01B', 'danu'),
('BL00014', '2016-10-06', 'BUM02', 'admin');

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
('JL00003', '2016-09-28', 'admin'),
('JL00004', '2016-09-28', 'admin'),
('JL00005', '2016-09-29', 'admin'),
('JL00006', '2016-10-02', 'kiko'),
('JL00007', '2016-10-02', 'kiko'),
('JL00008', '2016-10-05', 'admin'),
('JL00009', '2016-10-06', 'admin');

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
('02', 'Staff Gudang'),
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
('BUM02', 'Masako', 'Dagen,Sleman'),
('DAG00', 'cv. lancar', 'depok sleman'),
('DAG01', 'Jagal Sapi', 'Jln.Wonosari km 25'),
('DG001', 'indogrosir', 'jalan solo'),
('DG004', 'Indogrosir', 'jalan Solo'),
('KP01B', 'Kedai Kopi', 'Kentungan No 50, Jln.Kaliurang,Sleman,Yogyakarta'),
('KP02B', 'Studio Kopi', 'Babarsari No.25 ,Sleman, Yogyakarta'),
('SRP00', 'davici ', 'palagan, depok, sleman'),
('SRP01', 'Marjan', 'Kledokan,Yogyakarta'),
('SU01B', 'Indomilk', 'Pasar Raya, Ngalik');

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
