-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 25, 2023 at 04:27 AM
-- Server version: 5.7.36
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `react`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
CREATE TABLE IF NOT EXISTS `carts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `product_qty`, `created_at`, `updated_at`) VALUES
(8, '1', 14, -1, '2023-03-11 04:10:41', '2023-03-12 05:52:25'),
(9, '1', 18, 1, '2023-03-24 21:20:51', '2023-03-24 21:20:51');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` mediumtext COLLATE utf8mb4_unicode_ci,
  `meta_descrip` mediumtext COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `meta_title`, `meta_keyword`, `meta_descrip`, `slug`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(18, 'Phòng Khách', 'Phòng Khách', 'Phòng Khách', 'Phòng Khách', 'Phòng Khách', 'Phòng Khách', 0, '2023-03-24 20:17:37', '2023-03-24 20:17:37'),
(19, 'Phòng Ăn', 'Phòng Ăn', 'Phòng Ăn', 'Phòng Ăn', 'Phòng Ăn', 'Phòng Ăn', 0, '2023-03-24 20:26:05', '2023-03-24 20:26:05'),
(20, 'Phòng Ngủ', 'Phòng Ngủ', 'Phòng Ngủ', 'Phòng Ngủ', 'Phòng Ngủ', 'Phòng Ngủ', 0, '2023-03-24 20:26:33', '2023-03-24 20:26:33'),
(22, 'Phòng làm việc', 'Phòng làm việc', 'Phòng làm việc', 'Phòng làm việc', 'Phòng làm việc', 'Phòng làm việc', 0, '2023-03-24 21:13:21', '2023-03-24 21:13:21');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_03_03_074416_create_categories_table', 1),
(11, '2023_03_03_100029_create_products_table', 2),
(12, '2023_03_09_143816_create_carts_table', 3),
(13, '2023_03_09_155026_create_orders_table', 4),
(14, '2023_03_09_155408_create_orderitems_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
CREATE TABLE IF NOT EXISTS `orderitems` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`id`, `order_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 13, 3, 31111, '2023-03-10 02:57:47', '2023-03-10 02:57:47'),
(2, 1, 14, 5, 3111, '2023-03-10 02:57:47', '2023-03-10 02:57:47'),
(3, 2, 13, 3, 31111, '2023-03-10 03:04:07', '2023-03-10 03:04:07');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tracking_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `remark` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(23, 'App\\Models\\User', 1, 'admin@gmail.com_AdminToken', '994a9647f37d98cf91840ec2a36010e0469b3e5e131e7de1538a2626dd7ab465', '[\"server:admin\"]', '2023-03-24 21:22:36', NULL, '2023-03-24 21:22:29', '2023-03-24 21:22:36');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_descrip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `brand` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(4) DEFAULT '0',
  `popular` tinyint(4) DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `meta_title`, `meta_keyword`, `meta_descrip`, `slug`, `name`, `description`, `brand`, `selling_price`, `original_price`, `qty`, `image`, `featured`, `popular`, `status`, `created_at`, `updated_at`) VALUES
(17, 18, 'Tủ', 'Tủ', 'Tủ', 'Tủ', 'Tủ Giày 3 Ngăn Marcell - Màu Đá Xanh', 'Kích thước: Dài 640mm x Rộng 180mm x Cao 1228mm\r\n\r\nChất liệu: Gỗ công nghiệp MDF chuẩn CARP-B2 (*)\r\n\r\n(*) Tiêu chuẩn California Air Resources Board xuất khẩu Mỹ, đảm bảo gỗ không độc hại, an toàn cho sức khỏe.\r\n\r\nĐây là sản phẩm thuộc danh mục Clearance không áp dụng chính sách bảo hành & bảo trì, nhưng vẫn áp dụng chính sách đổi trả trong vòng 3 ngày cho lỗi sản xuất.', 'Tủ', '1,590,000', '1,590,000', '10', 'uploads/product/1679714637.PNG', 0, 0, 0, '2023-03-24 20:23:57', '2023-03-24 20:23:57'),
(16, 18, 'Bàn', 'Bàn', 'Bàn', 'Bàn', 'Bàn Sofa – Bàn Cafe – Bàn Trà Gỗ Cao Su 601 Trắng', 'Kích thước: Dài 60cm x Rộng 51cm x Cao 42cm\r\n\r\nChất liệu:\r\n\r\n- Mặt bàn: Gỗ công nghiệp MDF chuẩn CARB-P2 (*), Sơn phủ UV\r\n\r\n- Chân bàn: Gỗ cao su tự nhiên\r\n\r\n(*) Tiêu chuẩn California Air Resources Board xuất khẩu Mỹ, đảm bảo gỗ không độc hại, an toàn cho sức khỏe\r\n\r\nChống thấm, cong vênh, trầy xước, mối mọt', 'Bàn', '549,000', '549,000', '10', 'uploads/product/1679714513.PNG', 0, 0, 0, '2023-03-24 20:21:53', '2023-03-24 20:38:25'),
(18, 18, 'Ghế', 'Ghế', 'Ghế', 'Ghế', 'Ghế Đôn Sofa Gỗ Cao Su Tự Nhiên 601 Màu Xám Đậm', 'Kích thước: Dài 60cm x Rộng 60cm x Cao 37cm\r\n\r\nChất liệu:\r\n\r\n- Gỗ cao su tự nhiên\r\n\r\n- Vải sợi tổng hợp chống nhăn, kháng bụi bẩn và nấm mốc\r\n\r\n- Tấm phản: Gỗ công nghiệp Plywood chuẩn CARB-P2 (*) \r\n\r\n(*) Tiêu chuẩn California Air Resources Board xuất khẩu Mỹ, đảm bảo gỗ không độc hại, an toàn sức khỏe.\r\n\r\nChống thấm, cong vênh, trầy xước, mối mọt', 'Ghế', '1,990,000', '1,990,000', '10', 'uploads/product/1679714738.PNG', 0, 0, 0, '2023-03-24 20:25:38', '2023-03-24 20:38:12'),
(19, 19, 'Ghế', 'Ghế', 'Ghế', 'Ghế', 'Ghế Ăn Gỗ Cao Su Tự Nhiên MOHO MILAN 601 Màu Nâu', 'Kích thước: Dài 52cm x Rộng 49cm x Cao đến đệm ngồi/lưng tựa 46cm/74cm\r\n\r\nChất liệu:\r\n\r\n- Gỗ cao su tự nhiên\r\n\r\n- Vải bọc polyester chống nhăn, kháng bụi bẩn và nấm mốc\r\n\r\nChống thấm, cong vênh, trầy xước, mối mọt', 'Ghế', '1,290,000', '1,290,000', '12', 'uploads/product/1679714893.PNG', 0, 0, 0, '2023-03-24 20:28:13', '2023-03-24 20:28:13'),
(20, 20, 'Tủ', 'Tủ', 'Tủ', 'Tủ', 'Tủ Quần Áo Gỗ HOBRO 301 Thanh Treo', 'Kích thước: Dài 50cm x Rộng 60cm x Cao 210cm\r\n\r\nChất liệu:\r\n\r\n- Thân tủ: Gỗ công nghiệp PB chuẩn CARB-P2 (*), Sơn phủ UV\r\n\r\n- Cửa tủ: Gỗ công nghiệp MDF chuẩn CARB-P2 (*), Veneer gỗ tràm\r\n\r\n- Thanh treo: Hợp kim nhôm, chống gỉ sét\r\n\r\n(*) Tiêu chuẩn California Air Resources Board xuất khẩu Mỹ, đảm bảo gỗ không độc hại, an toàn cho sức khỏe\r\n\r\nChống thấm, cong vênh, trầy xước, mối mọt', 'Tủ', '4,490,000', '4,490,000', '5', 'uploads/product/1679715038.PNG', 0, 0, 0, '2023-03-24 20:30:38', '2023-03-24 20:30:38'),
(21, 20, 'Tủ', 'Tủ', 'Tủ', 'Tủ', 'Tủ Quần Áo Gỗ MOHO VLINE 601', 'Kích thước: Dài 52cm/100cm x Rộng 60cm x Cao 190cm\r\n\r\nChất liệu:\r\n\r\n- Thân tủ: Gỗ công nghiệp PB chuẩn CARB-P2 (*), Sơn phủ UV\r\n\r\n- Cửa tủ: Gỗ cao su tự nhiên\r\n\r\n- Thanh treo: Gỗ cao su tự nhiên\r\n\r\n(*) Tiêu chuẩn California Air Resources Board xuất khẩu Mỹ, đảm bảo gỗ không độc hại, an toàn cho sức khỏe\r\n\r\nChống thấm, cong vênh, trầy xước, mối mọt', 'Tủ', '4,490,000', '4,490,000', '2', 'uploads/product/1679715122.PNG', 0, 0, 0, '2023-03-24 20:32:02', '2023-03-24 21:18:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_as` int(11) DEFAULT NULL COMMENT 'user=0,admin=1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role_as`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$bUz.sckd.VwrVq3dnxlLC.O20J0f1UjSiYNYIG3qxKF8DJrvicNES', NULL, 1, '2023-03-03 02:44:50', '2023-03-03 02:44:50'),
(2, 'abc', 'abc@gmail.com', NULL, '$2y$10$XREmRyfV1TEjM0HJGxdbfObzZMA5r5482ezSR56aqU3aYOSE/WzY6', NULL, NULL, '2023-03-03 02:49:23', '2023-03-03 02:49:23');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
