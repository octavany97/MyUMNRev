-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 15, 2017 at 01:24 AM
-- Server version: 5.7.13-log
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `civao`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `eventID` int(11) NOT NULL,
  `tanggalMulai` date DEFAULT NULL,
  `tanggalSelesai` date DEFAULT NULL,
  `flag` int(11) DEFAULT NULL,
  `keterangan` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eventID`, `tanggalMulai`, `tanggalSelesai`, `flag`, `keterangan`) VALUES
(1, '2017-08-01', '2017-08-06', 7, NULL),
(2, '2017-08-02', NULL, 7, NULL),
(3, '2017-08-03', NULL, 7, NULL),
(4, '2017-08-04', NULL, 7, NULL),
(5, '2017-08-05', NULL, 7, NULL),
(6, '2017-08-06', NULL, 7, NULL),
(7, '2017-08-07', '2017-08-09', 6, 'Pendaftaran Ulang Mahasiswa Baru'),
(8, '2017-08-08', NULL, 6, 'Pendaftaran Ulang Mahasiswa Baru'),
(9, '2017-08-09', NULL, 6, 'Pendaftaran Ulang Mahasiswa Baru'),
(10, '2017-08-10', '2017-09-13', 7, NULL),
(11, '2017-08-11', NULL, 7, NULL),
(12, '2017-08-12', NULL, 7, NULL),
(13, '2017-08-13', NULL, 7, NULL),
(14, '2017-08-14', '2017-08-19', 2, 'Pendaftaran KRS Semester Ganjil 2017-2018'),
(15, '2017-08-15', NULL, 2, 'Pendaftaran KRS Semester Ganjil 2017-2018'),
(16, '2017-08-16', NULL, 2, 'Pendaftaran KRS Semester Ganjil 2017-2018'),
(17, '2017-08-17', '2017-08-17', 1, 'Hari Kemerdekaan RI'),
(18, '2017-08-17', NULL, 2, 'Pendaftaran KRS Semester Ganjil 2017-2018'),
(19, '2017-08-18', NULL, 2, 'Pendaftaran KRS Semester Ganjil 2017-2018'),
(20, '2017-08-19', NULL, 2, 'Pendaftaran KRS Semester Ganjil 2017-2018'),
(21, '2017-08-20', '2017-08-20', 7, NULL),
(22, '2017-08-21', '2017-08-25', 6, 'OMB, Kuliah Perdana & UMN Expo'),
(23, '2017-08-22', NULL, 6, 'OMB, Kuliah Perdana & UMN Expo'),
(24, '2017-08-23', '2017-08-24', 3, 'Tambah Ganti KRS Ganjil 2017-2018'),
(25, '2017-08-23', NULL, 6, 'OMB, Kuliah Perdana & UMN Expo'),
(26, '2017-08-24', NULL, 6, 'Tambah Ganti KRS Ganjil 2017-2018'),
(27, '2017-08-24', NULL, 6, 'OMB, Kuliah Perdana & UMN Expo'),
(28, '2017-08-25', NULL, 6, 'OMB, Kuliah Perdana & UMN Expo'),
(29, '2017-08-26', '2017-08-27', 7, NULL),
(30, '2017-08-27', '2017-10-15', 7, NULL),
(31, '2017-08-28', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(32, '2017-08-29', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(33, '2017-08-30', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(34, '2017-08-31', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(35, '2017-09-01', '2017-09-01', 1, 'Hari Raya Idul Adha 1438 H'),
(36, '2017-09-02', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(37, '2017-09-03', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(38, '2017-09-04', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(39, '2017-09-05', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(40, '2017-09-06', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(41, '2017-09-07', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(42, '2017-09-08', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(43, '2017-09-09', '2017-09-09', 6, 'Temu Wicara Orang Tua Mahasiswa Baru'),
(44, '2017-09-10', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(45, '2017-09-11', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(46, '2017-09-12', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(47, '2017-09-13', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(48, '2017-09-14', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(49, '2017-09-15', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(50, '2017-09-16', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(51, '2017-09-17', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(52, '2017-09-18', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(53, '2017-09-19', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(54, '2017-09-20', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(55, '2017-09-21', '2017-09-21', 1, 'Tahun Baru Islam 1439 H'),
(56, '2017-09-22', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(57, '2017-09-23', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(58, '2017-09-24', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(59, '2017-09-25', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(60, '2017-09-26', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(61, '2017-09-27', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(62, '2017-09-28', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(63, '2017-09-29', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(64, '2017-09-30', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(65, '2017-10-01', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(66, '2017-10-02', '2017-10-02', 4, 'Batas Akhir Pelunasan Pembayaran Semester Ganjil 2017-2018'),
(67, '2017-10-03', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(68, '2017-10-04', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(69, '2017-10-05', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(70, '2017-10-06', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(71, '2017-10-07', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(72, '2017-10-08', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(73, '2017-10-09', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(74, '2017-10-10', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(75, '2017-10-11', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(76, '2017-10-12', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(77, '2017-10-13', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(78, '2017-10-14', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(79, '2017-10-15', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(80, '2017-10-16', '2017-10-28', 2, 'Ujian Tengah Semester 2017-2018'),
(81, '2017-10-17', NULL, 2, 'Ujian Tengah Semester 2017/2018'),
(82, '2017-10-18', NULL, 2, 'Ujian Tengah Semester 2017/2018'),
(83, '2017-10-19', NULL, 2, 'Ujian Tengah Semester 2017/2018'),
(84, '2017-10-20', NULL, 2, 'Ujian Tengah Semester 2017/2018'),
(85, '2017-10-21', NULL, 2, 'Ujian Tengah Semester 2017/2018'),
(86, '2017-10-22', NULL, 2, 'Ujian Tengah Semester 2017/2018'),
(87, '2017-10-23', NULL, 2, 'Ujian Tengah Semester 2017/2018'),
(88, '2017-10-24', NULL, 2, 'Ujian Tengah Semester 2017/2018'),
(89, '2017-10-25', NULL, 2, 'Ujian Tengah Semester 2017/2018'),
(90, '2017-10-26', NULL, 2, 'Ujian Tengah Semester 2017/2018'),
(91, '2017-10-27', NULL, 2, 'Ujian Tengah Semester 2017/2018'),
(92, '2017-10-28', NULL, 2, 'Ujian Tengah Semester 2017/2018'),
(93, '2017-10-29', '2017-12-17', 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(94, '2017-10-30', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(95, '2017-10-31', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(96, '2017-11-01', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(97, '2017-11-02', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(98, '2017-11-03', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(99, '2017-11-04', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(100, '2017-11-05', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(101, '2017-11-06', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(102, '2017-11-07', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(103, '2017-11-08', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(104, '2017-11-09', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(105, '2017-11-10', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(106, '2017-11-11', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(107, '2017-11-12', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(108, '2017-11-13', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(109, '2017-11-14', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(110, '2017-11-15', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(111, '2017-11-16', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(112, '2017-11-17', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(113, '2017-11-18', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(114, '2017-11-19', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(115, '2017-11-20', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(116, '2017-11-21', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(117, '2017-11-22', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(118, '2017-11-23', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(119, '2017-11-24', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(120, '2017-11-25', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(121, '2017-11-26', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(122, '2017-11-27', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(123, '2017-11-28', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(124, '2017-11-29', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(125, '2017-11-30', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(126, '2017-12-01', '2017-12-01', 1, 'Maulid Nabi Muhammad SAW'),
(127, '2017-12-02', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(128, '2017-12-03', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(129, '2017-12-04', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(130, '2017-12-05', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(131, '2017-12-06', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(132, '2017-12-07', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(133, '2017-12-08', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(134, '2017-12-09', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(135, '2017-12-10', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(136, '2017-12-11', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(137, '2017-12-12', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(138, '2017-12-13', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(139, '2017-12-14', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(140, '2017-12-15', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(141, '2017-12-16', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(142, '2017-12-17', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(143, '2017-12-18', '2017-12-23', 5, 'Minggu Tenang'),
(144, '2017-12-19', NULL, 5, 'Minggu Tenang'),
(145, '2017-12-20', NULL, 5, 'Minggu Tenang'),
(146, '2017-12-21', NULL, 5, 'Minggu Tenang'),
(147, '2017-12-22', NULL, 5, 'Minggu Tenang'),
(148, '2017-12-23', NULL, 5, 'Minggu Tenang'),
(149, '2017-12-24', NULL, 0, 'Masa Perkuliahan Semester Ganjil 2017-2018'),
(150, '2017-12-25', '2017-12-25', 1, 'Natal'),
(151, '2017-12-25', '2018-01-06', 6, 'Libur Natal & Tahun Baru'),
(152, '2017-12-26', NULL, 6, 'Libur Natal & Tahun Baru'),
(153, '2017-12-27', NULL, 6, 'Libur Natal & Tahun Baru'),
(154, '2017-12-28', NULL, 6, 'Libur Natal & Tahun Baru'),
(155, '2017-12-29', NULL, 6, 'Libur Natal & Tahun Baru'),
(156, '2017-12-30', NULL, 6, 'Libur Natal & Tahun Baru'),
(157, '2017-12-31', NULL, 6, 'Libur Natal & Tahun Baru'),
(158, '2018-01-08', '2018-01-20', 2, 'Ujian Akhir Semester 2017-2018'),
(159, '2018-01-29', '2018-02-03', 2, 'Pendaftaran KRS Semester Genap 2017-2018');

-- --------------------------------------------------------

--
-- Table structure for table `infouser`
--

CREATE TABLE `infouser` (
  `infoID` int(11) NOT NULL,
  `nim` char(11) NOT NULL,
  `namaDepan` varchar(50) NOT NULL,
  `namaBelakang` varchar(50) DEFAULT NULL,
  `prodi` varchar(30) NOT NULL,
  `angkatan` int(11) DEFAULT NULL,
  `tempatLahir` varchar(20) DEFAULT NULL,
  `tanggalLahir` date DEFAULT NULL,
  `noTelp` varchar(15) DEFAULT NULL,
  `alamat` varchar(120) DEFAULT NULL,
  `namaOrtu` varchar(70) DEFAULT NULL,
  `relasi` varchar(30) DEFAULT NULL,
  `noTelpOrtu` varchar(15) DEFAULT NULL,
  `domisili` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `infouser`
--

INSERT INTO `infouser` (`infoID`, `nim`, `namaDepan`, `namaBelakang`, `prodi`, `angkatan`, `tempatLahir`, `tanggalLahir`, `noTelp`, `alamat`, `namaOrtu`, `relasi`, `noTelpOrtu`, `domisili`) VALUES
(1, '00000012345', 'Civao', 'Developer', 'Teknik Informatika', 2015, 'Jakarta', '1997-01-01', '081234567890', 'Gading Serpong', NULL, NULL, NULL, NULL),
(2, '11111111111', 'Andre', 'Rusli', 'Teknik Informatika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '11111111112', 'Seng', 'Hansun', 'Teknik Informatika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '11111111113', 'Dennis', 'Gunawan', 'Teknik Informatika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '11111111114', 'Arya', 'Wicaksana', 'Teknik Informatika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '11111111115', 'Farica', 'Perdana Putri', 'Teknik Informatika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '11111111116', 'Alethea', 'Suryadibrata', 'Teknik Informatika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '11111111117', 'Marcel', 'Bonar Kristanda', 'Teknik Informatika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '11111111118', 'Yustinus', 'Widia Wiratama', 'Teknik Informatika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '11111111119', 'Adhi', 'Kusnadi', 'Teknik Informatika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '11111111120', 'Ivransa', 'Zudhi Pane', 'Teknik Informatika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '11111111121', 'I Made', 'Astawa', 'Teknik Informatika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '11111111122', 'Nofriyadi', 'Nurdam', 'Teknik Informatika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '11111111123', 'Nyimas', 'Dewi Sartika', 'Teknik Informatika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '11111111124', 'Markus', 'Fresnel', 'Sistem Informasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '11111111125', 'Felix', 'Lokananta', 'Sistem Komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '11111111126', 'Hadi', 'Hermanda', 'Teknik Informatika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '11111111127', 'Wolfgang', 'Xaverius Dorojatun Jalma Nuswantara', 'Sistem Komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '11111111128', 'Mohamad', 'Subekti', 'Teknik Informatika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '11111111129', 'Aditiyawan', NULL, 'Teknik Informatika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '11111111130', 'Tan', 'Thing Heng', 'Sistem Komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '11111111131', 'Samuel', NULL, 'Sistem Komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '11111111132', 'A. A. N. Ananda', 'Kusuma', 'Sistem Komputer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '11111111133', 'Revie', 'Pitono', 'Teknik Informatika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '11111111134', 'Wira', 'Munggana', 'Sistem Informasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '11111111135', 'Agus', 'Sulaiman', 'Sistem Informasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '11111111136', 'Ardian', 'Setio Utomo', 'Ilmu Komunikasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '00000011609', 'Anthony', NULL, 'Teknik Informatika', 2015, 'Jakarta', '1997-08-21', '081287435544', 'BSD', 'Ibu Anthony', 'Mother', '081212122121', 'BSD'),
(29, '00000011597', 'Octavany', NULL, 'Teknik Informatika', 2015, 'Jambi', '1997-01-11', '080808080808', 'Gading Serpong', 'Ibu Octavany', 'Mother', '081734344343', 'UMN'),
(30, '00000011576', 'Vionilyn', NULL, 'Teknik Informatika', 2015, 'Bekasi', '1997-11-11', '1234', 'Gading Serpong', 'Ibu Vionilyn', 'Mother', '089807077070', 'uemen'),
(31, '00000010760', 'Ivy', 'Marcia', 'Teknik Informatika', 2015, 'Jakarta', '1997-01-02', '082345671234', 'Jakarta', 'Ibu Ivy', 'Mother', '089807077070', 'Bintaro'),
(32, '00000010755', 'Christopher', 'Reinaldo', 'Teknik Informatika', 2015, 'Jakarta', '1997-01-03', '081812345678', 'Tangerang', 'Ayah Christopher', 'Father', '081898765432', 'Bintaro'),
(33, '11111111137', 'Yohanes', 'Langgar Billy', 'Umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '11111111138', 'Arcadius', 'Benawa', 'Umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '11111111139', 'Siti', 'Muniroh', 'Umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, '11111111140', 'Tjoo', 'Hong Sing', 'Umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, '11111111141', 'G.B.M.', 'Indarsanta', 'Umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, '11111111142', 'Iwan', 'Irawan', 'Umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, '11111111143', 'D. Parlindungan', 'Sianipar', 'Umum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, '00000012345', 'Adjie', 'Wahyu', 'Teknik Informatika', 2015, 'Jakarta', '1997-08-31', '088899998989', 'SDC', 'Ayah Adjie', 'Father', '080808080808', 'Gading Serpong');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `kelasID` int(11) NOT NULL,
  `kodeKelas` varchar(7) NOT NULL,
  `ruangKelas` varchar(7) DEFAULT NULL,
  `kapasitas` int(11) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  `hari` varchar(10) DEFAULT NULL,
  `jamMulai` time DEFAULT NULL,
  `jamSelesai` time DEFAULT NULL,
  `matkulID` int(11) NOT NULL,
  `dosenID` int(11) DEFAULT NULL,
  `week1` date DEFAULT NULL,
  `week2` date DEFAULT NULL,
  `week3` date DEFAULT NULL,
  `week4` date DEFAULT NULL,
  `week5` date DEFAULT NULL,
  `week6` date DEFAULT NULL,
  `week7` date DEFAULT NULL,
  `week8` date DEFAULT NULL,
  `week9` date DEFAULT NULL,
  `week10` date DEFAULT NULL,
  `week11` date DEFAULT NULL,
  `week12` date DEFAULT NULL,
  `week13` date DEFAULT NULL,
  `week14` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`kelasID`, `kodeKelas`, `ruangKelas`, `kapasitas`, `available`, `hari`, `jamMulai`, `jamSelesai`, `matkulID`, `dosenID`, `week1`, `week2`, `week3`, `week4`, `week5`, `week6`, `week7`, `week8`, `week9`, `week10`, `week11`, `week12`, `week13`, `week14`) VALUES
(1, 'D', 'B302', 40, 40, 'Tuesday', '09:00:00', '11:00:00', 49, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'DL', 'B502', 40, 40, 'Tuesday', '11:00:00', '13:00:00', 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'D', 'B302', 40, 40, 'Friday', '14:00:00', '17:00:00', 50, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'D', 'B307', 40, 40, 'Thursday', '14:00:00', '17:00:00', 51, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'D', 'B306', 40, 40, 'Friday', '08:00:00', '11:00:00', 95, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'C', 'B303', 40, 40, 'Friday', '14:00:00', '17:00:00', 2, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'C', 'B301', 40, 40, 'Wednesday', '14:00:00', '17:00:00', 3, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'C', 'B302', 40, 40, 'Wednesday', '11:00:00', '14:00:00', 52, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'C', 'B306', 40, 40, 'Saturday', '08:00:00', '10:00:00', 53, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'C', 'B301', 40, 40, 'Thursday', '10:00:00', '12:00:00', 54, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'C', 'B301', 40, 40, 'Monday', '13:00:00', '15:00:00', 55, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'CL', 'B501', 40, 40, 'Monday', '15:00:00', '17:00:00', 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'C', 'C302', 40, 40, 'Monday', '14:00:00', '17:00:00', 1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'B', 'B303', 40, 40, 'Tuesday', '11:00:00', '14:00:00', 5, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'A', 'B317', 40, 40, 'Wednesday', '13:00:00', '15:00:00', 56, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'AL', 'B501', 40, 40, 'Wednesday', '15:00:00', '17:00:00', 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'A', 'B303', 40, 40, 'Friday', '08:00:00', '10:00:00', 57, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'AL', 'B511', 40, 40, 'Friday', '10:00:00', '12:00:00', 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'C', 'B301', 40, 40, 'Tuesday', '08:00:00', '11:00:00', 58, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'CL', 'B505', 40, 40, 'Tuesday', '11:00:00', '13:00:00', 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'D', 'B303', 40, 40, 'Tuesday', '08:00:00', '11:00:00', 58, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'DL', 'B506', 40, 40, 'Tuesday', '11:00:00', '13:00:00', 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'A', 'C302', 40, 40, 'Monday', '11:00:00', '14:00:00', 59, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'C', 'C304', 40, 40, 'Tuesday', '12:00:00', '14:00:00', 4, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'B', 'B303', 40, 40, 'Wednesday', '08:00:00', '10:00:00', 6, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'BL', 'B509', 40, 40, 'Wednesday', '10:00:00', '12:00:00', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'C', 'C307', 40, 40, 'Friday', '10:00:00', '12:00:00', 60, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'CL', 'C705', 40, 40, 'Friday', '13:00:00', '15:00:00', 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'A', 'B301', 40, 40, 'Tuesday', '08:00:00', '11:00:00', 61, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'C', 'C307', 40, 40, 'Wednesday', '13:00:00', '15:00:00', 7, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'C', 'C304', 40, 40, 'Wednesday', '15:00:00', '17:00:00', 62, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'CL', 'C707', 40, 40, 'Thursday', '08:00:00', '10:00:00', 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'A', 'B306', 40, 40, 'Saturday', '08:00:00', '10:00:00', 73, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'B', 'B306', 40, 40, 'Saturday', '10:00:00', '12:00:00', 73, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'A', 'C1006', 40, 40, 'Tuesday', '14:00:00', '17:00:00', 63, 6, '2017-08-29', '2017-09-05', '2017-09-12', '2017-09-19', '2017-09-26', '2017-10-03', '2017-10-10', '2017-10-31', '2017-11-07', '2017-11-14', '2017-11-21', '2017-11-28', '2017-12-05', '2017-12-12'),
(36, 'B', 'C309', 40, 40, 'Monday', '11:00:00', '14:00:00', 63, 6, '2017-08-28', '2017-09-04', '2017-09-11', '2017-09-18', '2017-09-25', '2017-10-02', '2017-10-09', '2017-10-30', '2017-11-06', '2017-11-13', '2017-11-20', '2017-11-27', '2017-12-04', '2017-12-11'),
(37, 'C', 'C503', 40, 40, 'Friday', '14:00:00', '17:00:00', 63, 7, '2017-09-08', '2017-09-14', '2017-09-15', '2017-09-22', '2017-09-29', '2017-10-06', '2017-10-13', '2017-11-03', '2017-11-06', '2017-11-17', '2017-11-24', '2017-11-30', '2017-12-08', '2017-12-15'),
(38, 'A', 'C502', 40, 40, 'Friday', '14:00:00', '17:00:00', 64, 4, '2017-09-08', '2017-09-14', '2017-09-15', '2017-09-22', '2017-09-29', '2017-10-06', '2017-10-13', '2017-11-03', '2017-11-06', '2017-11-17', '2017-11-24', '2017-11-30', '2017-12-08', '2017-12-15'),
(39, 'B', 'C305', 40, 40, 'Tuesday', '14:00:00', '17:00:00', 64, 4, '2017-08-29', '2017-09-05', '2017-09-12', '2017-09-19', '2017-09-26', '2017-10-03', '2017-10-10', '2017-10-31', '2017-11-07', '2017-11-14', '2017-11-21', '2017-11-28', '2017-12-05', '2017-12-12'),
(40, 'C', 'C503', 40, 40, 'Friday', '08:00:00', '11:00:00', 64, 5, '2017-09-08', '2017-09-14', '2017-09-15', '2017-09-22', '2017-09-29', '2017-10-06', '2017-10-13', '2017-11-03', '2017-11-06', '2017-11-17', '2017-11-24', '2017-11-30', '2017-12-08', '2017-12-15'),
(41, 'A', 'C312', 40, 40, 'Tuesday', '11:00:00', '14:00:00', 65, 10, '2017-08-29', '2017-09-05', '2017-09-12', '2017-09-19', '2017-09-26', '2017-10-03', '2017-10-10', '2017-10-31', '2017-11-07', '2017-11-14', '2017-11-21', '2017-11-28', '2017-12-05', '2017-12-12'),
(42, 'C', 'C505', 40, 40, 'Wednesday', '08:00:00', '11:00:00', 65, 11, '2017-08-30', '2017-09-06', '2017-09-13', '2017-09-20', '2017-09-27', '2017-10-04', '2017-10-11', '2017-11-01', '2017-11-08', '2017-11-15', '2017-11-22', '2017-11-29', '2017-12-06', '2017-12-13'),
(43, 'D', 'C312', 40, 40, 'Tuesday', '08:00:00', '11:00:00', 65, 11, '2017-08-29', '2017-09-05', '2017-09-12', '2017-09-19', '2017-09-26', '2017-10-03', '2017-10-10', '2017-10-31', '2017-11-07', '2017-11-14', '2017-11-21', '2017-11-28', '2017-12-05', '2017-12-12'),
(44, 'A', 'C301', 40, 40, 'Saturday', '13:00:00', '15:00:00', 67, 9, '2017-09-02', '2017-09-09', '2017-09-16', '2017-09-23', '2017-09-30', '2017-10-07', '2017-10-14', '2017-11-04', '2017-11-11', '2017-11-18', '2017-11-25', '2017-12-02', '2017-12-09', '2017-12-16'),
(45, 'AL', 'C706', 40, 40, 'Saturday', '15:00:00', '17:00:00', 67, NULL, '2017-09-02', '2017-09-09', '2017-09-16', '2017-09-23', '2017-09-30', '2017-10-07', '2017-10-14', '2017-11-04', '2017-11-11', '2017-11-18', '2017-11-25', '2017-12-02', '2017-12-09', '2017-12-16'),
(46, 'B', 'C301', 40, 40, 'Saturday', '10:00:00', '12:00:00', 67, 9, '2017-09-02', '2017-09-09', '2017-09-16', '2017-09-23', '2017-09-30', '2017-10-07', '2017-10-14', '2017-11-04', '2017-11-11', '2017-11-18', '2017-11-25', '2017-12-02', '2017-12-09', '2017-12-16'),
(47, 'BL', 'C706', 40, 40, 'Saturday', '13:00:00', '15:00:00', 67, NULL, '2017-09-02', '2017-09-09', '2017-09-16', '2017-09-23', '2017-09-30', '2017-10-07', '2017-10-14', '2017-11-04', '2017-11-11', '2017-11-18', '2017-11-25', '2017-12-02', '2017-12-09', '2017-12-16'),
(48, 'D', 'C303', 40, 40, 'Wednesday', '13:00:00', '15:00:00', 67, 8, '2017-08-30', '2017-09-06', '2017-09-13', '2017-09-20', '2017-09-27', '2017-10-04', '2017-10-11', '2017-11-01', '2017-11-08', '2017-11-15', '2017-11-22', '2017-11-29', '2017-12-06', '2017-12-13'),
(49, 'DL', 'C706', 40, 40, 'Wednesday', '15:00:00', '17:00:00', 67, NULL, '2017-08-30', '2017-09-06', '2017-09-13', '2017-09-20', '2017-09-27', '2017-10-04', '2017-10-11', '2017-11-01', '2017-11-08', '2017-11-15', '2017-11-22', '2017-11-29', '2017-12-06', '2017-12-13'),
(50, 'A', 'C309', 40, 40, 'Thursday', '15:00:00', '17:00:00', 68, 3, '2017-08-31', '2017-08-07', '2017-09-14', '2017-09-21', '2017-09-28', '2017-10-05', '2017-10-12', '2017-11-02', '2017-11-09', '2017-11-16', '2017-11-23', '2017-11-30', '2017-12-07', '2017-12-14'),
(51, 'AL', 'B511', 40, 40, 'Friday', '08:00:00', '10:00:00', 68, NULL, '2017-09-08', '2017-09-14', '2017-09-15', '2017-09-22', '2017-09-29', '2017-10-06', '2017-10-13', '2017-11-03', '2017-11-06', '2017-11-17', '2017-11-24', '2017-11-30', '2017-12-08', '2017-12-15'),
(52, 'B', 'B305', 40, 40, 'Friday', '08:00:00', '10:00:00', 68, 2, '2017-09-08', '2017-09-14', '2017-09-15', '2017-09-22', '2017-09-29', '2017-10-06', '2017-10-13', '2017-11-03', '2017-11-06', '2017-11-17', '2017-11-24', '2017-11-30', '2017-12-08', '2017-12-15'),
(53, 'BL', 'B501', 40, 40, 'Friday', '10:00:00', '12:00:00', 68, NULL, '2017-09-08', '2017-09-14', '2017-09-15', '2017-09-22', '2017-09-29', '2017-10-06', '2017-10-13', '2017-11-03', '2017-11-06', '2017-11-17', '2017-11-24', '2017-11-30', '2017-12-08', '2017-12-15'),
(54, 'C', 'B303', 40, 40, 'Tuesday', '13:00:00', '15:00:00', 68, 3, '2017-08-29', '2017-09-05', '2017-09-12', '2017-09-19', '2017-09-26', '2017-10-03', '2017-10-10', '2017-10-31', '2017-11-07', '2017-11-14', '2017-11-21', '2017-11-28', '2017-12-05', '2017-12-12'),
(55, 'CL', 'B501', 40, 40, 'Tuesday', '15:00:00', '17:00:00', 68, NULL, '2017-08-29', '2017-09-05', '2017-09-12', '2017-09-19', '2017-09-26', '2017-10-03', '2017-10-10', '2017-10-31', '2017-11-07', '2017-11-14', '2017-11-21', '2017-11-28', '2017-12-05', '2017-12-12'),
(56, 'A', 'B511', 40, 40, 'Tuesday', '08:00:00', '09:00:00', 96, 25, '2017-08-29', '2017-09-05', '2017-09-12', '2017-09-19', '2017-09-26', '2017-10-03', '2017-10-10', '2017-10-31', '2017-11-07', '2017-11-14', '2017-11-21', '2017-11-28', '2017-12-05', '2017-12-12'),
(57, 'AL', 'B511', 40, 40, 'Tuesday', '09:00:00', '13:00:00', 96, NULL, '2017-08-29', '2017-09-05', '2017-09-12', '2017-09-19', '2017-09-26', '2017-10-03', '2017-10-10', '2017-10-31', '2017-11-07', '2017-11-14', '2017-11-21', '2017-11-28', '2017-12-05', '2017-12-12'),
(58, 'B', 'B511', 40, 40, 'Saturday', '08:00:00', '09:00:00', 96, 26, '2017-09-02', '2017-09-09', '2017-09-16', '2017-09-23', '2017-09-30', '2017-10-07', '2017-10-14', '2017-11-04', '2017-11-11', '2017-11-18', '2017-11-25', '2017-12-02', '2017-12-09', '2017-12-16'),
(59, 'BL', 'B511', 40, 40, 'Saturday', '09:00:00', '13:00:00', 96, NULL, '2017-09-02', '2017-09-09', '2017-09-16', '2017-09-23', '2017-09-30', '2017-10-07', '2017-10-14', '2017-11-04', '2017-11-11', '2017-11-18', '2017-11-25', '2017-12-02', '2017-12-09', '2017-12-16'),
(60, 'C', 'C304', 40, 40, 'Friday', '14:00:00', '17:00:00', 66, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'A', 'C507', 40, 40, 'Wednesday', '10:00:00', '12:00:00', 71, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'AL', 'C706', 40, 40, 'Wednesday', '13:00:00', '15:00:00', 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'A', 'B306', 40, 40, 'Tuesday', '10:00:00', '12:00:00', 72, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'AL', 'B501', 40, 40, 'Tuesday', '12:00:00', '14:00:00', 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'B', 'B306', 40, 40, 'Tuesday', '13:00:00', '15:00:00', 72, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'BL', 'B511', 40, 40, 'Tuesday', '15:00:00', '17:00:00', 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'A', 'B303', 40, 40, 'Monday', '08:00:00', '11:00:00', 69, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'B', 'C305', 40, 40, 'Tuesday', '08:00:00', '11:00:00', 69, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'A', 'C303', 40, 40, 'Wednesday', '08:00:00', '11:00:00', 70, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'A', 'n/a', 200, 200, 'Saturday', '04:00:00', '05:00:00', 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'A', 'n/a', 200, 200, 'Saturday', '05:00:00', '06:00:00', 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'A', 'C1011', 40, 40, 'Wednesday', '08:00:00', '10:00:00', 77, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'AL', 'C706', 40, 40, 'Wednesday', '10:00:00', '12:00:00', 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'B', 'C309', 40, 40, 'Thursday', '08:00:00', '10:00:00', 77, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'BL', 'C706', 40, 40, 'Thursday', '10:00:00', '12:00:00', 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'C', 'B304', 40, 40, 'Thursday', '13:00:00', '15:00:00', 78, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'CL', 'B511', 40, 40, 'Thursday', '15:00:00', '17:00:00', 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'A', 'n/a', 200, 200, 'Saturday', '06:00:00', '07:00:00', 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'C', 'B311', 40, 40, 'Friday', '10:00:00', '12:00:00', 80, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'D', 'C811', 40, 40, 'Wednesday', '10:00:00', '12:00:00', 114, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'D', 'C812', 40, 40, 'Wednesday', '08:00:00', '10:00:00', 116, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'D', 'B604', 40, 40, 'Monday', '13:00:00', '15:00:00', 117, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'C', 'C909', 40, 40, 'Tuesday', '08:00:00', '10:00:00', 119, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'B', 'C1012', 40, 40, 'Monday', '08:00:00', '10:00:00', 115, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'T', 'B313', 40, 40, 'Monday', '15:00:00', '17:00:00', 118, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'N', 'B504', 40, 40, 'Monday', '08:00:00', '10:00:00', 120, 39, '2017-08-28', '2017-09-04', '2017-09-11', '2017-09-25', '2017-10-02', '2017-10-02', '2017-10-09', '2017-11-06', '2017-11-13', '2017-11-16', '2017-11-20', '2017-11-27', '2017-12-04', '2017-12-11'),
(87, 'A', 'B515', 40, 40, 'Monday', '13:00:00', '14:00:00', 121, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'AL', 'B515', 40, 40, 'Monday', '14:00:00', '18:00:00', 121, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'A', 'C702', 40, 40, 'Wednesday', '08:00:00', '09:00:00', 122, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'AL', 'C702', 40, 40, 'Wednesday', '09:00:00', '13:00:00', 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `krsID` int(11) NOT NULL,
  `term` varchar(30) DEFAULT NULL,
  `numberEntrances` int(11) DEFAULT '0',
  `week1` date DEFAULT NULL,
  `week2` date DEFAULT NULL,
  `week3` date DEFAULT NULL,
  `week4` date DEFAULT NULL,
  `week5` date DEFAULT NULL,
  `week6` date DEFAULT NULL,
  `week7` date DEFAULT NULL,
  `week8` date DEFAULT NULL,
  `week9` date DEFAULT NULL,
  `week10` date DEFAULT NULL,
  `week11` date DEFAULT NULL,
  `week12` date DEFAULT NULL,
  `week13` date DEFAULT NULL,
  `week14` date DEFAULT NULL,
  `userID` int(11) NOT NULL,
  `kelasID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`krsID`, `term`, `numberEntrances`, `week1`, `week2`, `week3`, `week4`, `week5`, `week6`, `week7`, `week8`, `week9`, `week10`, `week11`, `week12`, `week13`, `week14`, `userID`, `kelasID`) VALUES
