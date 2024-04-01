-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2024 at 04:20 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_admin`
--

CREATE TABLE `activity_admin` (
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `admin_username` varchar(50) NOT NULL,
  `Activity` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_username`, `password`) VALUES
('felicia', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode` int(50) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `harga` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode`, `nama`, `harga`) VALUES
(1, 'Pocari Sweat 500 ml', 9500),
(2, 'Indomie Goreng 85gr', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `detail_login_logout`
--

CREATE TABLE `detail_login_logout` (
  `log_id` int(100) NOT NULL,
  `prefix` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `log_activity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_login_logout`
--

INSERT INTO `detail_login_logout` (`log_id`, `prefix`, `username`, `tanggal`, `log_activity`) VALUES
(1, 'LI', 'user1', '2024-04-01 13:31:27', 'Login'),
(2, 'TR', 'user1', '2024-04-01 13:31:47', 'Transaksi'),
(3, 'LI', 'user1', '2024-04-01 13:33:18', 'Login'),
(4, 'TR', 'user1', '2024-04-01 13:33:51', 'Transaksi'),
(5, 'LO', 'user1', '2024-04-01 13:34:06', 'Logout'),
(6, 'LI', 'user1', '2024-04-01 14:01:46', 'Login'),
(7, 'TR', 'user1', '2024-04-01 14:01:58', 'Transaksi'),
(8, 'LO', 'user1', '2024-04-01 14:02:43', 'Logout'),
(9, 'LI', 'user1', '2024-04-01 14:02:54', 'Login'),
(10, 'TR', 'user1', '2024-04-01 14:03:04', 'Transaksi'),
(11, 'LO', 'user1', '2024-04-01 14:03:14', 'Logout'),
(12, 'LI', 'user1', '2024-04-01 14:04:48', 'Login'),
(13, 'TR', 'user1', '2024-04-01 14:04:55', 'Transaksi'),
(14, 'LO', 'user1', '2024-04-01 14:05:15', 'Logout'),
(15, 'LI', 'user1', '2024-04-01 14:05:37', 'Login'),
(16, 'TR', 'user1', '2024-04-01 14:05:46', 'Transaksi'),
(17, 'LI', 'user1', '2024-04-01 14:08:34', 'Login'),
(18, 'TR', 'user1', '2024-04-01 14:08:44', 'Transaksi'),
(19, 'LO', 'user1', '2024-04-01 14:08:55', 'Logout'),
(20, 'LI', 'user1', '2024-04-01 14:11:51', 'Login'),
(21, 'LO', 'user1', '2024-04-01 14:12:00', 'Logout'),
(22, 'LI', 'user1', '2024-04-01 14:12:39', 'Login'),
(23, 'TR', 'user1', '2024-04-01 14:12:52', 'Transaksi'),
(24, 'LO', 'user1', '2024-04-01 14:13:12', 'Logout'),
(25, 'LI', 'user1', '2024-04-01 14:14:04', 'Login'),
(26, 'LO', 'user1', '2024-04-01 14:14:58', 'Logout'),
(27, 'LI', 'user1', '2024-04-01 14:15:07', 'Login'),
(28, 'LO', 'user1', '2024-04-01 14:15:38', 'Logout'),
(29, 'LI', 'user1', '2024-04-01 14:15:48', 'Login'),
(30, 'TR', 'user1', '2024-04-01 14:16:08', 'Transaksi'),
(31, 'LO', 'user1', '2024-04-01 14:17:11', 'Logout');

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `tanggal` varchar(255) NOT NULL,
  `id_transaksi` varchar(255) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `harga_total` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`tanggal`, `id_transaksi`, `kode`, `nama`, `qty`, `harga`, `harga_total`) VALUES
('2024-04-01 20:31:47', 'TR - 2', '1', 'Pocari Sweat 500 ml', '100', '9500.0', '950000.0'),
('2024-04-01 20:31:47', 'TR - 2', '2', 'Indomie Goreng 85gr', '50', '3000.0', '150000.0'),
('2024-04-01 20:33:51', 'TR - 4', '1', 'Pocari Sweat 500 ml', '1', '9500.0', '9500.0'),
('2024-04-01 21:01:58', 'TR - 7', '1', 'Pocari Sweat 500 ml', '1', '9500.0', '9500.0'),
('2024-04-01 21:01:58', 'TR - 7', '2', 'Indomie Goreng 85gr', '1', '3000.0', '3000.0'),
('2024-04-01 21:01:58', 'TR - 7', '2', 'Indomie Goreng 85gr', '1', '3000.0', '3000.0'),
('2024-04-01 21:03:04', 'TR - 10', '1', 'Pocari Sweat 500 ml', '11', '9500.0', '104500.0'),
('2024-04-01 21:04:55', 'TR - 13', '1', 'Pocari Sweat 500 ml', '1', '9500.0', '9500.0'),
('2024-04-01 21:05:46', 'TR - 16', '1', 'Pocari Sweat 500 ml', '1', '9500.0', '9500.0'),
('2024-04-01 21:08:44', 'TR - 18', '1', 'Pocari Sweat 500 ml', '1', '9500.0', '9500.0'),
('2024-04-01 21:08:44', 'TR - 18', '2', 'Indomie Goreng 85gr', '1', '3000.0', '3000.0'),
('2024-04-01 21:08:44', 'TR - 18', '2', 'Indomie Goreng 85gr', '1', '3000.0', '3000.0'),
('2024-04-01 21:08:44', 'TR - 18', '2', 'Indomie Goreng 85gr', '1', '3000.0', '3000.0'),
('2024-04-01 21:12:52', 'TR - 23', '1', 'Pocari Sweat 500 ml', '1', '9500.0', '9500.0'),
('2024-04-01 21:12:52', 'TR - 23', '1', 'Pocari Sweat 500 ml', '1', '9500.0', '9500.0'),
('2024-04-01 21:12:52', 'TR - 23', '1', 'Pocari Sweat 500 ml', '1', '9500.0', '9500.0'),
('2024-04-01 21:12:52', 'TR - 23', '1', 'Pocari Sweat 500 ml', '1', '9500.0', '9500.0'),
('2024-04-01 21:16:08', 'TR - 30', '1', 'Pocari Sweat 500 ml', '1', '9500.0', '9500.0'),
('2024-04-01 21:16:08', 'TR - 30', '2', 'Indomie Goreng 85gr', '1', '3000.0', '3000.0');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `jenis_pembayaran` varchar(50) NOT NULL,
  `total_pembayaran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('felicia', '$2y$10$mH5LJmv0.ExCCCDpAXClHOGnPqipP4ymjtWChuk7Cc2LmRRj/trNC'),
('hi', '*58D24DFDC5B5D55D6F6A25496AB51B74AA0FF7C9'),
('user', '$2y$10$/CJxn9XrdizA7UY0teSFp.7flMOMrVHmgJh1xKf4cZ98zVZGQDHnK'),
('user1', '698d51a19d8a121ce581499d7b701668'),
('user2', '4122cb13c7a474c1976c9706ae36521d');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_username`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `detail_login_logout`
--
ALTER TABLE `detail_login_logout`
  ADD PRIMARY KEY (`log_id`) USING BTREE;

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `kode` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `detail_login_logout`
--
ALTER TABLE `detail_login_logout`
  MODIFY `log_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
