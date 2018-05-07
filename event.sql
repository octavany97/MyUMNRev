-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 14, 2017 at 01:05 AM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eventID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `eventID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