(1, 'SGL1718', 11, '2017-08-30', '2017-09-06', '2017-09-13', '2017-09-20', '2017-09-27', '2017-10-04', NULL, '2017-11-01', '2017-11-08', '2017-11-15', '2017-11-22', '2017-11-29', NULL, NULL, 28, 42),
(2, 'SGL1718', 11, '2017-08-30', '2017-09-06', '2017-09-13', '2017-09-20', '2017-09-27', '2017-10-04', '2017-10-14', NULL, '2017-11-15', '2017-11-18', '2017-11-22', '2017-11-29', NULL, NULL, 28, 48),
(3, 'SGL1718', 11, '2017-08-30', '2017-09-06', '2017-09-13', '2017-09-20', '2017-09-27', '2017-10-04', '2017-10-11', NULL, '2017-11-08', '2017-11-15', '2017-11-22', '2017-11-29', NULL, NULL, 28, 49),
(4, 'SGL1718', 12, '2017-09-08', '2017-09-14', '2017-09-15', '2017-09-22', '2017-09-29', '2017-10-06', '2017-10-13', '2017-11-03', '2017-11-06', '2017-11-17', '2017-11-24', '2017-11-30', NULL, NULL, 28, 52),
(5, 'SGL1718', 10, '2017-09-08', '2017-09-14', '2017-09-15', '2017-09-22', '2017-09-29', '2017-10-06', '2017-10-13', NULL, NULL, '2017-11-17', '2017-11-24', '2017-11-30', NULL, NULL, 28, 53),
(6, 'SGL1718', 11, '2017-08-28', '2017-09-04', '2017-09-11', '2017-09-18', '2017-09-25', '2017-10-02', '2017-10-09', NULL, '2017-11-06', '2017-11-13', '2017-11-20', '2017-11-27', NULL, NULL, 28, 36),
(7, 'SGL1718', 10, '2017-08-29', '2017-09-05', '2017-09-12', '2017-09-19', '2017-09-26', '2017-10-03', NULL, NULL, '2017-11-07', '2017-11-14', '2017-11-21', '2017-11-28', NULL, NULL, 28, 39),
(8, 'SGL1718', 11, '2017-09-02', '2017-09-09', '2017-09-16', '2017-09-23', '2017-09-30', '2017-10-07', '2017-10-14', '2017-11-04', NULL, '2017-11-18', '2017-11-25', '2017-12-02', NULL, NULL, 28, 58),
(9, 'SGL1718', 11, '2017-09-02', '2017-09-09', '2017-09-16', '2017-09-23', '2017-09-30', '2017-10-07', '2017-10-14', '2017-11-04', NULL, '2017-11-18', '2017-11-25', '2017-12-02', NULL, NULL, 28, 59),
(10, 'SGL1718', 12, '2017-08-28', '2017-09-04', '2017-09-11', '2017-09-25', '2017-10-02', '2017-10-02', '2017-10-09', '2017-11-06', '2017-11-13', '2017-11-16', '2017-11-20', '2017-11-27', NULL, NULL, 28, 86),
(11, 'SGL1718', 12, '2017-08-30', '2017-09-06', '2017-09-13', '2017-09-20', '2017-09-27', '2017-10-04', '2017-10-11', '2017-11-01', '2017-11-08', '2017-11-15', '2017-11-22', '2017-11-29', NULL, NULL, 29, 42),
(12, 'SGL1718', 12, '2017-08-30', '2017-09-06', '2017-09-13', '2017-09-20', '2017-09-27', '2017-10-04', '2017-10-14', '2017-11-01', '2017-11-15', '2017-11-18', '2017-11-22', '2017-11-29', NULL, NULL, 29, 48),
(13, 'SGL1718', 12, '2017-08-30', '2017-09-06', '2017-09-13', '2017-09-20', '2017-09-27', '2017-10-04', '2017-10-11', '2017-11-01', '2017-11-08', '2017-11-15', '2017-11-22', '2017-11-29', NULL, NULL, 29, 49),
(14, 'SGL1718', 12, '2017-09-08', '2017-09-14', '2017-09-15', '2017-09-22', '2017-09-29', '2017-10-06', '2017-10-13', '2017-11-03', '2017-11-06', '2017-11-17', '2017-11-24', '2017-11-30', NULL, NULL, 29, 52),
(15, 'SGL1718', 11, '2017-09-08', '2017-09-14', '2017-09-15', '2017-09-22', '2017-09-29', '2017-10-06', '2017-10-13', NULL, '2017-11-10', '2017-11-17', '2017-11-24', '2017-11-30', NULL, NULL, 29, 53),
(16, 'SGL1718', 12, '2017-08-28', '2017-09-04', '2017-09-11', '2017-09-18', '2017-09-25', '2017-10-02', '2017-10-09', '2017-10-30', '2017-11-06', '2017-11-13', '2017-11-20', '2017-11-27', NULL, NULL, 29, 36),
(17, 'SGL1718', 12, '2017-08-29', '2017-09-05', '2017-09-12', '2017-09-19', '2017-09-26', '2017-10-03', '2017-10-10', '2017-10-31', '2017-11-07', '2017-11-14', '2017-11-21', '2017-11-28', NULL, NULL, 29, 39),
(18, 'SGL1718', 11, '2017-09-02', '2017-09-09', '2017-09-16', '2017-09-23', '2017-09-30', '2017-10-07', '2017-10-14', '2017-11-04', '2017-11-11', '2017-11-18', '2017-11-25', NULL, NULL, NULL, 29, 58),
(19, 'SGL1718', 11, '2017-09-02', '2017-09-09', '2017-09-16', '2017-09-23', '2017-09-30', '2017-10-07', '2017-10-14', '2017-11-04', '2017-11-11', '2017-11-18', '2017-11-25', NULL, NULL, NULL, 29, 59),
(20, 'SGL1718', 12, '2017-08-28', '2017-09-04', '2017-09-11', '2017-09-25', '2017-10-02', '2017-10-02', '2017-10-09', '2017-11-06', '2017-11-13', '2017-11-16', '2017-11-20', '2017-11-27', NULL, NULL, 29, 86),
(21, 'SGL1718', 11, '2017-08-30', '2017-09-06', '2017-09-13', '2017-09-20', '2017-09-27', '2017-10-04', NULL, '2017-11-01', '2017-11-08', '2017-11-15', '2017-11-22', '2017-11-29', NULL, NULL, 30, 42),
(22, 'SGL1718', 11, '2017-08-30', '2017-09-06', '2017-09-13', '2017-09-20', '2017-09-27', '2017-10-04', '2017-10-14', NULL, '2017-11-15', '2017-11-18', '2017-11-22', '2017-11-29', NULL, NULL, 30, 48),
(23, 'SGL1718', 11, '2017-08-30', '2017-09-06', '2017-09-13', '2017-09-20', '2017-09-27', '2017-10-04', '2017-10-11', NULL, '2017-11-08', '2017-11-15', '2017-11-22', '2017-11-29', NULL, NULL, 30, 49),
(24, 'SGL1718', 12, '2017-09-08', '2017-09-14', '2017-09-15', '2017-09-22', '2017-09-29', '2017-10-06', '2017-10-13', '2017-11-03', '2017-11-06', '2017-11-17', '2017-11-24', '2017-11-30', NULL, NULL, 30, 52),
(25, 'SGL1718', 10, '2017-09-08', '2017-09-14', '2017-09-15', '2017-09-22', '2017-09-29', '2017-10-06', '2017-10-13', NULL, NULL, '2017-11-17', '2017-11-24', '2017-11-30', NULL, NULL, 30, 53),
(26, 'SGL1718', 11, '2017-08-28', '2017-09-04', '2017-09-11', '2017-09-18', '2017-09-25', '2017-10-02', '2017-10-09', NULL, '2017-11-06', '2017-11-13', '2017-11-20', '2017-11-27', NULL, NULL, 30, 36),
(27, 'SGL1718', 10, '2017-08-29', '2017-09-05', '2017-09-12', '2017-09-19', '2017-09-26', '2017-10-03', NULL, NULL, '2017-11-07', '2017-11-14', '2017-11-21', '2017-11-28', NULL, NULL, 30, 39),
(28, 'SGL1718', 11, '2017-09-02', '2017-09-09', '2017-09-16', '2017-09-23', '2017-09-30', '2017-10-07', '2017-10-14', '2017-11-04', NULL, '2017-11-18', '2017-11-25', '2017-12-02', NULL, NULL, 30, 58),
(29, 'SGL1718', 11, '2017-09-02', '2017-09-09', '2017-09-16', '2017-09-23', '2017-09-30', '2017-10-07', '2017-10-14', '2017-11-04', NULL, '2017-11-18', '2017-11-25', '2017-12-02', NULL, NULL, 30, 59),
(30, 'SGL1718', 12, '2017-08-28', '2017-09-04', '2017-09-11', '2017-09-25', '2017-10-02', '2017-10-02', '2017-10-09', '2017-11-06', '2017-11-13', '2017-11-16', '2017-11-20', '2017-11-27', NULL, NULL, 30, 86),
(31, 'SGL1718', 10, '2017-08-29', '2017-09-05', '2017-09-12', '2017-09-19', '2017-09-26', '2017-10-03', NULL, NULL, '2017-11-07', '2017-11-14', '2017-11-21', '2017-11-28', NULL, NULL, 31, 41),
(32, 'SGL1718', 11, '2017-08-30', '2017-09-06', '2017-09-13', '2017-09-20', '2017-09-27', '2017-10-04', '2017-10-14', NULL, '2017-11-15', '2017-11-18', '2017-11-22', '2017-11-29', NULL, NULL, 31, 48),
(33, 'SGL1718', 11, '2017-08-30', '2017-09-06', '2017-09-13', '2017-09-20', '2017-09-27', '2017-10-04', '2017-10-11', NULL, '2017-11-08', '2017-11-15', '2017-11-22', '2017-11-29', NULL, NULL, 31, 49),
(34, 'SGL1718', 12, '2017-09-08', '2017-09-14', '2017-09-15', '2017-09-22', '2017-09-29', '2017-10-06', '2017-10-13', '2017-11-03', '2017-11-06', '2017-11-17', '2017-11-24', '2017-11-30', NULL, NULL, 31, 52),
(35, 'SGL1718', 10, '2017-09-08', '2017-09-14', '2017-09-15', '2017-09-22', '2017-09-29', '2017-10-06', '2017-10-13', NULL, NULL, '2017-11-17', '2017-11-24', '2017-11-30', NULL, NULL, 31, 53),
(36, 'SGL1718', 10, '2017-08-29', '2017-09-05', '2017-09-12', '2017-09-19', '2017-09-26', '2017-10-03', NULL, NULL, '2017-11-07', '2017-11-14', '2017-11-21', '2017-11-28', NULL, NULL, 31, 35),
(37, 'SGL1718', 12, '2017-09-08', '2017-09-14', '2017-09-15', '2017-09-22', '2017-09-29', '2017-10-06', '2017-10-13', '2017-11-03', '2017-11-06', '2017-11-17', '2017-11-24', '2017-11-30', NULL, NULL, 31, 38),
(38, 'SGL1718', 11, '2017-08-30', '2017-09-06', '2017-09-13', '2017-09-20', '2017-09-27', '2017-10-04', '2017-10-11', NULL, '2017-11-08', '2017-11-15', '2017-11-22', '2017-11-29', NULL, NULL, 31, 89),
(39, 'SGL1718', 11, '2017-08-30', '2017-09-06', '2017-09-13', '2017-09-20', '2017-09-27', '2017-10-04', '2017-10-11', NULL, '2017-11-08', '2017-11-15', '2017-11-22', '2017-11-29', NULL, NULL, 31, 90),
(40, 'SGL1718', 12, '2017-08-28', '2017-09-04', '2017-09-11', '2017-09-25', '2017-10-02', '2017-10-02', '2017-10-09', '2017-11-06', '2017-11-13', '2017-11-16', '2017-11-20', '2017-11-27', NULL, NULL, 31, 86),
(41, 'SGL1718', 11, '2017-08-30', '2017-09-06', '2017-09-13', '2017-09-20', '2017-09-27', '2017-10-04', NULL, '2017-11-01', '2017-11-08', '2017-11-15', '2017-11-22', '2017-11-29', NULL, NULL, 32, 42),
(42, 'SGL1718', 11, '2017-08-30', '2017-09-06', '2017-09-13', '2017-09-20', '2017-09-27', '2017-10-04', '2017-10-14', NULL, '2017-11-15', '2017-11-18', '2017-11-22', '2017-11-29', NULL, NULL, 32, 48),
(43, 'SGL1718', 11, '2017-08-30', '2017-09-06', '2017-09-13', '2017-09-20', '2017-09-27', '2017-10-04', '2017-10-11', NULL, '2017-11-08', '2017-11-15', '2017-11-22', '2017-11-29', NULL, NULL, 32, 49),
(44, 'SGL1718', 12, '2017-09-08', '2017-09-14', '2017-09-15', '2017-09-22', '2017-09-29', '2017-10-06', '2017-10-13', '2017-11-03', '2017-11-06', '2017-11-17', '2017-11-24', '2017-11-30', NULL, NULL, 32, 52),
(45, 'SGL1718', 10, '2017-09-08', '2017-09-14', '2017-09-15', '2017-09-22', '2017-09-29', '2017-10-06', '2017-10-13', NULL, NULL, '2017-11-17', '2017-11-24', '2017-11-30', NULL, NULL, 32, 53),
(46, 'SGL1718', 10, '2017-08-29', '2017-09-05', '2017-09-12', '2017-09-19', '2017-09-26', '2017-10-03', NULL, NULL, '2017-11-07', '2017-11-14', '2017-11-21', '2017-11-28', NULL, NULL, 32, 35),
(47, 'SGL1718', 12, '2017-09-08', '2017-09-14', '2017-09-15', '2017-09-22', '2017-09-29', '2017-10-06', '2017-10-13', '2017-11-03', '2017-11-06', '2017-11-17', '2017-11-24', '2017-11-30', NULL, NULL, 32, 38),
(48, 'SGL1718', 12, '2017-08-28', '2017-09-04', '2017-09-11', '2017-09-18', '2017-09-25', '2017-10-02', '2017-10-09', '2017-10-30', '2017-11-06', '2017-11-13', '2017-11-20', '2017-11-27', NULL, NULL, 32, 87),
(49, 'SGL1718', 12, '2017-08-28', '2017-09-04', '2017-09-11', '2017-09-18', '2017-09-25', '2017-10-02', '2017-10-09', '2017-10-30', '2017-11-06', '2017-11-13', '2017-11-20', '2017-11-27', NULL, NULL, 32, 88),
(50, 'SGL1718', 12, '2017-08-28', '2017-09-04', '2017-09-11', '2017-09-25', '2017-10-02', '2017-10-02', '2017-10-09', '2017-11-06', '2017-11-13', '2017-11-16', '2017-11-20', '2017-11-27', NULL, NULL, 32, 86),
(51, 'SGP1617', 12, '2017-02-10', '2017-02-17', '2017-02-24', '2017-03-03', '2017-03-10', '2017-03-17', '2017-03-21', '2017-04-21', '2017-04-24', '2017-04-28', '2017-05-05', '2017-05-12', '2017-05-19', '2017-05-26', 28, 27),
(52, 'SGP1617', 12, '2017-02-10', '2017-02-17', '2017-02-24', '2017-03-03', '2017-03-10', '2017-03-17', '2017-03-24', '2017-04-21', '2017-04-22', '2017-04-28', '2017-05-05', '2017-05-12', '2017-05-19', '2017-05-26', 28, 28),
(53, 'SGP1617', 12, '2017-02-07', '2017-02-14', '2017-02-21', '2017-02-28', '2017-03-07', '2017-03-14', '2017-03-21', '2017-04-11', '2017-04-18', '2017-04-25', '2017-05-02', '2017-05-09', '2017-05-22', '2017-05-23', 28, 29),
(54, 'SGP1617', 12, '2017-02-08', '2017-02-09', '2017-02-22', '2017-03-01', '2017-03-08', '2017-03-15', '2017-03-22', '2017-04-12', '2017-04-19', '2017-04-27', '2017-05-03', '2017-05-10', '2017-05-17', '2017-05-24', 28, 31),
(55, 'SGP1617', 12, '2017-02-09', '2017-02-16', '2017-02-23', '2017-03-02', '2017-03-09', '2017-03-16', '2017-03-23', '2017-04-13', '2017-04-20', '2017-04-27', '2017-05-04', '2017-05-10', '2017-05-18', '2017-05-24', 28, 32),
(56, 'SGP1617', 12, '2017-02-11', '2017-02-18', '2017-02-25', '2017-03-04', '2017-03-11', '2017-03-18', '2017-03-25', '2017-04-15', '2017-04-22', '2017-04-29', '2017-05-06', '2017-05-13', '2017-05-20', '2017-05-27', 28, 33),
(57, 'SGP1617', 12, '2017-02-08', '2017-02-13', '2017-02-22', '2017-03-01', '2017-03-08', '2017-03-15', '2017-03-22', '2017-04-12', '2017-04-19', '2017-04-26', '2017-05-03', '2017-05-10', '2017-05-17', '2017-05-24', 28, 25),
(58, 'SGP1617', 12, '2017-02-08', '2017-02-18', '2017-02-22', '2017-03-01', '2017-03-08', '2017-03-15', '2017-03-22', '2017-04-12', '2017-04-22', '2017-04-26', '2017-05-03', '2017-05-10', '2017-05-17', '2017-05-24', 28, 26),
(59, 'SGP1617', 12, '2017-02-08', '2017-02-18', '2017-02-22', '2017-03-01', '2017-03-08', '2017-03-15', '2017-03-21', '2017-04-12', '2017-04-19', '2017-04-26', '2017-05-03', '2017-05-10', '2017-05-17', '2017-05-24', 28, 30),
(60, 'SGP1617', 12, '2017-02-07', '2017-02-14', '2017-02-21', '2017-02-28', '2017-03-07', '2017-03-14', '2017-03-21', '2017-04-11', '2017-04-18', '2017-04-25', '2017-05-02', '2017-05-09', '2017-05-22', '2017-05-23', 28, 24),
(61, 'SGP1617', 12, '2017-02-06', '2017-02-13', '2017-02-20', '2017-02-27', '2017-03-06', '2017-03-13', '2017-03-20', '2017-04-10', '2017-04-17', '2017-04-20', '2017-04-27', '2017-05-08', '2017-05-15', '2017-05-22', 28, 85),
(62, 'SGP1617', 12, '2017-02-10', '2017-02-17', '2017-02-24', '2017-03-03', '2017-03-10', '2017-03-17', '2017-03-21', '2017-04-21', '2017-04-24', '2017-04-28', '2017-05-05', '2017-05-12', '2017-05-19', '2017-05-26', 29, 27),
(63, 'SGP1617', 12, '2017-02-10', '2017-02-17', '2017-02-24', '2017-03-03', '2017-03-10', '2017-03-17', '2017-03-24', '2017-04-21', '2017-04-22', '2017-04-28', '2017-05-05', '2017-05-12', '2017-05-19', '2017-05-26', 29, 28),
(64, 'SGP1617', 12, '2017-02-07', '2017-02-14', '2017-02-21', '2017-02-28', '2017-03-07', '2017-03-14', '2017-03-21', '2017-04-11', '2017-04-18', '2017-04-25', '2017-05-02', '2017-05-09', '2017-05-22', '2017-05-23', 29, 29),
(65, 'SGP1617', 12, '2017-02-08', '2017-02-09', '2017-02-22', '2017-03-01', '2017-03-08', '2017-03-15', '2017-03-22', '2017-04-12', '2017-04-19', '2017-04-27', '2017-05-03', '2017-05-10', '2017-05-17', '2017-05-24', 29, 31),
(66, 'SGP1617', 12, '2017-02-09', '2017-02-16', '2017-02-23', '2017-03-02', '2017-03-09', '2017-03-16', '2017-03-23', '2017-04-13', '2017-04-20', '2017-04-27', '2017-05-04', '2017-05-10', '2017-05-18', '2017-05-24', 29, 32),
(67, 'SGP1617', 12, '2017-02-11', '2017-02-18', '2017-02-25', '2017-03-04', '2017-03-11', '2017-03-18', '2017-03-25', '2017-04-15', '2017-04-22', '2017-04-29', '2017-05-06', '2017-05-13', '2017-05-20', '2017-05-27', 29, 33),
(68, 'SGP1617', 12, '2017-02-08', '2017-02-13', '2017-02-22', '2017-03-01', '2017-03-08', '2017-03-15', '2017-03-22', '2017-04-12', '2017-04-19', '2017-04-26', '2017-05-03', '2017-05-10', '2017-05-17', '2017-05-24', 29, 25),
(69, 'SGP1617', 12, '2017-02-08', '2017-02-18', '2017-02-22', '2017-03-01', '2017-03-08', '2017-03-15', '2017-03-22', '2017-04-12', '2017-04-22', '2017-04-26', '2017-05-03', '2017-05-10', '2017-05-17', '2017-05-24', 29, 26),
(70, 'SGP1617', 12, '2017-02-08', '2017-02-18', '2017-02-22', '2017-03-01', '2017-03-08', '2017-03-15', '2017-03-21', '2017-04-12', '2017-04-19', '2017-04-26', '2017-05-03', '2017-05-10', '2017-05-17', '2017-05-24', 29, 30),
(71, 'SGP1617', 12, '2017-02-07', '2017-02-14', '2017-02-21', '2017-02-28', '2017-03-07', '2017-03-14', '2017-03-21', '2017-04-11', '2017-04-18', '2017-04-25', '2017-05-02', '2017-05-09', '2017-05-22', '2017-05-23', 29, 24),
(72, 'SGP1617', 12, '2017-02-06', '2017-02-13', '2017-02-20', '2017-02-27', '2017-03-06', '2017-03-13', '2017-03-20', '2017-04-10', '2017-04-17', '2017-04-20', '2017-04-27', '2017-05-08', '2017-05-15', '2017-05-22', 29, 85),
(73, 'SGP1617', 12, '2017-02-10', '2017-02-17', '2017-02-24', '2017-03-03', '2017-03-10', '2017-03-17', '2017-03-21', '2017-04-21', '2017-04-24', '2017-04-28', '2017-05-05', '2017-05-12', '2017-05-19', '2017-05-26', 30, 27),
(74, 'SGP1617', 12, '2017-02-10', '2017-02-17', '2017-02-24', '2017-03-03', '2017-03-10', '2017-03-17', '2017-03-24', '2017-04-21', '2017-04-22', '2017-04-28', '2017-05-05', '2017-05-12', '2017-05-19', '2017-05-26', 30, 28),
(75, 'SGP1617', 12, '2017-02-07', '2017-02-14', '2017-02-21', '2017-02-28', '2017-03-07', '2017-03-14', '2017-03-21', '2017-04-11', '2017-04-18', '2017-04-25', '2017-05-02', '2017-05-09', '2017-05-22', '2017-05-23', 30, 29),
(76, 'SGP1617', 12, '2017-02-08', '2017-02-09', '2017-02-22', '2017-03-01', '2017-03-08', '2017-03-15', '2017-03-22', '2017-04-12', '2017-04-19', '2017-04-27', '2017-05-03', '2017-05-10', '2017-05-17', '2017-05-24', 30, 31),
(77, 'SGP1617', 12, '2017-02-09', '2017-02-16', '2017-02-23', '2017-03-02', '2017-03-09', '2017-03-16', '2017-03-23', '2017-04-13', '2017-04-20', '2017-04-27', '2017-05-04', '2017-05-10', '2017-05-18', '2017-05-24', 30, 32),
(78, 'SGP1617', 12, '2017-02-11', '2017-02-18', '2017-02-25', '2017-03-04', '2017-03-11', '2017-03-18', '2017-03-25', '2017-04-15', '2017-04-22', '2017-04-29', '2017-05-06', '2017-05-13', '2017-05-20', '2017-05-27', 30, 33),
(79, 'SGP1617', 12, '2017-02-08', '2017-02-13', '2017-02-22', '2017-03-01', '2017-03-08', '2017-03-15', '2017-03-22', '2017-04-12', '2017-04-19', '2017-04-26', '2017-05-03', '2017-05-10', '2017-05-17', '2017-05-24', 30, 25),
(80, 'SGP1617', 12, '2017-02-08', '2017-02-18', '2017-02-22', '2017-03-01', '2017-03-08', '2017-03-15', '2017-03-22', '2017-04-12', '2017-04-22', '2017-04-26', '2017-05-03', '2017-05-10', '2017-05-17', '2017-05-24', 30, 26),
(81, 'SGP1617', 12, '2017-02-08', '2017-02-18', '2017-02-22', '2017-03-01', '2017-03-08', '2017-03-15', '2017-03-21', '2017-04-12', '2017-04-19', '2017-04-26', '2017-05-03', '2017-05-10', '2017-05-17', '2017-05-24', 30, 30),
(82, 'SGP1617', 12, '2017-02-07', '2017-02-14', '2017-02-21', '2017-02-28', '2017-03-07', '2017-03-14', '2017-03-21', '2017-04-11', '2017-04-18', '2017-04-25', '2017-05-02', '2017-05-09', '2017-05-22', '2017-05-23', 30, 24),
(83, 'SGP1617', 12, '2017-02-06', '2017-02-13', '2017-02-20', '2017-02-27', '2017-03-06', '2017-03-13', '2017-03-20', '2017-04-10', '2017-04-17', '2017-04-20', '2017-04-27', '2017-05-08', '2017-05-15', '2017-05-22', 30, 85),
(84, 'SGP1617', 12, '2017-02-10', '2017-02-17', '2017-02-24', '2017-03-03', '2017-03-10', '2017-03-17', '2017-03-21', '2017-04-21', '2017-04-24', '2017-04-28', '2017-05-05', '2017-05-12', '2017-05-19', '2017-05-26', 31, 27),
(85, 'SGP1617', 12, '2017-02-10', '2017-02-17', '2017-02-24', '2017-03-03', '2017-03-10', '2017-03-17', '2017-03-24', '2017-04-21', '2017-04-22', '2017-04-28', '2017-05-05', '2017-05-12', '2017-05-19', '2017-05-26', 31, 28),
(86, 'SGP1617', 12, '2017-02-07', '2017-02-14', '2017-02-21', '2017-02-28', '2017-03-07', '2017-03-14', '2017-03-21', '2017-04-11', '2017-04-18', '2017-04-25', '2017-05-02', '2017-05-09', '2017-05-22', '2017-05-23', 31, 29),
(87, 'SGP1617', 12, '2017-02-08', '2017-02-09', '2017-02-22', '2017-03-01', '2017-03-08', '2017-03-15', '2017-03-22', '2017-04-12', '2017-04-19', '2017-04-27', '2017-05-03', '2017-05-10', '2017-05-17', '2017-05-24', 31, 31),
(88, 'SGP1617', 12, '2017-02-09', '2017-02-16', '2017-02-23', '2017-03-02', '2017-03-09', '2017-03-16', '2017-03-23', '2017-04-13', '2017-04-20', '2017-04-27', '2017-05-04', '2017-05-10', '2017-05-18', '2017-05-24', 31, 32),
(89, 'SGP1617', 12, '2017-02-11', '2017-02-18', '2017-02-25', '2017-03-04', '2017-03-11', '2017-03-18', '2017-03-25', '2017-04-15', '2017-04-22', '2017-04-29', '2017-05-06', '2017-05-13', '2017-05-20', '2017-05-27', 31, 33),
(90, 'SGP1617', 12, '2017-02-08', '2017-02-13', '2017-02-22', '2017-03-01', '2017-03-08', '2017-03-15', '2017-03-22', '2017-04-12', '2017-04-19', '2017-04-26', '2017-05-03', '2017-05-10', '2017-05-17', '2017-05-24', 31, 25),
(91, 'SGP1617', 12, '2017-02-08', '2017-02-18', '2017-02-22', '2017-03-01', '2017-03-08', '2017-03-15', '2017-03-22', '2017-04-12', '2017-04-22', '2017-04-26', '2017-05-03', '2017-05-10', '2017-05-17', '2017-05-24', 31, 26),
(92, 'SGP1617', 12, '2017-02-08', '2017-02-18', '2017-02-22', '2017-03-01', '2017-03-08', '2017-03-15', '2017-03-21', '2017-04-12', '2017-04-19', '2017-04-26', '2017-05-03', '2017-05-10', '2017-05-17', '2017-05-24', 31, 30),
(93, 'SGP1617', 12, '2017-02-07', '2017-02-14', '2017-02-21', '2017-02-28', '2017-03-07', '2017-03-14', '2017-03-21', '2017-04-11', '2017-04-18', '2017-04-25', '2017-05-02', '2017-05-09', '2017-05-22', '2017-05-23', 31, 24),
(94, 'SGP1617', 12, '2017-02-06', '2017-02-13', '2017-02-20', '2017-02-27', '2017-03-06', '2017-03-13', '2017-03-20', '2017-04-10', '2017-04-17', '2017-04-20', '2017-04-27', '2017-05-08', '2017-05-15', '2017-05-22', 31, 85),
(95, 'SGP1617', 12, '2017-02-10', '2017-02-17', '2017-02-24', '2017-03-03', '2017-03-10', '2017-03-17', '2017-03-21', '2017-04-21', '2017-04-24', '2017-04-28', '2017-05-05', '2017-05-12', '2017-05-19', '2017-05-26', 32, 27),
(96, 'SGP1617', 12, '2017-02-10', '2017-02-17', '2017-02-24', '2017-03-03', '2017-03-10', '2017-03-17', '2017-03-24', '2017-04-21', '2017-04-22', '2017-04-28', '2017-05-05', '2017-05-12', '2017-05-19', '2017-05-26', 32, 28),
(97, 'SGP1617', 12, '2017-02-07', '2017-02-14', '2017-02-21', '2017-02-28', '2017-03-07', '2017-03-14', '2017-03-21', '2017-04-11', '2017-04-18', '2017-04-25', '2017-05-02', '2017-05-09', '2017-05-22', '2017-05-23', 32, 29),
(98, 'SGP1617', 12, '2017-02-08', '2017-02-09', '2017-02-22', '2017-03-01', '2017-03-08', '2017-03-15', '2017-03-22', '2017-04-12', '2017-04-19', '2017-04-27', '2017-05-03', '2017-05-10', '2017-05-17', '2017-05-24', 32, 31),
(99, 'SGP1617', 12, '2017-02-09', '2017-02-16', '2017-02-23', '2017-03-02', '2017-03-09', '2017-03-16', '2017-03-23', '2017-04-13', '2017-04-20', '2017-04-27', '2017-05-04', '2017-05-10', '2017-05-18', '2017-05-24', 32, 32),
(100, 'SGP1617', 12, '2017-02-11', '2017-02-18', '2017-02-25', '2017-03-04', '2017-03-11', '2017-03-18', '2017-03-25', '2017-04-15', '2017-04-22', '2017-04-29', '2017-05-06', '2017-05-13', '2017-05-20', '2017-05-27', 32, 33),
(101, 'SGP1617', 12, '2017-02-08', '2017-02-13', '2017-02-22', '2017-03-01', '2017-03-08', '2017-03-15', '2017-03-22', '2017-04-12', '2017-04-19', '2017-04-26', '2017-05-03', '2017-05-10', '2017-05-17', '2017-05-24', 32, 25),
(102, 'SGP1617', 12, '2017-02-08', '2017-02-18', '2017-02-22', '2017-03-01', '2017-03-08', '2017-03-15', '2017-03-22', '2017-04-12', '2017-04-22', '2017-04-26', '2017-05-03', '2017-05-10', '2017-05-17', '2017-05-24', 32, 26),
(103, 'SGP1617', 12, '2017-02-08', '2017-02-18', '2017-02-22', '2017-03-01', '2017-03-08', '2017-03-15', '2017-03-21', '2017-04-12', '2017-04-19', '2017-04-26', '2017-05-03', '2017-05-10', '2017-05-17', '2017-05-24', 32, 30),
(104, 'SGP1617', 12, '2017-02-07', '2017-02-14', '2017-02-21', '2017-02-28', '2017-03-07', '2017-03-14', '2017-03-21', '2017-04-11', '2017-04-18', '2017-04-25', '2017-05-02', '2017-05-09', '2017-05-22', '2017-05-23', 32, 24),
(105, 'SGP1617', 12, '2017-02-06', '2017-02-13', '2017-02-20', '2017-02-27', '2017-03-06', '2017-03-13', '2017-03-20', '2017-04-10', '2017-04-17', '2017-04-20', '2017-04-27', '2017-05-08', '2017-05-15', '2017-05-22', 32, 85),
(106, 'SGL1617', 12, '2016-08-29', '2016-09-15', '2016-09-19', '2016-09-22', '2016-09-26', '2016-10-03', '2016-10-10', '2016-10-31', '2016-11-07', '2016-11-14', '2016-11-21', '2016-11-28', '2016-12-05', '2016-12-08', 28, 84),
(107, 'SGL1617', 12, '2016-08-29', '2016-09-05', '2016-09-13', '2016-09-19', '2016-09-26', '2016-10-03', '2016-10-10', '2016-10-31', '2016-11-07', '2016-11-14', '2016-11-21', '2016-11-28', '2016-11-29', '2016-12-05', 28, 13),
(108, 'SGL1617', 12, '2016-08-31', '2016-09-07', '2016-09-14', '2016-09-21', '2016-09-28', '2016-10-05', '2016-10-12', '2016-11-02', '2016-11-09', '2016-11-16', '2016-11-23', '2016-11-30', '2016-12-07', '2016-12-14', 28, 15),
(109, 'SGL1617', 12, '2016-08-31', '2016-09-07', '2016-09-14', '2016-09-21', '2016-09-28', '2016-10-05', '2016-10-12', '2016-11-02', '2016-11-09', '2016-11-16', '2016-11-23', '2016-11-30', '2016-12-07', '2016-12-14', 28, 16),
(110, 'SGL1617', 12, '2016-09-02', '2016-09-09', '2016-09-16', '2016-09-23', '2016-09-30', '2016-10-07', '2016-10-14', '2016-11-11', '2016-11-18', '2016-11-25', '2016-12-02', '2016-12-09', '2016-12-10', '2016-12-16', 28, 17),
(111, 'SGL1617', 12, '2016-09-02', '2016-09-09', '2016-09-16', '2016-09-23', '2016-09-30', '2016-10-07', '2016-10-14', '2016-11-11', '2016-11-18', '2016-11-25', '2016-12-02', '2016-12-09', '2016-12-10', '2016-12-16', 28, 18),
(112, 'SGL1617', 12, '2016-08-31', '2016-09-07', '2016-09-14', '2016-09-21', '2016-09-28', '2016-10-05', '2016-10-12', '2016-11-02', '2016-11-09', '2016-11-16', '2016-11-23', '2016-11-30', '2016-12-07', '2016-12-14', 28, 19),
(113, 'SGL1617', 12, '2016-08-31', '2016-09-07', '2016-09-14', '2016-09-21', '2016-09-28', '2016-10-05', '2016-10-12', '2016-11-02', '2016-11-09', '2016-11-16', '2016-11-23', '2016-11-30', '2016-12-07', '2016-12-14', 28, 20),
(114, 'SGL1617', 12, '2016-08-30', '2016-09-06', '2016-09-20', '2016-09-27', '2016-10-04', '2016-10-08', '2016-10-11', '2016-11-01', '2016-11-08', '2016-11-15', '2016-11-22', '2016-12-06', '2016-12-06', '2016-12-13', 28, 14),
(115, 'SGL1617', 12, '2016-08-29', '2016-09-10', '2016-09-17', '2016-09-19', '2016-09-26', '2016-10-08', '2016-10-10', '2016-10-31', '2016-11-12', '2016-11-14', '2016-11-21', '2016-11-28', '2016-12-10', '2016-12-19', 28, 23),
(116, 'SGL1617', 12, '2016-09-02', '2016-09-09', '2016-09-23', '2016-09-24', '2016-09-30', '2016-10-07', '2016-10-14', '2016-11-11', '2016-11-18', '2016-11-19', '2016-11-25', '2016-12-09', '2016-12-16', '2016-12-17', 28, 60),
(117, 'SGL1617', 12, '2016-08-29', '2016-09-15', '2016-09-19', '2016-09-22', '2016-09-26', '2016-10-03', '2016-10-10', '2016-10-31', '2016-11-07', '2016-11-14', '2016-11-21', '2016-11-28', '2016-12-05', '2016-12-08', 29, 84),
(118, 'SGL1617', 12, '2016-08-29', '2016-09-05', '2016-09-13', '2016-09-19', '2016-09-26', '2016-10-03', '2016-10-10', '2016-10-31', '2016-11-07', '2016-11-14', '2016-11-21', '2016-11-28', '2016-11-29', '2016-12-05', 29, 13),
(119, 'SGL1617', 12, '2016-08-31', '2016-09-07', '2016-09-14', '2016-09-21', '2016-09-28', '2016-10-05', '2016-10-12', '2016-11-02', '2016-11-09', '2016-11-16', '2016-11-23', '2016-11-30', '2016-12-07', '2016-12-14', 29, 15),
(120, 'SGL1617', 12, '2016-08-31', '2016-09-07', '2016-09-14', '2016-09-21', '2016-09-28', '2016-10-05', '2016-10-12', '2016-11-02', '2016-11-09', '2016-11-16', '2016-11-23', '2016-11-30', '2016-12-07', '2016-12-14', 29, 16),
(121, 'SGL1617', 12, '2016-09-02', '2016-09-09', '2016-09-16', '2016-09-23', '2016-09-30', '2016-10-07', '2016-10-14', '2016-11-11', '2016-11-18', '2016-11-25', '2016-12-02', '2016-12-09', '2016-12-10', '2016-12-16', 29, 17),
(122, 'SGL1617', 12, '2016-09-02', '2016-09-09', '2016-09-16', '2016-09-23', '2016-09-30', '2016-10-07', '2016-10-14', '2016-11-11', '2016-11-18', '2016-11-25', '2016-12-02', '2016-12-09', '2016-12-10', '2016-12-16', 29, 18),
(123, 'SGL1617', 12, '2016-08-31', '2016-09-07', '2016-09-14', '2016-09-21', '2016-09-28', '2016-10-05', '2016-10-12', '2016-11-02', '2016-11-09', '2016-11-16', '2016-11-23', '2016-11-30', '2016-12-07', '2016-12-14', 29, 19),
(124, 'SGL1617', 12, '2016-08-31', '2016-09-07', '2016-09-14', '2016-09-21', '2016-09-28', '2016-10-05', '2016-10-12', '2016-11-02', '2016-11-09', '2016-11-16', '2016-11-23', '2016-11-30', '2016-12-07', '2016-12-14', 29, 20),
(125, 'SGL1617', 12, '2016-08-30', '2016-09-06', '2016-09-20', '2016-09-27', '2016-10-04', '2016-10-08', '2016-10-11', '2016-11-01', '2016-11-08', '2016-11-15', '2016-11-22', '2016-12-06', '2016-12-06', '2016-12-13', 29, 14),
(126, 'SGL1617', 12, '2016-08-29', '2016-09-10', '2016-09-17', '2016-09-19', '2016-09-26', '2016-10-08', '2016-10-10', '2016-10-31', '2016-11-12', '2016-11-14', '2016-11-21', '2016-11-28', '2016-12-10', '2016-12-19', 29, 23),
(127, 'SGL1617', 12, '2016-09-02', '2016-09-09', '2016-09-23', '2016-09-24', '2016-09-30', '2016-10-07', '2016-10-14', '2016-11-11', '2016-11-18', '2016-11-19', '2016-11-25', '2016-12-09', '2016-12-16', '2016-12-17', 29, 60),
(128, 'SGL1617', 12, '2016-08-29', '2016-09-15', '2016-09-19', '2016-09-22', '2016-09-26', '2016-10-03', '2016-10-10', '2016-10-31', '2016-11-07', '2016-11-14', '2016-11-21', '2016-11-28', '2016-12-05', '2016-12-08', 30, 84),
(129, 'SGL1617', 12, '2016-08-29', '2016-09-05', '2016-09-13', '2016-09-19', '2016-09-26', '2016-10-03', '2016-10-10', '2016-10-31', '2016-11-07', '2016-11-14', '2016-11-21', '2016-11-28', '2016-11-29', '2016-12-05', 30, 13),
(130, 'SGL1617', 12, '2016-08-31', '2016-09-07', '2016-09-14', '2016-09-21', '2016-09-28', '2016-10-05', '2016-10-12', '2016-11-02', '2016-11-09', '2016-11-16', '2016-11-23', '2016-11-30', '2016-12-07', '2016-12-14', 30, 15),
(131, 'SGL1617', 12, '2016-08-31', '2016-09-07', '2016-09-14', '2016-09-21', '2016-09-28', '2016-10-05', '2016-10-12', '2016-11-02', '2016-11-09', '2016-11-16', '2016-11-23', '2016-11-30', '2016-12-07', '2016-12-14', 30, 16),
(132, 'SGL1617', 12, '2016-09-02', '2016-09-09', '2016-09-16', '2016-09-23', '2016-09-30', '2016-10-07', '2016-10-14', '2016-11-11', '2016-11-18', '2016-11-25', '2016-12-02', '2016-12-09', '2016-12-10', '2016-12-16', 30, 17),
(133, 'SGL1617', 12, '2016-09-02', '2016-09-09', '2016-09-16', '2016-09-23', '2016-09-30', '2016-10-07', '2016-10-14', '2016-11-11', '2016-11-18', '2016-11-25', '2016-12-02', '2016-12-09', '2016-12-10', '2016-12-16', 30, 18),
(134, 'SGL1617', 12, '2016-08-31', '2016-09-07', '2016-09-14', '2016-09-21', '2016-09-28', '2016-10-05', '2016-10-12', '2016-11-02', '2016-11-09', '2016-11-16', '2016-11-23', '2016-11-30', '2016-12-07', '2016-12-14', 30, 19),
(135, 'SGL1617', 12, '2016-08-31', '2016-09-07', '2016-09-14', '2016-09-21', '2016-09-28', '2016-10-05', '2016-10-12', '2016-11-02', '2016-11-09', '2016-11-16', '2016-11-23', '2016-11-30', '2016-12-07', '2016-12-14', 30, 20),
(136, 'SGL1617', 12, '2016-08-30', '2016-09-06', '2016-09-20', '2016-09-27', '2016-10-04', '2016-10-08', '2016-10-11', '2016-11-01', '2016-11-08', '2016-11-15', '2016-11-22', '2016-12-06', '2016-12-06', '2016-12-13', 30, 14),
(137, 'SGL1617', 12, '2016-08-29', '2016-09-10', '2016-09-17', '2016-09-19', '2016-09-26', '2016-10-08', '2016-10-10', '2016-10-31', '2016-11-12', '2016-11-14', '2016-11-21', '2016-11-28', '2016-12-10', '2016-12-19', 30, 23),
(138, 'SGL1617', 12, '2016-09-02', '2016-09-09', '2016-09-23', '2016-09-24', '2016-09-30', '2016-10-07', '2016-10-14', '2016-11-11', '2016-11-18', '2016-11-19', '2016-11-25', '2016-12-09', '2016-12-16', '2016-12-17', 30, 60),
(139, 'SGL1617', 12, '2016-08-29', '2016-09-15', '2016-09-19', '2016-09-22', '2016-09-26', '2016-10-03', '2016-10-10', '2016-10-31', '2016-11-07', '2016-11-14', '2016-11-21', '2016-11-28', '2016-12-05', '2016-12-08', 31, 84),
(140, 'SGL1617', 12, '2016-08-29', '2016-09-05', '2016-09-13', '2016-09-19', '2016-09-26', '2016-10-03', '2016-10-10', '2016-10-31', '2016-11-07', '2016-11-14', '2016-11-21', '2016-11-28', '2016-11-29', '2016-12-05', 31, 13),
(141, 'SGL1617', 12, '2016-08-31', '2016-09-07', '2016-09-14', '2016-09-21', '2016-09-28', '2016-10-05', '2016-10-12', '2016-11-02', '2016-11-09', '2016-11-16', '2016-11-23', '2016-11-30', '2016-12-07', '2016-12-14', 31, 15),
(142, 'SGL1617', 12, '2016-08-31', '2016-09-07', '2016-09-14', '2016-09-21', '2016-09-28', '2016-10-05', '2016-10-12', '2016-11-02', '2016-11-09', '2016-11-16', '2016-11-23', '2016-11-30', '2016-12-07', '2016-12-14', 31, 16),
(143, 'SGL1617', 12, '2016-09-02', '2016-09-09', '2016-09-16', '2016-09-23', '2016-09-30', '2016-10-07', '2016-10-14', '2016-11-11', '2016-11-18', '2016-11-25', '2016-12-02', '2016-12-09', '2016-12-10', '2016-12-16', 31, 17),
(144, 'SGL1617', 12, '2016-09-02', '2016-09-09', '2016-09-16', '2016-09-23', '2016-09-30', '2016-10-07', '2016-10-14', '2016-11-11', '2016-11-18', '2016-11-25', '2016-12-02', '2016-12-09', '2016-12-10', '2016-12-16', 31, 18),
(145, 'SGL1617', 12, '2016-08-31', '2016-09-07', '2016-09-14', '2016-09-21', '2016-09-28', '2016-10-05', '2016-10-12', '2016-11-02', '2016-11-09', '2016-11-16', '2016-11-23', '2016-11-30', '2016-12-07', '2016-12-14', 31, 19),
(146, 'SGL1617', 12, '2016-08-31', '2016-09-07', '2016-09-14', '2016-09-21', '2016-09-28', '2016-10-05', '2016-10-12', '2016-11-02', '2016-11-09', '2016-11-16', '2016-11-23', '2016-11-30', '2016-12-07', '2016-12-14', 31, 20),
(147, 'SGL1617', 12, '2016-08-30', '2016-09-06', '2016-09-20', '2016-09-27', '2016-10-04', '2016-10-08', '2016-10-11', '2016-11-01', '2016-11-08', '2016-11-15', '2016-11-22', '2016-12-06', '2016-12-06', '2016-12-13', 31, 14),
(148, 'SGL1617', 12, '2016-08-29', '2016-09-10', '2016-09-17', '2016-09-19', '2016-09-26', '2016-10-08', '2016-10-10', '2016-10-31', '2016-11-12', '2016-11-14', '2016-11-21', '2016-11-28', '2016-12-10', '2016-12-19', 31, 23),
(149, 'SGL1617', 12, '2016-09-02', '2016-09-09', '2016-09-23', '2016-09-24', '2016-09-30', '2016-10-07', '2016-10-14', '2016-11-11', '2016-11-18', '2016-11-19', '2016-11-25', '2016-12-09', '2016-12-16', '2016-12-17', 31, 60),
(150, 'SGL1617', 12, '2016-08-29', '2016-09-15', '2016-09-19', '2016-09-22', '2016-09-26', '2016-10-03', '2016-10-10', '2016-10-31', '2016-11-07', '2016-11-14', '2016-11-21', '2016-11-28', '2016-12-05', '2016-12-08', 32, 84),
(151, 'SGL1617', 12, '2016-08-29', '2016-09-05', '2016-09-13', '2016-09-19', '2016-09-26', '2016-10-03', '2016-10-10', '2016-10-31', '2016-11-07', '2016-11-14', '2016-11-21', '2016-11-28', '2016-11-29', '2016-12-05', 32, 13),
(152, 'SGL1617', 12, '2016-08-31', '2016-09-07', '2016-09-14', '2016-09-21', '2016-09-28', '2016-10-05', '2016-10-12', '2016-11-02', '2016-11-09', '2016-11-16', '2016-11-23', '2016-11-30', '2016-12-07', '2016-12-14', 32, 15),
(153, 'SGL1617', 12, '2016-08-31', '2016-09-07', '2016-09-14', '2016-09-21', '2016-09-28', '2016-10-05', '2016-10-12', '2016-11-02', '2016-11-09', '2016-11-16', '2016-11-23', '2016-11-30', '2016-12-07', '2016-12-14', 32, 16),
(154, 'SGL1617', 12, '2016-09-02', '2016-09-09', '2016-09-16', '2016-09-23', '2016-09-30', '2016-10-07', '2016-10-14', '2016-11-11', '2016-11-18', '2016-11-25', '2016-12-02', '2016-12-09', '2016-12-10', '2016-12-16', 32, 17),
(155, 'SGL1617', 12, '2016-09-02', '2016-09-09', '2016-09-16', '2016-09-23', '2016-09-30', '2016-10-07', '2016-10-14', '2016-11-11', '2016-11-18', '2016-11-25', '2016-12-02', '2016-12-09', '2016-12-10', '2016-12-16', 32, 18),
(156, 'SGL1617', 12, '2016-08-31', '2016-09-07', '2016-09-14', '2016-09-21', '2016-09-28', '2016-10-05', '2016-10-12', '2016-11-02', '2016-11-09', '2016-11-16', '2016-11-23', '2016-11-30', '2016-12-07', '2016-12-14', 32, 19),
(157, 'SGL1617', 12, '2016-08-31', '2016-09-07', '2016-09-14', '2016-09-21', '2016-09-28', '2016-10-05', '2016-10-12', '2016-11-02', '2016-11-09', '2016-11-16', '2016-11-23', '2016-11-30', '2016-12-07', '2016-12-14', 32, 20),
(158, 'SGL1617', 12, '2016-08-30', '2016-09-06', '2016-09-20', '2016-09-27', '2016-10-04', '2016-10-08', '2016-10-11', '2016-11-01', '2016-11-08', '2016-11-15', '2016-11-22', '2016-12-06', '2016-12-06', '2016-12-13', 32, 14),
(159, 'SGL1617', 12, '2016-08-29', '2016-09-10', '2016-09-17', '2016-09-19', '2016-09-26', '2016-10-08', '2016-10-10', '2016-10-31', '2016-11-12', '2016-11-14', '2016-11-21', '2016-11-28', '2016-12-10', '2016-12-19', 32, 23),
(160, 'SGL1617', 12, '2016-09-02', '2016-09-09', '2016-09-23', '2016-09-24', '2016-09-30', '2016-10-07', '2016-10-14', '2016-11-11', '2016-11-18', '2016-11-19', '2016-11-25', '2016-12-09', '2016-12-16', '2016-12-17', 32, 60),
(161, 'SGP1516', 12, '2016-02-17', '2016-02-24', '2016-03-02', '2016-03-16', '2016-03-23', '2016-03-30', '2016-04-02', '2016-04-20', '2016-04-27', '2016-05-04', '2016-05-11', '2016-05-18', '2016-06-01', '2016-06-04', 28, 8),
(162, 'SGP1516', 12, '2016-02-23', '2016-02-25', '2016-03-01', '2016-03-15', '2016-03-22', '2016-03-29', '2016-04-19', '2016-04-26', '2016-05-03', '2016-05-03', '2016-05-10', '2016-05-17', '2016-05-24', '2016-05-31', 28, 9),
(163, 'SGP1516', 12, '2016-02-18', '2016-02-25', '2016-03-03', '2016-03-10', '2016-03-17', '2016-03-24', '2016-03-31', '2016-04-21', '2016-04-28', '2016-05-03', '2016-05-12', '2016-05-19', '2016-05-26', '2016-06-02', 28, 10),
(164, 'SGP1516', 12, '2016-02-15', '2016-02-22', '2016-02-29', '2016-03-07', '2016-03-14', '2016-03-21', '2016-03-28', '2016-04-18', '2016-04-25', '2016-05-02', '2016-05-09', '2016-05-16', '2016-05-23', '2016-05-30', 28, 11),
(165, 'SGP1516', 12, '2016-02-15', '2016-02-22', '2016-02-29', '2016-03-07', '2016-03-14', '2016-03-21', '2016-03-28', '2016-04-18', '2016-04-25', '2016-05-02', '2016-05-09', '2016-05-16', '2016-05-23', '2016-05-30', 28, 12),
(166, 'SGP1516', 12, '2016-02-19', '2016-03-04', '2016-03-11', '2016-03-15', '2016-03-18', '2016-03-29', '2016-04-02', '2016-04-19', '2016-04-22', '2016-05-13', '2016-05-20', '2016-05-27', '2016-06-02', '2016-06-03', 28, 6),
(167, 'SGP1516', 12, '2016-02-17', '2016-02-24', '2016-03-02', '2016-03-16', '2016-03-22', '2016-03-23', '2016-03-30', '2016-04-20', '2016-05-04', '2016-05-04', '2016-05-11', '2016-05-18', '2016-05-25', '2016-06-01', 28, 7),
(168, 'SGP1516', 12, '2016-02-19', '2016-02-26', '2016-03-04', '2016-03-11', '2016-03-17', '2016-03-18', '2016-04-01', '2016-04-22', '2016-04-29', '2016-05-10', '2016-05-13', '2016-05-20', '2016-05-27', '2016-06-03', 28, 79),
(169, 'SGP1516', 12, '2016-02-16', '2016-02-23', '2016-03-01', '2016-03-08', '2016-03-15', '2016-03-22', '2016-03-29', '2016-04-19', '2016-04-26', '2016-05-03', '2016-05-10', '2016-05-17', '2016-05-24', '2016-05-31', 28, 83),
(170, 'SGP1516', 12, '2016-02-17', '2016-02-24', '2016-03-02', '2016-03-16', '2016-03-23', '2016-03-30', '2016-04-02', '2016-04-20', '2016-04-27', '2016-05-04', '2016-05-11', '2016-05-18', '2016-06-01', '2016-06-04', 29, 8),
(171, 'SGP1516', 12, '2016-02-23', '2016-02-25', '2016-03-01', '2016-03-15', '2016-03-22', '2016-03-29', '2016-04-19', '2016-04-26', '2016-05-03', '2016-05-03', '2016-05-10', '2016-05-17', '2016-05-24', '2016-05-31', 29, 9),
(172, 'SGP1516', 12, '2016-02-18', '2016-02-25', '2016-03-03', '2016-03-10', '2016-03-17', '2016-03-24', '2016-03-31', '2016-04-21', '2016-04-28', '2016-05-03', '2016-05-12', '2016-05-19', '2016-05-26', '2016-06-02', 29, 10),
(173, 'SGP1516', 12, '2016-02-15', '2016-02-22', '2016-02-29', '2016-03-07', '2016-03-14', '2016-03-21', '2016-03-28', '2016-04-18', '2016-04-25', '2016-05-02', '2016-05-09', '2016-05-16', '2016-05-23', '2016-05-30', 29, 11),
(174, 'SGP1516', 12, '2016-02-15', '2016-02-22', '2016-02-29', '2016-03-07', '2016-03-14', '2016-03-21', '2016-03-28', '2016-04-18', '2016-04-25', '2016-05-02', '2016-05-09', '2016-05-16', '2016-05-23', '2016-05-30', 29, 12),
(175, 'SGP1516', 12, '2016-02-19', '2016-03-04', '2016-03-11', '2016-03-15', '2016-03-18', '2016-03-29', '2016-04-02', '2016-04-19', '2016-04-22', '2016-05-13', '2016-05-20', '2016-05-27', '2016-06-02', '2016-06-03', 29, 6),
(176, 'SGP1516', 12, '2016-02-17', '2016-02-24', '2016-03-02', '2016-03-16', '2016-03-22', '2016-03-23', '2016-03-30', '2016-04-20', '2016-05-04', '2016-05-04', '2016-05-11', '2016-05-18', '2016-05-25', '2016-06-01', 29, 7),
(177, 'SGP1516', 12, '2016-02-19', '2016-02-26', '2016-03-04', '2016-03-11', '2016-03-17', '2016-03-18', '2016-04-01', '2016-04-22', '2016-04-29', '2016-05-10', '2016-05-13', '2016-05-20', '2016-05-27', '2016-06-03', 29, 79),
(178, 'SGP1516', 12, '2016-02-16', '2016-02-23', '2016-03-01', '2016-03-08', '2016-03-15', '2016-03-22', '2016-03-29', '2016-04-19', '2016-04-26', '2016-05-03', '2016-05-10', '2016-05-17', '2016-05-24', '2016-05-31', 29, 83),
(179, 'SGP1516', 12, '2016-02-17', '2016-02-24', '2016-03-02', '2016-03-16', '2016-03-23', '2016-03-30', '2016-04-02', '2016-04-20', '2016-04-27', '2016-05-04', '2016-05-11', '2016-05-18', '2016-06-01', '2016-06-04', 30, 8),
(180, 'SGP1516', 12, '2016-02-23', '2016-02-25', '2016-03-01', '2016-03-15', '2016-03-22', '2016-03-29', '2016-04-19', '2016-04-26', '2016-05-03', '2016-05-03', '2016-05-10', '2016-05-17', '2016-05-24', '2016-05-31', 30, 9),
(181, 'SGP1516', 12, '2016-02-18', '2016-02-25', '2016-03-03', '2016-03-10', '2016-03-17', '2016-03-24', '2016-03-31', '2016-04-21', '2016-04-28', '2016-05-03', '2016-05-12', '2016-05-19', '2016-05-26', '2016-06-02', 30, 10),
(182, 'SGP1516', 12, '2016-02-15', '2016-02-22', '2016-02-29', '2016-03-07', '2016-03-14', '2016-03-21', '2016-03-28', '2016-04-18', '2016-04-25', '2016-05-02', '2016-05-09', '2016-05-16', '2016-05-23', '2016-05-30', 30, 11),
(183, 'SGP1516', 12, '2016-02-15', '2016-02-22', '2016-02-29', '2016-03-07', '2016-03-14', '2016-03-21', '2016-03-28', '2016-04-18', '2016-04-25', '2016-05-02', '2016-05-09', '2016-05-16', '2016-05-23', '2016-05-30', 30, 12),
(184, 'SGP1516', 12, '2016-02-19', '2016-03-04', '2016-03-11', '2016-03-15', '2016-03-18', '2016-03-29', '2016-04-02', '2016-04-19', '2016-04-22', '2016-05-13', '2016-05-20', '2016-05-27', '2016-06-02', '2016-06-03', 30, 6),
(185, 'SGP1516', 12, '2016-02-17', '2016-02-24', '2016-03-02', '2016-03-16', '2016-03-22', '2016-03-23', '2016-03-30', '2016-04-20', '2016-05-04', '2016-05-04', '2016-05-11', '2016-05-18', '2016-05-25', '2016-06-01', 30, 7),
(186, 'SGP1516', 12, '2016-02-19', '2016-02-26', '2016-03-04', '2016-03-11', '2016-03-17', '2016-03-18', '2016-04-01', '2016-04-22', '2016-04-29', '2016-05-10', '2016-05-13', '2016-05-20', '2016-05-27', '2016-06-03', 30, 79),
(187, 'SGP1516', 12, '2016-02-16', '2016-02-23', '2016-03-01', '2016-03-08', '2016-03-15', '2016-03-22', '2016-03-29', '2016-04-19', '2016-04-26', '2016-05-03', '2016-05-10', '2016-05-17', '2016-05-24', '2016-05-31', 30, 83),
(188, 'SGP1516', 12, '2016-02-17', '2016-02-24', '2016-03-02', '2016-03-16', '2016-03-23', '2016-03-30', '2016-04-02', '2016-04-20', '2016-04-27', '2016-05-04', '2016-05-11', '2016-05-18', '2016-06-01', '2016-06-04', 31, 8),
(189, 'SGP1516', 12, '2016-02-23', '2016-02-25', '2016-03-01', '2016-03-15', '2016-03-22', '2016-03-29', '2016-04-19', '2016-04-26', '2016-05-03', '2016-05-03', '2016-05-10', '2016-05-17', '2016-05-24', '2016-05-31', 31, 9),
(190, 'SGP1516', 12, '2016-02-18', '2016-02-25', '2016-03-03', '2016-03-10', '2016-03-17', '2016-03-24', '2016-03-31', '2016-04-21', '2016-04-28', '2016-05-03', '2016-05-12', '2016-05-19', '2016-05-26', '2016-06-02', 31, 10),
(191, 'SGP1516', 12, '2016-02-15', '2016-02-22', '2016-02-29', '2016-03-07', '2016-03-14', '2016-03-21', '2016-03-28', '2016-04-18', '2016-04-25', '2016-05-02', '2016-05-09', '2016-05-16', '2016-05-23', '2016-05-30', 31, 11),
(192, 'SGP1516', 12, '2016-02-15', '2016-02-22', '2016-02-29', '2016-03-07', '2016-03-14', '2016-03-21', '2016-03-28', '2016-04-18', '2016-04-25', '2016-05-02', '2016-05-09', '2016-05-16', '2016-05-23', '2016-05-30', 31, 12),
(193, 'SGP1516', 12, '2016-02-19', '2016-03-04', '2016-03-11', '2016-03-15', '2016-03-18', '2016-03-29', '2016-04-02', '2016-04-19', '2016-04-22', '2016-05-13', '2016-05-20', '2016-05-27', '2016-06-02', '2016-06-03', 31, 6),
(194, 'SGP1516', 12, '2016-02-17', '2016-02-24', '2016-03-02', '2016-03-16', '2016-03-22', '2016-03-23', '2016-03-30', '2016-04-20', '2016-05-04', '2016-05-04', '2016-05-11', '2016-05-18', '2016-05-25', '2016-06-01', 31, 7),
(195, 'SGP1516', 12, '2016-02-19', '2016-02-26', '2016-03-04', '2016-03-11', '2016-03-17', '2016-03-18', '2016-04-01', '2016-04-22', '2016-04-29', '2016-05-10', '2016-05-13', '2016-05-20', '2016-05-27', '2016-06-03', 31, 79),
(196, 'SGP1516', 12, '2016-02-16', '2016-02-23', '2016-03-01', '2016-03-08', '2016-03-15', '2016-03-22', '2016-03-29', '2016-04-19', '2016-04-26', '2016-05-03', '2016-05-10', '2016-05-17', '2016-05-24', '2016-05-31', 31, 83),
(197, 'SGP1516', 12, '2016-02-17', '2016-02-24', '2016-03-02', '2016-03-16', '2016-03-23', '2016-03-30', '2016-04-02', '2016-04-20', '2016-04-27', '2016-05-04', '2016-05-11', '2016-05-18', '2016-06-01', '2016-06-04', 32, 8),
(198, 'SGP1516', 12, '2016-02-23', '2016-02-25', '2016-03-01', '2016-03-15', '2016-03-22', '2016-03-29', '2016-04-19', '2016-04-26', '2016-05-03', '2016-05-03', '2016-05-10', '2016-05-17', '2016-05-24', '2016-05-31', 32, 9),
(199, 'SGP1516', 12, '2016-02-18', '2016-02-25', '2016-03-03', '2016-03-10', '2016-03-17', '2016-03-24', '2016-03-31', '2016-04-21', '2016-04-28', '2016-05-03', '2016-05-12', '2016-05-19', '2016-05-26', '2016-06-02', 32, 10),
(200, 'SGP1516', 12, '2016-02-15', '2016-02-22', '2016-02-29', '2016-03-07', '2016-03-14', '2016-03-21', '2016-03-28', '2016-04-18', '2016-04-25', '2016-05-02', '2016-05-09', '2016-05-16', '2016-05-23', '2016-05-30', 32, 11),
(201, 'SGP1516', 12, '2016-02-15', '2016-02-22', '2016-02-29', '2016-03-07', '2016-03-14', '2016-03-21', '2016-03-28', '2016-04-18', '2016-04-25', '2016-05-02', '2016-05-09', '2016-05-16', '2016-05-23', '2016-05-30', 32, 12),
(202, 'SGP1516', 12, '2016-02-19', '2016-03-04', '2016-03-11', '2016-03-15', '2016-03-18', '2016-03-29', '2016-04-02', '2016-04-19', '2016-04-22', '2016-05-13', '2016-05-20', '2016-05-27', '2016-06-02', '2016-06-03', 32, 6),
(203, 'SGP1516', 12, '2016-02-17', '2016-02-24', '2016-03-02', '2016-03-16', '2016-03-22', '2016-03-23', '2016-03-30', '2016-04-20', '2016-05-04', '2016-05-04', '2016-05-11', '2016-05-18', '2016-05-25', '2016-06-01', 32, 7),
(204, 'SGP1516', 12, '2016-02-19', '2016-02-26', '2016-03-04', '2016-03-11', '2016-03-17', '2016-03-18', '2016-04-01', '2016-04-22', '2016-04-29', '2016-05-10', '2016-05-13', '2016-05-20', '2016-05-27', '2016-06-03', 32, 79),
(205, 'SGP1516', 12, '2016-02-16', '2016-02-23', '2016-03-01', '2016-03-08', '2016-03-15', '2016-03-22', '2016-03-29', '2016-04-19', '2016-04-26', '2016-05-03', '2016-05-10', '2016-05-17', '2016-05-24', '2016-05-31', 32, 83),
(206, 'SGL1516', 12, '2015-09-01', '2015-09-08', '2015-09-15', '2015-09-22', '2015-09-29', '2015-10-06', '2015-10-13', '2015-11-03', '2015-11-10', '2015-11-17', '2015-11-24', '2015-12-01', '2015-12-08', '2015-12-15', 28, 1),
(207, 'SGL1516', 12, '2015-09-01', '2015-09-08', '2015-09-15', '2015-09-22', '2015-09-29', '2015-10-06', '2015-10-13', '2015-11-03', '2015-11-10', '2015-11-17', '2015-11-24', '2015-12-01', '2015-12-08', '2015-12-15', 28, 2),
(208, 'SGL1516', 12, '2015-09-04', '2015-09-11', '2015-09-18', '2015-09-25', '2015-10-02', '2015-10-09', '2015-10-16', '2015-11-06', '2015-11-13', '2015-11-20', '2015-11-27', '2015-12-04', '2015-12-11', '2015-12-18', 28, 3),
(209, 'SGL1516', 12, '2015-09-03', '2015-09-10', '2015-10-01', '2015-10-07', '2015-10-08', '2015-10-08', '2015-10-15', '2015-11-05', '2015-11-12', '2015-11-19', '2015-11-26', '2015-12-03', '2015-12-14', '2015-12-17', 28, 4),
(210, 'SGL1516', 12, '2015-09-04', '2015-09-11', '2015-09-18', '2015-09-25', '2015-10-01', '2015-10-02', '2015-10-16', '2015-11-06', '2015-11-13', '2015-11-20', '2015-11-27', '2015-12-04', '2015-12-11', '2015-12-18', 28, 5),
(211, 'SGL1516', 12, '2015-09-02', '2015-09-09', '2015-09-16', '2015-09-23', '2015-09-30', '2015-10-07', '2015-10-13', '2015-11-04', '2015-11-11', '2015-11-18', '2015-11-25', '2015-12-02', '2015-12-10', '2015-12-16', 28, 80),
(212, 'SGL1516', 12, '2015-09-02', '2015-09-09', '2015-09-16', '2015-09-23', '2015-09-30', '2015-10-07', '2015-10-15', '2015-11-04', '2015-11-11', '2015-11-18', '2015-11-25', '2015-12-02', '2015-12-10', '2015-12-16', 28, 81),
(213, 'SGL1516', 12, '2015-08-31', '2015-09-07', '2015-09-14', '2015-09-21', '2015-09-28', '2015-10-05', '2015-10-12', '2015-11-02', '2015-11-09', '2015-11-16', '2015-11-23', '2015-11-30', '2015-12-07', '2015-12-14', 28, 82),
(214, 'SGL1516', 12, '2015-09-01', '2015-09-08', '2015-09-15', '2015-09-22', '2015-09-29', '2015-10-06', '2015-10-13', '2015-11-03', '2015-11-10', '2015-11-17', '2015-11-24', '2015-12-01', '2015-12-08', '2015-12-15', 29, 1),
(215, 'SGL1516', 12, '2015-09-01', '2015-09-08', '2015-09-15', '2015-09-22', '2015-09-29', '2015-10-06', '2015-10-13', '2015-11-03', '2015-11-10', '2015-11-17', '2015-11-24', '2015-12-01', '2015-12-08', '2015-12-15', 29, 2),
(216, 'SGL1516', 12, '2015-09-04', '2015-09-11', '2015-09-18', '2015-09-25', '2015-10-02', '2015-10-09', '2015-10-16', '2015-11-06', '2015-11-13', '2015-11-20', '2015-11-27', '2015-12-04', '2015-12-11', '2015-12-18', 29, 3),
(217, 'SGL1516', 12, '2015-09-03', '2015-09-10', '2015-10-01', '2015-10-07', '2015-10-08', '2015-10-08', '2015-10-15', '2015-11-05', '2015-11-12', '2015-11-19', '2015-11-26', '2015-12-03', '2015-12-14', '2015-12-17', 29, 4),
(218, 'SGL1516', 12, '2015-09-04', '2015-09-11', '2015-09-18', '2015-09-25', '2015-10-01', '2015-10-02', '2015-10-16', '2015-11-06', '2015-11-13', '2015-11-20', '2015-11-27', '2015-12-04', '2015-12-11', '2015-12-18', 29, 5),
(219, 'SGL1516', 12, '2015-09-02', '2015-09-09', '2015-09-16', '2015-09-23', '2015-09-30', '2015-10-07', '2015-10-13', '2015-11-04', '2015-11-11', '2015-11-18', '2015-11-25', '2015-12-02', '2015-12-10', '2015-12-16', 29, 80),
(220, 'SGL1516', 12, '2015-09-02', '2015-09-09', '2015-09-16', '2015-09-23', '2015-09-30', '2015-10-07', '2015-10-15', '2015-11-04', '2015-11-11', '2015-11-18', '2015-11-25', '2015-12-02', '2015-12-10', '2015-12-16', 29, 81),
(221, 'SGL1516', 12, '2015-08-31', '2015-09-07', '2015-09-14', '2015-09-21', '2015-09-28', '2015-10-05', '2015-10-12', '2015-11-02', '2015-11-09', '2015-11-16', '2015-11-23', '2015-11-30', '2015-12-07', '2015-12-14', 29, 82),
(222, 'SGL1516', 12, '2015-09-01', '2015-09-08', '2015-09-15', '2015-09-22', '2015-09-29', '2015-10-06', '2015-10-13', '2015-11-03', '2015-11-10', '2015-11-17', '2015-11-24', '2015-12-01', '2015-12-08', '2015-12-15', 30, 1),
(223, 'SGL1516', 12, '2015-09-01', '2015-09-08', '2015-09-15', '2015-09-22', '2015-09-29', '2015-10-06', '2015-10-13', '2015-11-03', '2015-11-10', '2015-11-17', '2015-11-24', '2015-12-01', '2015-12-08', '2015-12-15', 30, 2),
(224, 'SGL1516', 12, '2015-09-04', '2015-09-11', '2015-09-18', '2015-09-25', '2015-10-02', '2015-10-09', '2015-10-16', '2015-11-06', '2015-11-13', '2015-11-20', '2015-11-27', '2015-12-04', '2015-12-11', '2015-12-18', 30, 3),
(225, 'SGL1516', 12, '2015-09-03', '2015-09-10', '2015-10-01', '2015-10-07', '2015-10-08', '2015-10-08', '2015-10-15', '2015-11-05', '2015-11-12', '2015-11-19', '2015-11-26', '2015-12-03', '2015-12-14', '2015-12-17', 30, 4),
(226, 'SGL1516', 12, '2015-09-04', '2015-09-11', '2015-09-18', '2015-09-25', '2015-10-01', '2015-10-02', '2015-10-16', '2015-11-06', '2015-11-13', '2015-11-20', '2015-11-27', '2015-12-04', '2015-12-11', '2015-12-18', 30, 5),
(227, 'SGL1516', 12, '2015-09-02', '2015-09-09', '2015-09-16', '2015-09-23', '2015-09-30', '2015-10-07', '2015-10-13', '2015-11-04', '2015-11-11', '2015-11-18', '2015-11-25', '2015-12-02', '2015-12-10', '2015-12-16', 30, 80);
INSERT INTO `krs` (`krsID`, `term`, `numberEntrances`, `week1`, `week2`, `week3`, `week4`, `week5`, `week6`, `week7`, `week8`, `week9`, `week10`, `week11`, `week12`, `week13`, `week14`, `userID`, `kelasID`) VALUES
(228, 'SGL1516', 12, '2015-09-02', '2015-09-09', '2015-09-16', '2015-09-23', '2015-09-30', '2015-10-07', '2015-10-15', '2015-11-04', '2015-11-11', '2015-11-18', '2015-11-25', '2015-12-02', '2015-12-10', '2015-12-16', 30, 81),
(229, 'SGL1516', 12, '2015-08-31', '2015-09-07', '2015-09-14', '2015-09-21', '2015-09-28', '2015-10-05', '2015-10-12', '2015-11-02', '2015-11-09', '2015-11-16', '2015-11-23', '2015-11-30', '2015-12-07', '2015-12-14', 30, 82),
(230, 'SGL1516', 12, '2015-09-01', '2015-09-08', '2015-09-15', '2015-09-22', '2015-09-29', '2015-10-06', '2015-10-13', '2015-11-03', '2015-11-10', '2015-11-17', '2015-11-24', '2015-12-01', '2015-12-08', '2015-12-15', 31, 1),
(231, 'SGL1516', 12, '2015-09-01', '2015-09-08', '2015-09-15', '2015-09-22', '2015-09-29', '2015-10-06', '2015-10-13', '2015-11-03', '2015-11-10', '2015-11-17', '2015-11-24', '2015-12-01', '2015-12-08', '2015-12-15', 31, 2),
(232, 'SGL1516', 12, '2015-09-04', '2015-09-11', '2015-09-18', '2015-09-25', '2015-10-02', '2015-10-09', '2015-10-16', '2015-11-06', '2015-11-13', '2015-11-20', '2015-11-27', '2015-12-04', '2015-12-11', '2015-12-18', 31, 3),
(233, 'SGL1516', 12, '2015-09-03', '2015-09-10', '2015-10-01', '2015-10-07', '2015-10-08', '2015-10-08', '2015-10-15', '2015-11-05', '2015-11-12', '2015-11-19', '2015-11-26', '2015-12-03', '2015-12-14', '2015-12-17', 31, 4),
(234, 'SGL1516', 12, '2015-09-04', '2015-09-11', '2015-09-18', '2015-09-25', '2015-10-01', '2015-10-02', '2015-10-16', '2015-11-06', '2015-11-13', '2015-11-20', '2015-11-27', '2015-12-04', '2015-12-11', '2015-12-18', 31, 5),
(235, 'SGL1516', 12, '2015-09-02', '2015-09-09', '2015-09-16', '2015-09-23', '2015-09-30', '2015-10-07', '2015-10-13', '2015-11-04', '2015-11-11', '2015-11-18', '2015-11-25', '2015-12-02', '2015-12-10', '2015-12-16', 31, 80),
(236, 'SGL1516', 12, '2015-09-02', '2015-09-09', '2015-09-16', '2015-09-23', '2015-09-30', '2015-10-07', '2015-10-15', '2015-11-04', '2015-11-11', '2015-11-18', '2015-11-25', '2015-12-02', '2015-12-10', '2015-12-16', 31, 81),
(237, 'SGL1516', 12, '2015-08-31', '2015-09-07', '2015-09-14', '2015-09-21', '2015-09-28', '2015-10-05', '2015-10-12', '2015-11-02', '2015-11-09', '2015-11-16', '2015-11-23', '2015-11-30', '2015-12-07', '2015-12-14', 31, 82),
(238, 'SGL1516', 12, '2015-09-01', '2015-09-08', '2015-09-15', '2015-09-22', '2015-09-29', '2015-10-06', '2015-10-13', '2015-11-03', '2015-11-10', '2015-11-17', '2015-11-24', '2015-12-01', '2015-12-08', '2015-12-15', 32, 1),
(239, 'SGL1516', 12, '2015-09-01', '2015-09-08', '2015-09-15', '2015-09-22', '2015-09-29', '2015-10-06', '2015-10-13', '2015-11-03', '2015-11-10', '2015-11-17', '2015-11-24', '2015-12-01', '2015-12-08', '2015-12-15', 32, 2),
(240, 'SGL1516', 12, '2015-09-04', '2015-09-11', '2015-09-18', '2015-09-25', '2015-10-02', '2015-10-09', '2015-10-16', '2015-11-06', '2015-11-13', '2015-11-20', '2015-11-27', '2015-12-04', '2015-12-11', '2015-12-18', 32, 3),
(241, 'SGL1516', 12, '2015-09-03', '2015-09-10', '2015-10-01', '2015-10-07', '2015-10-08', '2015-10-08', '2015-10-15', '2015-11-05', '2015-11-12', '2015-11-19', '2015-11-26', '2015-12-03', '2015-12-14', '2015-12-17', 32, 4),
(242, 'SGL1516', 12, '2015-09-04', '2015-09-11', '2015-09-18', '2015-09-25', '2015-10-01', '2015-10-02', '2015-10-16', '2015-11-06', '2015-11-13', '2015-11-20', '2015-11-27', '2015-12-04', '2015-12-11', '2015-12-18', 32, 5),
(243, 'SGL1516', 12, '2015-09-02', '2015-09-09', '2015-09-16', '2015-09-23', '2015-09-30', '2015-10-07', '2015-10-13', '2015-11-04', '2015-11-11', '2015-11-18', '2015-11-25', '2015-12-02', '2015-12-10', '2015-12-16', 32, 80),
(244, 'SGL1516', 12, '2015-09-02', '2015-09-09', '2015-09-16', '2015-09-23', '2015-09-30', '2015-10-07', '2015-10-15', '2015-11-04', '2015-11-11', '2015-11-18', '2015-11-25', '2015-12-02', '2015-12-10', '2015-12-16', 32, 81),
(245, 'SGL1516', 12, '2015-08-31', '2015-09-07', '2015-09-14', '2015-09-21', '2015-09-28', '2015-10-05', '2015-10-12', '2015-11-02', '2015-11-09', '2015-11-16', '2015-11-23', '2015-11-30', '2015-12-07', '2015-12-14', 32, 82),
(246, 'SGL1516', 12, '2015-09-01', '2015-09-08', '2015-09-15', '2015-09-22', '2015-09-29', '2015-10-06', '2015-10-13', '2015-11-03', '2015-11-10', '2015-11-17', '2015-11-24', '2015-12-01', '2015-12-08', '2015-12-15', 40, 1),
(247, 'SGL1516', 12, '2015-09-01', '2015-09-08', '2015-09-15', '2015-09-22', '2015-09-29', '2015-10-06', '2015-10-13', '2015-11-03', '2015-11-10', '2015-11-17', '2015-11-24', '2015-12-01', '2015-12-08', '2015-12-15', 40, 2),
(248, 'SGL1516', 12, '2015-09-04', '2015-09-11', '2015-09-18', '2015-09-25', '2015-10-02', '2015-10-09', '2015-10-16', '2015-11-06', '2015-11-13', '2015-11-20', '2015-11-27', '2015-12-04', '2015-12-11', '2015-12-18', 40, 3),
(249, 'SGL1516', 12, '2015-09-03', '2015-09-10', '2015-10-01', '2015-10-07', '2015-10-08', '2015-10-08', '2015-10-15', '2015-11-05', '2015-11-12', '2015-11-19', '2015-11-26', '2015-12-03', '2015-12-14', '2015-12-17', 40, 4),
(250, 'SGL1516', 12, '2015-09-04', '2015-09-11', '2015-09-18', '2015-09-25', '2015-10-01', '2015-10-02', '2015-10-16', '2015-11-06', '2015-11-13', '2015-11-20', '2015-11-27', '2015-12-04', '2015-12-11', '2015-12-18', 40, 5),
(251, 'SGL1516', 12, '2015-09-02', '2015-09-09', '2015-09-16', '2015-09-23', '2015-09-30', '2015-10-07', '2015-10-13', '2015-11-04', '2015-11-11', '2015-11-18', '2015-11-25', '2015-12-02', '2015-12-10', '2015-12-16', 40, 80),
(252, 'SGL1516', 12, '2015-09-02', '2015-09-09', '2015-09-16', '2015-09-23', '2015-09-30', '2015-10-07', '2015-10-15', '2015-11-04', '2015-11-11', '2015-11-18', '2015-11-25', '2015-12-02', '2015-12-10', '2015-12-16', 40, 81),
(253, 'SGL1516', 12, '2015-08-31', '2015-09-07', '2015-09-14', '2015-09-21', '2015-09-28', '2015-10-05', '2015-10-12', '2015-11-02', '2015-11-09', '2015-11-16', '2015-11-23', '2015-11-30', '2015-12-07', '2015-12-14', 40, 82),
(254, 'SGP1516', 12, '2016-02-17', '2016-02-24', '2016-03-02', '2016-03-16', '2016-03-23', '2016-03-30', '2016-04-02', '2016-04-20', '2016-04-27', '2016-05-04', '2016-05-11', '2016-05-18', '2016-06-01', '2016-06-04', 40, 8),
(255, 'SGP1516', 12, '2016-02-23', '2016-02-25', '2016-03-01', '2016-03-15', '2016-03-22', '2016-03-29', '2016-04-19', '2016-04-26', '2016-05-03', '2016-05-03', '2016-05-10', '2016-05-17', '2016-05-24', '2016-05-31', 40, 9),
(256, 'SGP1516', 12, '2016-02-18', '2016-02-25', '2016-03-03', '2016-03-10', '2016-03-17', '2016-03-24', '2016-03-31', '2016-04-21', '2016-04-28', '2016-05-03', '2016-05-12', '2016-05-19', '2016-05-26', '2016-06-02', 40, 10),
(257, 'SGP1516', 12, '2016-02-15', '2016-02-22', '2016-02-29', '2016-03-07', '2016-03-14', '2016-03-21', '2016-03-28', '2016-04-18', '2016-04-25', '2016-05-02', '2016-05-09', '2016-05-16', '2016-05-23', '2016-05-30', 40, 11),
(258, 'SGP1516', 12, '2016-02-15', '2016-02-22', '2016-02-29', '2016-03-07', '2016-03-14', '2016-03-21', '2016-03-28', '2016-04-18', '2016-04-25', '2016-05-02', '2016-05-09', '2016-05-16', '2016-05-23', '2016-05-30', 40, 12),
(259, 'SGP1516', 12, '2016-02-19', '2016-03-04', '2016-03-11', '2016-03-15', '2016-03-18', '2016-03-29', '2016-04-02', '2016-04-19', '2016-04-22', '2016-05-13', '2016-05-20', '2016-05-27', '2016-06-02', '2016-06-03', 40, 6),
(260, 'SGP1516', 12, '2016-02-17', '2016-02-24', '2016-03-02', '2016-03-16', '2016-03-22', '2016-03-23', '2016-03-30', '2016-04-20', '2016-05-04', '2016-05-04', '2016-05-11', '2016-05-18', '2016-05-25', '2016-06-01', 40, 7),
(261, 'SGP1516', 12, '2016-02-19', '2016-02-26', '2016-03-04', '2016-03-11', '2016-03-17', '2016-03-18', '2016-04-01', '2016-04-22', '2016-04-29', '2016-05-10', '2016-05-13', '2016-05-20', '2016-05-27', '2016-06-03', 40, 79),
(262, 'SGP1516', 12, '2016-02-16', '2016-02-23', '2016-03-01', '2016-03-08', '2016-03-15', '2016-03-22', '2016-03-29', '2016-04-19', '2016-04-26', '2016-05-03', '2016-05-10', '2016-05-17', '2016-05-24', '2016-05-31', 40, 83),
(263, 'SGL1617', 12, '2016-08-29', '2016-09-15', '2016-09-19', '2016-09-22', '2016-09-26', '2016-10-03', '2016-10-10', '2016-10-31', '2016-11-07', '2016-11-14', '2016-11-21', '2016-11-28', '2016-12-05', '2016-12-08', 40, 84),
(264, 'SGL1617', 12, '2016-08-29', '2016-09-05', '2016-09-13', '2016-09-19', '2016-09-26', '2016-10-03', '2016-10-10', '2016-10-31', '2016-11-07', '2016-11-14', '2016-11-21', '2016-11-28', '2016-11-29', '2016-12-05', 40, 13),
(265, 'SGL1617', 12, '2016-08-31', '2016-09-07', '2016-09-14', '2016-09-21', '2016-09-28', '2016-10-05', '2016-10-12', '2016-11-02', '2016-11-09', '2016-11-16', '2016-11-23', '2016-11-30', '2016-12-07', '2016-12-14', 40, 15),
(266, 'SGL1617', 12, '2016-08-31', '2016-09-07', '2016-09-14', '2016-09-21', '2016-09-28', '2016-10-05', '2016-10-12', '2016-11-02', '2016-11-09', '2016-11-16', '2016-11-23', '2016-11-30', '2016-12-07', '2016-12-14', 40, 16),
(267, 'SGL1617', 12, '2016-09-02', '2016-09-09', '2016-09-16', '2016-09-23', '2016-09-30', '2016-10-07', '2016-10-14', '2016-11-11', '2016-11-18', '2016-11-25', '2016-12-02', '2016-12-09', '2016-12-10', '2016-12-16', 40, 17),
(268, 'SGL1617', 12, '2016-09-02', '2016-09-09', '2016-09-16', '2016-09-23', '2016-09-30', '2016-10-07', '2016-10-14', '2016-11-11', '2016-11-18', '2016-11-25', '2016-12-02', '2016-12-09', '2016-12-10', '2016-12-16', 40, 18),
(269, 'SGL1617', 12, '2016-08-31', '2016-09-07', '2016-09-14', '2016-09-21', '2016-09-28', '2016-10-05', '2016-10-12', '2016-11-02', '2016-11-09', '2016-11-16', '2016-11-23', '2016-11-30', '2016-12-07', '2016-12-14', 40, 19),
(270, 'SGL1617', 12, '2016-08-31', '2016-09-07', '2016-09-14', '2016-09-21', '2016-09-28', '2016-10-05', '2016-10-12', '2016-11-02', '2016-11-09', '2016-11-16', '2016-11-23', '2016-11-30', '2016-12-07', '2016-12-14', 40, 20),
(271, 'SGL1617', 12, '2016-08-30', '2016-09-06', '2016-09-20', '2016-09-27', '2016-10-04', '2016-10-08', '2016-10-11', '2016-11-01', '2016-11-08', '2016-11-15', '2016-11-22', '2016-12-06', '2016-12-06', '2016-12-13', 40, 14),
(272, 'SGL1617', 12, '2016-08-29', '2016-09-10', '2016-09-17', '2016-09-19', '2016-09-26', '2016-10-08', '2016-10-10', '2016-10-31', '2016-11-12', '2016-11-14', '2016-11-21', '2016-11-28', '2016-12-10', '2016-12-19', 40, 23),
(273, 'SGL1617', 12, '2016-09-02', '2016-09-09', '2016-09-23', '2016-09-24', '2016-09-30', '2016-10-07', '2016-10-14', '2016-11-11', '2016-11-18', '2016-11-19', '2016-11-25', '2016-12-09', '2016-12-16', '2016-12-17', 40, 60),
(274, 'SGP1617', 12, '2017-02-10', '2017-02-17', '2017-02-24', '2017-03-03', '2017-03-10', '2017-03-17', '2017-03-21', '2017-04-21', '2017-04-24', '2017-04-28', '2017-05-05', '2017-05-12', '2017-05-19', '2017-05-26', 40, 27),
(275, 'SGP1617', 12, '2017-02-10', '2017-02-17', '2017-02-24', '2017-03-03', '2017-03-10', '2017-03-17', '2017-03-24', '2017-04-21', '2017-04-22', '2017-04-28', '2017-05-05', '2017-05-12', '2017-05-19', '2017-05-26', 40, 28),
(276, 'SGP1617', 12, '2017-02-07', '2017-02-14', '2017-02-21', '2017-02-28', '2017-03-07', '2017-03-14', '2017-03-21', '2017-04-11', '2017-04-18', '2017-04-25', '2017-05-02', '2017-05-09', '2017-05-22', '2017-05-23', 40, 29),
(277, 'SGP1617', 12, '2017-02-08', '2017-02-09', '2017-02-22', '2017-03-01', '2017-03-08', '2017-03-15', '2017-03-22', '2017-04-12', '2017-04-19', '2017-04-27', '2017-05-03', '2017-05-10', '2017-05-17', '2017-05-24', 40, 31),
(278, 'SGP1617', 12, '2017-02-09', '2017-02-16', '2017-02-23', '2017-03-02', '2017-03-09', '2017-03-16', '2017-03-23', '2017-04-13', '2017-04-20', '2017-04-27', '2017-05-04', '2017-05-10', '2017-05-18', '2017-05-24', 40, 32),
(279, 'SGP1617', 12, '2017-02-11', '2017-02-18', '2017-02-25', '2017-03-04', '2017-03-11', '2017-03-18', '2017-03-25', '2017-04-15', '2017-04-22', '2017-04-29', '2017-05-06', '2017-05-13', '2017-05-20', '2017-05-27', 40, 33),
(280, 'SGP1617', 12, '2017-02-08', '2017-02-13', '2017-02-22', '2017-03-01', '2017-03-08', '2017-03-15', '2017-03-22', '2017-04-12', '2017-04-19', '2017-04-26', '2017-05-03', '2017-05-10', '2017-05-17', '2017-05-24', 40, 25),
(281, 'SGP1617', 12, '2017-02-08', '2017-02-18', '2017-02-22', '2017-03-01', '2017-03-08', '2017-03-15', '2017-03-22', '2017-04-12', '2017-04-22', '2017-04-26', '2017-05-03', '2017-05-10', '2017-05-17', '2017-05-24', 40, 26),
(282, 'SGP1617', 12, '2017-02-08', '2017-02-18', '2017-02-22', '2017-03-01', '2017-03-08', '2017-03-15', '2017-03-21', '2017-04-12', '2017-04-19', '2017-04-26', '2017-05-03', '2017-05-10', '2017-05-17', '2017-05-24', 40, 30),
(283, 'SGP1617', 12, '2017-02-07', '2017-02-14', '2017-02-21', '2017-02-28', '2017-03-07', '2017-03-14', '2017-03-21', '2017-04-11', '2017-04-18', '2017-04-25', '2017-05-02', '2017-05-09', '2017-05-22', '2017-05-23', 40, 24),
(284, 'SGP1617', 12, '2017-02-06', '2017-02-13', '2017-02-20', '2017-02-27', '2017-03-06', '2017-03-13', '2017-03-20', '2017-04-10', '2017-04-17', '2017-04-20', '2017-04-27', '2017-05-08', '2017-05-15', '2017-05-22', 40, 85);

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `matkulID` int(11) NOT NULL,
  `kodeMatkul` varchar(7) NOT NULL,
  `namaMatkul` varchar(50) NOT NULL,
  `sks` int(11) NOT NULL,
  `semester` int(11) DEFAULT NULL,
  `praktikum` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`matkulID`, `kodeMatkul`, `namaMatkul`, `sks`, `semester`, `praktikum`) VALUES
