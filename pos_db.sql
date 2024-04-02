-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2024 at 08:37 AM
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
  `prefix` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `admin_username` varchar(50) NOT NULL,
  `Activity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_admin`
--

INSERT INTO `activity_admin` (`prefix`, `id`, `tanggal`, `admin_username`, `Activity`) VALUES
('ALI', 1, '2024-04-02 04:49:02', 'null', 'Login'),
('ALI', 2, '2024-04-02 04:52:41', 'null', 'Login'),
('ALI', 3, '2024-04-02 04:53:49', 'null', 'Login'),
('ALI', 4, '2024-04-02 04:56:14', 'null', 'Login'),
('ALI', 5, '2024-04-02 04:57:41', 'felicias', 'Login'),
('ALI', 6, '2024-04-02 05:21:27', 'felicias', 'Login'),
('ALI', 7, '2024-04-02 05:22:00', 'felicias', 'Login'),
('ALI', 8, '2024-04-02 05:22:49', 'felicias', 'Login'),
('ALI', 9, '2024-04-02 05:24:37', 'felicias', 'Login'),
('ALI', 10, '2024-04-02 05:26:06', 'felicias', 'Login'),
('ALO', 11, '2024-04-02 05:26:08', 'felicias', 'Logout'),
('ALI', 12, '2024-04-02 05:29:24', 'felicias', 'Login'),
('ALI', 13, '2024-04-02 05:58:20', 'felicias', 'Login'),
('ALO', 14, '2024-04-02 05:59:50', 'felicias', 'Logout'),
('ALI', 15, '2024-04-02 06:01:34', 'felicias', 'Login'),
('ALO', 16, '2024-04-02 06:01:54', 'felicias', 'Logout'),
('ALI', 17, '2024-04-02 06:06:56', 'felicias', 'Login'),
('ALO', 18, '2024-04-02 06:07:05', 'felicias', 'Logout'),
('ALI', 19, '2024-04-02 06:09:54', 'felicias', 'Login'),
('ALI', 20, '2024-04-02 06:12:49', 'felicias', 'Login'),
('ALO', 21, '2024-04-02 06:12:55', 'felicias', 'Logout'),
('ALI', 22, '2024-04-02 06:13:12', 'felicias', 'Login'),
('ALO', 23, '2024-04-02 06:13:29', 'felicias', 'Logout'),
('ALI', 24, '2024-04-02 06:16:53', 'felicias', 'Login'),
('ALO', 25, '2024-04-02 06:18:28', 'felicias', 'Logout'),
('ALI', 26, '2024-04-02 06:18:49', 'felicias', 'Login'),
('ALO', 27, '2024-04-02 06:19:23', 'felicias', 'Logout');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(11) NOT NULL,
  `admin_username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `admin_username`, `password`) VALUES
(1, 'felicia', '827ccb0eea8a706c4c34a16891f84e7b'),
(2, 'felicias', 'c6f057b86584942e415435ffb1fa93d4');

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
(2, 'Indomie Goreng 85gr', 3000),
(3, 'Permen Milkita', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `detail_login_logout`
--

CREATE TABLE `detail_login_logout` (
  `prefix` varchar(10) NOT NULL,
  `log_id` int(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `log_activity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_login_logout`
--

INSERT INTO `detail_login_logout` (`prefix`, `log_id`, `username`, `tanggal`, `log_activity`) VALUES
('LI', 1, 'user1', '2024-04-01 17:28:53', 'Login'),
('LO', 2, 'user1', '2024-04-01 17:29:01', 'Logout'),
('LI', 5, 'null', '2024-04-02 04:27:58', 'Login'),
('LO', 6, 'null', '2024-04-02 04:28:05', 'Logout'),
('LI', 7, 'null', '2024-04-02 04:28:33', 'Login'),
('LO', 8, 'null', '2024-04-02 04:41:46', 'Logout'),
('LI', 9, 'null', '2024-04-02 04:52:02', 'Login'),
('LI', 10, 'user1', '2024-04-02 04:56:55', 'Login'),
('ALO', 11, 'felicias', '2024-04-02 05:22:57', 'Logout'),
('ALO', 12, 'felicias', '2024-04-02 05:24:40', 'Logout'),
('LI', 13, 'user1', '2024-04-02 05:25:26', 'Login'),
('LO', 14, 'user1', '2024-04-02 05:25:28', 'Logout');

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
('2024-04-02 00:28:58', 'TR ID 1', '1', 'Pocari Sweat 500 ml', '1', '9500.0', '9500.0'),
('2024-04-02 00:28:58', 'TR ID 1', '1', 'Pocari Sweat 500 ml', '1', '9500.0', '9500.0'),
('2024-04-02 00:28:58', 'TR ID 1', '1', 'Pocari Sweat 500 ml', '1', '9500.0', '9500.0'),
('2024-04-02 00:28:58', 'TR ID 1', '1', 'Pocari Sweat 500 ml', '1', '9500.0', '9500.0'),
('2024-04-02 03:27:29', 'TR ID 2', '1', 'Pocari Sweat 500 ml', '1', '9500.0', '9500.0'),
('2024-04-02 03:27:29', 'TR ID 2', '1', 'Pocari Sweat 500 ml', '1', '9500.0', '9500.0'),
('2024-04-02 03:27:29', 'TR ID 2', '1', 'Pocari Sweat 500 ml', '1', '9500.0', '9500.0'),
('2024-04-02 03:28:29', 'TR ID 3', '1', 'Pocari Sweat 500 ml', '1', '9500.0', '9500.0'),
('2024-04-02 03:28:29', 'TR ID 3', '1', 'Pocari Sweat 500 ml', '1', '9500.0', '9500.0'),
('2024-04-02 03:28:29', 'TR ID 3', '1', 'Pocari Sweat 500 ml', '1', '9500.0', '9500.0');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `prefix` varchar(10) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `total_pembayaran` varchar(255) NOT NULL,
  `activity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`prefix`, `id_transaksi`, `username`, `tanggal`, `total_pembayaran`, `activity`) VALUES
('TR ID ', 1, 'user1', '2024-04-01 17:28:58', '38,000', 'Transaksi'),
('TR ID ', 2, 'null', '2024-04-01 20:27:29', '28,500', 'Transaksi'),
('TR ID ', 3, 'null', '2024-04-01 20:28:29', '28,500', 'Transaksi');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'felicia', '$2y$10$mH5LJmv0.ExCCCDpAXClHOGnPqipP4ymjtWChuk7Cc2LmRRj/trNC'),
(2, 'hi', '*58D24DFDC5B5D55D6F6A25496AB51B74AA0FF7C9'),
(3, 'user', '$2y$10$/CJxn9XrdizA7UY0teSFp.7flMOMrVHmgJh1xKf4cZ98zVZGQDHnK'),
(4, 'user1', '698d51a19d8a121ce581499d7b701668'),
(5, 'user2', '4122cb13c7a474c1976c9706ae36521d');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_admin`
--
ALTER TABLE `activity_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `detail_login_logout`
--
ALTER TABLE `detail_login_logout`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_admin`
--
ALTER TABLE `activity_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `kode` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `detail_login_logout`
--
ALTER TABLE `detail_login_logout`
  MODIFY `log_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
