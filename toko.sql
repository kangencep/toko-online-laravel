-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2020 at 11:26 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `kategori_produk` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`id`, `user_id`, `kategori_produk`, `nama_barang`, `gambar`, `harga`, `stok`, `keterangan`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'Produk Website', 'Toko Online Hijau', 'green.jpg', 400000, 9, 'Toko Online berwarna hijau dengan fitur checkout langsung ke whatasapp', 0, NULL, '2020-11-06 08:39:25'),
(2, 1, 'Produk Website', 'Toko Online Ungu', 'ungu.jpg', 500000, 7, 'Toko Online berwarna ungu dengan fitur checkout langsung ke whatasapp', 0, NULL, '2020-11-07 10:13:58'),
(3, 1, 'Produk Website', 'Toko Online Orange', 'orange.jpg', 350000, 7, 'Toko Online berwarna orange dengan fitur checkout langsung ke whatasapp', 1, NULL, NULL),
(4, 1, 'Kosmetik Wajah', 'Lipstik Natural', 'IMG-20200112-WA0015.jpg', 100000, 9, 'Lipstik Natural Lembab Merah Merona', 1, '2020-11-06 09:06:05', '2020-11-06 09:08:40'),
(5, 1, 'Kosmetik Wajah', 'Lipstik Delima', 'IMG-20200112-WA0027.jpg', 115000, 6, 'Lipstik  merah delima tampil percaya diri', 1, '2020-11-06 09:11:58', '2020-11-06 09:11:58'),
(6, 1, 'Kosmetik Wajah', 'Lipstik Pelangi', 'IMG-20200112-WA0028.jpg', 112000, 5, 'Lipstik pelangi terang bercahaya di bibir', 1, '2020-11-06 09:15:11', '2020-11-06 09:15:11'),
(7, 1, 'Skincare Wajah', 'Masker Mudmask', 'IMG_20190102_204403.jpg', 300000, 9, 'Masker pembasmi jerawat di wajah', 1, '2020-11-06 10:15:50', '2020-11-07 01:24:45'),
(8, 1, 'Skincare Wajah', 'Serum RJ', 'IMG_20181205_075240.jpg', 100000, 4, 'Bikin Wajah glowing seketika', 1, '2020-11-07 00:42:23', '2020-11-07 09:12:52'),
(9, 1, 'Skincare Wajah', 'Pembersih Wajah', 'masker.jpg', 400000, 9, 'Masker pembersih wajah lengkap', 1, '2020-11-07 01:13:33', '2020-11-07 10:02:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_11_14_012711_create_pesanans_table', 1),
(5, '2019_11_14_012822_create_pesanan_details_table', 1),
(6, '2019_11_14_012420_create_barangs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesanans`
--

CREATE TABLE `pesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` int(11) NOT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesanans`
--

INSERT INTO `pesanans` (`id`, `user_id`, `tanggal`, `status`, `kode`, `jumlah_harga`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-11-05', '1', 382, 300000, '2020-11-05 01:00:16', '2020-11-05 01:01:20'),
(2, 1, '2020-11-05', '1', 998, 500000, '2020-11-05 01:11:22', '2020-11-05 01:11:39'),
(3, 1, '2020-11-05', '1', 521, 300000, '2020-11-05 01:14:08', '2020-11-05 01:14:12'),
(4, 1, '2020-11-05', '1', 439, 300000, '2020-11-05 01:16:00', '2020-11-05 01:18:22'),
(5, 1, '2020-11-05', '1', 774, 400000, '2020-11-05 01:30:44', '2020-11-05 01:31:00'),
(6, 1, '2020-11-05', '1', 617, 300000, '2020-11-05 02:09:58', '2020-11-05 02:10:05'),
(7, 1, '2020-11-05', '1', 224, 1000000, '2020-11-05 06:37:34', '2020-11-05 06:37:42'),
(8, 1, '2020-11-05', '1', 326, 500000, '2020-11-05 06:58:04', '2020-11-05 06:58:10'),
(9, 1, '2020-11-05', '1', 273, 500000, '2020-11-05 07:00:01', '2020-11-05 07:00:08'),
(10, 1, '2020-11-05', '1', 561, 500000, '2020-11-05 07:02:09', '2020-11-05 07:02:13'),
(11, 1, '2020-11-05', '1', 624, 400000, '2020-11-05 07:11:09', '2020-11-05 07:11:14'),
(12, 1, '2020-11-05', '1', 773, 500000, '2020-11-05 07:35:03', '2020-11-05 07:35:10'),
(13, 1, '2020-11-06', '1', 743, 400000, '2020-11-06 08:39:21', '2020-11-06 08:39:25'),
(14, 1, '2020-11-06', '1', 965, 100000, '2020-11-06 09:08:34', '2020-11-06 09:08:39'),
(15, 1, '2020-11-07', '1', 800, 300000, '2020-11-07 01:24:41', '2020-11-07 01:24:45'),
(16, 1, '2020-11-07', '1', 427, 100000, '2020-11-07 09:12:38', '2020-11-07 09:12:52'),
(17, 1, '2020-11-07', '1', 125, 400000, '2020-11-07 10:02:21', '2020-11-07 10:02:28'),
(18, 1, '2020-11-07', '1', 213, 1000000, '2020-11-07 10:13:47', '2020-11-07 10:13:58');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan_details`
--

CREATE TABLE `pesanan_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `barang_id` int(11) NOT NULL,
  `pesanan_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesanan_details`
--

INSERT INTO `pesanan_details` (`id`, `barang_id`, `pesanan_id`, `jumlah`, `jumlah_harga`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, 300000, '2020-11-05 01:00:16', '2020-11-05 01:00:16'),
(2, 1, 2, 1, 500000, '2020-11-05 01:11:22', '2020-11-05 01:11:22'),
(3, 3, 3, 1, 300000, '2020-11-05 01:14:08', '2020-11-05 01:14:08'),
(4, 3, 4, 1, 300000, '2020-11-05 01:16:00', '2020-11-05 01:16:00'),
(5, 2, 5, 1, 400000, '2020-11-05 01:30:44', '2020-11-05 01:30:44'),
(6, 3, 6, 1, 300000, '2020-11-05 02:09:58', '2020-11-05 02:09:58'),
(7, 1, 7, 2, 1000000, '2020-11-05 06:37:34', '2020-11-05 06:37:34'),
(8, 1, 8, 1, 500000, '2020-11-05 06:58:04', '2020-11-05 06:58:04'),
(9, 1, 9, 1, 500000, '2020-11-05 07:00:01', '2020-11-05 07:00:01'),
(10, 1, 10, 1, 500000, '2020-11-05 07:02:09', '2020-11-05 07:02:09'),
(11, 2, 11, 1, 400000, '2020-11-05 07:11:09', '2020-11-05 07:11:09'),
(12, 1, 12, 1, 500000, '2020-11-05 07:35:03', '2020-11-05 07:35:03'),
(13, 1, 13, 1, 400000, '2020-11-06 08:39:21', '2020-11-06 08:39:21'),
(14, 4, 14, 1, 100000, '2020-11-06 09:08:34', '2020-11-06 09:08:34'),
(15, 7, 15, 1, 300000, '2020-11-07 01:24:41', '2020-11-07 01:24:41'),
(16, 8, 16, 1, 100000, '2020-11-07 09:12:38', '2020-11-07 09:12:38'),
(17, 9, 17, 1, 400000, '2020-11-07 10:02:21', '2020-11-07 10:02:21'),
(18, 2, 18, 2, 1000000, '2020-11-07 10:13:47', '2020-11-07 10:13:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nohp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `alamat`, `nohp`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Encep Nurdin', 'encepnurdin185@gmail.com', NULL, '$2y$10$EZC/gYkWr5uA5HO/SSFtOuTpsdynOdXbkBq30TOrKWhaH85k2bihG', 'Bandar Harapan Terbanggi Besar Lampung tengah', '085789400334', NULL, '2020-11-05 00:40:19', '2020-11-05 01:01:10'),
(2, 'Ari Susanti', 'shantijafra@gmail.com', NULL, '$2y$10$9Ufpi9O1/4Fj1FQUgF7jcOvGKJ4N9LZV38X8uoSEKwzYmSAYYSgz2', NULL, NULL, NULL, '2020-11-06 10:37:53', '2020-11-06 10:37:53'),
(3, 'Encep Nurdin n', 'encepnurdin053@gmail.com', NULL, '$2y$10$EdI1BkbcIuzzhfwO.gLdReNsjTPlyesCJ3x/bt2P.Y42dun7B4n8O', NULL, NULL, NULL, '2020-11-07 10:01:07', '2020-11-07 10:01:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pesanans`
--
ALTER TABLE `pesanans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesanan_details`
--
ALTER TABLE `pesanan_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pesanans`
--
ALTER TABLE `pesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pesanan_details`
--
ALTER TABLE `pesanan_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