(1, 'CE121', 'Linear Algebra', 3, 1, 0),
(2, 'CE221', 'Calculus', 3, 2, 0),
(3, 'CE232', 'Digital Systems', 3, 2, 0),
(4, 'CE331', 'Probability and Statistics', 3, 2, 0),
(5, 'CE332', 'Architecture and Organization Computer', 3, 3, 0),
(6, 'CE441', 'Computer Network', 3, 4, 1),
(7, 'CE511', 'Operation Research', 2, 5, 0),
(8, 'CE722', 'Wireless Communication', 3, 7, 0),
(9, 'CE742', 'Distributed System', 3, 7, 0),
(10, 'EA100', 'Accounting Principles 1', 3, 1, 1),
(11, 'EA201', 'Accounting Principles 2', 3, 2, 1),
(12, 'EA302', 'Intermediate Accounting 1', 3, 3, 1),
(13, 'EA320', 'Cost Accounting', 3, 3, 1),
(14, 'EA341', 'Taxation 1', 3, 3, 0),
(15, 'EA403', 'Intermediate Accounting 2', 3, 4, 1),
(16, 'EA404', 'Advance Accounting 1', 3, 4, 1),
(17, 'EA410', 'ICT Based Accounting Information System 1', 3, 4, 1),
(18, 'EA421', 'Management Accounting', 3, 4, 1),
(19, 'EA442', 'Taxation 2', 3, 4, 0),
(20, 'EA505', 'Advance Accounting 2', 3, 5, 1),
(21, 'EA550', 'Business Law', 3, 5, 0),
(22, 'EA644', 'Internation Taxation', 3, 6, 0),
(23, 'EA671', 'Internship', 4, 6, 1),
(24, 'EA708', 'Accounting Theory', 3, 7, 0),
(25, 'EA713', 'IT Compliance and Control', 3, 7, 0),
(26, 'EA772', 'Final Project', 6, 7, 0),
(27, 'EM101', 'Fundamental of Business', 3, 1, 0),
(28, 'EM170', 'Micro Economics', 3, 1, 0),
(29, 'EM187', 'Financial Mathematics', 3, 1, 0),
(30, 'EM201', 'Fundamental of Management', 3, 2, 0),
(31, 'EM271', 'Macro Economics', 3, 2, 0),
(32, 'EM281', 'Business Statistics 1', 3, 2, 1),
(33, 'EM320', 'Marketing Management', 3, 3, 0),
(34, 'EM330', 'Financial Management 1', 3, 3, 1),
(35, 'EM431', 'Financial Management 2', 3, 4, 1),
(36, 'EM501', 'Marketing Certification', 4, 5, 0),
(37, 'EM502', 'Finance Certification', 4, 5, 0),
(38, 'EM539', 'Investment and Capital Market', 3, 5, 0),
(39, 'EM603', 'Service Marketing', 3, 6, 0),
(40, 'EM604', 'Technopreneurship', 2, 6, 0),
(41, 'EM607', 'E-Marketing', 3, 6, 0),
(42, 'EM702', 'Organizational Design and Behavior', 3, 7, 0),
(43, 'EM703', 'Training and Development', 3, 7, 0),
(44, 'EM804', 'Internation Finance', 3, 8, 0),
(45, 'EP102', 'Basic Physics 1', 4, 1, 1),
(46, 'EP301', 'Mathematics for Engineering 1', 3, 3, 0),
(47, 'EP302', 'Electromagnetics', 3, 3, 0),
(48, 'EP303', 'Termodynamics', 3, 3, 0),
(49, 'IF110', 'Introduction to Multimedia', 2, 1, 1),
(50, 'IF140', 'Programming Logics', 3, 1, 0),
(51, 'IF141', 'Discrete Mathematics', 3, 1, 0),
(52, 'IF200', 'Programming Language Concepts', 3, 2, 0),
(53, 'IF211', 'Computer and Society', 2, 2, 0),
(54, 'IF220', 'Multimedia Concepts', 2, 2, 0),
(55, 'IF230', 'Algorithms and Programming', 3, 2, 1),
(56, 'IF301', 'Database Systems', 3, 3, 1),
(57, 'IF302', 'Operating Systems', 3, 3, 1),
(58, 'IF303', 'Data Structures', 4, 3, 1),
(59, 'IF304', 'Automata and Language Theory', 3, 3, 0),
(60, 'IF421', 'Computer Graphics and Animation', 3, 4, 1),
(61, 'IF422', 'System Design', 3, 4, 0),
(62, 'IF431', 'Object Oriented Programming 1', 3, 4, 1),
(63, 'IF505', 'Analysis and Design of Algorithm', 3, 5, 0),
(64, 'IF506', 'Computer Security', 3, 5, 0),
(65, 'IF523', 'Software Engineering', 3, 5, 0),
(66, 'IF524', 'Human and Computer Interaction', 3, 5, 0),
(67, 'IF532', 'Object Oriented Programming 2', 3, 5, 1),
(68, 'IF533', 'Introduction to Internet Technology', 3, 5, 1),
(69, 'IF607', 'Artificial Intelligence', 3, 6, 0),
(70, 'IF625', 'Project Management Software', 3, 6, 0),
(71, 'IF634', 'Mobile Programming 1', 3, 6, 1),
(72, 'IF635', 'Web Programming', 3, 6, 1),
(73, 'IF650', 'Capita Selecta', 2, 6, 0),
(74, 'IF726', 'Internship', 4, 7, 1),
(75, 'IF727', 'Information Technology Research', 2, 7, 0),
(76, 'IF728', 'Final Project 1', 2, 7, 0),
(77, 'IF736', 'Mobile Programming 2', 3, 7, 1),
(78, 'IF737', 'Visual Programming', 3, 7, 1),
(79, 'IF726', 'Internship', 4, 7, 1),
(80, 'IK230', 'Interpersonal Communication', 2, 2, 0),
(81, 'IF829', 'Final Project 2', 4, 8, 0),
(82, 'IK100', 'Introduction to Communication', 3, 1, 0),
(83, 'IK114', 'Photography', 2, 1, 0),
(84, 'IK137', 'Creative Writing', 3, 1, 0),
(85, 'IK201', 'Communication Theory', 3, 2, 0),
(86, 'IK214', 'Multimedia Laboratory', 2, 2, 0),
(87, 'IK238', 'Academic Writing', 2, 2, 0),
(88, 'IK304', 'Mass Communication', 3, 3, 0),
(89, 'IK306', 'Political Communication', 3, 3, 0),
(90, 'IK408', 'Sociology of Communication', 3, 4, 0),
(91, 'IK520', 'Applied Social Statistics', 3, 5, 0),
(92, 'IK614', 'International Communication', 3, 6, 0),
(93, 'IK716', 'Internship', 4, 7, 1),
(94, 'IK824', 'Final Project', 6, 8, 0),
(95, 'IS201', 'Corporate Business Processes', 3, 1, 0),
(96, 'IS544', 'Advanced Database', 3, 5, 1),
(97, 'JR311', 'News Writing', 3, 3, 0),
(98, 'JR332', 'News Graphic and Design', 3, 3, 0),
(99, 'JR427', 'Feature Writing', 3, 4, 0),
(100, 'JR437', 'Media Writing', 3, 4, 0),
(101, 'JR522', 'TV Program Production', 3, 5, 0),
(102, 'JR523', 'Radio Program Production', 3, 5, 0),
(103, 'JR652', 'Media Studies', 3, 6, 0),
(104, 'JR755', 'Research Proposal Seminar in Journalism', 3, 7, 0),
(105, 'PR307', 'Organization Communication', 3, 3, 0),
(106, 'PR312', 'Corporate Communication Management', 3, 3, 0),
(107, 'PR433', 'Customer Relations Management', 3, 4, 0),
(108, 'PR436', 'Public Speaking', 3, 4, 0),
(109, 'PR514', 'Reputation Management', 3, 5, 0),
(110, 'PR522', 'Media Relation', 3, 5, 0),
(111, 'PR623', 'PR Campaign', 3, 6, 0),
(112, 'PR625', 'Online PR', 3, 6, 0),
(113, 'PR729', 'Research PR', 3, 7, 0),
(114, 'UM122', 'English 1', 2, 1, 0),
(115, 'UM142', 'Indonesian Language', 2, 1, 0),
(116, 'UM152', 'Religion', 2, 1, 0),
(117, 'UM162', 'Pancasila', 2, 1, 0),
(118, 'UM163', 'Civics', 2, 1, 0),
(119, 'UM223', 'English 2', 2, 2, 0),
(120, 'UM321', 'English 3', 2, 3, 0),
(121, 'CE551', 'Applied Computer Networking 1', 3, 5, 1),
(122, 'IF551', 'Advanced Network Security 1', 3, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `nilaiID` int(11) NOT NULL,
  `utsTeori` float(6,2) DEFAULT NULL,
  `uasTeori` float(6,2) DEFAULT NULL,
  `tugasTeori` float(6,2) DEFAULT NULL,
  `utsPraktek` float(6,2) DEFAULT NULL,
  `uasPraktek` float(6,2) DEFAULT NULL,
  `tugasPraktek` float(6,2) DEFAULT NULL,
  `grade` char(2) DEFAULT NULL,
  `userID` int(11) NOT NULL,
  `kelasID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`nilaiID`, `utsTeori`, `uasTeori`, `tugasTeori`, `utsPraktek`, `uasPraktek`, `tugasPraktek`, `grade`, `userID`, `kelasID`) VALUES
(1, 85.00, 93.00, 88.00, 95.00, 90.00, 92.00, 'A', 28, 1),
(2, 73.00, 92.00, 85.00, NULL, NULL, NULL, 'A-', 28, 3),
(3, 97.00, 100.00, 85.00, NULL, NULL, NULL, 'A', 28, 4),
(4, 94.00, 93.00, 84.00, NULL, NULL, NULL, 'A', 28, 5),
(5, 90.00, 89.00, 97.00, 80.00, 93.00, NULL, 'A', 28, 80),
(6, 84.00, 82.00, 82.00, NULL, NULL, NULL, 'A-', 28, 81),
(7, 81.00, 77.50, 81.00, NULL, NULL, NULL, 'B+', 28, 82),
(8, 85.00, 93.00, 88.00, 95.00, 90.00, 92.00, 'A', 29, 1),
(9, 73.00, 92.00, 85.00, NULL, NULL, NULL, 'A-', 29, 3),
(10, 97.00, 100.00, 85.00, NULL, NULL, NULL, 'A', 29, 4),
(11, 94.00, 93.00, 84.00, NULL, NULL, NULL, 'A', 29, 5),
(12, 90.00, 89.00, 97.00, 80.00, 93.00, NULL, 'A', 29, 80),
(13, 84.00, 82.00, 82.00, NULL, NULL, NULL, 'A-', 29, 81),
(14, 81.00, 77.50, 81.00, NULL, NULL, NULL, 'B+', 29, 82),
(15, 85.00, 93.00, 88.00, 95.00, 90.00, 92.00, 'A', 30, 1),
(16, 73.00, 92.00, 85.00, NULL, NULL, NULL, 'A-', 30, 3),
(17, 97.00, 100.00, 85.00, NULL, NULL, NULL, 'A', 30, 4),
(18, 94.00, 93.00, 84.00, NULL, NULL, NULL, 'A', 30, 5),
(19, 90.00, 89.00, 97.00, 80.00, 93.00, NULL, 'A', 30, 80),
(20, 84.00, 82.00, 82.00, NULL, NULL, NULL, 'A-', 30, 81),
(21, 81.00, 77.50, 81.00, NULL, NULL, NULL, 'B+', 30, 82),
(22, 85.00, 93.00, 88.00, 95.00, 90.00, 92.00, 'A', 31, 1),
(23, 73.00, 92.00, 85.00, NULL, NULL, NULL, 'A-', 31, 3),
(24, 97.00, 100.00, 85.00, NULL, NULL, NULL, 'A', 31, 4),
(25, 94.00, 93.00, 84.00, NULL, NULL, NULL, 'A', 31, 5),
(26, 90.00, 89.00, 97.00, 80.00, 93.00, NULL, 'A', 31, 80),
(27, 84.00, 82.00, 82.00, NULL, NULL, NULL, 'A-', 31, 81),
(28, 81.00, 77.50, 81.00, NULL, NULL, NULL, 'B+', 31, 82),
(29, 85.00, 93.00, 88.00, 95.00, 90.00, 92.00, 'A', 32, 1),
(30, 73.00, 92.00, 85.00, NULL, NULL, NULL, 'A-', 32, 3),
(31, 97.00, 100.00, 85.00, NULL, NULL, NULL, 'A', 32, 4),
(32, 94.00, 93.00, 84.00, NULL, NULL, NULL, 'A', 32, 5),
(33, 90.00, 89.00, 97.00, 80.00, 93.00, NULL, 'A', 32, 80),
(34, 84.00, 82.00, 82.00, NULL, NULL, NULL, 'A-', 32, 81),
(35, 81.00, 77.50, 81.00, NULL, NULL, NULL, 'B+', 32, 82),
(36, 85.00, 93.00, 88.00, 95.00, 90.00, 92.00, 'A', 40, 1),
(37, 73.00, 92.00, 85.00, NULL, NULL, NULL, 'A-', 40, 3),
(38, 97.00, 100.00, 85.00, NULL, NULL, NULL, 'A', 40, 4),
(39, 94.00, 93.00, 84.00, NULL, NULL, NULL, 'A', 40, 5),
(40, 90.00, 89.00, 97.00, 80.00, 93.00, NULL, 'A', 40, 80),
(41, 84.00, 82.00, 82.00, NULL, NULL, NULL, 'A-', 40, 81),
(42, 81.00, 77.50, 81.00, NULL, NULL, NULL, 'B+', 40, 82),
(43, 100.00, 100.00, 100.00, NULL, NULL, NULL, 'A', 28, 6),
(44, 98.00, 96.00, 100.00, NULL, NULL, NULL, 'A', 28, 7),
(45, 96.00, 77.00, 97.00, NULL, NULL, NULL, 'A', 28, 8),
(46, 90.00, 85.00, 90.00, NULL, NULL, NULL, 'A', 28, 9),
(47, 98.00, 94.75, 90.60, NULL, NULL, NULL, 'A', 28, 10),
(48, 85.00, 100.00, 91.30, 99.00, 94.00, 100.00, 'A', 28, 11),
(49, 80.00, 100.00, 100.00, NULL, NULL, NULL, 'A', 28, 79),
(50, 85.00, 70.00, 80.00, 80.00, NULL, NULL, 'B+', 28, 83),
(51, 100.00, 100.00, 100.00, NULL, NULL, NULL, 'A', 29, 6),
(52, 98.00, 96.00, 100.00, NULL, NULL, NULL, 'A', 29, 7),
(53, 96.00, 77.00, 97.00, NULL, NULL, NULL, 'A', 29, 8),
(54, 90.00, 85.00, 90.00, NULL, NULL, NULL, 'A', 29, 9),
(55, 98.00, 94.75, 90.60, NULL, NULL, NULL, 'A', 29, 10),
(56, 85.00, 100.00, 91.30, 99.00, 94.00, 100.00, 'A', 29, 11),
(57, 80.00, 100.00, 100.00, NULL, NULL, NULL, 'A', 29, 79),
(58, 85.00, 70.00, 80.00, 80.00, NULL, NULL, 'B+', 29, 83),
(59, 100.00, 100.00, 100.00, NULL, NULL, NULL, 'A', 30, 6),
(60, 98.00, 96.00, 100.00, NULL, NULL, NULL, 'A', 30, 7),
(61, 96.00, 77.00, 97.00, NULL, NULL, NULL, 'A', 30, 8),
(62, 90.00, 85.00, 90.00, NULL, NULL, NULL, 'A', 30, 9),
(63, 98.00, 94.75, 90.60, NULL, NULL, NULL, 'A', 30, 10),
(64, 85.00, 100.00, 91.30, 99.00, 94.00, 100.00, 'A', 30, 11),
(65, 80.00, 100.00, 100.00, NULL, NULL, NULL, 'A', 30, 79),
(66, 85.00, 70.00, 80.00, 80.00, NULL, NULL, 'B+', 30, 83),
(67, 100.00, 100.00, 100.00, NULL, NULL, NULL, 'A', 31, 6),
(68, 98.00, 96.00, 100.00, NULL, NULL, NULL, 'A', 31, 7),
(69, 96.00, 77.00, 97.00, NULL, NULL, NULL, 'A', 31, 8),
(70, 90.00, 85.00, 90.00, NULL, NULL, NULL, 'A', 31, 9),
(71, 98.00, 94.75, 90.60, NULL, NULL, NULL, 'A', 31, 10),
(72, 85.00, 100.00, 91.30, 99.00, 94.00, 100.00, 'A', 31, 11),
(73, 80.00, 100.00, 100.00, NULL, NULL, NULL, 'A', 31, 79),
(74, 85.00, 70.00, 80.00, 80.00, NULL, NULL, 'B+', 31, 83),
(75, 100.00, 100.00, 100.00, NULL, NULL, NULL, 'A', 32, 6),
(76, 98.00, 96.00, 100.00, NULL, NULL, NULL, 'A', 32, 7),
(77, 96.00, 77.00, 97.00, NULL, NULL, NULL, 'A', 32, 8),
(78, 90.00, 85.00, 90.00, NULL, NULL, NULL, 'A', 32, 9),
(79, 98.00, 94.75, 90.60, NULL, NULL, NULL, 'A', 32, 10),
(80, 85.00, 100.00, 91.30, 99.00, 94.00, 100.00, 'A', 32, 11),
(81, 80.00, 100.00, 100.00, NULL, NULL, NULL, 'A', 32, 79),
(82, 85.00, 70.00, 80.00, 80.00, NULL, NULL, 'B+', 32, 83),
(83, 100.00, 100.00, 100.00, NULL, NULL, NULL, 'A', 40, 6),
(84, 98.00, 96.00, 100.00, NULL, NULL, NULL, 'A', 40, 7),
(85, 96.00, 77.00, 97.00, NULL, NULL, NULL, 'A', 40, 8),
(86, 90.00, 85.00, 90.00, NULL, NULL, NULL, 'A', 40, 9),
(87, 98.00, 94.75, 90.60, NULL, NULL, NULL, 'A', 40, 10),
(88, 85.00, 100.00, 91.30, 99.00, 94.00, 100.00, 'A', 40, 11),
(89, 80.00, 100.00, 100.00, NULL, NULL, NULL, 'A', 40, 79),
(90, 85.00, 70.00, 80.00, 80.00, NULL, NULL, 'B+', 40, 83),
(91, 80.00, 89.00, 85.00, NULL, NULL, NULL, 'A', 28, 13),
(92, 99.00, 77.00, 94.00, NULL, NULL, NULL, 'A', 28, 14),
(93, 89.00, 98.00, 90.00, 95.00, 100.00, 96.50, 'A', 28, 15),
(94, 85.00, 82.00, 84.00, 92.00, 100.00, 75.00, 'A', 28, 17),
(95, 97.00, 89.00, 93.00, 100.00, 100.00, 98.80, 'A', 28, 19),
(96, 98.00, 100.00, 100.00, NULL, NULL, NULL, 'A', 28, 23),
(97, 88.00, 82.00, 90.00, NULL, NULL, NULL, 'A', 28, 60),
(98, 84.00, 89.00, 80.00, NULL, NULL, NULL, 'A-', 28, 84),
(99, 70.00, 89.00, 85.00, NULL, NULL, NULL, 'A-', 29, 13),
(100, 99.00, 77.00, 94.00, NULL, NULL, NULL, 'A', 29, 14),
(101, 89.00, 98.00, 90.00, 95.00, 100.00, 96.50, 'A', 29, 15),
(102, 85.00, 82.00, 84.00, 92.00, 100.00, 75.00, 'A', 29, 17),
(103, 97.00, 89.00, 93.00, 100.00, 100.00, 98.80, 'A', 29, 19),
(104, 98.00, 100.00, 100.00, NULL, NULL, NULL, 'A', 29, 23),
(105, 88.00, 82.00, 90.00, NULL, NULL, NULL, 'A', 29, 60),
(106, 85.00, 89.00, 80.00, NULL, NULL, NULL, 'A', 29, 84),
(107, 60.00, 80.00, 80.00, NULL, NULL, NULL, 'B', 30, 13),
(108, 99.00, 77.00, 94.00, NULL, NULL, NULL, 'A', 30, 14),
(109, 89.00, 98.00, 90.00, 95.00, 100.00, 96.50, 'A', 30, 15),
(110, 85.00, 82.00, 84.00, 92.00, 100.00, 75.00, 'A', 30, 17),
(111, 97.00, 89.00, 93.00, 100.00, 100.00, 98.80, 'A', 30, 19),
(112, 98.00, 100.00, 100.00, NULL, NULL, NULL, 'A', 30, 23),
(113, 88.00, 82.00, 90.00, NULL, NULL, NULL, 'A', 30, 60),
(114, 85.00, 89.00, 80.00, NULL, NULL, NULL, 'A', 30, 84),
(115, 70.00, 89.00, 85.00, NULL, NULL, NULL, 'A-', 31, 13),
(116, 99.00, 77.00, 94.00, NULL, NULL, NULL, 'A', 31, 14),
(117, 89.00, 98.00, 90.00, 95.00, 100.00, 96.50, 'A', 31, 15),
(118, 85.00, 82.00, 84.00, 92.00, 100.00, 75.00, 'A', 31, 17),
(119, 97.00, 89.00, 93.00, 100.00, 100.00, 98.80, 'A', 31, 19),
(120, 98.00, 100.00, 100.00, NULL, NULL, NULL, 'A', 31, 23),
(121, 88.00, 82.00, 90.00, NULL, NULL, NULL, 'A', 31, 60),
(122, 84.00, 89.00, 80.00, NULL, NULL, NULL, 'A-', 31, 84),
(123, 70.00, 89.00, 85.00, NULL, NULL, NULL, 'A-', 32, 13),
(124, 99.00, 77.00, 94.00, NULL, NULL, NULL, 'A', 32, 14),
(125, 89.00, 98.00, 90.00, 95.00, 100.00, 96.50, 'A', 32, 15),
(126, 85.00, 82.00, 84.00, 92.00, 100.00, 75.00, 'A', 32, 17),
(127, 97.00, 89.00, 93.00, 100.00, 100.00, 98.80, 'A', 32, 19),
(128, 98.00, 100.00, 100.00, NULL, NULL, NULL, 'A', 32, 23),
(129, 88.00, 82.00, 90.00, NULL, NULL, NULL, 'A', 32, 60),
(130, 84.00, 89.00, 80.00, NULL, NULL, NULL, 'A-', 32, 84),
(131, 45.00, 80.00, 70.00, NULL, NULL, NULL, 'B-', 40, 13),
(132, 99.00, 77.00, 94.00, NULL, NULL, NULL, 'A', 40, 14),
(133, 89.00, 98.00, 90.00, 95.00, 100.00, 96.50, 'A', 40, 15),
(134, 85.00, 82.00, 84.00, 92.00, 100.00, 75.00, 'A', 40, 17),
(135, 97.00, 89.00, 93.00, 100.00, 100.00, 98.80, 'A', 40, 19),
(136, 98.00, 100.00, 100.00, NULL, NULL, NULL, 'A', 40, 23),
(137, 88.00, 82.00, 90.00, NULL, NULL, NULL, 'A', 40, 60),
(138, 84.00, 89.00, 80.00, NULL, NULL, NULL, 'A-', 40, 84),
(139, 97.00, 91.00, 91.00, NULL, NULL, NULL, 'A', 28, 24),
(140, 91.00, 75.00, 91.00, 97.00, 80.00, 96.44, 'A', 28, 25),
(141, 87.00, 80.00, 79.00, NULL, NULL, NULL, 'A-', 28, 30),
(142, 92.00, 85.00, 96.00, 100.00, 100.00, 100.00, 'A', 28, 27),
(143, 95.00, 88.00, 96.00, NULL, NULL, NULL, 'A', 28, 29),
(144, 70.00, 91.00, 88.00, 74.00, 80.00, 91.00, 'A-', 28, 31),
(145, 91.00, 90.00, 84.00, NULL, NULL, NULL, 'A', 28, 33),
(146, 78.00, 77.00, 78.00, NULL, NULL, NULL, 'B+', 28, 85),
(147, 97.00, 91.00, 91.00, NULL, NULL, NULL, 'A', 29, 24),
(148, 91.00, 75.00, 91.00, 97.00, 80.00, 96.44, 'A', 29, 25),
(149, 87.00, 87.00, 87.00, NULL, NULL, NULL, 'A', 29, 30),
(150, 92.00, 85.00, 96.00, 100.00, 100.00, 100.00, 'A', 29, 27),
(151, 95.00, 88.00, 96.00, NULL, NULL, NULL, 'A', 29, 29),
(152, 70.00, 91.00, 88.00, 74.00, 80.00, 91.00, 'A-', 29, 31),
(153, 91.00, 90.00, 84.00, NULL, NULL, NULL, 'A', 29, 33),
(154, 80.00, 80.00, 80.00, NULL, NULL, NULL, 'A-', 29, 85),
(155, 97.00, 91.00, 91.00, NULL, NULL, NULL, 'A', 30, 24),
(156, 91.00, 75.00, 91.00, 97.00, 80.00, 96.44, 'A', 30, 25),
(157, 87.00, 80.00, 79.00, NULL, NULL, NULL, 'A-', 30, 30),
(158, 92.00, 85.00, 96.00, 100.00, 100.00, 100.00, 'A', 30, 27),
(159, 95.00, 88.00, 96.00, NULL, NULL, NULL, 'A', 30, 29),
(160, 70.00, 91.00, 88.00, 74.00, 80.00, 91.00, 'A-', 30, 31),
(161, 91.00, 90.00, 84.00, NULL, NULL, NULL, 'A', 30, 33),
(162, 80.00, 80.00, 80.00, NULL, NULL, NULL, 'A-', 30, 85),
(163, 80.00, 80.00, 80.00, NULL, NULL, NULL, 'A-', 31, 24),
(164, 91.00, 75.00, 91.00, 97.00, 80.00, 96.44, 'A', 31, 25),
(165, 87.00, 80.00, 79.00, NULL, NULL, NULL, 'A-', 31, 30),
(166, 92.00, 85.00, 96.00, 100.00, 100.00, 100.00, 'A', 31, 27),
(167, 95.00, 88.00, 96.00, NULL, NULL, NULL, 'A', 31, 29),
(168, 70.00, 91.00, 88.00, 74.00, 80.00, 91.00, 'A-', 31, 31),
(169, 91.00, 90.00, 84.00, NULL, NULL, NULL, 'A', 31, 33),
(170, 85.00, 85.00, 85.00, NULL, NULL, NULL, 'A', 31, 85),
(171, 80.00, 80.00, 80.00, NULL, NULL, NULL, 'A-', 32, 24),
(172, 91.00, 75.00, 91.00, 97.00, 80.00, 96.44, 'A', 32, 25),
(173, 87.00, 80.00, 79.00, NULL, NULL, NULL, 'A-', 32, 30),
(174, 92.00, 85.00, 96.00, 100.00, 100.00, 100.00, 'A', 32, 27),
(175, 95.00, 88.00, 96.00, NULL, NULL, NULL, 'A', 32, 29),
(176, 70.00, 91.00, 88.00, 74.00, 80.00, 91.00, 'A-', 32, 31),
(177, 91.00, 90.00, 84.00, NULL, NULL, NULL, 'A', 32, 33),
(178, 80.00, 80.00, 80.00, NULL, NULL, NULL, 'A-', 32, 85),
(179, 80.00, 80.00, 80.00, NULL, NULL, NULL, 'A-', 40, 24),
(180, 91.00, 75.00, 91.00, 97.00, 80.00, 96.44, 'A', 40, 25),
(181, 87.00, 80.00, 79.00, NULL, NULL, NULL, 'A-', 40, 30),
(182, 92.00, 85.00, 96.00, 100.00, 100.00, 100.00, 'A', 40, 27),
(183, 95.00, 88.00, 96.00, NULL, NULL, NULL, 'A', 40, 29),
(184, 70.00, 91.00, 88.00, 74.00, 80.00, 91.00, 'A-', 40, 31),
(185, 91.00, 90.00, 84.00, NULL, NULL, NULL, 'A', 40, 33),
(186, 80.00, 80.00, 80.00, NULL, NULL, NULL, 'A-', 40, 85);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `privilege` int(11) NOT NULL,
  `infoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `email`, `password`, `privilege`, `infoID`) VALUES
