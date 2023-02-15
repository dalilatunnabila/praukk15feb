-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2023 at 08:35 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_praukk_nabila`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_dvd`
--

CREATE TABLE `tb_dvd` (
  `id_dvd` int(10) NOT NULL,
  `genre_film` varchar(30) NOT NULL,
  `judul_film` varchar(50) NOT NULL,
  `tahun_film` int(4) NOT NULL,
  `tanggal_sewa` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_dvd`
--

INSERT INTO `tb_dvd` (`id_dvd`, `genre_film`, `judul_film`, `tahun_film`, `tanggal_sewa`, `tanggal_kembali`, `harga`) VALUES
(2, 'yuy', 'yu', 1, '2023-02-25', '2023-02-10', 0),
(3, 'horor', 'hantu', 2021, '2023-02-15', '2023-02-15', 24),
(4, 'luck', 'doraemonn', 2023, '2023-02-22', '2023-02-08', 235),
(5, 'lucu', 'upinipin', 2023, '2023-02-14', '2023-02-14', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_penyewa`
--

CREATE TABLE `tb_penyewa` (
  `id_penyewa` int(10) NOT NULL,
  `nama_penyewa` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `id_dvd` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_penyewa`
--

INSERT INTO `tb_penyewa` (`id_penyewa`, `nama_penyewa`, `alamat`, `id_dvd`) VALUES
(3, 'abel', 'semarang', 3),
(4, 'intann', 'dalemann', 4),
(5, 'putri', 'tambakroto', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_dvd`
--
ALTER TABLE `tb_dvd`
  ADD PRIMARY KEY (`id_dvd`);

--
-- Indexes for table `tb_penyewa`
--
ALTER TABLE `tb_penyewa`
  ADD PRIMARY KEY (`id_penyewa`),
  ADD KEY `id_dvd` (`id_dvd`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_dvd`
--
ALTER TABLE `tb_dvd`
  MODIFY `id_dvd` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_penyewa`
--
ALTER TABLE `tb_penyewa`
  MODIFY `id_penyewa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_penyewa`
--
ALTER TABLE `tb_penyewa`
  ADD CONSTRAINT `tb_penyewa` FOREIGN KEY (`id_dvd`) REFERENCES `tb_dvd` (`id_dvd`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
