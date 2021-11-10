-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2021 at 04:56 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perentalan_mobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `harga`
--

CREATE TABLE `harga` (
  `tipe_harga` char(1) DEFAULT NULL,
  `hargahari` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `harga`
--

INSERT INTO `harga` (`tipe_harga`, `hargahari`) VALUES
('A', '700.000/hari'),
('B', '400.000/Hari'),
('C', '1.000.000/Hari'),
('D', '300.000/hari');

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` varchar(10) NOT NULL,
  `nama_mobil` varchar(30) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `nama_mobil`, `kelas`) VALUES
('H01', 'Honda Jazz', 'City Car'),
('S01', 'Suzuki Carry', 'Pickup'),
('T01', 'Toyota Innova', 'Family'),
('T02', 'Toyota Fortuner', 'Executive');

-- --------------------------------------------------------

--
-- Table structure for table `penyewa`
--

CREATE TABLE `penyewa` (
  `id_penyewa` varchar(10) NOT NULL,
  `nama` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penyewa`
--

INSERT INTO `penyewa` (`id_penyewa`, `nama`) VALUES
('AO1', 'Ariq'),
('AO2', 'Adit'),
('DO1', 'Dimas'),
('HO1', 'Hengki');

-- --------------------------------------------------------

--
-- Table structure for table `penyewaan`
--

CREATE TABLE `penyewaan` (
  `kode_sewa` varchar(5) NOT NULL,
  `id_penyewa` varchar(10) DEFAULT NULL,
  `id_mobil` varchar(10) DEFAULT NULL,
  `hargahari` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penyewaan`
--

INSERT INTO `penyewaan` (`kode_sewa`, `id_penyewa`, `id_mobil`, `hargahari`) VALUES
('001A', 'A01', 'T01', '500.000/Hari'),
('001B', 'A01', 'S01', '200.000/Hari'),
('002A', 'A02', 'H01', '400.000/Hari'),
('002B', 'A02', 'T01', '500.000/Hari'),
('003', 'D01', 'T02', '1.000.000/Hari'),
('004', 'H01', 'S01', '200.000/Hari');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `penyewa`
--
ALTER TABLE `penyewa`
  ADD PRIMARY KEY (`id_penyewa`);

--
-- Indexes for table `penyewaan`
--
ALTER TABLE `penyewaan`
  ADD PRIMARY KEY (`kode_sewa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
