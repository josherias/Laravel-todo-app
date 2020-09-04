-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 23, 2020 at 06:52 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todos`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_07_15_112701_create-todos-table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `name`, `description`, `completed`, `created_at`, `updated_at`) VALUES
(3, 'Et aut deleniti est.', 'Animi fugit corrupti nemo. Ab fugit perspiciatis alias quis molestiae beatae officia. Occaecati qui est aut et. Dicta ex nulla nulla accusantium et. Ullam possimus officiis officiis distinctio qui.', 0, '2020-07-15 08:47:41', '2020-07-15 08:47:41'),
(4, 'Laudantium illo facere.', 'Quidem quis porro pariatur maxime ut eveniet. Voluptates et ab ipsa dolorum. Dolores soluta assumenda recusandae. Accusantium vitae aut qui placeat voluptate sed numquam. Illum deserunt recusandae perferendis dolores.', 0, '2020-07-15 08:47:42', '2020-07-15 08:47:42'),
(5, 'Veritatis ea aliquid sed.', 'Ipsum odio blanditiis officiis quo excepturi. Quos exercitationem enim libero est. Dolor autem nihil quibusdam accusantium. Fuga delectus consequuntur qui consequatur velit impedit perferendis minima. Ea neque quia et enim est. Commodi voluptates omnis ut illum.', 1, '2020-07-15 08:47:42', '2020-07-15 11:57:06'),
(6, 'Dicta voluptas quo sed.', 'Iste perspiciatis nihil quam necessitatibus ea. Et ut officiis molestias perferendis. Et fugiat corrupti explicabo recusandae ut voluptas placeat minima.', 1, '2020-07-15 08:47:42', '2020-07-15 11:59:38'),
(7, 'Ut tempora voluptas voluptatibus ducimus.', 'Sit et reiciendis et veritatis inventore dicta impedit. Impedit aut et et et aut consequatur et. Sed doloribus nisi assumenda quia vitae cupiditate iste. Amet aut quasi laborum quae quibusdam exercitationem. Mollitia labore deleniti temporibus veniam ea quibusdam autem qui. Voluptatibus dolores perspiciatis numquam sit.', 0, '2020-07-15 08:47:42', '2020-07-15 08:47:42'),
(8, 'Illo beatae velit sint.', 'Quos et fuga perspiciatis repellendus corporis. Accusamus modi sed officia sit. Modi at excepturi nobis possimus quis et. Provident dolor officiis est nostrum deserunt consequatur.', 0, '2020-07-15 08:47:42', '2020-07-15 08:47:42'),
(9, 'Non ut dolores ab.', 'Quia voluptatem totam ratione explicabo temporibus. Ipsa ipsum magni dolorum tenetur sunt. Beatae sit et aut non perspiciatis id ad ea. Autem autem nisi rem. Voluptas placeat et eos.', 0, '2020-07-15 08:47:42', '2020-07-15 08:47:42'),
(11, 'Mercy', 'fg', 1, '2020-07-15 11:43:18', '2020-07-15 12:00:05'),
(12, 'Go Home', 'Go home at exactly 6 pm', 1, '2020-07-15 12:00:44', '2020-07-15 12:00:48');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
