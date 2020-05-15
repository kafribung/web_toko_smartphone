-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2020 at 01:02 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_smartphone`
--

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
(3, '2020_05_14_214715_create_smartphones_table', 1);

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
-- Table structure for table `smartphones`
--

CREATE TABLE `smartphones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smartphones`
--

INSERT INTO `smartphones` (`id`, `title`, `price`, `img`, `description`, `slug`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'IPHONE 11 PRO MAX', 23000000, '1589502851.jpg', '<p>Perangkat besutan&nbsp;<a href=\"https://gadget.telset.id/product-tag/apple/\">Apple</a>&nbsp;ini memiliki nama lengkap Apple iPhone 11 Pro Max dan diperkenalkan pertama kali pada 2019, September. Perangkat ini mengusung chipset Apple A13 Bionic dan berjalan di atas sistem operasi iOS 13, upgradable to iOS 13.4. Sampai berita ini diturunkan, harga Apple iPhone 11 Pro Max masih menjadi tanda tanya. Tapi nanti, ketika resmi masuk ke Indonesia, kami akan mencantumkan harganya di kolom harga di atas.</p><p>Menurut informasi awal pada saat kali pertama diperkenalkan, perangkat ini memiliki dimensi 158 x 77.8 x 8.1 mm (6.22 x 3.06 x 0.32 in) dengan bobot mencapai 226 g (7.97 oz). Body-nya terbuat dari komponen Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame dan hadir dalam varian warna Space Gray, Silver, Gold, Midnight Green (matte colors). Sedangkan untuk slot SIM card, Apple iPhone 11 Pro Max menanamkan Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by) – for China.</p>', 'iphone-11-pro-max', 1, '2020-05-14 16:34:11', '2020-05-14 16:34:11'),
(2, 'IPHONE XR', 10000000, '1589503060.jpg', '<ul><li>layar Liquid Retina HD</li><li>Layar LCD Multi-Touch sepenuhnya 6,1 inci (diagonal) dengan teknologi IPS</li><li>Resolusi 1792 x 828 piksel pada 326 ppi</li><li>Rasio kontras 1400:1 (umum)</li><li>Layar True Tone</li><li>Layar warna luas (P3)</li><li>Haptic Touch</li><li>Kecerahan maks 625 nit (umum)</li><li>Lapisan oleophobic anti sidik jari</li><li>Mendukung tampilan berbagai bahasa dan&nbsp;karakter secara bersamaan</li></ul><p>Layar iPhone XR&nbsp;memiliki sudut melengkung yang mengikuti desain lekukan yang indah, dan semua sudut ini berada di dalam bidang persegi standar. Jika diukur sebagai persegi standar, layarnya berukuran 6,06 inci secara diagonal (area bidang layar berukuran lebih kecil).</p>', 'iphone-xr', 1, '2020-05-14 16:37:40', '2020-05-14 16:37:40'),
(3, 'OPPO A7', 3699000, '1589503955.jpg', '<p>OPPO A7 memiliki layar HD+ dengan resolusi 1520 x 720 piksel. Layar ini berukuran 6,2 inci, dan memakai teknologi IPS. Sama seperti OPPO F9 yang merupakan ponsel flagship, OPPO A7 ini memiliki layar penuh dilengkapi dengan notch yang berbentuk tetesan air. Dan layar ponsel ini juga sudah dilindungi dengan Corning Gorilla Glass.</p><p>Ponsel ini memakai prosesor snapdragon 450 Octa-Core 1,8 Ghz Cortex A53 dan GPU Adreno 506. Prosesor ini mampu bekerja dengan lebih cepat, dan juga irit baterai karena sudah menggunakan teknologi proses 14nm. Oppo A7 menggunakan sistem operasi ColorOS 5.2 berbasis Android 8.1 Oreo.&nbsp;</p>', 'oppo-a7', 1, '2020-05-14 16:52:35', '2020-05-14 16:52:35'),
(4, 'SAMSUNG A10', 1899000, '1589504059.jpg', '<p>Samsung Galaxy A10s memiliki dua kamera belakang dengan masing-masing resolusinya 13 megapiksel dan 2 megapiksel. Resolusi kamera depan Samsung Galaxy A10s ditingkatkan dari pendahulunya jadi 8 megapiksel dari sebelumnya hanya 5 megapiksel. Di bawah cangkang terbenam baterai berkapasitas 4.000 mAh, meningkat dari kapasitas baterai yang dimiliki \"adiknya\" sebesar 3.400 mAh. Spesifikasi lainnya tampak masih sama dengan Galaxy A10. Layarnya masih berbentang 6,2 inci berapnel IPS dan memiliki resolusi HD Plus. Desain layarnya serupa dengan lini Galaxy A series pada umumnya yakni mengadopsi Infinity V. Soal jeroannya, Samsung hanya menyebut bahwa ponsel ini mengandalkan prosesor octa core yang dipadu RAM 2 GB dan internal 32 GB.</p>', 'samsung-a10', 1, '2020-05-14 16:54:19', '2020-05-14 16:54:19'),
(5, 'SAMSUNG S20', 18499000, '1589504146.jpg', '<p>Samsung Galaxy S20 Ultra memiliki layar Dynamic AMOLED 2X sebesar 6,9 inci dengan resolusi Quad HD Plus (1440 x 3200 piksel) serta kerapatan layar 511 ppi. Layarnya sudah mempunyai lapisan pelindung Corning Gorilla Glass 6 dengan fitur HDR 10+ dan&nbsp;<i>refresh rate</i>&nbsp;120 Hz. Samsung Galaxy S20 Ultra memakai&nbsp;<a href=\"https://www.hitekno.com/tag/kamera-108-mp\">kamera 108 MP</a>&nbsp;f/1.8 + 48 MP f/2.6 periscope optical zoom + 12 MP f/2.2 ultrawide + 0,3 MP TOF 3D depth. Ditambah kamera selfie 40 MP f/2.2.</p>', 'samsung-s20', 1, '2020-05-14 16:55:46', '2020-05-14 16:55:46'),
(6, 'OPPO F9', 4300000, '1589504424.jpg', '<p>OPPO F9 dirilis pada Agustus 2018 dengan fitur notch alias poni yang mengikuti tren tahun 2018. OPPO F9 dibanderol dengan harga Rp 4,300,000 untuk RAM 4 GB, memori internal 64 GB. Dengan layar berukuran 6,3 inci yang lega, bezel tipis di kiri kanannya, OPPO F9 ini masih dalam seri flagship OPPO F-series.</p><p>OPPO F9 adalah penerus dari OPPO F7 dengan keunggulan kamera depan 25MP. Salah satu keunggulan dari OPPO F9 adalah notch alias poni depannya yang berbentuk seperti tetesan air sehingga tidak mengambil banyak tempat di layar, layar pun terlihat lebih lapang.</p>', 'oppo-f9', 1, '2020-05-14 17:00:24', '2020-05-14 17:00:24'),
(7, 'SAMSUNG J2 PRIME', 1299000, '1589504511.jpg', '<p>Harga Samsung Galaxy J2 Prime terbaru dan terendah saat ini dipatok dengan harga Rp 1.299.000. Sedangkan harga Samsung Galaxy J2 Prime saat dirilis adalah Rp 1.800.000 pada November 2016. Spesifikasi Samsung Galaxy J2 Prime:</p><ul><li>Layar :5.0 inci&nbsp;PLS TFT&nbsp;,&nbsp;540 x 960 pixels</li><li>RAM :&nbsp;1.5GB</li><li>Memori Internal : 8GB</li><li>Kamera depan :&nbsp;5 MP, f/2.2</li><li>Kamera belakang :&nbsp;8 MP, f/2.2</li></ul>', 'samsung-j2-prime', 1, '2020-05-14 17:01:51', '2020-05-14 17:01:51'),
(8, 'HUAWEI Y6', 1925000, '1589504572.jpg', '<p>Smartphone Huawei Y6 Prime (2018) ini hadir dengan bentang layar lapang seluas 5.7 inci dengan membawakan panel IPS LCD Capacitive Touchscreen yang membawakan kedalaman warna 16.7 juta warna. Layar tersebut mengusung dukungan layar penuh dengan aspek rasio 18:9 kekinian. Bukan hanya itu saja, phablet ini juga telah dibekali resolusi HD+ atau 720 x 1440 pixels yang mampu menghasilkan gambar jernih dan tajam dalam kepadatan hingga 283 ppi per inchinya. Bahkan permukaan layarnya juga mendukung kemampuan multitouch responsif serta telah dibekali lapisan anti gores Corning Gorilla Glasss juga kaca 2.5D Curved Glass keren.</p>', 'huawei-y6', 1, '2020-05-14 17:02:52', '2020-05-14 18:13:17');

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
  `role` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kiki', 'kiki@kiki.com', NULL, '$2y$10$NbBktnvWs.6vK11Rp.4HbOa46pCe7cxV.XfEeTCXZBU6/URcyAA4S', 1, '9dBcqXJHYGbV0KogFhws809yYa6nBSauQnAdqb68O384awrQ8RvxxAphbCUh', '2020-05-14 15:07:01', '2020-05-14 19:12:32');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `smartphones`
--
ALTER TABLE `smartphones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `smartphones_title_unique` (`title`),
  ADD KEY `smartphones_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `smartphones`
--
ALTER TABLE `smartphones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `smartphones`
--
ALTER TABLE `smartphones`
  ADD CONSTRAINT `smartphones_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
