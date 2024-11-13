-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2024 at 01:14 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbklinik`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nomor_hp` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `nama`, `nomor_hp`, `alamat`, `photo`) VALUES
(1, 'Dr. Andre Setijono', '097565434278', 'Jl. teggarong', 'http://localhost/e-klinik/uploads/files/vtpqfe105u7nd8a.jpg'),
(2, 'Dr. Hendra Irawan', '098778900987', 'Marina', 'http://localhost/e-klinik/uploads/files/eld1iwxcm3jfq6u.jpg'),
(3, 'Dr. Awan Setiawan', '087645678934', 'Jonggol', 'http://localhost/e-klinik/uploads/files/_h086mvb5jwtofd.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id_obat` int(11) NOT NULL,
  `nama_obat` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id_obat`, `nama_obat`, `keterangan`) VALUES
(1, 'Bodrek', 'obat sakit kepala'),
(2, 'Paratusin', 'Flu dan Batuk'),
(3, 'Ultraflu', 'sakit Kepala dan Flu');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(11) NOT NULL,
  `nama_pasien` varchar(255) NOT NULL,
  `jk` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama_pasien`, `jk`, `no_hp`, `alamat`, `photo`) VALUES
(1, 'Sinta', 'Perempuan', '098765467890', 'Jakarta', 'http://localhost/e-klinik/uploads/files/xn2kuj_oed9tqbv.jpg'),
(2, 'Santi', 'Perempuan', '0989767578976', 'Bandung', 'http://localhost/e-klinik/uploads/files/r73de_gxuzbh5j0.jpg'),
(3, 'Fina', 'Perempuan', '098778657345', 'Kudus', 'http://localhost/e-klinik/uploads/files/cr5xmonpy6gwfa4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` varchar(255) NOT NULL,
  `login_session_key` varchar(255) DEFAULT NULL,
  `email_status` varchar(255) DEFAULT NULL,
  `password_expire_date` datetime DEFAULT '2025-02-05 00:00:00',
  `password_reset_key` varchar(255) DEFAULT NULL,
  `user_role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `username`, `nama`, `jabatan`, `email`, `password`, `photo`, `login_session_key`, `email_status`, `password_expire_date`, `password_reset_key`, `user_role_id`) VALUES
(1, 'Admin', 'Paidi', 'Admin Data', 'Paidi@gmail.com', '$2y$10$fE1wQ2/WnMXwDCXTpOc9KOdRNW0pZVYfPQ6Kjwoj7wnoD5miEF1hi', 'http://localhost/e-klinik/uploads/files/lhpxvyj2k5148_r.png', NULL, NULL, '2025-02-05 00:00:00', NULL, 1),
(2, 'User', 'User', 'User Input Data', 'user@gmail.com', '$2y$10$qDYHLiuiCcf7/dYpx0/WjeK/KGeOOyn06Z5wo1TRAXluNOv3uq9yC', 'http://localhost/e-klinik/uploads/files/lsfi4r5wa3on2dk.jpg', NULL, NULL, '2025-02-05 00:00:00', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rekam_medis`
--

CREATE TABLE `rekam_medis` (
  `id_medis` int(11) NOT NULL,
  `tanggal_periksa` date NOT NULL,
  `nama_pasien` varchar(255) NOT NULL,
  `keluhan` varchar(255) NOT NULL,
  `dokter` varchar(255) NOT NULL,
  `diagnosa` varchar(255) NOT NULL,
  `obat` varchar(255) NOT NULL,
  `ruang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rekam_medis`
--

INSERT INTO `rekam_medis` (`id_medis`, `tanggal_periksa`, `nama_pasien`, `keluhan`, `dokter`, `diagnosa`, `obat`, `ruang`) VALUES
(1, '2024-11-05', 'Sinta', 'SAKIT TENGGOROKAN\r\nSAKIT KEPALA', 'Dr. Andre Setijono', 'PENDERITA MENGALAMI SAKIT KEPALA', 'Bodrek', 'Ruang A'),
(2, '2024-11-04', 'Santi', 'Sakit Kepala\r\nFlu\r\nmulut bergetar', 'Dr. Awan Setiawan', 'Flu', 'Paratusin,Ultraflu,Bodrek', 'Ruang B');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Administrator'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `action_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`permission_id`, `role_id`, `page_name`, `action_name`) VALUES
(1, 1, 'dokter', 'list'),
(2, 1, 'dokter', 'view'),
(3, 1, 'dokter', 'add'),
(4, 1, 'dokter', 'edit'),
(5, 1, 'dokter', 'editfield'),
(6, 1, 'dokter', 'delete'),
(7, 1, 'dokter', 'import_data'),
(8, 1, 'obat', 'list'),
(9, 1, 'obat', 'view'),
(10, 1, 'obat', 'add'),
(11, 1, 'obat', 'edit'),
(12, 1, 'obat', 'editfield'),
(13, 1, 'obat', 'delete'),
(14, 1, 'obat', 'import_data'),
(15, 1, 'pasien', 'list'),
(16, 1, 'pasien', 'view'),
(17, 1, 'pasien', 'add'),
(18, 1, 'pasien', 'edit'),
(19, 1, 'pasien', 'editfield'),
(20, 1, 'pasien', 'delete'),
(21, 1, 'pasien', 'import_data'),
(22, 1, 'rekam_medis', 'list'),
(23, 1, 'rekam_medis', 'view'),
(24, 1, 'rekam_medis', 'add'),
(25, 1, 'rekam_medis', 'edit'),
(26, 1, 'rekam_medis', 'editfield'),
(27, 1, 'rekam_medis', 'delete'),
(28, 1, 'rekam_medis', 'import_data'),
(29, 1, 'ruang', 'list'),
(30, 1, 'ruang', 'view'),
(31, 1, 'ruang', 'add'),
(32, 1, 'ruang', 'edit'),
(33, 1, 'ruang', 'editfield'),
(34, 1, 'ruang', 'delete'),
(35, 1, 'ruang', 'import_data'),
(36, 1, 'pengguna', 'list'),
(37, 1, 'pengguna', 'view'),
(38, 1, 'pengguna', 'add'),
(39, 1, 'pengguna', 'edit'),
(40, 1, 'pengguna', 'editfield'),
(41, 1, 'pengguna', 'delete'),
(42, 1, 'pengguna', 'userregister'),
(43, 1, 'pengguna', 'accountedit'),
(44, 1, 'pengguna', 'accountview'),
(45, 1, 'role_permissions', 'list'),
(46, 1, 'role_permissions', 'view'),
(47, 1, 'role_permissions', 'add'),
(48, 1, 'role_permissions', 'edit'),
(49, 1, 'role_permissions', 'editfield'),
(50, 1, 'role_permissions', 'delete'),
(51, 1, 'roles', 'list'),
(52, 1, 'roles', 'view'),
(53, 1, 'roles', 'add'),
(54, 1, 'roles', 'edit'),
(55, 1, 'roles', 'editfield'),
(56, 1, 'roles', 'delete'),
(57, 2, 'dokter', 'list'),
(58, 2, 'dokter', 'view'),
(59, 2, 'obat', 'list'),
(60, 2, 'obat', 'view'),
(61, 2, 'pasien', 'list'),
(62, 2, 'pasien', 'view'),
(63, 2, 'pasien', 'add'),
(64, 2, 'rekam_medis', 'list'),
(65, 2, 'rekam_medis', 'view'),
(66, 2, 'rekam_medis', 'add'),
(67, 2, 'rekam_medis', 'edit'),
(68, 2, 'rekam_medis', 'editfield'),
(69, 2, 'ruang', 'list'),
(70, 2, 'ruang', 'view'),
(71, 2, 'pengguna', 'accountedit'),
(72, 2, 'pengguna', 'accountview');

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE `ruang` (
  `id_ruang` int(11) NOT NULL,
  `nama_ruang` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`id_ruang`, `nama_ruang`, `keterangan`) VALUES
(1, 'Ruang A', '-'),
(2, 'Ruang B', '-');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `rekam_medis`
--
ALTER TABLE `rekam_medis`
  ADD PRIMARY KEY (`id_medis`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id_ruang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id_dokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rekam_medis`
--
ALTER TABLE `rekam_medis`
  MODIFY `id_medis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `ruang`
--
ALTER TABLE `ruang`
  MODIFY `id_ruang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
