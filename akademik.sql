-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2021 at 03:30 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `khs`
--

CREATE TABLE `khs` (
  `NIM` varchar(50) NOT NULL,
  `kodeMK` varchar(50) NOT NULL,
  `nilai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `khs`
--

INSERT INTO `khs` (`NIM`, `kodeMK`, `nilai`) VALUES
('1800018210', 'MK01', '80'),
('1800018215', 'MK02', '90'),
('1800018216', 'MK03', '95'),
('1800018227', 'MK04', '85'),
('1800018197', 'MK05', '90');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(50) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jkel` varchar(1) DEFAULT NULL,
  `alamat` text,
  `tgllhr` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jkel`, `alamat`, `tgllhr`) VALUES
('1800018197', 'Afrialdi Saputra', 'L', 'Riau', '2000-08-29'),
('1800018210', 'Restu', 'P', 'Lombok', '2021-10-21'),
('1800018215', 'Nanda Hani', 'P', 'Nusa Tenggara Barat\r\n', '1995-10-01'),
('1800018216', 'Try Wulandary', 'P', 'Papua', '1999-01-01'),
('1800018227', 'Eka Hani Putri', 'P', 'Lampung', '2003-06-12');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode` varchar(50) NOT NULL,
  `nama_matkul` varchar(50) NOT NULL,
  `sks` int(100) NOT NULL,
  `semester` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kode`, `nama_matkul`, `sks`, `semester`) VALUES
('MK01', 'Pemrograman Mobile', 3, 5),
('MK02', 'Forensik Digital', 3, 7),
('MK03', 'Kemanan Komputer', 3, 5),
('MK04', 'Analisis Perancangan Perangkat Lunak', 3, 6),
('MK05', 'Penjaminan Kualitas Perangkat Lunak', 3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `level` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `password`, `nama_lengkap`, `email`, `level`, `alamat`) VALUES
('cika', '827ccb0eea8a706c4c34a16891f84e7b', 'cika lestari', 'cikalestari@gmail.com', '2', 'Kalimantan'),
('siska', 'd41d8cd98f00b204e9800998ecf8427e', 'siska kohl', 'siska@gmail.com', '1', 'Lampung'),
('try', '1d31802d64bae29d88923d795fc73734', 'Try Wulandary', 'wulandarytry869@gmail.com', '3', 'Papua');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
