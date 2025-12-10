-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 10, 2025 at 05:16 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel_haji_umroh`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` bigint NOT NULL,
  `user_id` int DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `object_type` varchar(100) DEFAULT NULL,
  `object_id` varchar(100) DEFAULT NULL,
  `message` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `user_id`, `action`, `object_type`, `object_id`, `message`, `created_at`) VALUES
(1, 5, 'login', 'users', '5', 'User login', '2025-10-23 14:56:48'),
(2, 5, 'logout', 'users', '5', 'User logout', '2025-10-23 15:12:16'),
(3, 5, 'login', 'users', '5', 'User login', '2025-10-23 15:15:49'),
(4, 5, 'logout', 'users', '5', 'User logout', '2025-10-24 09:15:59'),
(5, 6, 'login', 'users', '6', 'User login', '2025-10-24 09:16:25'),
(6, 6, 'login', 'users', '6', 'User login', '2025-10-24 09:16:56'),
(7, 6, 'logout', 'users', '6', 'User logout', '2025-10-24 09:17:32'),
(8, 5, 'login', 'users', '5', 'User login', '2025-10-24 09:17:40'),
(9, 5, 'login', 'users', '5', 'User login', '2025-10-24 14:24:54'),
(10, 5, 'logout', 'users', '5', 'User logout', '2025-10-24 14:25:29'),
(11, 5, 'login', 'users', '5', 'User login', '2025-10-24 14:25:33'),
(12, 5, 'CREATE', 'registration', '1', 'Menambahkan data pendaftaran baru', '2025-10-24 14:45:17'),
(13, 5, 'UPDATE', 'registration', '1', 'Mengubah status pendaftaran menjadi confirmed', '2025-10-24 14:46:07'),
(14, 5, 'logout', 'users', '5', 'User logout', '2025-10-24 14:56:57'),
(15, 7, 'login', 'users', '7', 'User login', '2025-10-24 14:58:05'),
(16, 7, 'logout', 'users', '7', 'User logout', '2025-10-24 14:58:16'),
(17, 8, 'login', 'users', '8', 'User login', '2025-10-24 14:58:45'),
(18, 8, 'logout', 'users', '8', 'User logout', '2025-10-24 17:45:41'),
(19, 8, 'login', 'users', '8', 'User login', '2025-10-24 17:45:53'),
(20, 8, 'logout', 'users', '8', 'User logout', '2025-10-24 17:45:57'),
(21, 7, 'login', 'users', '7', 'User login', '2025-10-24 17:46:03'),
(22, 7, 'logout', 'users', '7', 'User logout', '2025-10-24 17:47:14'),
(23, 7, 'login', 'users', '7', 'User login', '2025-10-25 14:05:47'),
(24, 7, 'logout', 'users', '7', 'User logout', '2025-10-25 14:30:33'),
(25, 8, 'login', 'users', '8', 'User login', '2025-10-25 14:30:43'),
(26, 8, 'login', 'users', '8', 'User login', '2025-10-25 14:48:11'),
(27, NULL, 'update', 'payments', NULL, 'Pembayaran ID  dikonfirmasi menjadi ', '2025-11-02 21:01:31'),
(28, NULL, 'update', 'payments', NULL, 'Pembayaran ID  dikonfirmasi menjadi ', '2025-11-02 21:01:31'),
(29, NULL, 'update', 'payments', NULL, 'Pembayaran ID  dikonfirmasi menjadi ', '2025-11-02 21:01:31'),
(30, NULL, 'update', 'payments', NULL, 'Pembayaran ID  dikonfirmasi menjadi ', '2025-11-02 21:01:31'),
(31, NULL, 'update', 'payments', NULL, 'Pembayaran ID  dikonfirmasi menjadi ', '2025-11-02 21:01:32'),
(32, 7, 'login', 'users', '7', 'User login', '2025-11-02 21:03:09'),
(33, 7, 'logout', 'users', '7', 'User logout', '2025-11-02 21:06:00'),
(34, 7, 'login', 'users', '7', 'User login', '2025-11-02 21:07:32'),
(35, 7, 'login', 'users', '7', 'User login', '2025-11-06 22:13:14'),
(36, 7, 'login', 'users', '7', 'User login', '2025-11-17 14:40:03'),
(37, 7, 'logout', 'users', '7', 'User logout', '2025-11-17 14:52:07'),
(38, 7, 'login', 'users', '7', 'User login', '2025-11-17 14:53:28'),
(39, 7, 'update', 'payments', '8', 'Pembayaran ID 8 dikonfirmasi menjadi confirmed', '2025-11-17 17:01:49'),
(40, 7, 'update', 'payments', '7', 'Pembayaran ID 7 dikonfirmasi menjadi rejected', '2025-11-17 17:02:08'),
(41, 7, 'update', 'payments', '9', 'Pembayaran ID 9 dikonfirmasi menjadi confirmed', '2025-11-17 18:23:37'),
(42, 7, 'update', 'payments', '2', 'Pembayaran ID 2 dikonfirmasi menjadi confirmed', '2025-11-17 18:23:39'),
(43, 7, 'login', 'users', '7', 'User login', '2025-11-18 09:02:57'),
(44, 7, 'logout', 'users', '7', 'User logout', '2025-11-18 09:42:53'),
(45, 8, 'login', 'users', '8', 'User login', '2025-11-18 09:42:59'),
(46, 8, 'UPDATE', 'registration', '1', 'Mengubah status pendaftaran menjadi rejected', '2025-11-18 09:43:23'),
(47, 8, 'UPDATE', 'registration', '1', 'Mengubah status pendaftaran menjadi confirmed', '2025-11-18 09:44:09'),
(48, 8, 'logout', 'users', '8', 'User logout', '2025-11-18 09:44:21'),
(49, 8, 'login', 'users', '8', 'User login', '2025-11-18 09:47:12'),
(50, 8, 'logout', 'users', '8', 'User logout', '2025-11-18 09:51:01'),
(51, 7, 'login', 'users', '7', 'User login', '2025-11-18 09:51:30'),
(52, 7, 'logout', 'users', '7', 'User logout', '2025-11-18 09:54:26'),
(53, 7, 'login', 'users', '7', 'User login', '2025-11-18 09:59:51'),
(54, 7, 'logout', 'users', '7', 'User logout', '2025-11-18 12:55:11'),
(55, 7, 'login', 'users', '7', 'User login', '2025-11-18 14:37:44'),
(56, 7, 'logout', 'users', '7', 'User logout', '2025-11-18 14:39:14'),
(57, 8, 'login', 'users', '8', 'User login', '2025-11-18 14:39:26'),
(58, 8, 'UPDATE', 'registration', '1', 'Mengubah status pendaftaran menjadi canceled', '2025-11-18 14:39:33'),
(59, 8, 'UPDATE', 'registration', '1', 'Mengubah status pendaftaran menjadi rejected', '2025-11-18 14:39:42'),
(60, 8, 'logout', 'users', '8', 'User logout', '2025-11-18 14:39:57'),
(61, 7, 'login', 'users', '7', 'User login', '2025-11-18 14:40:02'),
(62, 7, 'logout', 'users', '7', 'User logout', '2025-11-18 14:43:34'),
(63, 8, 'login', 'users', '8', 'User login', '2025-11-18 14:43:40'),
(64, 8, 'logout', 'users', '8', 'User logout', '2025-11-18 14:47:03'),
(65, 7, 'login', 'users', '7', 'User login', '2025-11-18 14:47:09'),
(66, 7, 'logout', 'users', '7', 'User logout', '2025-11-18 14:47:45'),
(67, 8, 'login', 'users', '8', 'User login', '2025-11-18 14:47:51'),
(68, 8, 'logout', 'users', '8', 'User logout', '2025-11-18 14:49:12'),
(69, 7, 'login', 'users', '7', 'User login', '2025-11-18 14:49:23'),
(70, 7, 'logout', 'users', '7', 'User logout', '2025-11-18 14:59:55'),
(71, 7, 'login', 'users', '7', 'User login', '2025-11-18 15:00:56'),
(72, 7, 'update', 'payments', '10', 'Pembayaran ID 10 dikonfirmasi menjadi confirmed', '2025-11-18 15:05:15'),
(85, 7, 'login', 'users', '7', 'User login', '2025-11-25 11:03:44'),
(86, 7, 'login', 'users', '7', 'User login', '2025-11-25 13:15:02'),
(87, 7, 'login', 'users', '7', 'User login', '2025-11-25 13:15:15'),
(88, 7, 'login', 'users', '7', 'User login', '2025-11-25 13:15:52'),
(89, 7, 'login', 'users', '7', 'User login', '2025-11-25 13:16:20'),
(90, 7, 'login', 'users', '7', 'User login', '2025-11-25 13:18:00'),
(91, 7, 'login', 'users', '7', 'User login', '2025-11-25 13:19:16'),
(92, 7, 'login', 'users', '7', 'User login', '2025-11-25 13:20:05'),
(93, 7, 'login', 'users', '7', 'User login', '2025-11-25 13:20:18'),
(94, 7, 'login', 'users', '7', 'User login', '2025-11-25 13:20:45'),
(95, 7, 'login', 'users', '7', 'User login', '2025-11-25 13:21:26'),
(96, 7, 'login', 'users', '7', 'User login', '2025-11-25 13:21:52'),
(97, 7, 'login', 'users', '7', 'User login', '2025-11-25 13:22:06'),
(98, 7, 'login', 'users', '7', 'User login', '2025-11-25 13:22:24');