(1, 'dev.civao@gmail.com', 'f843ff7707155b322ea8834518404441ecb20d22', 3, 1),
(2, 'andre.rusli@umn.ac.id', '39bd95ecb1419b9f497b5a64f2926102625bd8c1', 2, 2),
(3, 'hansun@umn.ac.id', '716bb1db4f72c2b121ba081347cbed7b8aa63752', 2, 3),
(4, 'dennis.gunawan@umn.ac.id', 'd1fdfd2857c80eed60c996429307151fc8bbee10', 2, 4),
(5, 'arya.wicaksana@umn.ac.id', 'e05834681ceb8bb472a7bc9e0c05969a0c1e6501', 2, 5),
(6, 'farica.putri@umn.ac.id', '2b894a177d245f7b11ce8398ef12557cde417fe1', 2, 6),
(7, 'alethea.suryadibrata@umn.ac.id', '19346cdf64868ff56a815a46049cd21006510f1b', 2, 7),
(8, 'marcel.kristanda@umn.ac.id', 'ae9ae8475ce05b88997bff405fda0f6a45329011', 2, 8),
(9, 'yustinus.wiratama@umn.ac.id', 'b5dfc5c4614bb299cbc9f88fc6612181be891e6c', 2, 9),
(10, 'adhi.kusnadi@umn.ac.id', 'f0ea5daf0540b9916d8ab1e175318fcd5279b74b', 2, 10),
(11, 'ivransa.pane@umn.ac.id', '1abf215cc0f900576ccb4108bab4996810a7fa02', 2, 11),
(12, 'imade.astawa@umn.ac.id', 'c7e2d3ca89b709f6e3447552af22fddcaefa72e1', 2, 12),
(13, 'nofriyadi.nurdam@umn.ac.id', '788079b6371af57be5cbb603c9a48c7dff366fac', 2, 13),
(14, 'nyimas.sartika@umn.ac.id', '40ebde3a0a04bf905523d925b449f2bc6660751d', 2, 14),
(15, 'markus.fresnel@umn.ac.id', '2a02b6e949c17b207ed16fa17e2a4dd7f99275ab', 2, 15),
(16, 'felix.lokananta@umn.ac.id', 'aebd14ca679f1fae02418b71c30ce622d658369a', 2, 16),
(17, 'hadi.hermanda@umn.ac.id', 'bf9d1c85a86f1ccb1a193cff4b5c17885fed878c', 2, 17),
(18, 'wolfgang.jalma@umn.ac.id', '5e0d7015944ffaa202ca15b72cd8280e43e1707e', 2, 18),
(19, 'mohamad.subekti@umn.ac.id', '244ae305ab9d215f858be1efec2a904eac95a9d8', 2, 19),
(20, 'aditiyawan@umn.ac.id', '794819c8100cce0c4b35eaceb6d672377b81cf68', 2, 20),
(21, 'tanthingheng@umn.ac.id', '7a7b97e7aeca198510007eef85b73db312925176', 2, 21),
(22, 'samuel@umn.ac.id', 'cdb0a8508bdbfd4f9dd3a97173ceb759cd2d9227', 2, 22),
(23, 'ananda.kusuma@umn.ac.id', 'a9d46340b987cd707b9727a48bd5fe36b77d434f', 2, 23),
(24, 'revie.pitono@umn.ac.id', '322ecd81d0c0b64036878a412f8466e48449f3d4', 2, 24),
(25, 'wira.munggana@umn.ac.id', '86c08899e43aa8689087f74a3957bdf4740fdacf', 2, 25),
(26, 'agus.sulaiman@umn.ac.id', '434e43a262c95c5a345542cdf327222adf18aa93', 2, 26),
(27, 'ardian.utomo@umn.ac.id', 'ac38fecfdfff2f395531f85c752a805850fb1590', 2, 27),
(28, 'anthony3@student.umn.ac.id', '708b03176702e0295a5b6126f51472ef0aac8a1e', 1, 28),
(29, 'octavany@student.umn.ac.id', '65087325d0a88206515ee154dd3d49efd63a8c55', 1, 29),
(30, 'vionilyn@student.umn.ac.id', '7438c48d044167b65a65936f2df1c1ee285c0114', 1, 30),
(31, 'ivy.marcia@student.umn.ac.id', 'feb5a68fe53ad568eb1e972085ca25f020ce3bf9', 1, 31),
(32, 'christopher.reinaldo@student.umn.ac.id', '0ef94c37caf6b9c39868e93b71af7a4e4d013fe0', 1, 32),
(33, 'yohanes.billy@umn.ac.id', '534e0d3621589f401b21e5466d69eda42b13e167', 2, 33),
(34, 'arcadius.benawa@umn.ac.id', '663cd2132b55a209f1f18d4b43cd9897feb1e012', 2, 34),
(35, 'siti.muniroh@umn.ac.id', '140686fdae071c627efdcb53211b03121d3c196f', 2, 35),
(36, 'tjoohongsing@umn.ac.id', '5edd2e99256baf20d53d983491343311accbcd0c', 2, 36),
(37, 'indarsanta@umn.ac.id', '3213700a4cf82d6d21f05435cd312c690b58a60c', 2, 37),
(38, 'iwan.irawan@umn.ac.id', '698031c6e34c7d18fdf4ed1c7f14016cc37b05b3', 2, 38),
(39, 'parlindungan.sianipar@umn.ac.id', 'd57a94fae8ab29bbb7311ead01795e7cde8dcdc4', 2, 39),
(40, 'adjie@student.umn.ac.id', '882b2f68559fe5d91b33bafb73ee5840fd8adfb9', 1, 40);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eventID`);

--
-- Indexes for table `infouser`
--
ALTER TABLE `infouser`
  ADD PRIMARY KEY (`infoID`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kelasID`),
  ADD KEY `matkulID` (`matkulID`),
  ADD KEY `dosenID` (`dosenID`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`krsID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `kelasID` (`kelasID`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`matkulID`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`nilaiID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `kelasID` (`kelasID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`),
  ADD KEY `infoID` (`infoID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `eventID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
--
-- AUTO_INCREMENT for table `infouser`
--
ALTER TABLE `infouser`
  MODIFY `infoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `kelasID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `krs`
--
ALTER TABLE `krs`
  MODIFY `krsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;
--
-- AUTO_INCREMENT for table `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `matkulID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `nilaiID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_ibfk_1` FOREIGN KEY (`matkulID`) REFERENCES `matakuliah` (`matkulID`),
  ADD CONSTRAINT `kelas_ibfk_2` FOREIGN KEY (`dosenID`) REFERENCES `users` (`userID`);

--
-- Constraints for table `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`),
  ADD CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`kelasID`) REFERENCES `kelas` (`kelasID`);

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`),
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`kelasID`) REFERENCES `kelas` (`kelasID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`infoID`) REFERENCES `infouser` (`infoID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
