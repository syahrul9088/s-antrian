-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2021 at 06:14 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

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
-- Table structure for table `antrian`
--

CREATE TABLE `antrian` (
  `antrian_id` int(11) NOT NULL,
  `antrian_tanggal` varchar(50) DEFAULT NULL,
  `antrian_status` varchar(50) NOT NULL,
  `antrian_waktu_panggil` varchar(50) DEFAULT current_timestamp(),
  `antrian_waktu_selesai` varchar(50) DEFAULT NULL,
  `antrian_pelayanan_id` int(11) NOT NULL,
  `antrian_loket_id` int(11) NOT NULL,
  `antrian_last` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
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
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-07-11-044811', 'App\\Database\\Migrations\\Pelayanan', 'default', 'App', 1625979235, 1),
(2, '2021-07-11-054601', 'App\\Database\\Migrations\\Loket', 'default', 'App', 1625982577, 2),
(3, '2021-07-11-070851', 'App\\Database\\Migrations\\Loket', 'default', 'App', 1625987345, 3);

-- --------------------------------------------------------

--
-- Table structure for table `pelayanan`
--

CREATE TABLE `pelayanan` (
  `pelayanan_id` int(11) UNSIGNED NOT NULL,
  `pelayanan_name` varchar(100) NOT NULL,
  `pelayanan_code` varchar(100) NOT NULL,
  `pelayanan_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pelayanan`
--

INSERT INTO `pelayanan` (`pelayanan_id`, `pelayanan_name`, `pelayanan_code`, `pelayanan_description`) VALUES
(4, 'Customer Service', 'CS', 'Layanan ini di gunakan untuk pelayanan kepada konsumenn'),
(5, 'Pengaduan', 'PGDN', 'Layanan ini di gunakan untuk melakukan pengaduan'),
(6, 'Permohonan Baru', 'PB', 'Layanan ini di gunakan untuk permohonan baru'),
(7, 'Perpanjangan', 'PNG', 'Layanan ini di gunakan u');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `antrian`
--
ALTER TABLE `antrian`
  ADD PRIMARY KEY (`antrian_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelayanan`
--
ALTER TABLE `pelayanan`
  ADD PRIMARY KEY (`pelayanan_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `antrian`
--
ALTER TABLE `antrian`
  MODIFY `antrian_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pelayanan`
--
ALTER TABLE `pelayanan`
  MODIFY `pelayanan_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