-- --------------------------------------------------------

--
-- Table structure for table `jamaah`
--

CREATE TABLE `jamaah` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `nik` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `alamat` text,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jamaah`
--

INSERT INTO `jamaah` (`id`, `user_id`, `nama`, `nik`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(2, NULL, 'agus', '12332433', '2025-10-17', 'L', 'banjar', 'agusss@gmail.com', '085803304703', '2025-10-23 15:24:50', '2025-11-06 21:55:05'),
(7, 7, 'huhu', '0707070707', '2008-08-07', 'L', 'aaa', 'huhu@gmail.com', '+62 895392823488', '2025-11-10 19:23:46', '2025-11-10 19:23:46'),
(12, 7, 'Dimas Prassetyo', '0606060606', '2008-03-20', 'L', 'ciamis', 'dimas@gmail.com', '0895392823488', '2025-11-11 13:13:26', '2025-11-11 13:13:26'),
(13, 7, 'Agus Kusmianto', '0505050505', '2007-09-25', 'L', 'lakbok', 'agus@gmail.com', '248373653', '2025-11-11 13:23:45', '2025-11-11 13:23:45'),
(14, 7, 'hhhh', '0909090909', '2025-11-28', 'L', 'banjar', 'yanto@gmail.com', '+62 895392823488', '2025-11-17 17:21:03', '2025-11-17 17:21:03'),
(15, 7, 'u', '3273031103080005', '2025-10-31', 'L', 'ljb', 'rifki@gmail.com', '+62 8953928234888', '2025-11-17 18:48:10', '2025-11-17 18:48:10');

-- --------------------------------------------------------

--
-- Table structure for table `keberangkatan`
--

CREATE TABLE `keberangkatan` (
  `id` int NOT NULL,
  `paket_id` int DEFAULT NULL,
  `departure_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `quota` int DEFAULT NULL,
  `booked` int DEFAULT '0',
  `status` enum('open','closed','canceled') DEFAULT 'open',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `keberangkatan`
