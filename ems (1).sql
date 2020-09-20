-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2020 at 09:22 PM
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
-- Database: `ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_09_19_195404_create_office_details_table', 1),
(4, '2020_09_19_195443_create_skills_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `office_details`
--

CREATE TABLE `office_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `registry_id` int(11) NOT NULL,
  `phone_num` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnic_num` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_num` int(11) NOT NULL,
  `office_id` int(11) NOT NULL,
  `office_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `office_details`
--

INSERT INTO `office_details` (`id`, `registry_id`, `phone_num`, `cnic_num`, `post`, `work_description`, `exchange_num`, `office_id`, `office_email`, `created_at`, `updated_at`) VALUES
(1, 1, '03352899624', '4230138387493', 'Internee', 'Web Development', 361, 25, 'ammar@alnoorgroup.co', '2020-09-19 23:21:01', '2020-09-19 23:21:01'),
(3, 2, '03431279121', '4230138387493', 'Developer', 'Mobile App Developer', 206, 26, 'umair@mdf.co', '2020-09-19 23:24:24', '2020-09-19 23:24:24'),
(4, 3, '03222053158', '4230138387493', 'CA', 'CA', 207, 27, 'abdullah@alnoorgroup.co', '2020-09-19 23:49:25', '2020-09-19 23:49:25');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `registry_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `skill_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skill_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ammar', 'ammarshehzad20@gmail.com', NULL, '$2y$10$9FOS6RY283w5YU0SKIevB.jmB4CCo94HuFA2qkU7JSlmf95ujc4/C', 'E3sEguDZcGN2magFBIrVCa3bl0Cr2ObDPAKX5vTHxsJglPQpXGNztESNdBRq', '2020-09-19 15:55:11', '2020-09-19 15:55:11'),
(2, 'Umair', 'umairshehzad115@yahoo.com', NULL, '$2y$10$LZRnmVVBot.jpwOJvHOiR..4UnsYGIp8PCnj2uStF3xLzkFacewy.', '90qAWDt1yYywODx9sL1iyrc8OmvLMYUl7LDHd9Jql2XiJXd5klUoxn5IZ0V4', '2020-09-19 23:23:32', '2020-09-19 23:23:32'),
(3, 'Abdullah', 'abdullah@xyz.com', NULL, '$2y$10$mhz4n2hlHM0hsuUp5unysexOzN9RtWXfM14LPU0IjJBhVMQH1Lq.S', 'd4cCPCgmtp1vqn9IIC4P6e9ors6FTergqjZfRYWjh2PlLgklJTy7rHEB56BY', '2020-09-19 23:48:35', '2020-09-19 23:48:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `office_details`
--
ALTER TABLE `office_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `office_details_email_unique` (`office_email`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `office_details`
--
ALTER TABLE `office_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
