-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2022 at 02:56 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siswa_rpl2`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `akun_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_akun` varchar(100) NOT NULL,
  `role` enum('admin','teller') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`akun_id`, `username`, `password`, `nama_akun`, `role`) VALUES
(1, 'andiahmad', 'andiahmad', 'Andi Ahmad', 'admin'),
(2, 'nona', '1b78b10964f4530a3fe5e5e1a119c3e5', 'Nona', 'teller');

-- --------------------------------------------------------

--
-- Table structure for table `datadiri`
--

CREATE TABLE `datadiri` (
  `nis` char(8) COLLATE utf8_croatian_ci NOT NULL,
  `nama_lengkap` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nilai` float NOT NULL,
  `kelas_id` char(4) COLLATE utf8_croatian_ci NOT NULL,
  `eskul_id` char(3) COLLATE utf8_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `datadiri`
--

INSERT INTO `datadiri` (`nis`, `nama_lengkap`, `tanggal_lahir`, `nilai`, `kelas_id`, `eskul_id`) VALUES
('12160001', 'Andi Ahmad Yusup', '2022-09-29', 98, '2202', ''),
('12160002', 'Andi Ahmad Kasep', '2022-09-29', 98, '', '001'),
('12160003', 'Andi Uzumaki', '2022-09-29', 94, '2202', '002');

-- --------------------------------------------------------

--
-- Table structure for table `ref_eskul`
--

CREATE TABLE `ref_eskul` (
  `eskul_id` char(3) COLLATE utf8_croatian_ci NOT NULL,
  `nama_eskul` varchar(50) COLLATE utf8_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `ref_eskul`
--

INSERT INTO `ref_eskul` (`eskul_id`, `nama_eskul`) VALUES
('001', 'PRAMUKA'),
('002', 'PASKIBRA'),
('003', 'MARCHING BAND'),
('004', 'PADUAN SUARA'),
('005', 'FUTSAL');

-- --------------------------------------------------------

--
-- Table structure for table `ref_kelas`
--

CREATE TABLE `ref_kelas` (
  `kelas_id` char(4) COLLATE utf8_croatian_ci NOT NULL,
  `nama_kelas` varchar(50) COLLATE utf8_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `ref_kelas`
--

INSERT INTO `ref_kelas` (`kelas_id`, `nama_kelas`) VALUES
('2201', 'XI RPL 1'),
('2202', 'XI RPL 2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`akun_id`);

--
-- Indexes for table `datadiri`
--
ALTER TABLE `datadiri`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `ref_eskul`
--
ALTER TABLE `ref_eskul`
  ADD PRIMARY KEY (`eskul_id`);

--
-- Indexes for table `ref_kelas`
--
ALTER TABLE `ref_kelas`
  ADD PRIMARY KEY (`kelas_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