--

INSERT INTO `keberangkatan` (`id`, `paket_id`, `departure_date`, `return_date`, `quota`, `booked`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-10-24', '2025-11-25', 23, 0, 'open', '2025-10-24 09:15:34', '2025-11-17 17:21:56'),
(2, 4, '2025-11-08', '2025-11-05', 45, 0, 'open', '2025-11-17 17:26:28', '2025-11-17 17:26:28'),
(3, 2, '2025-11-22', '2025-12-18', 23, 0, 'open', '2025-11-17 17:27:13', '2025-11-17 17:27:13'),
(4, 3, '2025-11-01', '2025-11-30', 45, 0, 'open', '2025-11-17 17:27:35', '2025-11-17 18:09:59');

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `id` int NOT NULL,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jenis` enum('haji','umroh') NOT NULL,
  `durasi_days` int DEFAULT NULL,
  `harga` decimal(15,2) DEFAULT NULL,
  `deskripsi` text,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`id`, `kode`, `nama`, `jenis`, `durasi_days`, `harga`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'HJ009', 'Haji Silver', 'haji', 24, 2300000.00, 'haji silver jenis haji yang berdurasi 24 harii\r\n', '2025-10-23 15:46:49', '2025-11-17 17:11:02'),
(2, 'HJ010', 'Paket Hitam', 'umroh', 30, 2500000.00, 'Bismiklah', '2025-11-05 22:35:46', '2025-11-17 17:10:47'),
(3, 'HJ011', 'Paket Putih', 'haji', 29, 5000000.00, 'Bismilah', '2025-11-05 23:04:06', '2025-11-17 18:10:56'),
(4, 'HJ012', 'Paket Biru', 'haji', 24, 2000000.00, 'Bismilah', '2025-11-05 23:05:59', '2025-11-17 17:06:50');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int NOT NULL,
  `registration_id` int DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `payment_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `method` varchar(100) DEFAULT NULL,
  `reference` varchar(150) DEFAULT NULL,
  `status` enum('pending','confirmed','rejected') DEFAULT 'pending',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `registration_id`, `amount`, `payment_date`, `method`, `reference`, `status`, `created_at`) VALUES
(2, 2, 2.00, '2025-11-10 19:23:46', 'qris', NULL, 'confirmed', '2025-11-10 19:23:46'),
(7, 3, 2.00, '2025-11-11 13:13:26', 'qris', NULL, 'rejected', '2025-11-11 13:13:26'),
(8, 4, 2.00, '2025-11-11 13:23:45', 'qris', NULL, 'confirmed', '2025-11-11 13:23:45'),
(9, 5, 2000000.00, '2025-11-17 17:21:03', 'qris', NULL, 'confirmed', '2025-11-17 17:21:03'),
(10, 6, 2000000.00, '2025-11-17 18:48:10', 'qris', NULL, 'confirmed', '2025-11-17 18:48:10');

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `id` int NOT NULL,
  `jamaah_id` int DEFAULT NULL,
  `paket_id` int DEFAULT NULL,
  `keberangkatan_id` int DEFAULT NULL,
  `registration_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` enum('pending','confirmed','canceled','rejected') DEFAULT 'pending',
  `total_price` decimal(15,2) DEFAULT NULL,
  `paid_amount` decimal(15,2) DEFAULT '0.00',
  `notes` text,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `jamaah_id`, `paket_id`, `keberangkatan_id`, `registration_date`, `status`, `total_price`, `paid_amount`, `notes`, `updated_at`) VALUES
(1, 2, 1, 1, '2025-10-24 14:45:17', 'rejected', 23.00, 0.00, 'siap', '2025-11-18 14:39:42'),
(2, 7, 3, NULL, '2025-11-10 19:23:46', 'pending', 2.00, 0.00, NULL, '2025-11-10 19:23:46'),
(3, 12, 2, NULL, '2025-11-11 13:13:26', 'pending', 2.00, 0.00, NULL, '2025-11-11 13:13:26'),
(4, 13, 2, NULL, '2025-11-11 13:23:45', 'pending', 2.00, 0.00, NULL, '2025-11-11 13:23:45'),
(5, 14, 4, NULL, '2025-11-17 17:21:03', 'pending', 2000000.00, 0.00, NULL, '2025-11-17 17:21:03'),
(6, 15, 4, NULL, '2025-11-17 18:48:10', 'pending', 2000000.00, 0.00, NULL, '2025-11-17 18:48:10');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int NOT NULL,
  `role_name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `description`) VALUES
(1, 'admin', 'Memiliki akses penuh ke sistem'),
(2, 'petugas', 'Mengelola data jamaah, pembayaran, dan keberangkatan');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `password_hash` varchar(256) NOT NULL,
  `role_id` int DEFAULT NULL,
  `full_name` varchar(200) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password_hash`, `role_id`, `full_name`, `email`, `phone`, `is_active`, `created_at`, `updated_at`) VALUES
(5, 'admin\r\n', '$2y$10$K7vB6duXQrLqEaDBiaad3OCeB.pZ.dy5w2snVyRm4aqJKXqZMm/uG', 1, 'agus', 'aguss@gmail.com', '085803304703', 1, '2025-10-23 14:56:41', '2025-10-24 14:52:04'),
(6, 'petugas\r\n', '$2y$10$wS7Qbkcr6b.R8WwUzkZVeuPTvRULevyKAkbd9o97.rBTCV7LGjnOa', 2, 'budi', 'agus123@gmail.com', '085803304703', 1, '2025-10-24 09:16:19', '2025-10-24 14:52:16'),
(7, 'adminn', '$2y$10$25wVzM59bupIixzylSpONuTL3ft43VJx6S7F/FT2XhS2/MKt/mzVy', 1, 'agus', 'admin99@gmail.com', '085803304703', 1, '2025-10-24 14:57:58', '2025-10-24 14:57:58'),
(8, 'petugass', '$2y$10$o4Eko9aivvF9BjLtLsTZQOHmKemTYnIAFTOiYSt2vI2EwzBvjNtpu', 2, 'budi', 'agus123@gmail.com', '(0265) 2734141', 1, '2025-10-24 14:58:39', '2025-10-24 14:58:39'),
(9, 'dimas', '$2y$10$pfYk6Duw5vZWqV3rWM1KtOfttEQpU0Pe3wKmwMozs/HHQkoQqCxCO', 2, NULL, 'dimas@gmail.com', NULL, 1, '2025-11-05 21:49:08', '2025-11-05 21:49:08'),
(10, 'Rifki', '$2y$10$vQslQ8BhLg749Ahl6Ac.pOBY1A8s4bN34sKkQGy9sP2AzZk8T1yUy', 2, NULL, 'rifki@gmail.com', NULL, 1, '2025-12-10 10:53:08', '2025-12-10 10:53:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_audit_user` (`user_id`);

--
-- Indexes for table `jamaah`
--
ALTER TABLE `jamaah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_jamaah_user` (`user_id`);

--
-- Indexes for table `keberangkatan`
--
ALTER TABLE `keberangkatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_keberangkatan_paket` (`paket_id`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_payments_registration` (`registration_id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_registrations_jamaah` (`jamaah_id`),
  ADD KEY `fk_registrations_paket` (`paket_id`),
  ADD KEY `fk_registrations_keberangkatan` (`keberangkatan_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_users_roles` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `jamaah`
--
ALTER TABLE `jamaah`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `keberangkatan`
--
ALTER TABLE `keberangkatan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD CONSTRAINT `fk_audit_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `jamaah`
--
ALTER TABLE `jamaah`
  ADD CONSTRAINT `fk_jamaah_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `keberangkatan`
--
ALTER TABLE `keberangkatan`
  ADD CONSTRAINT `fk_keberangkatan_paket` FOREIGN KEY (`paket_id`) REFERENCES `paket` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `fk_payments_registration` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`);

--
-- Constraints for table `registrations`
--
ALTER TABLE `registrations`
  ADD CONSTRAINT `fk_registrations_jamaah` FOREIGN KEY (`jamaah_id`) REFERENCES `jamaah` (`id`),
  ADD CONSTRAINT `fk_registrations_keberangkatan` FOREIGN KEY (`keberangkatan_id`) REFERENCES `keberangkatan` (`id`),
  ADD CONSTRAINT `fk_registrations_paket` FOREIGN KEY (`paket_id`) REFERENCES `paket` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_roles` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
