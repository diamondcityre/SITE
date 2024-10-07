-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 04, 2024 at 03:27 AM
-- Server version: 10.6.19-MariaDB-cll-lve
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diamckng_dcre`
--

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `name`, `designation`, `city`, `phone`, `email`, `img`, `created_at`, `updated_at`) VALUES
(1, 'Sadaf Javaid', 'Sales Director', 'Dubai', '+971-50-2176037', 'sadaf@diamondcityre.com', '169892512354.png', '2023-11-02 15:38:43', '2024-03-25 11:25:38'),
(2, 'Sufiya Ahmed', 'Sr. Property Consultant', 'Dubai', '+971-50-2113712', 'sufi@diamondcityre.com', '169892715220.png', '2023-11-02 15:40:34', '2023-11-21 19:07:40'),
(3, 'Mekedes Mekonen', 'Property Consultant', 'Dubai', '+971-54-2695302', 'mekides@diamondcityre.ae', '169893216293.png', '2023-11-02 17:36:02', '2023-11-08 15:21:58'),
(4, 'Tausif Ismail', 'Property Consultant', 'Dubai', '+971-55-775-1885', 'Tausif@diamondcityre.ae', '169893225427.png', '2023-11-02 17:37:34', '2023-11-08 15:21:44'),
(5, 'Zarina Jiyanova', 'Sr. Property Consultant', 'Dubai', '+971-58-562-1566', 'zarina@diamondcityre.com', '169893250588.png', '2023-11-02 17:41:45', '2023-11-08 15:22:08'),
(6, 'Shabir Osman', 'Leasing Director', 'Dubai', '+971-56-393-4014', 'shabir@diamondcityre.com', '169952404751.png', '2023-11-09 15:00:47', '2023-11-09 15:00:47');

-- --------------------------------------------------------

--
-- Table structure for table `assign_tags`
--

CREATE TABLE `assign_tags` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `property_tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE `buildings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `community_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `buildings`
--

INSERT INTO `buildings` (`id`, `name`, `community_id`, `created_at`, `updated_at`) VALUES
(3, 'Elite Residence', 1, '2023-11-15 17:28:49', '2023-11-15 17:28:49'),
(4, 'Farhad Azizi Residence', 17, '2023-11-15 17:29:06', '2023-11-15 17:29:06'),
(5, 'Al Bateen Residences', 15, '2023-11-15 17:29:26', '2023-11-15 17:29:26'),
(6, 'MINA by Azizi', 4, '2023-11-15 17:29:43', '2023-11-15 17:29:43'),
(7, 'Princess Tower', 1, '2023-11-15 17:31:51', '2023-11-15 17:31:51'),
(8, 'Bahar 2', 15, '2023-11-15 17:33:07', '2023-11-15 17:33:07'),
(9, 'Sulafa Tower', 1, '2023-11-15 17:33:31', '2023-11-15 17:33:31'),
(10, 'Dubai Arch', 2, '2023-11-15 17:33:48', '2023-11-15 17:33:48'),
(11, 'DEC Tower 2', 1, '2023-11-15 17:34:01', '2023-11-15 17:34:01'),
(12, 'The Pulse Townhouses', 3, '2023-11-15 17:34:18', '2023-11-15 17:34:18'),
(13, 'Shams 1', 15, '2023-11-15 17:34:40', '2023-11-15 17:34:40'),
(14, 'Sun', 6, '2023-11-15 17:35:36', '2023-11-15 17:35:36'),
(15, 'Ocean Heights', 1, '2023-11-15 17:35:48', '2023-11-15 17:35:48'),
(16, 'Viridis A', 19, '2023-11-15 17:36:01', '2023-11-15 17:36:01'),
(17, 'Sunset at Creek Beach', 25, '2023-11-15 17:36:30', '2023-11-15 17:36:30'),
(18, 'Address Residences', 26, '2023-11-15 18:18:15', '2023-11-15 18:18:15'),
(19, 'Lake Terrace', 2, '2023-11-19 16:07:34', '2023-11-19 16:07:34'),
(20, 'Azizi Riviera', 27, '2023-11-19 17:18:09', '2023-11-19 17:18:09'),
(21, 'Sulafa Tower', 1, '2023-11-20 15:17:23', '2023-11-20 15:17:23'),
(22, 'Marina Vista', 14, '2023-11-20 15:45:16', '2023-11-21 15:34:14'),
(23, 'Al Sahab 2', 1, '2023-11-20 15:50:46', '2023-11-20 15:50:46'),
(24, 'Arcade Tower', 1, '2023-11-20 16:32:30', '2023-11-20 16:32:30'),
(25, 'Rimal 5', 15, '2023-11-20 16:46:09', '2023-11-20 16:46:09'),
(26, 'Mosela', 29, '2023-11-20 17:02:23', '2023-11-20 17:02:23'),
(27, 'Sobha Creek Vistas', 24, '2023-11-21 14:30:23', '2023-11-21 14:30:23'),
(28, 'Business Tower', 30, '2023-11-21 14:57:10', '2023-11-21 14:57:10');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `code`) VALUES
(1, 'Fujairah', '04'),
(2, 'Abu Dhabi', '01'),
(3, 'Dubai', '03'),
(4, 'Ras Al Khaimah', '05'),
(5, 'Umm Al Quwain', '07'),
(6, 'Sharjah', '06'),
(7, 'Ajman', '02');

-- --------------------------------------------------------

--
-- Table structure for table `communities`
--

CREATE TABLE `communities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `communities`
--

INSERT INTO `communities` (`id`, `name`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 'Dubai Marina', 3, '2023-11-02 16:52:04', '2023-11-02 16:52:04'),
(2, 'Jumeirah Lake Towers', 3, '2023-11-02 16:52:58', '2023-11-02 16:52:58'),
(3, 'Dubai South', 3, '2023-11-02 16:53:25', '2023-11-02 16:53:25'),
(4, 'Palm Jumeirah', 3, '2023-11-02 16:53:44', '2023-11-02 16:53:44'),
(5, 'Town Square', 3, '2023-11-02 16:54:09', '2023-11-02 16:54:09'),
(6, 'Arabian Ranches 3', 3, '2023-11-02 16:54:42', '2023-11-15 17:48:12'),
(7, 'City Walk Dubai', 3, '2023-11-02 16:54:58', '2023-11-02 16:54:58'),
(8, 'Al Sufouh', 3, '2023-11-02 16:55:11', '2023-11-02 16:55:11'),
(9, 'Downtown Dubai', 3, '2023-11-02 16:55:23', '2023-11-02 16:55:29'),
(10, 'Dubai Investment Park', 3, '2023-11-02 16:55:41', '2023-11-02 16:55:41'),
(11, 'Dubai Media City', 3, '2023-11-02 16:55:55', '2023-11-02 16:55:55'),
(12, 'Dubai Land', 3, '2023-11-02 16:57:56', '2023-11-02 16:57:56'),
(13, 'Emaar South', 3, '2023-11-02 16:58:11', '2023-11-02 16:58:11'),
(14, 'Emaar Beachfront', 1, '2023-11-02 16:58:23', '2023-11-24 18:26:20'),
(15, 'Jumeirah Beach Residence', 3, '2023-11-02 16:59:03', '2023-11-02 16:59:03'),
(16, 'Jumeirah Village Circle', 3, '2023-11-02 16:59:19', '2023-11-02 16:59:19'),
(17, 'Al Jaddaf', 3, '2023-11-08 17:12:16', '2023-11-15 17:39:34'),
(19, 'DAMAC Hills 2', 3, '2023-11-09 17:30:30', '2023-11-15 18:03:38'),
(22, 'Dubai Arch - Jumeirah Lake Towers', 3, '2023-11-09 18:36:52', '2023-11-09 18:36:52'),
(23, 'Al Jaddaf', 3, '2023-11-15 17:27:13', '2023-11-15 17:27:13'),
(24, 'Mohammed Bin Rashid City', 3, '2023-11-15 17:27:30', '2023-11-15 17:27:30'),
(25, 'Dubai Creek Harbour', 3, '2023-11-15 17:28:15', '2023-11-15 17:36:48'),
(26, 'Dubai Opera', 3, '2023-11-15 18:17:53', '2023-11-15 18:17:53'),
(27, 'Meydan One', 3, '2023-11-19 17:17:39', '2023-11-19 18:13:10'),
(28, 'Dubai Harbour', 3, '2023-11-20 15:44:59', '2023-11-20 15:44:59'),
(29, 'The Views', 3, '2023-11-20 17:02:05', '2023-11-20 17:02:05'),
(30, 'Business Bay', 3, '2023-11-21 14:56:56', '2023-11-21 14:56:56'),
(31, 'Al Marjan Island', 4, '2023-11-30 18:35:56', '2023-11-30 18:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(90) NOT NULL,
  `f_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `l_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` int(90) NOT NULL,
  `message` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `f_name`, `l_name`, `email`, `phone`, `message`) VALUES
(0, 'Emmett', 'Holder', 'holder.emmett@googlemail.com', 6, 'Dear to the diamondcityre.com Webmaster.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `developers`
--

CREATE TABLE `developers` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `developers`
--

INSERT INTO `developers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(6, 'Emaar', '2023-11-02 14:49:17', '2023-11-02 14:49:17'),
(7, 'Azizi', '2023-11-02 15:36:42', '2023-11-02 15:36:42'),
(8, 'Danube', '2023-11-02 15:37:00', '2023-11-02 15:37:00'),
(9, 'Sobha Realty', '2023-11-02 15:37:31', '2023-11-06 16:02:03'),
(10, 'Damac Properties', '2023-11-02 17:01:12', '2023-11-07 12:50:20'),
(11, 'Omniyat', '2023-11-02 17:01:26', '2023-11-02 17:01:26'),
(12, 'Deyaar', '2023-11-02 17:01:34', '2023-11-02 17:01:34'),
(13, 'Ellington', '2023-11-02 17:01:40', '2023-11-02 17:01:40'),
(14, 'Nakheel', '2023-11-02 17:01:53', '2023-11-02 17:01:53'),
(16, 'Nshama', '2023-11-02 17:02:09', '2023-11-04 15:24:13'),
(17, 'Aldar', '2023-11-07 13:50:09', '2023-11-13 14:23:53'),
(18, 'Arada', '2023-11-07 14:29:48', '2023-11-07 14:29:48'),
(19, 'Meraas', '2024-02-16 15:57:24', '2024-02-16 15:57:24'),
(20, 'imtiaz', '2024-03-25 11:26:13', '2024-03-25 11:26:13'),
(21, 'Damac', '2024-05-21 16:49:31', '2024-05-21 16:49:31');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `title`, `created_at`, `updated_at`) VALUES
(6, 'Gymnasium', '2023-11-08 17:10:00', '2023-11-08 17:10:00'),
(7, 'Sauna', '2023-11-08 17:10:38', '2023-11-08 17:10:38'),
(8, 'Swimming pool', '2023-11-08 17:11:07', '2023-11-08 17:11:07'),
(9, 'Balcony', '2023-11-08 17:32:01', '2023-11-08 17:32:01'),
(10, 'Fully-fitted kitchen', '2023-11-08 17:32:14', '2023-11-08 17:32:14'),
(11, 'Hartland walk', '2023-11-08 17:32:38', '2023-11-08 17:32:38'),
(12, 'Boulevard', '2023-11-08 17:32:46', '2023-11-08 17:32:46'),
(13, 'Square', '2023-11-08 17:33:00', '2023-11-08 17:33:00'),
(14, 'Hotels', '2023-11-08 17:33:07', '2023-11-08 17:33:07'),
(15, 'Spa', '2023-11-08 17:33:14', '2023-11-08 17:33:14'),
(16, 'Car Parking', '2023-11-09 17:50:15', '2023-11-09 17:50:15'),
(17, 'Built in wardrobes', '2023-11-09 17:53:38', '2023-11-09 17:53:38'),
(18, 'Central AC', '2023-11-09 17:53:45', '2023-11-09 17:53:45'),
(19, 'Steam room', '2023-11-09 17:53:58', '2023-11-09 17:53:58'),
(20, '24/7 Security', '2023-11-09 17:54:25', '2023-11-09 17:54:25'),
(21, 'Mosque', '2023-11-09 17:54:43', '2023-11-09 17:54:43'),
(22, 'Maid\'s Room', '2023-11-09 17:57:34', '2023-11-09 17:57:34'),
(23, 'Jogging track', '2023-11-09 17:58:04', '2023-11-09 17:58:04'),
(24, 'Entertainment facilities', '2023-11-09 17:58:15', '2023-11-09 17:58:15'),
(25, 'Kids play Area', '2023-11-09 17:58:25', '2023-11-09 17:58:25'),
(26, 'Health club', '2023-11-09 17:58:33', '2023-11-09 17:58:33'),
(27, 'Beach Access', '2023-11-09 18:00:46', '2023-11-09 18:00:46'),
(28, 'Sandy Beaches', '2023-11-09 18:16:54', '2023-11-09 18:16:54'),
(29, 'Best Waterfront', '2023-11-09 18:17:06', '2023-11-09 18:17:06'),
(30, 'BBQ Area', '2023-11-19 19:35:57', '2023-11-19 19:35:57'),
(31, 'ZEN Garden', '2023-11-19 19:36:06', '2023-11-19 19:36:06'),
(32, 'Yoga Zone', '2023-11-19 19:36:13', '2023-11-19 19:36:13'),
(33, 'Park', '2023-11-19 19:36:19', '2023-11-19 19:36:19'),
(34, 'Chiller free', '2023-11-19 19:36:27', '2023-11-19 19:36:27'),
(35, 'Vacant unit', '2023-11-19 19:36:44', '2023-11-19 19:36:44'),
(36, 'Yoga Zone', '2023-11-19 19:36:53', '2023-11-19 19:36:53');

-- --------------------------------------------------------

--
-- Table structure for table `floor_plans`
--

CREATE TABLE `floor_plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `off_plan_id` int(10) UNSIGNED DEFAULT 0,
  `img` varchar(255) DEFAULT '',
  `type` varchar(255) DEFAULT '',
  `property_sub_type` int(5) DEFAULT 0,
  `total_area_sq_ft` decimal(10,2) UNSIGNED DEFAULT 0.00,
  `starting_price` decimal(10,2) UNSIGNED DEFAULT 0.00,
  `ask_for_price` tinyint(1) DEFAULT 0,
  `ask_for_area` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `floor_plans`
--

INSERT INTO `floor_plans` (`id`, `off_plan_id`, `img`, `type`, `property_sub_type`, `total_area_sq_ft`, `starting_price`, `ask_for_price`, `ask_for_area`) VALUES
(648, 38, '170014039171.jpg', '1', 6, 748.00, 0.00, 1, 0),
(649, 38, '170014039173.jpg', '2', 6, 1154.00, 0.00, 1, 0),
(650, 38, '170014039121.jpg', '3', 6, 1555.00, 0.00, 1, 0),
(658, 36, '170013661120.png', '1', 6, 792.00, 0.00, 1, 0),
(659, 36, '170013661120.png', '2', 6, 1553.00, 0.00, 1, 0),
(660, 36, '170013661110.png', '3', 6, 2400.00, 0.00, 1, 0),
(661, 36, '170013661167.png', '4', 8, 2722.00, 0.00, 1, 0),
(668, 32, '169986685592.jpg', '1', 6, 756.00, 0.00, 1, 0),
(669, 32, '169986685529.jpg', '2', 6, 1240.00, 0.00, 1, 0),
(670, 32, '169986685538.jpg', '3', 6, 1658.00, 0.00, 1, 0),
(671, 32, '169986685556.jpg', '4', 6, 2435.00, 0.00, 1, 0),
(711, 41, '170116358272.jpg', '1', 6, 814.00, 0.00, 1, 0),
(712, 41, '1701163582100.jpg', '2', 6, 1327.00, 0.00, 1, 0),
(713, 41, '170116358275.jpg', '3', 6, 1678.00, 0.00, 1, 0),
(788, 39, '170022119264.jpg', '5', 7, 8434.00, 0.00, 1, 0),
(859, 51, '170126727973.jpg', '3', 6, 0.00, 0.00, 1, 1),
(860, 51, '170126727917.jpg', '4', 6, 0.00, 0.00, 1, 1),
(868, 6, '169901893660.jpg', '-1', 6, 412.00, 0.00, 0, 0),
(869, 7, '169902122914.jpg', '1', 6, 763.00, 0.00, 1, 0),
(870, 7, '169935830781.png', '2', 6, 1431.00, 0.00, 1, 0),
(871, 7, '169935830724.png', '3', 6, 1855.00, 0.00, 1, 0),
(872, 7, '169935830769.png', '5', 8, 5256.00, 0.00, 1, 0),
(873, 7, '169935830762.png', '6', 8, 11738.00, 0.00, 1, 0),
(874, 10, '169926190696.jpg', '4', 7, 122.00, 0.00, 1, 0),
(875, 10, '169926190645.jpg', '5', 7, 1122.00, 0.00, 1, 0),
(876, 10, '169926190640.jpg', '6', 7, 1122.00, 0.00, 1, 0),
(877, 10, '169926190624.jpg', '7', 7, 332.00, 0.00, 1, 0),
(878, 11, '169927037899.png', '1', 6, 11.00, 0.00, 0, 0),
(879, 12, '169927201330.png', '1', 6, 112.00, 0.00, 1, 0),
(880, 13, '169927777363.png', '1', 6, 111.00, 0.00, 1, 0),
(881, 14, '169934248385.png', '1', 6, 12.00, 0.00, 1, 0),
(882, 15, '169934475085.jpg', '2', 6, 1.00, 0.00, 1, 0),
(883, 16, '169934693477.png', '1', 6, 12.00, 0.00, 1, 0),
(884, 17, '169934877972.png', '1', 6, 12.00, 0.00, 1, 0),
(885, 18, '169935110325.jpg', '3', 9, 3160.00, 0.00, 1, 0),
(886, 18, '169935110353.jpg', '4', 9, 3997.00, 0.00, 1, 0),
(887, 18, '169935110395.jpg', '5', 7, 5729.00, 0.00, 1, 0),
(888, 18, '169935110331.jpg', '6', 7, 15089.00, 0.00, 1, 0),
(889, 21, '169977248870.jpg', '3', 7, 3788.00, 0.00, 1, 0),
(890, 21, '169977248840.jpg', '4', 7, 4157.00, 0.00, 1, 0),
(891, 21, '169977248854.jpg', '5', 7, 5096.00, 0.00, 1, 0),
(892, 22, '169977433396.jpg', '4', 7, 6261.00, 0.00, 1, 0),
(893, 22, '169977433344.jpg', '5', 7, 7787.00, 0.00, 1, 0),
(894, 23, '1699777673100.jpg', '3', 7, 2989.00, 0.00, 1, 0),
(895, 23, '169977767324.jpg', '4', 7, 3107.00, 0.00, 1, 0),
(896, 25, '169985571185.jpg', '3', 9, 1989.00, 0.00, 1, 0),
(897, 25, '169985571142.jpg', '4', 9, 2452.00, 0.00, 1, 0),
(898, 26, '', NULL, NULL, 0.00, 0.00, 0, 0),
(899, 26, '169985720324.png', '3', 9, 1880.00, 0.00, 1, 0),
(900, 26, '169985720390.png', '4', 9, 2353.00, 0.00, 1, 0),
(901, 27, '169985805527.png', '3', 9, 1990.00, 0.00, 1, 0),
(902, 27, '169985805563.png', '4', 9, 2373.00, 0.00, 1, 0),
(909, 30, '169986350019.jpg', '1', 6, 695.00, 0.00, 1, 0),
(910, 30, '169986350081.jpg', '2', 6, 1114.00, 0.00, 1, 0),
(911, 30, '169986350019.jpg', '3', 6, 1667.00, 0.00, 1, 0),
(915, 42, '170117128548.jpg', '1', 6, 681.00, 0.00, 1, 0),
(916, 42, '170117128556.jpg', '2', 6, 1065.00, 0.00, 1, 0),
(917, 42, '170117128525.jpg', '3', 6, 1769.00, 0.00, 1, 0),
(922, 45, '170117794156.jpg', '1', 6, 998.00, 0.00, 1, 0),
(923, 45, '170117794182.jpg', '2', 6, 1251.00, 0.00, 1, 0),
(924, 45, '170117794185.jpg', '3', 6, 1670.00, 0.00, 1, 0),
(925, 45, '170117794117.jpg', '4', 6, 2333.00, 0.00, 1, 0),
(926, 44, '170117646452.jpg', '3', 6, 665.00, 0.00, 1, 0),
(927, 46, '170117965430.jpg', '1', 6, 737.00, 0.00, 1, 0),
(928, 46, '170117965488.jpg', '2', 6, 1939.00, 0.00, 1, 0),
(929, 46, '170117965484.jpg', '3', 6, 2929.00, 0.00, 1, 0),
(930, 46, '170117965424.jpg', '4', 6, 6927.00, 0.00, 1, 0),
(931, 48, '170125807331.jpg', '1', 6, 752.00, 0.00, 1, 0),
(932, 48, '170125807326.jpg', '2', 6, 1057.00, 0.00, 1, 0),
(933, 48, '170125807357.jpg', '3', 6, 1612.00, 0.00, 1, 0),
(934, 49, '170126010942.jpg', '1', NULL, 680.00, 0.00, 1, 0),
(935, 49, '170126010952.jpg', '2', NULL, 1134.00, 0.00, 1, 0),
(936, 49, '170126010986.jpg', '3', NULL, 1631.00, 0.00, 1, 0),
(947, 33, '169986827680.jpg', '3', 7, 3465.00, 0.00, 1, 0),
(948, 33, '169986827636.jpg', '4', 7, 3960.00, 0.00, 1, 0),
(949, 33, '169986827631.jpg', '5', 7, 4702.00, 0.00, 1, 0),
(950, 33, '169986827699.jpg', '6', 7, 9038.00, 0.00, 1, 0),
(987, 52, '170135348688.jpg', '1', 6, 0.00, 0.00, 1, 1),
(988, 52, '170135348698.jpg', '2', 6, 0.00, 0.00, 1, 1),
(989, 52, '170135348698.jpg', '3', 6, 0.00, 0.00, 1, 1),
(990, 52, '170135348641.jpg', '2', 9, 0.00, 0.00, 1, 1),
(991, 52, '170135428245.jpg', '3', 8, 0.00, 0.00, 1, 1),
(992, 52, '170135428237.jpg', '4', 8, 0.00, 0.00, 1, 1),
(994, 53, '170357684861.jpg', '1', 6, 0.00, 0.00, 1, 1),
(995, 53, '170357684859.jpg', '2', 6, 0.00, 0.00, 1, 1),
(996, 53, '170357684864.jpg', '3', 6, 0.00, 0.00, 1, 1),
(997, 53, '170357684858.jpg', '4', 6, 0.00, 0.00, 1, 1),
(998, 47, '170428039252.jpg', '1', 6, 716.00, 0.00, 1, 0),
(999, 47, '170428039210.jpg', '2', 6, 1014.00, 0.00, 1, 0),
(1000, 47, '170428039264.jpg', '3', 6, 1577.00, 0.00, 1, 0),
(1001, 43, '170117424123.jpg', '1', 6, 654.00, 0.00, 1, 0),
(1002, 43, '170117424149.jpg', '2', 6, 992.00, 0.00, 1, 0),
(1003, 43, '170117424128.jpg', '3', 6, 1368.00, 0.00, 1, 0),
(1059, 34, '170013265297.jpg', '1', 6, 752.00, 0.00, 1, 0),
(1060, 34, '170013265266.jpg', '2', 6, 1183.00, 0.00, 1, 0),
(1061, 34, '170013265247.jpg', '3', 6, 1565.00, 0.00, 1, 0),
(1062, 64, '170808354330.jpg', '3', 7, 0.00, 0.00, 1, 1),
(1063, 64, '170808354338.jpg', '4', 7, 0.00, 0.00, 1, 1),
(1064, 64, '170808354358.jpg', '5', 7, 0.00, 0.00, 1, 1),
(1069, 1, '169899954385.jpg', '-1', 6, 420.00, 0.00, 1, 0),
(1070, 1, '169899954348.jpg', '1', 6, 850.00, 0.00, 1, 0),
(1071, 1, '169899954345.jpg', '2', 6, 1200.00, 0.00, 1, 0),
(1072, 1, '169899954355.jpg', '3', 6, 1700.00, 0.00, 1, 0),
(1084, 54, '170565259161.png', '4', 7, 0.00, 0.00, 1, 1),
(1085, 54, '170565259137.png', '5', 7, 0.00, 0.00, 1, 1),
(1086, 50, '170126441083.jpg', '1', 6, 906.00, 0.00, 1, 0),
(1087, 50, '170126441035.jpg', '2', 6, 1697.00, 0.00, 1, 0),
(1088, 50, '170126441082.jpg', '3', 6, 2648.00, 0.00, 1, 0),
(1089, 50, '170126441016.jpg', '4', 6, 6792.00, 0.00, 1, 0),
(1101, 37, '170013842397.jpg', '1', 6, 814.00, 0.00, 1, 0),
(1102, 37, '170013842354.jpg', '2', 6, 1369.00, 0.00, 1, 0),
(1103, 37, '170013842368.jpg', '3', 6, 2773.00, 0.00, 1, 0),
(1104, 28, '169986060161.jpg', '1', 6, 964.00, 0.00, 1, 0),
(1105, 28, '1699860601100.jpg', '2', 6, 1117.00, 0.00, 1, 0),
(1106, 28, '169986060162.jpg', '3', 6, 1959.00, 0.00, 1, 0),
(1107, 35, '', '1', 6, 731.00, 0.00, 1, 0),
(1108, 35, '', '2', 6, 1682.00, 0.00, 1, 0),
(1109, 35, '', '3', 6, 2696.00, 0.00, 1, 0),
(1110, 35, '', '4', 6, 3059.00, 0.00, 1, 0),
(1111, 31, '169986490157.jpg', '1', 6, 703.00, 0.00, 1, 0),
(1112, 31, '169986490187.jpg', '2', 6, 1102.00, 0.00, 1, 0),
(1113, 31, '169986490124.jpg', '3', 6, 1673.00, 0.00, 1, 0),
(1114, 29, '169986202146.jpg', '1', 6, 782.00, 0.00, 1, 0),
(1115, 29, '169986202154.jpg', '2', 6, 1393.00, 0.00, 1, 0),
(1116, 29, '169986202113.jpg', '3', 6, 1757.00, 0.00, 1, 0),
(1119, 5, '169935668581.jpg', '4', 7, 4991.00, 0.00, 1, 0),
(1120, 5, '169935668588.jpg', '5', 7, 5697.00, 0.00, 1, 0),
(1121, 5, '169935668557.jpg', '6', 7, 7024.00, 0.00, 1, 0),
(1189, 74, '171585420577.jpg', '1', 6, 0.00, 0.00, 1, 1),
(1190, 74, '171585420525.jpg', '2', 6, 0.00, 0.00, 1, 1),
(1191, 74, '171585420576.jpg', '3', 6, 0.00, 0.00, 1, 1),
(1198, 40, '170065923518.jpg', '1', 6, 763.00, 0.00, 1, 0),
(1199, 40, '170065923592.jpg', '2', 6, 1431.00, 0.00, 1, 0),
(1200, 40, '170065923563.jpg', '3', 6, 1828.00, 0.00, 1, 0),
(1201, 40, '170065923591.jpg', '4', 6, 2463.00, 0.00, 1, 0),
(1202, 40, '', '5', 8, 5256.00, 0.00, 1, 0),
(1203, 40, '', '6', 8, 11738.00, 0.00, 1, 0),
(1204, 73, '171577300928.jpg', '1', 6, 0.00, 0.00, 1, 1),
(1205, 73, '171577300962.jpg', '2', 6, 0.00, 0.00, 1, 1),
(1206, 73, '171577300963.jpg', '3', 6, 0.00, 0.00, 1, 1),
(1210, 72, '171508194491.jpg', '1', 6, 0.00, 0.00, 1, 1),
(1211, 72, '171508194421.jpg', '2', NULL, 0.00, 0.00, 1, 1),
(1212, 72, '171508194433.jpg', '3', NULL, 0.00, 0.00, 1, 1),
(1213, 71, '171507969514.jpg', '1', 6, 0.00, 0.00, 1, 1),
(1214, 71, '171507969519.jpg', '2', 6, 0.00, 0.00, 1, 1),
(1215, 71, '171507969514.jpg', '3', 6, 0.00, 0.00, 1, 1),
(1216, 70, '171507184119.jpg', '1', 6, 0.00, 0.00, 1, 1),
(1217, 70, '171507184192.jpg', '2', NULL, 0.00, 0.00, 1, 1),
(1218, 70, '171507184146.jpg', '3', NULL, 0.00, 0.00, 1, 1),
(1225, 67, '171500161221.jpg', '1', 6, 0.00, 0.00, 1, 1),
(1226, 67, '171500161239.jpg', '2', 6, 0.00, 0.00, 1, 1),
(1227, 67, '171500161298.jpg', '3', 7, 0.00, 0.00, 1, 1),
(1231, 68, '171500388818.jpg', '1', 6, 0.00, 0.00, 1, 1),
(1232, 68, '171500388882.jpg', '2', 6, 0.00, 0.00, 1, 1),
(1233, 68, '171500388894.jpg', '3', 6, 0.00, 0.00, 1, 1),
(1234, 66, '171499970289.jpg', '1', 6, 0.00, 0.00, 1, 1),
(1235, 66, '171499970259.jpg', '2', 6, 0.00, 0.00, 1, 1),
(1236, 66, '171499970244.jpg', '3', 6, 0.00, 0.00, 1, 1),
(1237, 65, '171499725497.jpg', '1', 6, 0.00, 0.00, 1, 1),
(1238, 65, '171499740882.jpg', '2', 6, 0.00, 0.00, 1, 1),
(1239, 65, '171499754739.jpg', '3', 6, 0.00, 0.00, 1, 1),
(1252, 76, '171629572879.jpg', '4', 7, 0.00, 0.00, 1, 1),
(1253, 76, '171629572846.jpg', '5', 7, 0.00, 0.00, 0, 1),
(1256, 75, '171628239726.jpg', '3', 9, 0.00, 0.00, 1, 1),
(1257, 75, '171628239773.jpg', '4', 8, 0.00, 0.00, 1, 1),
(1258, 69, '171500520175.jpg', '1', 6, 0.00, 0.00, 1, 1),
(1259, 69, '171500520182.jpg', '2', 6, 0.00, 0.00, 1, 1),
(1260, 69, '171500520123.jpg', '3', 6, 0.00, 0.00, 1, 1),
(1261, 63, '170748778414.jpg', '3', 7, 0.00, 0.00, 1, 1),
(1262, 63, '170748778484.jpg', '4', 7, 0.00, 0.00, 0, 1),
(1263, 61, '170748629469.jpg', '1', 6, 0.00, 0.00, 1, 1),
(1264, 61, '170748629458.jpg', '2', 6, 0.00, 0.00, 1, 1),
(1265, 61, '170748629430.jpg', '3', 6, 0.00, 0.00, 1, 1),
(1266, 61, '170748629466.jpg', '4', 6, 0.00, 0.00, 1, 1),
(1267, 59, '170748464850.jpg', '2', 9, 0.00, 0.00, 0, 1),
(1268, 59, '170748464869.jpg', '3', 9, 0.00, 0.00, 1, 1),
(1269, 57, '170748221123.jpg', '3', 6, 0.00, 0.00, 1, 1),
(1270, 57, '170748221132.jpg', '4', 7, 0.00, 0.00, 1, 1),
(1271, 55, '170747828095.jpg', '3', 7, 0.00, 0.00, 1, 1),
(1272, 55, '170747828010.jpg', '4', 7, 0.00, 0.00, 1, 1),
(1273, 60, '170748553019.jpg', '3', 7, 0.00, 0.00, 1, 1),
(1274, 60, '170748553073.jpg', '4', 7, 0.00, 0.00, 1, 1),
(1275, 60, '170748553030.jpg', '5', 7, 0.00, 0.00, 1, 1),
(1276, 62, '170748698147.jpg', '3', 7, 0.00, 0.00, 1, 1),
(1277, 62, '170748698210.jpg', '4', 7, 0.00, 0.00, 1, 1),
(1278, 58, '170748394792.jpg', '2', 9, 0.00, 0.00, 1, 1),
(1279, 58, '170748394744.jpg', '3', 9, 0.00, 0.00, 1, 1),
(1280, 56, '170748074521.jpg', '3', 7, 0.00, 0.00, 1, 1),
(1281, 56, '170748074511.jpg', '4', 7, 0.00, 0.00, 1, 1),
(1285, 77, '172121911717.jpg', '1', 6, 0.00, 0.00, 1, 1),
(1286, 77, '172121911726.jpg', '2', 6, 0.00, 0.00, 1, 1),
(1287, 77, '172121911717.jpg', '3', 6, 0.00, 0.00, 1, 1),
(1300, 80, '172258832411.jpg', '1', 6, 0.00, 0.00, 1, 1),
(1301, 80, '172258832467.jpg', '2', 6, 0.00, 0.00, 1, 1),
(1302, 80, '172258832468.jpg', '3', 6, 0.00, 0.00, 1, 1),
(1303, 78, '172258398523.jpg', '1', 6, 0.00, 0.00, 1, 1),
(1304, 78, '1722583985100.jpg', '2', 6, 0.00, 0.00, 1, 1),
(1305, 78, '172258398511.jpg', '3', 6, 0.00, 0.00, 1, 1),
(1306, 79, '', '1', 6, 0.00, 0.00, 1, 1),
(1307, 79, '172258629663.jpg', '2', 6, 0.00, 0.00, 1, 1),
(1308, 79, '172258629681.jpg', '3', 6, 0.00, 0.00, 1, 1),
(1317, 81, '172259522193.jpg', '1', 6, 0.00, 0.00, 1, 1),
(1318, 81, '172259522112.jpg', '2', 6, 0.00, 0.00, 1, 1),
(1319, 81, '172259522117.jpg', '3', 6, 0.00, 0.00, 1, 1),
(1320, 81, '172259522188.jpg', '3', 9, 0.00, 0.00, 1, 1),
(1329, 82, '172259815011.jpg', '1', 6, 0.00, 0.00, 1, 1),
(1330, 82, '172259815023.jpg', '2', 6, 0.00, 0.00, 1, 1),
(1331, 82, '172259815077.jpg', '3', 6, 0.00, 0.00, 1, 1),
(1332, 82, '172259815014.jpg', '3', 6, 0.00, 0.00, 1, 1),
(1333, 84, '172319161348.jpg', '1', 6, 0.00, 0.00, 1, 1),
(1334, 84, '172319161365.jpg', '2', 6, 0.00, 0.00, 1, 1),
(1335, 84, '172319161346.jpg', '3', 6, 0.00, 0.00, 1, 1),
(1336, 85, '172320193133.jpg', '2', 6, 0.00, 0.00, 1, 1),
(1337, 85, '172320193155.jpg', '2', 6, 0.00, 0.00, 0, 1),
(1338, 85, '172320193146.jpg', '3', 6, 0.00, 0.00, 1, 1),
(1348, 86, '172353675881.jpg', '3', 9, 0.00, 0.00, 1, 1),
(1353, 88, '172354203759.jpg', '1', 6, 0.00, 0.00, 1, 1),
(1354, 88, '172354203744.jpg', '2', 6, 0.00, 0.00, 1, 1),
(1355, 88, '172354203725.jpg', '3', 6, 0.00, 0.00, 1, 1),
(1356, 88, '172354203739.jpg', '4', 6, 0.00, 0.00, 1, 1),
(1358, 89, '172354468111.jpg', '4', 7, 0.00, 0.00, 1, 1),
(1359, 87, '172354042517.jpg', '1', 6, 0.00, 0.00, 1, 1),
(1360, 87, '172354042567.jpg', '2', 6, 0.00, 0.00, 1, 1),
(1361, 87, '172354042590.jpg', '3', 6, 0.00, 0.00, 1, 1),
(1365, 90, '172406266088.jpg', '1', 6, 0.00, 0.00, 1, 1),
(1366, 90, '172406266026.jpg', '2', 6, 0.00, 0.00, 1, 1),
(1367, 90, '172406266020.jpg', '3', 6, 0.00, 0.00, 1, 1),
(1371, 91, '172406796416.jpg', '1', 6, 0.00, 0.00, 1, 0),
(1372, 91, '172406796466.jpg', '2', 6, 0.00, 0.00, 1, 0),
(1373, 91, '172406796484.jpg', '3', 6, 0.00, 0.00, 1, 0),
(1378, 92, '172414424020.jpg', '1', 6, 0.00, 0.00, 1, 1),
(1379, 92, '172414424057.jpg', '2', 6, 0.00, 0.00, 1, 1),
(1380, 92, '172414424074.jpg', '3', 6, 0.00, 0.00, 1, 1),
(1381, 92, '172414424029.jpg', '4', 9, 0.00, 0.00, 1, 1),
(1383, 93, '172647452341.jpg', '5', 7, 0.00, 0.00, 1, 1),
(1387, 94, '172648456528.jpg', '1', 6, 0.00, 0.00, 1, 1),
(1388, 94, '172648456539.jpg', '2', 6, 0.00, 0.00, 1, 1),
(1389, 94, '172648456575.jpg', '3', 6, 0.00, 0.00, 1, 1),
(1392, 95, '172649232144.jpg', '3', 9, 0.00, 0.00, 1, 1),
(1393, 95, '172649232132.jpg', '4', 9, 0.00, 0.00, 1, 1),
(1406, 97, '172682957965.jpg', '1', 6, 0.00, 0.00, 1, 1),
(1407, 97, '172682957993.jpg', '2', 6, 0.00, 0.00, 1, 1),
(1408, 97, '172682957935.jpg', '3', 6, 0.00, 0.00, 1, 1),
(1409, 96, '172682791498.jpg', '1', 6, 0.00, 0.00, 1, 1),
(1410, 96, '172682791442.jpg', '2', 6, 0.00, 0.00, 1, 1),
(1411, 96, '172682791439.jpg', '3', 6, 0.00, 0.00, 1, 1),
(1414, 98, '172707854754.jpg', '3', 9, 0.00, 0.00, 1, 1),
(1415, 98, '172707854773.jpg', '4', 9, 0.00, 0.00, 1, 1),
(1419, 99, '172708326798.jpg', '1', 6, 0.00, 0.00, 1, 1),
(1420, 99, '172708326719.jpg', '2', 6, 0.00, 0.00, 1, 1),
(1421, 99, '172708326720.jpg', '3', 6, 0.00, 0.00, 1, 1),
(1428, 100, '172708795933.jpg', '1', 6, 0.00, 0.00, 1, 1),
(1429, 100, '172708795987.jpg', '2', 6, 0.00, 0.00, 1, 1),
(1430, 100, '172708795998.jpg', '3', 6, 0.00, 0.00, 1, 1),
(1431, 101, '172770328142.jpg', '4', 7, 0.00, 0.00, 1, 1),
(1432, 101, '172770328147.jpg', '5', 7, 0.00, 0.00, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `free_consultation`
--

CREATE TABLE `free_consultation` (
  `id` int(90) NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` int(90) NOT NULL,
  `message` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `free_consultation`
--

INSERT INTO `free_consultation` (`id`, `name`, `email`, `code`, `phone`, `message`) VALUES
(0, 'lMflwoxA', 'orattef@cmaill.xyz', '', 0, 'She got no headaches before her period, which she would normally get headaches <a href=htt'),
(0, 'Mike Blomfield\r\n', 'mikeArrirm@gmail.com', '', 0, 'Greetings \r\n \r\nThis is Mike Blomfield\r\n \r\nLet me show you our latest research results from'),
(0, 'RobertGet', 'alfredegov@gmail.com', '', 0, 'Ndewo, achá»rá» m á»‹mara á»ná»¥ahá»‹a gá»‹.'),
(0, 'Mike Mansfield\r\n', 'mikeSpeerepharee@gmail.com', '', 0, 'If you are looking to rank your local business on Google Maps in a specific area, this ser'),
(0, 'PhilGet', 'septon36giannixi@gmail.com', '', 0, 'Szia, meg akartam tudni az Ã¡rÃ¡t.'),
(0, 'Jessica Eastment', 'jessicaeastment@getafollower.com', '', 0, 'Hey they, this is Jess from GetAFollower. I checked out your website and social media acco'),
(0, '10.01heps11xwdw4r55gyne7tzkmp@mail4u.pw', '10.01heps11xwdw4r55gyne7tzkmp@mail4u.pw', '', 0, 'User Request to Subscribe Now'),
(0, '10.01heps11xwdw4r55gyne7tzkmp@mail4u.pw', '10.01heps11xwdw4r55gyne7tzkmp@mail4u.pw', '', 0, 'cupiditate id et explicabo sunt sapiente ducimus quidem officia totam eum assumenda sed im'),
(0, 'nZhLESfv', 'Hishicy@fmaill.xyz', '', 0, '<a href=http://prilig.monster>priligy equivalent</a> We used immunoblotting analysis to de'),
(0, 'GRwQgCj', 'orattef@cmaill.xyz', '', 0, 'This assay measures the amount of dehydrogenase enzymes found in metabolically active cell'),
(0, 'lzdSNdxytw', 'callvisvetlana@list.ru', '', 0, 'ÐÐµ Ð½ÑƒÐ¶Ð½Ð¾ Ð¼Ð½Ð¾Ð³Ð¾ Ð·Ð½Ð°Ñ‚ÑŒ, Ð¿Ñ€Ð¾ÑÑ‚Ð¾ Ñ‚Ñ€ÑƒÐ´Ð¸ÑÑŒ 000*** https://forms.gl'),
(0, 'Deniel', 'delinusert@hotmail.com', '', 0, 'https://vk.cc/cslQXx I earned 19 000 thousand dollars here. Welcome.'),
(0, 'PhilGet', 'septon36giannixi@gmail.com', '', 0, 'HÃ¦, Ã©g vildi vita verÃ° Ã¾itt.'),
(0, 'Gena Hurt', 'hurt.gena@gmail.com', '', 0, 'Do you need targeted Customers emails and phone numbers , so I am here to help you check o'),
(0, 'Mike Sheldon\r\n', 'mikeappardy@gmail.com', '', 0, 'Hi there \r\n \r\nJust checked your diamondcityre.com baclink profile, I noticed a moderate pe'),
(0, 'RobertGet', 'lucido.leinteract@gmail.com', '', 0, 'Hola, volia saber el seu preu.'),
(0, 'Adam Smith', 'adam.smith@gmail.com', '', 0, 'Want to create stunning content in seconds? \r\n\r\nTry AI Creative Suite, an AI-powered conte'),
(0, 'Vlasofsem', 'worlds@meteo.gold', '', 0, 'ÐŸÑ€ÐµÐ´Ð»Ð°Ð³Ð°ÐµÐ¼ ÑÐ²Ð¾Ð¸ Ð»ÑƒÑ‡ÑˆÐ¸Ðµ ÑƒÑÐ»ÑƒÐ³Ð¸: \r\n\"Ð¡Ñ‚Ð¾Ð¿Ñ€Ð¾Ñ†ÐµÐ½Ñ‚Ð½Ð°Ñ Ð»Ð'),
(0, 'LzxFuwasfC', 'callvisvetlana@list.ru', '', 0, 'ÐÐµ Ð¸Ñ‰Ð¸ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼ Ñ‚Ð°Ð¼ Ð³Ð´Ðµ Ð¸Ñ… Ð½ÐµÑ‚ ArataurNiladwyn@gmail.com 000*** diam'),
(0, 'Anfisa', 'anfisa@hotmail.com', '', 0, 'https://go.hesoties.com/0lxh \r\n \r\nInvest smartly, earn more !'),
(0, 'Artssem', 'worlds@meteo.gold', '', 0, ' \r\nÐ—Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ! \r\nÐ’Ñ‹Ð¿Ð¾Ð»Ð½ÑÐµÐ¼ ÑÐ°Ð¼Ñ‹Ðµ Ð»ÑƒÑ‡ÑˆÐ¸Ðµ Ð¿Ñ€Ð¾Ð³Ð¾Ð½Ñ‹ \"'),
(0, 'Mike Warren\r\n', 'petersewsgecy@gmail.com', '', 0, 'Greetings \r\n \r\nI have just verified your SEO on  diamondcityre.com for the ranking keyword'),
(0, 'Celinda Vennard', 'vennard.celinda@hotmail.com', '', 0, 'Hi, \r\n\r\ndiamondcityre.com is only listed in a 8/10,000+ Directories\r\n\r\nWe have a black fri'),
(0, 'Peafebode', 'Peafebode@hmaill.xyz', '', 0, '<a href=https://tadalafil.top>cheap cialis no prescription</a> The initial step in the car'),
(0, 'Vlasovasem', 'worlds@meteo.gold', '', 0, ' \r\nÐ Ð°Ð´Ñ‹ Ð¿Ñ€Ð¸Ð²ÐµÑ‚ÑÑ‚Ð²Ð¾Ð²Ð°Ñ‚ÑŒ Ð²Ð°Ñ! \r\nÐ“Ð¾Ñ‚Ð¾Ð²Ñ‹ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶Ð¸Ñ‚ÑŒ Ð»ÑƒÑ'),
(0, 'usLNqMYiu', 'orattef@cmaill.xyz', '', 0, 'Wilber DKGvwnKefQH 5 29 2022 <a href=https://finasterid.cfd>buy canadian finasteride 1 mg<'),
(0, 'Mike Longman\r\n', 'mikeArrirm@gmail.com', '', 0, 'Hi there, \r\n \r\nI have reviewed your domain in MOZ and have observed that you may benefit f'),
(0, 'Yurijoblift', 'afonasevnavit@gmail.com', '', 0, 'Ð—Ð½Ð°ÐºÐ¾Ð¼ÑŒÑ‚ÐµÑÑŒ, Ñ‡ÐµÐ»Ð¾Ð²ÐµÐº, Ð·Ð°ÑÐ»ÑƒÐ¶Ð¸Ð²Ð°ÑŽÑ‰Ð¸Ð¹ Ð²Ð½Ð¸Ð¼Ð°Ð½Ð¸Ñ - <a h'),
(0, 'Zack Kerferd', 'kerferd.carmela@msn.com', '', 0, 'If you are facing any website  issues, error,  bugs or need any other help with your site?'),
(0, 'Kedtealia', 'Kedtealia@kmaill.xyz', '', 0, '<a href=http://sviagras.cyou>where do you buy viagra</a> 01 mg and about 10 mg of naltrexo'),
(0, 'JrFJfweZca', 'callvisvetlana@list.ru', '', 0, 'ÐÐµ Ð¸Ñ‰Ð¸ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼ Ñ‚Ð°Ð¼ Ð³Ð´Ðµ Ð¸Ñ… Ð½ÐµÑ‚ ArataurNiladwyn@gmail.com 000*** diam'),
(0, 'Emely Mullins', 'emely.mullins@outlook.com', '', 0, 'Hello,\r\n\r\nWe are a bulk email service. \r\n\r\nWe have very large email lists and can filter i'),
(0, 'Artssem', 'worlds@meteo.gold', '', 0, ' \r\nÐÑƒÐ¶Ð½Ð¾ \"ÑƒÐ±Ð¸Ñ‚ÑŒ\" Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚-ÑÐ°Ð¹Ñ‚ Ð²Ð°ÑˆÐµÐ³Ð¾ ÐºÐ¾Ð½ÐºÑƒÑ€ÐµÐ½Ñ‚Ð°? Ð'),
(0, 'MikhailRS', 'yourmail@gmail.com', '', 0, 'Hello. I will increase traffic and profitability of the site, and also solve all the probl'),
(0, 'Mike Jerome\r\n', 'mikeArrirm@gmail.com', '', 0, 'Good Day \r\n \r\nThis is Mike Jerome\r\n \r\nLet me show you our latest research results from our'),
(0, 'Wlasovasem', 'worlds@meteo.gold', '', 0, ' \r\nÐœÐ¾Ð¶ÐµÐ¼ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶Ð¸Ñ‚ÑŒ Ð±Ñ‹ÑÑ‚Ñ€Ñ‹Ð¹ Ð¸ ÑÑ„Ñ„ÐµÐºÑ‚Ð¸Ð²Ð½Ñ‹Ð¹ ÑÐ¿Ð¾ÑÐ¾Ð± Ð'),
(0, 'VadyaVVNp', 'vadimvv3454@outlook.com', '', 0, 'Ð¡Ð°Ð¹Ñ‚ Ð±Ð¾Ð»ÐµÐ»ÑŒÑ‰Ð¸ÐºÐ¾Ð² ÐŸÐ¤Ðš Ð¦Ð¡ÐšÐ c Ð¸Ð½Ð²Ð°Ð»Ð¸Ð´Ð½Ð¾ÑÑ‚ÑŒÑŽ  https://cska'),
(0, 'Pitroda Satyan', 'projectdept@kanzalshamsprojectmgt.com', '', 0, 'Greetings, \r\n \r\nAm glad to connect with you, My name is Pitroda Satyan G, am an investment'),
(0, 'BestFarmraw', 'iunskiygipertonik@gmail.com', '', 0, 'TruePills, No prescription needed, Buy pills without restrictions. Money Back Guaranteed 3'),
(0, 'AleALmwL', 'alexnnsliv@outlook.com', '', 0, 'Ð Ð°Ð·Ð¼ÐµÑ‰ÐµÐ½Ð¸Ðµ Ð¿Ð¾Ð»Ð¾Ð¶Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ñ… Ð¾Ñ‚Ð·Ñ‹Ð²Ð¾Ð² Ð½Ð°  ÐºÐ°Ñ€Ñ‚Ð°Ñ… Ð¸ Ð¾Ñ‚Ð'),
(0, 'tIvvLypMNf', 'callvisvetlana@list.ru', '', 0, 'ÐÐµ Ð¸Ñ‰Ð¸ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼ Ñ‚Ð°Ð¼ Ð³Ð´Ðµ Ð¸Ñ… Ð½ÐµÑ‚ ArataurNiladwyn@gmail.com 000*** diam'),
(0, 'RobertGet', 'lucido.leinteract@gmail.com', '', 0, 'Hi, I wanted to know your price.'),
(0, 'Aleggatorseo', 'aleggatorseo@hotmail.com', '', 0, 'https://seo-progony.ru/ Ð¾Ð±Ñ€Ð°Ñ‰Ð°Ð¹Ñ‚ÐµÑÑŒ, Ð¾Ñ‚Ð·Ñ‹Ð²Ñ‹ Ð¿Ð¾Ð»Ð¾Ð¶Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ðµ. \r'),
(0, 'Anikapr', 'anikapr@renoldjeffrey.com', '', 0, 'HÐµllÐ¾ Ð°ll, guyÑ•! Î™ know, my messÐ°ge maÑƒ be tÐ¾Ð¾ spÐµÑÑ–fÑ–Ñ,\r\nBut mÑƒ sister fÐ¾'),
(0, 'Mike Morrison\r\n', 'mikeSpeerepharee@gmail.com', '', 0, 'If you are looking to rank your local business on Google Maps in a specific area, this ser'),
(0, 'BestFarmraw', 'iunskiygipertonik@gmail.com', '', 0, 'TruePills, No prescription needed, Buy pills without restrictions. Money Back Guaranteed 3'),
(0, 'BestFarmraw', 'iunskiygipertonik@gmail.com', '', 0, 'TruePills, No prescription needed, Buy pills without restrictions. Money Back Guaranteed 3'),
(0, 'Dubaistars', 'dubaistars@hotmail.com', '', 0, 'https://dubai-stars.com/ Discover the epitome of luxury and companionship at Dubai Stars, '),
(0, 'Hermantes', 'a.dam.sh.effi.elds.ma.n.@gmail.com', '', 0, 'Operations are shifting entities. When it appears to selling or amplifying, the adequate r'),
(0, 'PhilGet', 'septon36giannixi@gmail.com', '', 0, 'Kaixo, zure prezioa jakin nahi nuen.'),
(0, 'Susana Valentine', 'valentine.susana@msn.com', '', 0, 'Get your unlimited leads for free on LeadsBox.biz'),
(0, 'Vlasofsem', 'peoples@meteo.gold', '', 0, ' \r\nÐ”Ð¾Ð±Ñ€Ñ‹Ð¹ Ð´ÐµÐ½ÑŒ! \r\nÐ“Ð¾Ñ‚Ð¾Ð²Ñ‹ Ð¿Ñ€ÐµÐ´Ð¾ÑÑ‚Ð°Ð²Ð¸Ñ‚ÑŒ ÑÐ°Ð¼Ñ‹Ðµ Ð»ÑƒÑ‡ÑˆÐ¸Ðµ '),
(0, 'ThomasLox', 'exchangeaibot@proton.me', '', 0, 'Enter the Trust Wallet giveaway and win up to $750,000 and NFT vouchers! Just go to the of'),
(0, 'Lelloptog', 'Lelloptog@lmaill.xyz', '', 0, 'It has been shown that desensitization is an acceptable, safe approach to therapy in patie'),
(0, 'INByhU', 'GeRcume@dmaill.xyz', '', 0, 'What options <a href=https://tadalafi.sbs>cialis online cheap</a>'),
(0, 'Wlasoffsem', 'peoples@meteo.gold', '', 0, 'ÐœÐ¾Ð¶ÐµÐ¼ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶Ð¸Ñ‚ÑŒ ÑÐ°Ð¼Ñ‹Ðµ Ð°ÐºÑ‚ÑƒÐ°Ð»ÑŒÐ½Ñ‹Ðµ ÑƒÑÐ»ÑƒÐ³Ð¸ Ð½Ð° Ñ€Ñ‹Ð½Ðº'),
(0, 'Maham Laffer', 'clarissa.laffer@yahoo.com', '', 0, 'The Instagram social media platform has seen explosive growth over the last two years. It '),
(0, 'Zack Weidner', 'lan.weidner30@googlemail.com', '', 0, 'If you are facing any website  issues, error,  bugs or need any other help with your site?'),
(0, 'Kedtealia', 'Kedtealia@kmaill.xyz', '', 0, 'We modeled alkali corneal injury in a separate cohort of mice, and evaluated recovery with'),
(0, 'Mike Hancock\r\n', 'mikeappardy@gmail.com', '', 0, 'Hi there \r\n \r\nJust checked your diamondcityre.com baclink profile, I noticed a moderate pe'),
(0, 'TnAsWACHYc', 'callvisvetlana@list.ru', '', 0, 'ÐÐµ Ð¸Ñ‰Ð¸ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼ Ñ‚Ð°Ð¼ Ð³Ð´Ðµ Ð¸Ñ… Ð½ÐµÑ‚ ArataurNiladwyn@gmail.com 000*** diam'),
(0, 'esuqajopuk', 'renezule@c.targettmail.com', '', 0, 'http://slkjfdf.net/ - Urordec <a href=\"http://slkjfdf.net/\">Irunuqcip</a> gct.rpav.diamond'),
(0, 'esuqajopuk', 'renezule@c.targettmail.com', '', 0, 'http://slkjfdf.net/ - Urordec <a href=\"http://slkjfdf.net/\">Irunuqcip</a> gct.rpav.diamond'),
(0, 'DavidFulky', 'david_djs2012@gmail.com', '', 0, 'Hello, \r\n \r\nMusic download private server  https://0daymusic.org MP3, FLAC, LIVESETS, Musi'),
(0, 'AlfredoHaw', 'r.stepanyan@bpkcba.bizml.ru', '', 0, 'https://usyplenie-zhivotnyh-v-msk.top/ \r\n \r\nÐšÐ¾Ð³Ð´Ð° Ð·Ð°Ñ…Ð¾Ð´Ð¸Ñ‚ ÑÑ‚ÑÐ¸ Ñ€Ð°Ð·Ð»ÑƒÑ'),
(0, 'SamuelMex', 'samueldj20@gmail.com', '', 0, 'Hello, \r\n \r\nNew club music https://0daymusic.org \r\nDownload MP3/FLAC, Label, LIVESETS, Mus'),
(0, 'Mike Elmers\r\n', 'petersewsgecy@gmail.com', '', 0, 'Hi there \r\n \r\nI have just verified your SEO on  diamondcityre.com for its SEO metrics and '),
(0, 'Dorie Byatt', 'dorie.byatt@yahoo.com', '', 0, 'www.LeadsBox.biz \r\n\r\nFree Unlimited Business Data for your company this holiday season'),
(0, 'Mike Croftoon\r\n', 'mikeArrirm@gmail.com', '', 0, 'Hi there, \r\n \r\nI have reviewed your domain in MOZ and have observed that you may benefit f'),
(0, 'Ð’Ð¸Ñ‚Ð°Ð»Ð¸Ð¹', 'info@hifinance.ru', '', 0, 'ÐŸÐ¾Ð´Ñ‚Ð²ÐµÑ€Ð´Ð¸Ñ‚Ðµ Ð²Ñ‹Ð´Ð°Ñ‡Ñƒ Ð²Ð°ÑˆÐµÐ³Ð¾ ÐœÐ¸ÐºÑ€Ð¾Ð·Ð°Ð¹Ð¼Ð°. \r\n \r\n \r\nÐ’Ð¸Ñ‚Ð°Ð»Ð'),
(0, 'Maham Dinkel', 'romaine.dinkel@gmail.com', '', 0, 'The Instagram social media platform has seen explosive growth over the last two years. It '),
(0, 'XkiRRpgJLY', 'callvisvetlana@list.ru', '', 0, 'ÐÐµ Ð¸Ñ‰Ð¸ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼ Ñ‚Ð°Ð¼ Ð³Ð´Ðµ Ð¸Ñ… Ð½ÐµÑ‚ ArataurNiladwyn@gmail.com 000*** diam'),
(0, 'RobertGet', 'lucido.leinteract@gmail.com', '', 0, 'Hola, volia saber el seu preu.'),
(0, 'PhilGet', 'septon36giannixi@gmail.com', '', 0, 'Salut, ech wollt Ã„re PrÃ¤is wÃ«ssen.'),
(0, 'peretyazhka_gyMl', 'noname@12stul.net', '', 0, 'ÐžÑÐ²ÐµÐ¶Ð¸Ñ‚ÑŒ Ð¼ÑÐ³ÐºÑƒÑŽ Ð¼ÐµÐ±ÐµÐ»ÑŒ Ð² Ð´Ð¾Ð¼Ðµ: Ð¿Ð¾Ð»ÐµÐ·Ð½Ñ‹Ðµ ÑÐ¾Ð²ÐµÑ‚Ñ‹ Ð½Ð¾'),
(0, 'Mike Gate\r\n', 'mikeArrirm@gmail.com', '', 0, 'Howdy \r\n \r\nThis is Mike Gate\r\n \r\nLet me show you our latest research results from our cons'),
(0, 'RobertGet', 'lucido.leinteract@gmail.com', '', 0, 'Dia duit, theastaigh uaim do phraghas a fhÃ¡il.'),
(0, 'Tobiasclods', 'no.reply.GerhardVincent@gmail.com', '', 0, 'Howdy-doody! diamondcityre.com \r\n \r\nDid you know that it is possible to send letter absolu'),
(0, 'sUUslquTbd', 'callvisvetlana@list.ru', '', 0, 'ÐÐµ Ð¸Ñ‰Ð¸ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼ Ñ‚Ð°Ð¼ Ð³Ð´Ðµ Ð¸Ñ… Ð½ÐµÑ‚ ArataurNiladwyn@gmail.com 000*** diam'),
(0, 'Wilbert Raphael', 'wilbert.raphael@gmail.com', '', 0, 'Do you need targeted Customers emails and phone numbers , so I am here to help you check o'),
(0, 'Fredrick Standley', 'standley.fredrick@outlook.com', '', 0, 'Do you need targeted Customers emails and phone numbers , so I am here to help you check o'),
(0, 'Dwain Camarena', 'dwain.camarena@msn.com', '', 0, 'Hello, \r\n\r\nA happy new year! LeadsBox.biz now has the ability to supply you with the data '),
(0, 'Mike Simon\r\n', 'mikeSpeerepharee@gmail.com', '', 0, 'If you are looking to rank your local business on Google Maps in a specific area, this ser'),
(0, 'oLZMWVAUr', 'GeRcume@dmaill.xyz', '', 0, 'These forms of ventilator induced lung injury manifest pathologically as diffuse alveolar '),
(0, 'sew', 'megaboommegaboom@yandex.com', '', 0, 'I want to show you one exclusive software called (BTC PROFIT SEARCH AND MINING PHRASES), w'),
(0, 'NARYTHY757091NEYRTHYT', 'valenciaghosh1904@noissmail.com', '', 0, 'METRYTRE757091MARTHHDF'),
(0, 'Abdul Rahman', 'mohamadabdulraman447@gmail.com', '', 0, 'Hello, \r\n \r\nOur investors are seeking business opportunities and projects for possible fun'),
(0, 'Lisa Cooper', 'marketgirl+diamondcityre.com@gmail.com', '', 0, 'Hello, \r\n\r\nMarketGirl.biz has made available our Google Maps Database for everyone.\r\n\r\nI a'),
(0, 'William Cage', 'thisiswilliamcage@gmail.com', '', 0, 'I saw something wrong with your Google Map listing, is this a good place to send a report '),
(0, 'moOlOhhTre', 'callvisvetlana@list.ru', '', 0, 'ÐÐµ Ð¸Ñ‰Ð¸ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼ Ñ‚Ð°Ð¼ Ð³Ð´Ðµ Ð¸Ñ… Ð½ÐµÑ‚ ArataurNiladwyn@gmail.com 000*** diam'),
(0, 'NARYTHY757091NEYRTHYT', 'wilbertoneal1974@noissmail.com', '', 0, 'METRYTRE757091MAERWETT'),
(0, 'Mike Fleming\r\n', 'mikeappardy@gmail.com', '', 0, 'Hi there \r\n \r\nJust checked your diamondcityre.com baclink profile, I noticed a moderate pe'),
(0, 'Kedtealia', 'Kedtealia@kmaill.xyz', '', 0, '<a href=http://acialis.buzz>cialis online prescription</a> Women who are postmenopausal an'),
(0, 'Bobby Ryan', 'heyitsbobbyryan@gmail.com', '', 0, 'Hi, I noticed a few problems affecting your website on Google, is this a good place to sen'),
(0, 'Richard Thomas', 'richard@aimoneymakingcourse.com', '', 0, 'Hi, I noticed a few things wrong with your Google listing, is this a good place to send th'),
(0, 'RobertGet', 'lucido.leinteract@gmail.com', '', 0, 'Ð—Ð´Ñ€Ð°Ð²ÐµÐ¹Ñ‚Ðµ, Ð¸ÑÐºÐ°Ñ… Ð´Ð° Ð·Ð½Ð°Ð¼ Ñ†ÐµÐ½Ð°Ñ‚Ð° Ð²Ð¸.'),
(0, 'Mike Arnold\r\n', 'petersewsgecy@gmail.com', '', 0, 'Greetings \r\n \r\nI have just took a look on your SEO for  diamondcityre.com for  the current'),
(0, 'RobertGet', 'lucido.leinteract@gmail.com', '', 0, 'Aloha, makemake wau eÊ»ike i kÄu kumukÅ«Ê»ai.'),
(0, 'Tigran Ayrapetyan', 'ujn2esbgakah@opayq.com', '', 0, 'Hello, \r\n \r\nWe provide funding through our venture capital company to both start-up and ex'),
(0, 'Mike Cook\r\n', 'mikeArrirm@gmail.com', '', 0, 'Hi there, \r\n \r\nI have reviewed your domain in MOZ and have observed that you may benefit f'),
(0, 'Eloise Clunies', 'clunies.eloise63@outlook.com', '', 0, 'Do you need targeted Customers emails and phone numbers , so I am here to help you check o'),
(0, 'EdwinLem', 'r.y.ang.oo.sem.an.2@gmail.com', '', 0, 'Digital optimization necessitates a sustained investment. The longer you work with an repu'),
(0, 'BXSVnSqXpQ', 'callvisvetlana@list.ru', '', 0, 'ÐÐµ Ð¸Ñ‰Ð¸ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼ Ñ‚Ð°Ð¼ Ð³Ð´Ðµ Ð¸Ñ… Ð½ÐµÑ‚ ArataurNiladwyn@gmail.com 000*** diam'),
(0, 'TruePillsraw', 'iunskiygipertonik@gmail.com', '', 0, 'TruePills, No prescription needed, Buy pills without restrictions. Money Back Guaranteed 3'),
(0, 'TruePillsraw', 'iunskiygipertonik@gmail.com', '', 0, 'TruePills, No prescription needed, Buy pills without restrictions. Money Back Guaranteed 3'),
(0, 'JamesCer', 'jean.paul.l.a.w.4.@gmail.com', '', 0, 'Hey all! Just discovered this gem of a site and had to share the glee. As a personal injur'),
(0, 'MasonGet', 'kaenquirynicholls@gmail.com', '', 0, 'Salam, qiymÉ™tinizi bilmÉ™k istÉ™dim.'),
(0, '29.01hk6gxawjqwn1mjbe8pw47g70@mail4u.pw', '29.01hk6gxawjqwn1mjbe8pw47g70@mail4u.pw', '', 0, 'User Request to Subscribe Now'),
(0, '29.01hk6gxawjqwn1mjbe8pw47g70@mail4u.pw', '29.01hk6gxawjqwn1mjbe8pw47g70@mail4u.pw', '', 0, 'modi ut quia eos aspernatur sit dolorem minima fugiat ea officia nihil corrupti expedita. '),
(0, 'Mike Raleigh\r\n', 'mikeArrirm@gmail.com', '', 0, 'Howdy \r\n \r\nThis is Mike Raleigh\r\n \r\nLet me present you our latest research results from ou'),
(0, 'ephetsduh', 'qqdpuwhs@yahoo.com', '', 0, 'You have been awarded dividends from securities. You need to follow the link https://tinyu'),
(0, 'ephetsduh', 'ei5ukari@icloud.com', '', 0, 'Hi, this is Anna. I am sending you my intimate photos as I promised. https://tinyurl.com/y'),
(0, 'RobertGet', 'lucido.leinteract@gmail.com', '', 0, 'Szia, meg akartam tudni az Ã¡rÃ¡t.'),
(0, 'kdzCDXdwiT', 'callvisvetlana@list.ru', '', 0, 'ÐÐµ Ð¸Ñ‰Ð¸ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼ Ñ‚Ð°Ð¼ Ð³Ð´Ðµ Ð¸Ñ… Ð½ÐµÑ‚ ArataurNiladwyn@gmail.com 000*** diam'),
(0, 'Cliff Koehn', 'cliff.koehn@googlemail.com', '', 0, 'Do you need targeted Customers emails and phone numbers , so I am here to help you check o'),
(0, 'ephetsduh', 'ow5ncu8u@gmail.com', '', 0, 'Hi, this is Julia. I am sending you my intimate photos as I promised. https://tinyurl.com/'),
(0, 'ThomasDic', 'yasen.krasen.13+95559@mail.ru', '', 0, 'Ofokfojfief jwlkfeejereghfj iewojfekfjergij wiojewjfewitghuhwrgtjgh ewjhfwqjhdfuewgtuiwe h'),
(0, 'Terra Secombe', 'terra.secombe@gmail.com', '', 0, 'Hey! \r\n\r\nCome test out our beta project LeadsFly.biz and come get your free business leads'),
(0, 'Daniella Beich', 'daniella.beich@outlook.com', '', 0, 'Hey! \r\n\r\nCome test out our beta project LeadsFly.biz and come get your free business leads'),
(0, 'ephetsduh', 'zy1oorr7@yahoo.com', '', 0, 'Hi, this is Jenny. I am sending you my intimate photos as I promised. https://tinyurl.com/'),
(0, 'JamesCer', 'je.a.npau.lla.w.4@gmail.com', '', 0, 'Just discovered this jewel of a platform and had to share the love. As a personal injury a'),
(0, 'Sam Ibrahim', 'aramco@mbox.re', '', 0, 'Hello, \r\n \r\nWe extend warm greetings to your esteemed company and formally invite you to r'),
(0, 'Malcolm Sanford', 'ampbusinsslimited@gmail.com', '', 0, 'Want to skyrocket your brand? TV is the best way to do that!\r\n\r\n\r\nNot only can we get you '),
(0, 'MasonGet', 'kaenquirynicholls@gmail.com', '', 0, 'à¦¹à¦¾à¦‡, à¦†à¦®à¦¿ à¦†à¦ªà¦¨à¦¾à¦° à¦®à§‚à¦²à§à¦¯ à¦œà¦¾à¦¨à¦¤à§‡ à¦šà§‡à¦¯à¦¼à§‡à¦›à¦¿'),
(0, 'Chanda Woore', 'woore.chanda@outlook.com', '', 0, 'Hi diamondcityre\r\n\r\nWe are proud to present our new website for all your B2B and B2C data '),
(0, 'Concetta Ellison', 'concetta.ellison@yahoo.com', '', 0, 'Hi diamondcityre\r\n\r\nWe are proud to present our new website for all your B2B and B2C data '),
(0, 'TUSVGjBVwU', 'creedrez.pugaChev93@list.ru', '', 0, 'Ð›ÑƒÑ‡ÑˆÐµ Ð½ÐµÑÐºÐ¾Ð»ÑŒÐºÐ¾ Ñ€Ð°Ð· Ð¿Ð¾Ð²Ñ‚Ð¾Ñ€Ð¸Ñ‚ÑŒ, Ñ‡ÐµÐ¼ Ð½Ðµ Ð´ÐµÐ»Ð°Ñ‚ÑŒ ÑÐ¾Ð²Ñ'),
(0, 'Mike Sherlock\r\n', 'mikeSpeerepharee@gmail.com', '', 0, 'If you are looking to rank your local business on Google Maps in a specific area, this ser'),
(0, 'Martinpurry', 'jo.n.j.o.hnsont.het.hird@gmail.com', '', 0, 'For What Purpose Hiring Your State Welfare Impairment Advocate Becomes Vital. \r\nHiring The'),
(0, 'KRcvXOBjeC', 'callvisvetlana@list.ru', '', 0, 'ÐÐµ Ð¸Ñ‰Ð¸ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼ Ñ‚Ð°Ð¼ Ð³Ð´Ðµ Ð¸Ñ… Ð½ÐµÑ‚ ArataurNiladwyn@gmail.com 000*** diam'),
(0, 'ephetsduh', 'mzmk7swq@icloud.com', '', 0, 'Hi, this is Irina. I am sending you my intimate photos as I promised. https://tinyurl.com/'),
(0, 'RobertGet', 'lucido.leinteract@gmail.com', '', 0, 'Hai, saya ingin tahu harga Anda.'),
(0, 'Tanya Mcdougall', 'ampbusinsslimited@gmail.com', '', 0, 'Want to skyrocket your brand? TV is the best way to do that!\r\n\r\n\r\nNot only can we get you '),
(0, 'Timothycag', 'r.926.97.923@gmail.com', '', 0, 'How of Effectively Incorporating Pallet Shelving in Current Storage Layouts \r\n \r\n \r\nNo con'),
(0, 'Louieabomi', 'bucha.n.aonma.tt.@gmail.com', '', 0, '<a href=https://www.portcityexteriors.com/hampstead-nc/>Roofing augmentation offerings</a>'),
(0, 'TruePillsraw', 'iunskiygipertonik@gmail.com', '', 0, 'TruePills, No prescription needed, Buy pills without restrictions. Money Back Guaranteed 3'),
(0, 'TruePillsraw', 'iunskiygipertonik@gmail.com', '', 0, 'TruePills, No prescription needed, Buy pills without restrictions. Money Back Guaranteed 3'),
(0, 'ephetsduh', 'kl7kwlny@hotmail.com', '', 0, 'Hi, this is Jenny. I am sending you my intimate photos as I promised. https://tinyurl.com/'),
(0, 'Charleswhows', 'siriusxr01@rambler.ru', '', 0, '<b><a href=https://geosf.ru/><u>Ð“ÐµÐ¾Ð´ÐµÐ·Ð¸Ñ‡ÐµÑÐºÐ¸Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ñ‹ ÑÑŠÐµÐ¼ÐºÐ° - ÐžÐ'),
(0, 'AaronEsona', 'ma.tt.te.nly.sh.lu.b.e.l.y.@gmail.com', '', 0, 'Another essential reason to change to solar power could be the cost benefits it offers. So'),
(0, 'Zack Oxendine', 'oxendine.kendrick@gmail.com', '', 0, 'If you are facing any website  issues, error,  bugs or need any other help with your site?'),
(0, 'Dacia Nivison', 'nivison.dacia@gmail.com', '', 0, 'Hi, \r\n\r\nLeadsFly is a lead provider for companies all over the world.\r\n\r\nWe provide high q'),
(0, 'Valerie Barela', 'valerie.barela@hotmail.com', '', 0, 'Hi, \r\n\r\nLeadsFly is a lead provider for companies all over the world.\r\n\r\nWe provide high q'),
(0, 'Louieabomi', 'b.u.c.ha.n.ao.nm.at.t.@gmail.com', '', 0, '<a href=https://www.portcityexteriors.com/concrete-services/>Quick roof replacement</a> \r\n'),
(0, 'Brent Fouch', 'brentfouch@aiviralvideo.com', '', 0, 'Can I send you something to help your website use AI?\r\n'),
(0, 'Hannah White', 'notification@domaincorporate.co', '', 0, 'Notice: We are not responsible for any economic losses, data loss, reduction in search eng'),
(0, 'Jason Thomas', 'notification@domainsystems.co', '', 0, 'Notice: We are not accountable for any financial loss, data loss, reduction in search engi'),
(0, 'Daniel Smith', 'notification@domaincorporation.us', '', 2094157621, 'Notice: We are not responsible for any financial loss, data loss, downgrade in SEO ranking'),
(0, 'Dengizaimsn', 'afonasevnavit@gmail.com', '', 0, 'Ð’ÑÐµÐ¼ Ð¿Ñ€Ð¸Ð²ÐµÑ‚! Ð’Ð¾Ð·Ð½Ð¸Ðº Ð²Ð¾Ð¿Ñ€Ð¾Ñ Ð¿Ñ€Ð¾ Ð·Ð°Ð¹Ð¼? ÐŸÑ€ÐµÐ´Ð¾ÑÑ‚Ð°Ð²Ð»ÑÐµ'),
(0, 'Martinpurry', 'j.o.njo.hnso.n.th.ethird@gmail.com', '', 0, 'For What Purpose Employing A Government Aid Disability Attorney Proves to Be Significant. '),
(0, 'okWjxaxpWS', 'callvisvetlana@list.ru', '', 0, 'ÐÐµ Ð¸Ñ‰Ð¸ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼ Ñ‚Ð°Ð¼ Ð³Ð´Ðµ Ð¸Ñ… Ð½ÐµÑ‚ ArataurNiladwyn@gmail.com 000*** diam'),
(0, '29.01hk7x8nmv88nmmd16185swbtc@mail4u.pw', '29.01hk7x8nmv88nmmd16185swbtc@mail4u.pw', '', 0, 'User Request to Subscribe Now'),
(0, '29.01hk7x8nmv88nmmd16185swbtc@mail4u.pw', '29.01hk7x8nmv88nmmd16185swbtc@mail4u.pw', '', 0, 'sint ullam quis aliquam ipsum ut cumque blanditiis pariatur doloremque sed. et eum eveniet'),
(0, 'Mike Taylor\r\n', 'mikeappardy@gmail.com', '', 0, 'Hi there \r\n \r\nJust checked your diamondcityre.com baclink profile, I noticed a moderate pe'),
(0, 'terriqv69', 'pansy@glw96.mailguardianpro.online', '', 0, '5 302 young girl no shirt stock photos high res pictures\r\nhttp://deleon-hof.instasexyblog.'),
(0, 'RobertGet', 'lucido.leinteract@gmail.com', '', 0, 'Salut, ech wollt Ã„re PrÃ¤is wÃ«ssen.'),
(0, 'Vandananar', 'down.loads.mot.ri@gmail.com', '', 0, '<a href=https://earnings-crypto-24.blogspot.com/>Ð¡Ð²ÐµÐ¶Ð¸Ðµ Ð²ÐµÑÑ‚Ð¸</a>: <a href=http'),
(0, 'Vevor', 'vevorseand@gmail.com', '', 0, 'https://bit.ly/3NvpST9 Shop our premium products at affordable prices.'),
(0, 'sew', 'megaboommegaboom@yandex.com', '', 0, 'I want to show you one exclusive software called (BTC PROFIT SEARCH AND MINING PHRASES), w'),
(0, ' Woollacott', 'marydaze2020@gmail.com', '', 0, '\r\nHi, I teach businesses like yours on getting new clients. When do you have time for a ca'),
(0, 'Mike Gustman\r\n', 'mikeArrirm@gmail.com', '', 0, 'Hi there, \r\n \r\nI have reviewed your domain in MOZ and have observed that you may benefit f'),
(0, 'Robertsame', 'ermolov.zt63g@rambler.ru', '', 0, 'Ð¤Ð¾Ñ‚Ð¾ÑÐ°Ð¹Ñ‚ Ð¿Ð¾Ñ€Ð½Ð¾Ð¿Ð´Ð°  Ñ…Ð¾Ñ‡ÐµÑ‚ Ð¿Ð¾ÐºÐ°Ð·Ð°Ñ‚ÑŒ Ð´Ð»Ñ Ð²Ð°Ñ Ð¿Ð¾ÑÐ»ÐµÐ´Ð'),
(0, 'Mike Taylor\r\n', 'petersewsgecy@gmail.com', '', 0, 'Hi \r\n \r\nI have just analyzed  diamondcityre.com for its SEO metrics and saw that your webs'),
(0, 'MasonGet', 'kaenquirynicholls@gmail.com', '', 0, 'ÐŸÑ€Ñ‹Ð²Ñ–Ñ‚Ð°Ð½Ð½Ðµ, Ñ Ñ…Ð°Ñ†ÐµÑž Ð´Ð°Ð²ÐµÐ´Ð°Ñ†Ñ†Ð° Ð’Ð°Ñˆ Ð¿Ñ€Ð°Ð¹Ñ.'),
(0, 'KKEEUQnVrN', 'creedrez.pugaChev93@list.ru', '', 0, 'Ð›ÑƒÑ‡ÑˆÐµ Ð½ÐµÑÐºÐ¾Ð»ÑŒÐºÐ¾ Ñ€Ð°Ð· Ð¿Ð¾Ð²Ñ‚Ð¾Ñ€Ð¸Ñ‚ÑŒ, Ñ‡ÐµÐ¼ Ð½Ðµ Ð´ÐµÐ»Ð°Ñ‚ÑŒ ÑÐ¾Ð²Ñ'),
(0, 'RobertGet', 'lucido.leinteract@gmail.com', '', 0, 'Hi, ego volo scire vestri pretium.'),
(0, 'DavidGet', 'lucido.leinteract@gmail.com', '', 0, 'Hai, saya ingin tahu harga Anda.'),
(0, 'GkktLjQTdL', 'callvisvetlana@list.ru', '', 0, 'ÐÐµ Ð¸Ñ‰Ð¸ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼ Ñ‚Ð°Ð¼ Ð³Ð´Ðµ Ð¸Ñ… Ð½ÐµÑ‚ ArataurNiladwyn@gmail.com 000*** diam'),
(0, 'Ravi Bivins', 'bivins.lula84@gmail.com', '', 0, 'Hi,\r\nMy name is Alastair D. i, owner of Webomaze Australia. You have finally found an SEO '),
(0, 'Zack Macon', 'levi.macon44@gmail.com', '', 0, 'If you are facing any website  issues, error,  bugs or need any other help with your site?'),
(0, 'Lamasew', 'megaboommegaboom@yandex.com', '', 0, 'I want to show you one exclusive program called (BTC PROFIT SEARCH AND MINING PHRASES), wh'),
(0, 'Ravi Cannon', 'cannon.elden@hotmail.com', '', 0, 'Hi,\r\nMy name is Alastair D. i, owner of Webomaze Australia. You have finally found an SEO '),
(0, 'anthonyns60', 'regina@eix50.mailsecurenet.online', '', 0, 'Rough tube explore the rough tube to discover thrilling xxx\r\nhttp://renato.teanna-trump-vi'),
(0, 'RobertGet', 'lucido.leinteract@gmail.com', '', 0, 'Î“ÎµÎ¹Î± ÏƒÎ¿Ï…, Î®Î¸ÎµÎ»Î± Î½Î± Î¼Î¬Î¸Ï‰ Ï„Î·Î½ Ï„Î¹Î¼Î® ÏƒÎ±Ï‚.'),
(0, 'MasonGet', 'kaenquirynicholls@gmail.com', '', 0, 'Hallo, ek wou jou prys ken.'),
(0, 'Mike Blomfield\r\n', 'mikeArrirm@gmail.com', '', 0, 'Hi \r\n \r\nThis is Mike Blomfield\r\n \r\nLet me introduce to you our latest research results fro'),
(0, 'Shaunte Shultz', 'richard@aimoneymakingcourse.com', '', 0, 'Hi, I noticed a few problems affecting your website on Google, is this a good place to sen'),
(0, 'NerryVog', 'nellyluh@gmail.com', '', 0, 'Hello from Happykiddi.'),
(0, 'RobertGet', 'lucido.leinteract@gmail.com', '', 0, 'Salam, qiymÉ™tinizi bilmÉ™k istÉ™dim.'),
(0, 'Megan Atkinson', 'meganatkinson149@gmail.com', '', 0, 'Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers '),
(0, 'Mohammed Hassan Ali', 'michmichhad@gmail.com', '', 0, 'Greetings, \r\nWe Found your email from Search Engine, We are offering a soft loan of 4% int'),
(0, 'MasonGet', 'kaenquirynicholls@gmail.com', '', 0, 'Dia duit, theastaigh uaim do phraghas a fhÃ¡il.'),
(0, 'MatthewWef', 'dustincarlisle35@gmail.com', '', 0, 'Entdecken Sie die Geheimnisse des automatischen Einkommens: Verdienen Sie 890.000 EURO pro'),
(0, 'Brian And Dee Lefler', 'lefler.wolfgang@gmail.com', '', 0, 'The TikTok social media platform has seen explosive growth over the last two years. It now'),
(0, 'muSZcsgTDr', 'mitaxebandilis@gmail.com', '', 0, 'ÐÐµ Ð¸Ñ‰Ð¸ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼ Ñ‚Ð°Ð¼ Ð³Ð´Ðµ Ð¸Ñ… Ð½ÐµÑ‚ Arailadwyn@gmail.com 000*** diamondci'),
(0, 'Tigran Ayrapetyan', 'ujn2esbgakah@opayq.com', '', 0, 'Hello, \r\n \r\nWe provide funding through our venture capital company to both start-up and ex'),
(0, 'Tanisha Feez', 'tanisha.feez@outlook.com', '', 0, 'Choosing Reusable Boxes saves big money compared to cardboard boxes. Reusable 100s of time'),
(0, 'Mike Macey\r\n', 'mikeSpeerepharee@gmail.com', '', 0, 'If you are looking to rank your local business on Google Maps in a specific area, this ser'),
(0, 'sFhKLPhAYc', 'creedrez.pugaChev93@list.ru', '', 0, 'Ð›ÑƒÑ‡ÑˆÐµ Ð½ÐµÑÐºÐ¾Ð»ÑŒÐºÐ¾ Ñ€Ð°Ð· Ð¿Ð¾Ð²Ñ‚Ð¾Ñ€Ð¸Ñ‚ÑŒ, Ñ‡ÐµÐ¼ Ð½Ðµ Ð´ÐµÐ»Ð°Ñ‚ÑŒ ÑÐ¾Ð²Ñ'),
(0, 'olivianu11', 'johnnie@dd8210.eqt36.webmaildirect.online', '', 0, 'Latest porn lesbian videos and real lesbians porn movies here\r\nhttp://bbwporn.topxxx69.com'),
(0, 'Chu Sheffield', 'sheffield.chu76@outlook.com', '', 0, 'Hi diamondcityre.com\r\n\r\nWe noticed your website diamondcityre.com is only listed in 12 out'),
(0, 'Jann Polanco', 'makemybusinessgreatagain@gmail.com', '', 0, 'Hi diamondcityre.com,\r\n\r\nWe visited your website diamondcityre.com and think that we might'),
(0, 'sew', 'megaboommegaboom@yandex.com', '', 0, 'I want to show you one exclusive software called (BTC PROFIT SEARCH AND MINING PHRASES), w'),
(0, 'Malcolmviade', 'no.reply.GuilhermeHoffmann@gmail.com', '', 0, 'Good morning! diamondcityre.com \r\n \r\nDid you know that it is possible to send commercial o'),
(0, 'Isabellamata', 'isabellamata@ozdatasolutions.com', '', 0, 'HÐµlloÇƒ\r\nI Ð°Ñ€Ð¾logizÐµ fÐ¾r thÐµ Ð¾vÐµrlÑƒ Ñ•Ñ€ÐµcÑ–fiÑ mÐµssage.\r\nMy girlfrÑ–Ðµnd Ð°n'),
(0, 'RobertGet', 'lucido.leinteract@gmail.com', '', 0, 'Salut, ech wollt Ã„re PrÃ¤is wÃ«ssen.'),
(0, 'NerryVog', 'nellyluh@gmail.com', '', 0, 'Hello from Happykiddi.'),
(0, 'ZiGuUgdHzQ', 'mitaxebandilis@gmail.com', '', 0, 'ÐÐµ Ð¸Ñ‰Ð¸ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼ Ñ‚Ð°Ð¼ Ð³Ð´Ðµ Ð¸Ñ… Ð½ÐµÑ‚ Arailadwyn@gmail.com 000*** diamondci'),
(0, 'Brian And Dee Wunderly', 'ophelia.wunderly11@gmail.com', '', 0, 'The TikTok social media platform has seen explosive growth over the last two years. It now'),
(0, 'Mike Ward\r\n', 'mikeappardy@gmail.com', '', 0, 'Hi there \r\n \r\nJust checked your diamondcityre.com baclink profile, I noticed a moderate pe'),
(0, 'Ravi Binford', 'binford.meridith68@yahoo.com', '', 0, 'Hi,\r\nMy name is Alastair D. i, owner of Webomaze Australia. You have finally found an SEO '),
(0, 'RobertGet', 'lucido.leinteract@gmail.com', '', 0, 'Sveiki, aÅ¡ norÄ—jau suÅ¾inoti jÅ«sÅ³ kainÄ….'),
(0, 'Coral Marconi', 'yourhealingpartner02@gmail.com', '', 0, 'Are you battling chronic pain or autoimmune conditions? Do you wish to turn back the clock'),
(0, 'Grant Lira', 'growthpartners13@gmail.com', '', 0, 'Hey,\r\n\r\nThis March Iâ€™ll place you on 3 podcasts/mo + 15 professionally edited short-form'),
(0, '', '61811@gmail.com', '', 0, ''),
(0, '', '18260@gmail.com', '', 0, ''),
(0, '', '23189@gmail.com', '', 0, ''),
(0, '', '10619@gmail.com', '', 0, ''),
(0, 'Pillsraw', 'iunskiygipertonik@gmail.com', '', 0, 'TruePills, No prescription needed, Buy pills without restrictions. Money Back Guaranteed 3'),
(0, 'Pillsraw', 'iunskiygipertonik@gmail.com', '', 0, 'TruePills, No prescription needed, Buy pills without restrictions. Money Back Guaranteed 3'),
(0, 'Mike Roberts\r\n', 'petersewsgecy@gmail.com', '', 0, 'Hello \r\n \r\nI have just analyzed  diamondcityre.com for its SEO metrics and saw that your w'),
(0, 'Ravi Haralson', 'noble.haralson65@gmail.com', '', 0, 'Hi,\r\nMy name is Alastair D. i, owner of Webomaze Australia. You have finally found an SEO '),
(0, 'helenrq2', 'nellie@dgx710.snps64.securemailboxnet.fun', '', 0, 'Teenage girl tricks her mom into catching her dad cheating by\r\nhttp://spotts.celebrityamat'),
(0, 'Victoriakila', 'victoriakila@murraydixon.com', '', 0, 'Î—i!\r\nI Ð°Ñ€plÐ°ud wÐ¾mÐµn who havÐµ the ÑÐ¾urage tÐ¾ enÏ³Ð¾y thÐµ lÐ¾vÐµ Ð¾f many wÐ¾men'),
(0, 'DavidGet', 'lucido.leinteract@gmail.com', '', 0, 'Hi, I wanted to know your price.'),
(0, 'MasonGet', 'kaenquirynicholls@gmail.com', '', 0, 'Hola, volia saber el seu preu.'),
(0, '', '78006@gmail.com', '', 0, ''),
(0, '', '73102@gmail.com', '', 0, ''),
(0, '', '27181@gmail.com', '', 0, ''),
(0, '', '2602@gmail.com', '', 0, ''),
(0, '', '36151@gmail.com', '', 0, ''),
(0, 'shelleyrn69', 'brandie@dgx710.snps64.securemailboxnet.fun', '', 0, 'Tickling sex tickle fetish porno videos all free all truly kinky\r\nhttp://android.sexy-danc'),
(0, 'Oren ', 'maggie.bristow11@hotmail.com', '', 0, 'Beauty Be Me - Where Quality Meets Affordability. At Beauty Be Me, our mission is to provi'),
(0, 'Mike Fleming\r\n', 'mikeArrirm@gmail.com', '', 0, 'Hi there, \r\n \r\nI have reviewed your domain in MOZ and have observed that you may benefit f'),
(0, 'MasonGet', 'kaenquirynicholls@gmail.com', '', 0, 'Hai, saya ingin tahu harga Anda.'),
(0, 'Brian And Dee Southard', 'emory.southard@gmail.com', '', 0, 'The TikTok social media platform has seen explosive growth over the last two years. It now'),
(0, 'IirinaScalm', 'occurfgot@gmail.com', '', 0, 'Hi! Have s3x in your city today.  -  https://rb.gy/9pkq6l?Scalm'),
(0, 'Ponaldargup', 'ponaldSug@gmail.com', '', 0, 'Ð’Ð°Ð¶Ð½Ð¾Ð¹ ÑÐ¾ÑÑ‚Ð°Ð²Ð½Ð¾Ð¹ Ñ€Ð°Ð·Ð²Ð¸Ñ‚Ð¸Ñ Ð·Ð´Ð¾Ñ€Ð¾Ð²Ð¾Ð³Ð¾ Ñ€ÐµÐ±Ñ‘Ð½ÐºÐ° ÑÐ²Ð»Ñ'),
(0, 'Ravi Sloan', 'sloan.lucie@googlemail.com', '', 0, 'Hi,\r\nMy name is Alastair D. i, owner of Webomaze Australia. You have finally found an SEO '),
(0, 'IirinaScalm', 'occurfgot@gmail.com', '', 0, 'Hi! Have s3x in your city today.  -  https://rb.gy/9pkq6l?Scalm'),
(0, '', '30044@gmail.com', '', 0, ''),
(0, 'RobertGet', 'lucido.leinteract@gmail.com', '', 0, 'Ndewo, achá»rá» m á»‹mara á»ná»¥ahá»‹a gá»‹.'),
(0, 'Matt Danczuk', 'phone833.302.1808+ext725@gmail.com', '', 0, 'I reviewed your website, to see who to speak with regarding a pending Utility Audit.\r\nPlea'),
(0, 'Trealdargup', 'trenaldSug@gmail.com', '', 0, 'Ð¡Ð¿Ð¾Ñ€Ñ‚Ð¸Ð²Ð½Ñ‹Ð¹ ÐºÐ¾Ð¼Ð¿Ð»ÐµÐºÑ Ð´Ð»Ñ ÑƒÐ»Ð¸Ñ†Ñ‹ Ð“ÐµÑ€Ð°ÐºÐ» - Ð¾Ñ‚Ð»Ð¸Ñ‡Ð½Ð¾Ðµ Ñ€'),
(0, 'youngmj11', 'darrell@glw96.mailguardianpro.online', '', 0, 'Pornhub and xvideos will be subject to the same strict eu rules\r\nhttp://android.sexy.dance'),
(0, 'Katyainfinty2', 'tradnedgegot@gmail.com', '', 0, 'Fancy a moonlit stroll along the beach under the stars, followed by a bonfire picnic for t'),
(0, 'Oren ', 'alexstrose15897@gmail.com', '', 0, 'Beauty Be Me - Where Quality Meets Affordability. At Beauty Be Me, our mission is to provi'),
(0, 'Mike Derrick\r\n', 'mikeArrirm@gmail.com', '', 0, 'Hello \r\n \r\nThis is Mike Derrick\r\n \r\nLet me introduce to you our latest research results fr'),
(0, '', '16019@gmail.com', '', 0, ''),
(0, '', '78138@gmail.com', '', 0, ''),
(0, '', '49790@gmail.com', '', 0, ''),
(0, 'francinedb60', 'lottie@pfe58.maillinkplus.run', '', 0, 'Young porn pics and movies sorted by niches on ergosites porn\r\nhttp://karma.rx.smoking-ebo'),
(0, 'Iliya', 'ilyaDrork@gmail.com', '', 0, 'https://kwork.ru/user/live_for_seo Ð·Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ, Ð¼ÐµÐ½Ñ Ð·Ð¾Ð²ÑƒÑ‚ Ð˜Ð»ÑŒÑ.'),
(0, 'Brian And Dee Trego', 'jana.trego81@googlemail.com', '', 0, 'The TikTok social media platform has seen explosive growth over the last two years. It now'),
(0, '32.01hst98zkfm1yj97gz13ynpygp@mail4u.fun', '32.01hst98zkfm1yj97gz13ynpygp@mail4u.fun', '', 0, 'User Request to Subscribe Now'),
(0, '32.01hst98zkfm1yj97gz13ynpygp@mail4u.fun', '32.01hst98zkfm1yj97gz13ynpygp@mail4u.fun', '', 0, 'asperiores at consectetur temporibus enim veniam ut et at veritatis accusantium incidunt. '),
(0, 'RobertGet', 'lucido.leinteract@gmail.com', '', 0, 'Hola, volia saber el seu preu.'),
(0, 'Katyainfinty2', 'occurfgot1@gmail.com', '', 0, 'Fancy a moonlit stroll along the beach under the stars, followed by a bonfire picnic for t'),
(0, 'Vonaldargup', 'vonaldSug@gmail.com', '', 0, 'Ð¡ÐºÐ»Ð°Ð´Ð½Ð¾Ð¹ Ð´ÐµÑ‚ÑÐºÐ¸Ð¹ ÑÐ¿Ð¾Ñ€Ñ‚ÐºÐ¾Ð¼Ð¿Ð»ÐµÐºÑ Â«Ð›Ð¸Ð°Ð½Ð°Â» Ð¾Ñ‚Ð»Ð¸Ñ‡Ð°ÐµÑ‚'),
(0, 'mirandapf69', 'tania@glw96.mailguardianpro.online', '', 0, 'The 10 top ebony onlyfans models of 2023 the village voice\r\nhttp://selfmade.oxnard.tiktokp'),
(0, 'Jonathan Byrd', 'taskflowsolutions.us@gmail.com', '', 0, 'Are you struggling with trying to make money from your email list?\r\n\r\nIâ€™ve been there to'),
(0, 'Ashok', 'webdesignservices111@outlook.com', '', 0, 'Hi, \r\n\r\nThis is Ashok, a website designer and developer with 15 years of experience. Are y'),
(0, 'Katyainfinty3', 'occurfgot3@gmail.com', '', 0, 'Hi, want to join me for a bubble bath?  -  https://u.to/CXOGIA?Scalm'),
(0, 'Brian And Dee Lazenby', 'edwardo.lazenby0@gmail.com', '', 0, 'The TikTok social media platform has seen explosive growth over the last two years. It now'),
(0, 'jasonoy18', 'violet@eix50.mailsecurenet.online', '', 0, 'Vatican approves blessings for same sex couples in landmark ruling\r\nhttp://webhostingfree-'),
(0, 'MasonGet', 'kaenquirynicholls@gmail.com', '', 0, 'Ð—Ð´Ñ€Ð°Ð²ÐµÐ¹Ñ‚Ðµ, Ð¸ÑÐºÐ°Ñ… Ð´Ð° Ð·Ð½Ð°Ð¼ Ñ†ÐµÐ½Ð°Ñ‚Ð° Ð²Ð¸.'),
(0, 'Mark Mahaffey', 'ccremarketing21@gmail.com', '', 0, 'Discover how our agency can dramatically increase your chances of finding your dream Carib'),
(0, '33.01hst98zkfm1yj97gz13ynpygp@mail4u.fun', '33.01hst98zkfm1yj97gz13ynpygp@mail4u.fun', '', 0, 'User Request to Subscribe Now'),
(0, '33.01hst98zkfm1yj97gz13ynpygp@mail4u.fun', '33.01hst98zkfm1yj97gz13ynpygp@mail4u.fun', '', 0, 'id ut nihil eum autem eum sit exercitationem repellendus. sapiente atque aut dolorem cum t'),
(0, 'MasonGet', 'kaenquirynicholls@gmail.com', '', 0, 'Sveiki, es gribÄ“ju zinÄt savu cenu.'),
(0, 'Katyainfinty2', 'occurfgot1@gmail.com', '', 0, 'Hey cutie, want to see the stars with me?  -  https://rb.gy/psrixq?Scalm'),
(0, 'Vai', 'businessgrowtogether@outlook.com', '', 0, 'Hi, \r\n\r\n\r\nThis is Vai. I am a bookkeeper. I can categorize your transactions of incomes/ex'),
(0, 'Deloris Trammell', 'trammell.deloris86@gmail.com', '', 0, 'Increase your Cash Flow Instantly\r\n\r\nImagine the possibilities of saving thousands annuall'),
(0, '', '9119@gmail.com', '', 0, ''),
(0, 'stephanieoh18', 'francine@dd8210.eqt36.webmaildirect.online', '', 0, 'Nature s things pocahontas nihaotomita pornic allporncomic\r\nhttp://maturewomengonewild.ins'),
(0, 'Sam', 'creativeteamhire@outlook.com', '', 0, 'Hello there, Are you looking for a Creative Graphic Designer? I am Sam and I have managed '),
(0, 'Katyainfinty1', 'occurfgot1@gmail.com', '', 0, 'Hey, how about we indulge in some chocolate fondue?  -  https://u.to/CXOGIA?Scalm'),
(0, 'Donaldargup', 'bantaturki@gmail.com', '', 0, 'Ð•ÑÐ»Ð¸ Ð’Ð°Ð¼ Ñ‚Ñ€ÐµÐ±ÑƒÐµÑ‚ÑÑ ÐºÐ¾Ð½ÑÑƒÐ»ÑŒÑ‚Ð°Ñ†Ð¸Ñ, Ð´Ð»Ñ Ñ‚Ð¾Ð³Ð¾, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð'),
(0, 'Syed Atif', 'pr5yukr3hkpq@opayq.com', '', 0, 'Hello, \r\n \r\nWe provide funding through our venture capital company to both start-up and ex'),
(0, 'DavidGet', 'lucido.leinteract@gmail.com', '', 0, 'Salam, qiymÉ™tinizi bilmÉ™k istÉ™dim.'),
(0, 'Lacey Wilbanks', 'wilbanks.lacey@yahoo.com', '', 0, 'Hi,\r\n\r\nThis deal gives you access to Reachinbox with unlimited email accounts, AI Generate'),
(0, 'Donaldargup', 'bantaturki@gmail.com', '', 0, 'Ð”Ð°Ñ‡Ð½Ñ‹Ð¹ ÐºÐ¾Ð¼Ð¿Ð»ÐµÐºÑ \"Ð“Ð¾Ñ€Ð¾Ð´Ð¾Ðº\" â„– 11 - Ð´ÐµÑ‚ÑÐºÐ¸Ð¹ ÑÐ¿Ð¾Ñ€Ñ‚Ð¸Ð²Ð½Ñ‹Ð'),
(0, 'Amanda Bridgford', 'amanbridgeford@gmail.com', '', 0, 'I hope this message finds you in good spirit.Are you available for a brief meeting this we'),
(0, 'Marylin Gruber', 'sales@sumbalirealestate.com', '', 0, 'Do you offer any promotional or sponsorship opportunities?\r\n\r\n\r\n\r\n\r\n\r\nMarylin, Gruber\r\n\r\n2'),
(0, 'sew', 'megaboommegaboom@yandex.com', '', 0, 'I want to show you one exclusive software called (BTC PROFIT SEARCH AND MINING PHRASES), w'),
(0, 'Syed Atif', 'pr5yukr3hkpq@opayq.com', '', 0, 'Hello, \r\n \r\nWe provide funding through our venture capital company to both start-up and ex'),
(0, 'Larrykassy', 'subbord2023@gmail.com', '', 0, 'Production of BACKLINKS for casino sites. \r\n \r\nOur regular customers are casino sites. \r\n '),
(0, '', '22324@gmail.com', '', 0, ''),
(0, 'Donaldargup', 'bantaturki@gmail.com', '', 0, 'Ð’Ñ‹ÑÐ¾ÐºÐ°Ñ Ð¿Ð°Ñ€Ð¾- Ð¸ Ð²Ð»Ð°Ð³Ð¾ÑÑ‚Ð¾Ð¹ÐºÐ¾ÑÑ‚ÑŒ. Ð’ÑÐµ Ð´ÐµÑ‚ÑÐºÐ¸Ðµ Ð¸Ð³Ñ€Ð¾Ð²'),
(0, 'Mike Jacobson\r\n', 'mikeappardy@gmail.com', '', 0, 'Hi there \r\n \r\nJust checked your diamondcityre.com baclink profile, I noticed a moderate pe'),
(0, 'Megan Atkinson', 'meganatkinson149@gmail.com', '', 0, 'Hi there,\r\n\r\nWe run an Instagram growth service, which increases your number of followers '),
(0, 'ephetsduh', 'nxla2su1@icloud.com', '', 0, 'Hi, this is Jeniffer. I am sending you my intimate photos as I promised. https://tinyurl.c'),
(0, 'Donaldargup', 'bantaturki@gmail.com', '', 0, 'Ð”ÐµÑ‚ÑÐºÐ¸Ðµ Ð¸Ð³Ñ€Ð¾Ð²Ñ‹Ðµ ÐºÐ¾Ð¼Ð¿Ð»ÐµÐºÑÑ‹.ÐžÑÑƒÑ‰ÐµÑÑ‚Ð²Ð»ÑÐµÐ¼ Ð´Ð¾ÑÑ‚Ð°Ð²ÐºÑƒ'),
(0, 'Lonnie Hartnett', 'lonnie.hartnett@yahoo.com', '', 0, 'Hi,\r\n\r\nThis deal gives you access to Reachinbox with unlimited email accounts, AI Generate'),
(0, 'ephetsduh', '8sd54heh@gmail.com', '', 0, 'Hi, this is Anna. I am sending you my intimate photos as I promised. https://tinyurl.com/2'),
(0, 'ephetsduh', '7f5ae2qi@yahoo.com', '', 0, 'Hi, this is Jeniffer. I am sending you my intimate photos as I promised. https://tinyurl.c'),
(0, 'Katyainfinty2', 'occurfgot3@gmail.com', '', 0, 'Hello, how about we spice things up with a little role play?  -  https://u.to/CXOGIA?Scalm'),
(0, 'Donaldargup', 'bantaturki@gmail.com', '', 0, 'Ð”ÐµÑ‚ÑÐºÐ¸Ð¹ ÑÐ¿Ð¾Ñ€Ñ‚Ð¸Ð²Ð½Ñ‹Ð¹ ÐºÐ¾Ð¼Ð¿Ð»ÐµÐºÑ Ð´Ð»Ñ Ð´Ð¾Ð¼Ð° KindWood Plus Ð¿Ð¾Ð¼Ð'),
(0, '', '43700@gmail.com', '', 0, ''),
(0, '', '16086@gmail.com', '', 0, ''),
(0, 'MasonGet', 'kaenquirynicholls@gmail.com', '', 0, 'Hej, jeg Ã¸nskede at kende din pris.'),
(0, 'RobertGet', 'lucido.leinteract@gmail.com', '', 0, 'Hola, querÃ­a saber tu precio..'),
(0, 'ephetsduh', '9eqp34l6@icloud.com', '', 0, 'Hi, this is Jeniffer. I am sending you my intimate photos as I promised. https://tinyurl.c'),
(0, 'Vonaldargup', 'vonaldSug@gmail.com', '', 0, 'Ð¢Ð¾Ñ‡Ð½Ð°Ñ Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼Ð¼ - Ð½Ð° ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ðµ ÑÐ¾Ð±Ñ‹Ñ‚Ð¸Ñ.Ð•ÑÐ»Ð¸ Ð’Ð°Ð¼ Ñ‚Ñ€Ð'),
(0, 'ephetsduh', 'jix4i51a@yahoo.com', '', 0, 'Hi, this is Julia. I am sending you my intimate photos as I promised. https://tinyurl.com/'),
(0, 'ephetsduh', 'sdqpmy8x@yahoo.com', '', 0, 'Hi, this is Anna. I am sending you my intimate photos as I promised. https://tinyurl.com/2'),
(0, 'Michaelsame', 'andreev-0nh0m@rambler.ru', '', 0, 'ÐŸÐ¾Ñ‡ÑƒÐ²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ Ð½Ð°ÑÑ‚Ð¾ÑÑ‰ÐµÐµ ÑƒÐ´Ð¾Ð²Ð¾Ð»ÑŒÑÑ‚Ð²Ð¸Ðµ Ð² ÐºÐ°Ð¶Ð´Ð¾Ð¼ Ñ€Ð°Ð'),
(0, 'MasonGet', 'kaenquirynicholls@gmail.com', '', 0, 'Ciao, volevo sapere il tuo prezzo.'),
(0, 'HRM Bah Mbi', 'bahmbi724@gmail.com', '', 0, 'Attn. Director, \r\n \r\nWe are interested in your products. Please contact us with product de'),
(0, 'CraigWek', 'livesets2024@gmail.com', '', 0, 'Hello, \r\n \r\nNew club music, download MP3/FLAC, Label, LIVESETS, Music Videos https://0daym'),
(0, 'Steven Clark', 'steven@rapidprofitmachine1.com', '', 0, 'Can I buy your Facebook page and your Instagram account?\r\nLet me know here\r\nhttps://sellyo'),
(0, 'Kenneth White', 'kenneth@adamhustle.com', '', 0, 'May I purchase your Instagram account and your Facebook page?\r\nPlease let me know here\r\nht'),
(0, ' ', 'blackmorewm@gmail.com', '', 0, 'Can I purchase your Facebook page?\r\nAlso can I purchase your Instagram page?\r\n\r\nIf yes to '),
(0, 'marisolke69', 'dianna@pfe58.maillinkplus.run', '', 0, 'Nicole sullivan biography husband illness movies worth\r\nhttp://wuppertal-rushes.relayblog.'),
(0, 'RobertGet', 'lucido.leinteract@gmail.com', '', 0, 'HÃ¦, Ã©g vildi vita verÃ° Ã¾itt.'),
(0, 'Mike Bargeman\r\n', 'petersewsgecy@gmail.com', '', 0, 'Good Day \r\n \r\nI have just analyzed  diamondcityre.com for the ranking keywords and saw tha'),
(0, 'Mike Ayrton\r\n', 'mikeArrirm@gmail.com', '', 0, 'Hi there, \r\n \r\nI have reviewed your domain in MOZ and have observed that you may benefit f'),
(0, 'ephetsduh', 'w8cwhapf@yahoo.com', '', 0, 'Hi, this is Jenny. I am sending you my intimate photos as I promised. https://tinyurl.com/'),
(0, 'Earle Salley', 'salley.earle@googlemail.com', '', 0, 'Hi,\r\n\r\nMy name is Ravi, owner of Webomaze Australia. You have finally found an SEO Company'),
(0, 'ephetsduh', 'r9k79198@gmail.com', '', 0, 'Hi, this is Irina. I am sending you my intimate photos as I promised. https://tinyurl.com/'),
(0, 'ephetsduh', 'qsekft63@yahoo.com', '', 0, 'Hi, this is Anna. I am sending you my intimate photos as I promised. https://tinyurl.com/2'),
(0, '', '34449@gmail.com', '', 0, ''),
(0, '', '80296@gmail.com', '', 0, ''),
(0, '', '5270@gmail.com', '', 0, ''),
(0, '', '38441@gmail.com', '', 0, ''),
(0, 'Soon Wilke', 'wilke.soon@hotmail.com', '', 0, 'Hey there! Looking to save on energy costs?\r\n Look no further! At Nexus Energy Group Ltd.,'),
(0, 'Katyainfinty3', 'occurfgot3@gmail.com', '', 0, 'Hey there, care to join me for a midnight skinny dip?  -  https://u.to/CXOGIA?Scalm'),
(0, 'Vandananar', 'downloadsmot.ri@gmail.com', '', 0, '<b>ÐšÐ°Ðº Ñ Ð½Ð°ÑˆÐ»Ð° Ð´Ð»Ñ ÑÐµÐ±Ñ \"ÐœÐ¸Ñ€ Ð¿Ð¾Ð»ÐµÐ·Ð½Ñ‹Ñ… ÑÐ¾Ð²ÐµÑ‚Ð¾Ð² Ð¸ Ð²ÐºÑƒÑ'),
(0, '', '16567@gmail.com', '', 0, ''),
(0, '', '3153@gmail.com', '', 0, ''),
(0, '', '84984@gmail.com', '', 0, ''),
(0, '', '4255@gmail.com', '', 0, ''),
(0, '', '21761@gmail.com', '', 0, ''),
(0, 'Murray Swift Wortham', 'wortham.felicia@msn.com', '', 0, 'Hi,\r\n\r\nI am Murray Swift a Marketing Expert Featured on Forbes , I and  My Team and I Spec'),
(0, 'Julie Orlando', 'julie.orlando@yahoo.com', '', 0, 'Hello,\r\n\r\nWe noticed your domain: diamondcityre.com is listed in very few directories.\r\n\r\n'),
(0, 'Karla Farnham', 'farnham.karla@gmail.com', '', 0, 'Hello,\r\n\r\nWe noticed your domain: diamondcityre.com is listed in very few directories.\r\n\r\n'),
(0, 'albertdx60', 'alan@glw96.mailguardianpro.online', '', 0, 'Hot latina secretary in a short dress at the office pornhub\r\nhttp://canyoureallybebisexual'),
(0, 'Katyainfinty2', 'occurfgot3@gmail.com', '', 0, 'Hello darling, feeling naughty?  -  https://u.to/CXOGIA?Scalm'),
(0, 'Brian Wend', 'marcel', '', 0, 'We are here to help you find the best financing options for your small business. \r\n>> http'),
(0, 'Mike Carrington\r\n', 'mikeArrirm@gmail.com', '', 0, 'Good Day \r\n \r\nThis is Mike Carrington\r\n \r\nLet me show you our latest research results from'),
(0, 'RobertGet', 'lucido.leinteract@gmail.com', '', 0, 'Aloha, makemake wau eÊ»ike i kÄu kumukÅ«Ê»ai.'),
(0, 'ErnestoCat', '2hwgyjqqkml2h3z@tempmail.us.com', '', 0, 'Introducing https://Accsmarket.net, your ultimate source for purchasing a diverse range of'),
(0, 'Mike Birch\r\n', 'petersewsgecy@gmail.com', '', 0, 'Hi there \r\n \r\nAre you tired of spending money on advertising that doesnâ€™t work? \r\nWe hav'),
(0, 'Graciela Laughlin', 'laughlin.graciela@hotmail.com', '', 0, 'Hello,\r\n\r\nWe noticed your domain: diamondcityre.com is listed in very few directories.\r\n\r\n'),
(0, 'Vonaldargup', 'vonaldSug@gmail.com', '', 0, '- Ð¾Ñ€Ð¸Ð³Ð¸Ð½Ð°Ð»ÑŒÐ½Ñ‹Ðµ Ñ€Ð°Ð·Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ¸ Ð‘Ð¾Ð»ÐµÐµ Ñ‡ÐµÐ¼ Ð·Ð° 15 Ð»ÐµÑ‚ Ð½Ð°ÑˆÐ¸ '),
(0, 'Vonaldargup', 'vonaldSug@gmail.com', '', 0, 'ÐÐ° Ð½ÐµÐ¼ Ð´ÐµÑ‚Ð¸ ÑÐ¼Ð¾Ð³ÑƒÑ‚ Ð½Ð°ÐºÐ¾Ð½ÐµÑ†-Ñ‚Ð¾ Ð½Ð°Ð¿Ñ€Ñ‹Ð³Ð°Ñ‚ÑŒÑÑ Ð¾Ñ‚ Ð´ÑƒÑˆÐ¸'),
(0, 'Vonaldargup', 'vonaldSug@gmail.com', '', 0, 'ÐšÐ°Ðº Ð¾Ð±ÑƒÑÑ‚Ñ€Ð¾Ð¸Ñ‚ÑŒ Ð´ÐµÑ‚ÑÐºÑƒÑŽ ÐºÐ¾Ð¼Ð½Ð°Ñ‚Ñƒ.ÐžÑÑ‚ÐµÑ€ÐµÐ³Ð°Ð¹Ñ‚ÐµÑÑŒ Ð¿Ð¾Ð'),
(0, 'Vonaldargup', 'vonaldSug@gmail.com', '', 0, 'ÐšÐ¾Ð¼Ð¿Ð°Ð½Ð¸Ñ Â«Ð‘ÑÐ±Ð¸Ð¡Ð¿Ð¾Ñ€Ñ‚Â» Ð¿Ñ€ÐµÐ´Ð»Ð°Ð³Ð°ÐµÑ‚ ÐºÑƒÐ¿Ð¸Ñ‚ÑŒ ÑÐ¿Ð¾Ñ€Ñ‚Ð¸Ð²Ð½'),
(0, 'Vonaldargup', 'vonaldSug@gmail.com', '', 0, 'Ð¡Ð¿Ð¾Ñ€Ñ‚Ð¸Ð²Ð½Ñ‹Ðµ ÐºÐ¾Ð¼Ð¿Ð»ÐµÐºÑÑ‹ ÑƒÐ»Ð¸Ñ‡Ð½Ñ‹Ðµ Ð¿Ñ€ÐµÐ´Ð½Ð°Ð·Ð½Ð°Ñ‡ÐµÐ½Ñ‹ Ð´Ð»Ñ Ñ'),
(0, '', '41693@gmail.com', '', 0, ''),
(0, '', '66738@gmail.com', '', 0, ''),
(0, 'Zella Monash', 'monash.zella@googlemail.com', '', 0, ' \r\nWho said running a business was easy? \r\nEspecially when the cost of nearly everything c'),
(0, ' ', 'kenneth@adamhustle.com', '', 0, 'Curious if you would be willing to part with your Facebook page or your instagram account '),
(0, 'Kenneth White', 'kenneth@adamhustle.com', '', 0, 'Curious if you would be willing the part with your Facebook page or your instagram account'),
(0, 'Brian And Dee Hong', 'jaime.hong@googlemail.com', '', 0, 'The TikTok social media platform has seen explosive growth over the last two years. It now'),
(0, '', '4903@gmail.com', '', 0, ''),
(0, 'Ireninfintyb', 'noxUndopSnoro2@gmail.com', '', 0, 'Dating for adults -  https://u.to/CXOGIA?Wets'),
(0, 'Robertbeele', 'yasen.krasen.13+81449@mail.ru', '', 0, 'Odowidjwoidwo wojdwkslqmwjfbjjdwkd jkwlsqswknfbjwjdmkqendj kedwjdbwhbdqjswkdwjfj eqwkdwknf'),
(0, 'Emily Jones', 'emilyjones2250@gmail.com', '', 0, 'Hi there,\r\n\r\nWe run a YouTube growth service, which increases your number of subscribers s'),
(0, 'DavidGet', 'lucido.leinteract@gmail.com', '', 0, 'Zdravo, htio sam znati vaÅ¡u cijenu.'),
(0, '', '97232@gmail.com', '', 0, ''),
(0, '', '80274@gmail.com', '', 0, ''),
(0, 'Ireninfintyc', 'noxUndopSnoro3@gmail.com', '', 0, 'Hey cutie, want to get lost in a sensual massage?-  https://rb.gy/psrixq?Wets'),
(0, 'Mike Ralphs\r\n', 'mikeappardy@gmail.com', '', 0, 'Hi there \r\n \r\nJust checked your diamondcityre.com baclink profile, I noticed a moderate pe'),
(0, 'Matt Fox', 'itraveldirect.com+free@gmail.com', '', 0, 'Give your Customers and Employees access to Travel Benefits.\r\nWatch the next On-Demand Web'),
(0, 'Milla Starr', 'starr.milla@msn.com', '', 0, 'Hi diamondcityre.com\r\n\r\nWe noticed your website diamondcityre.com is only listed in 9/2,50'),
(0, 'Kiera Climpson', 'kiera.climpson@yahoo.com', '', 0, 'Hi diamondcityre.com\r\n\r\nWe noticed your website diamondcityre.com is only listed in 9/2,50'),
(0, 'Matt Fox', 'itraveldirect.com+free@gmail.com', '', 0, 'Thank you for your request.\r\nHere is your FREE Travel Rewards link:\r\n\r\nhttps://members.itr'),
(0, 'Lindahop', 'lettieskalski@hotmail.com', '', 0, 'Join forces with https://accsmarket.net and unlock a world of opportunities in the digital'),
(0, '', '60658@gmail.com', '', 0, ''),
(0, '', '39293@gmail.com', '', 0, ''),
(0, 'ephetsduh', 'hcfkyxra@icloud.com', '', 0, 'Hi, this is Julia. I am sending you my intimate photos as I promised. https://tinyurl.com/'),
(0, 'ephetsduh', 'jntuwu82@icloud.com', '', 0, 'Hi, this is Irina. I am sending you my intimate photos as I promised. https://tinyurl.com/'),
(0, 'ephetsduh', 'oepd7mkp@icloud.com', '', 0, 'Hi, this is Jenny. I am sending you my intimate photos as I promised. https://tinyurl.com/'),
(0, 'Ireninfintya', 'noxUndopSnoro1@gmail.com', '', 0, 'Hi handsome, how about we share a steamy sauna session? -  https://u.to/CXOGIA?Wets'),
(0, 'Vonaldargup', 'vonaldSug@gmail.com', '', 0, 'Ð£Ð»Ð¸Ñ‡Ð½Ñ‹Ðµ ÐºÐ¾Ð¼Ð¿Ð»ÐµÐºÑÑ‹.Ð¡Ð¿Ð¾Ñ€Ñ‚Ð¸Ð²Ð½Ñ‹Ð¹ ÐºÐ¾Ð¼Ð¿Ð»ÐµÐºÑ ÐœÐ¡ \"ÐšÐ¡005\" Ð“Ð'),
(0, 'Max Franklin', 'max.franklin85@outlook.com', '', 0, ' Game changing customer financing approves down to 500 FICO Stop losing clients just becau'),
(0, 'ErnestoCat', 'charityhodgetts5388@hotmail.com', '', 0, 'Welcome to https://Accsmarket.net, the premier online marketplace for purchasing a wide va'),
(0, 'Vonaldargup', 'vonaldSug@gmail.com', '', 0, 'Ð¡Ð¿Ð¾Ñ€Ñ‚Ð¸Ð²Ð½Ñ‹Ð¹ ÐºÐ¾Ð¼Ð¿Ð»ÐµÐºÑ Ð´ÐµÑ‚ÑÐ¼ 0 - 8 Ð»ÐµÑ‚.Ð£ Ð½Ð°Ñ Ð¼Ð¾Ð¶Ð½Ð¾ Ð¿Ñ€Ð¸Ð'),
(0, 'RobertGet', 'lucido.leinteract@gmail.com', '', 0, 'Salut, ech wollt Ã„re PrÃ¤is wÃ«ssen.'),
(0, 'Vonaldargup', 'vonaldSug@gmail.com', '', 0, 'Ð£Ð»Ð¸Ñ‡Ð½Ñ‹Ð¹ Ð´ÐµÑ‚ÑÐºÐ¸Ð¹ ÑÐ¿Ð¾Ñ€Ñ‚Ð¸Ð²Ð½Ñ‹Ð¹ ÐºÐ¾Ð¼Ð¿Ð»ÐµÐºÑ ÑƒÑÑ‚Ð¾Ð¹Ñ‡Ð¸Ð² Ðº Ð°'),
(0, 'sew', 'megaboommegaboom@yandex.com', '', 0, 'I want to show you one exclusive software called (BTC PROFIT SEARCH AND MINING PHRASES), w'),
(0, 'Mike Hawkins\r\n', 'mikeArrirm@gmail.com', '', 0, 'Hi there, \r\n \r\nI have reviewed your domain in MOZ and have observed that you may benefit f'),
(0, 'Johan', 'johan@pcxresponder.com', '', 0, 'Hi,\r\n\r\nWe are a provider of premium databases for companies.\r\n\r\nI want to know if you need'),
(0, 'Jannes', 'jannes@pcxresponder.com', '', 0, 'Hi,\r\n\r\nWe are a provider of premium databases for companies.\r\n\r\nI want to know if you need'),
(0, 'Stephensame', 'armstrong_ghislaine738@hotmail.com', '', 0, 'Ð‘ÐµÐ·Ð³Ñ€Ð°Ð¼Ð¾Ñ‚Ð½Ñ‹Ð¹ Ð¾Ñ‚ÐºÐ»Ð°Ð´Ñ‹Ð²Ð°Ð¹Ñ‚Ðµ Ð´Ð¾Ð¼Ð°ÑˆÐ½ÐµÐµ ÑÐµÐºÑÑƒÐ°Ð»ÑŒÐ½Ð¾Ðµ ');
INSERT INTO `free_consultation` (`id`, `name`, `email`, `code`, `phone`, `message`) VALUES
(0, 'Robinveith', 'shaperkleppen51@madu58.funny3delements.com ', '', 0, '<a href=\"https://mfc-sosnovskoe.ru\">ÐšÐ°Ð·Ð¸Ð½Ð¾ Ñ Ð¿Ð¾Ð¿Ð¾Ð»Ð½ÐµÐ½Ð¸ÐµÐ¼ Ñ ÐšÐ¸Ð²Ð¸'),
(0, 'Amanda Lively', 'amandalively01@gmail.com', '', 0, 'I just made a marketing plan for you. \r\n\r\ncan I send it here for you to see if you like it'),
(0, 'Margarito Wolford', 'wolford.margarito@gmail.com', '', 0, 'Best financial company to fund your business project globally, i can help, email me here: '),
(0, 'Jade Rister', 'rister.jade7@gmail.com', '', 0, ' \r\nPeople + Processes + Capital = The Recipe for Business Success\r\n\r\nHowever most small bu'),
(0, 'Mike Galbraith\r\n', 'petersewsgecy@gmail.com', '', 0, 'Hi \r\n \r\nI have just checked  diamondcityre.com for  the current search visibility and saw '),
(0, '35.01hst98zkfm1yj97gz13ynpygp@mail4u.run', '35.01hst98zkfm1yj97gz13ynpygp@mail4u.run', '', 0, 'User Request to Subscribe Now'),
(0, '35.01hst98zkfm1yj97gz13ynpygp@mail4u.run', '35.01hst98zkfm1yj97gz13ynpygp@mail4u.run', '', 0, 'minus totam laboriosam eaque minus aut et unde incidunt placeat tempora reprehenderit quis'),
(0, 'Mel Herrick', 'mel.herrick30@gmail.com', '', 0, '> Sorry to be a bother, but I was informed that you have either a Residential or Business '),
(0, 'Edmundo Lamson', 'lamson.edmundo@gmail.com', '', 0, 'Do you need targeted Customers emails and phone numbers , so I am here to help you check o'),
(0, '', '11831@gmail.com', '', 0, ''),
(0, '', '76115@gmail.com', '', 0, ''),
(0, 'Ireninfintyb', 'noxUndopSnoroc@gmail.com', '', 0, 'Hey, care to join me for a candlelit bubble bath?-  https://u.to/CXOGIA?Wets'),
(0, 'Mike Garrison\r\n', 'mikeArrirm@gmail.com', '', 0, 'Hi there \r\n \r\nThis is Mike Garrison\r\n \r\nLet me present you our latest research results fro'),
(0, 'MasonGet', 'kaenquirynicholls@gmail.com', '', 0, 'Î“ÎµÎ¹Î± ÏƒÎ¿Ï…, Î®Î¸ÎµÎ»Î± Î½Î± Î¼Î¬Î¸Ï‰ Ï„Î·Î½ Ï„Î¹Î¼Î® ÏƒÎ±Ï‚.'),
(0, 'Sylvia Duell', 'sylvia.duell25@gmail.com', '', 0, 'Hey there,\r\n\r\nImagine your WordPress site powered by AI!\r\n\r\nOur plugin writes captivating '),
(0, 'Ameliainfinty2', 'Ignilidlya@gmail.com', '', 0, 'Hey, care to join me for a candlelit bubble bath? -  https://rb.gy/7xb976?el'),
(0, 'DavidGet', 'lucido.leinteract@gmail.com', '', 0, 'HÃ¦, Ã©g vildi vita verÃ° Ã¾itt.'),
(0, 'jessicainfintya', 'whenderryb@gmail.com', '', 0, 'Hi darling, want to join me for some naked yoga? -  https://rb.gy/7xb976?Smal'),
(0, 'Travelercouth', 'b.a.rn.es.je.s.u.s.1.1.@gmail.com', '', 0, 'Sustain outstanding job! Love it! Check out too my own web site. \r\n \r\nhttps://www.mistralb'),
(0, 'Tammara Vetter', 'tammara.vetter@yahoo.com', '', 0, 'Do you need targeted Customers emails and phone numbers , so I am here to help you check o'),
(0, 'Kelvinbooke', 'munaldSug@gmail.com', '', 0, 'Ð”Ð»Ñ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²ÐºÐ¸ ÐºÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ñ Ð²Ð°Ð¼ Ð½ÐµÐ¾Ð±Ñ…Ð¾Ð´Ð¸Ð¼Ð¾ Ð°Ð²Ñ‚Ð¾Ñ€Ð¸Ð·Ð'),
(0, 'DavidGet', 'lucido.leinteract@gmail.com', '', 0, 'Aloha, makemake wau eÊ»ike i kÄu kumukÅ«Ê»ai.'),
(0, 'Creatify AI', 'creatify64@gmail.com', '', 0, 'Hi,\r\n\r\nI am Omar , I am offering for your website or Producrts  2 free Marketing short vid'),
(0, 'jessicainfintyc', 'whenderry1@gmail.com', '', 0, 'Hi darling, want to join me for some naked yoga? -  https://u.to/NsOtIA?pr'),
(0, 'Creatify AI', 'simone.austerlitz@gmail.com', '', 0, 'Hi,\r\n\r\nI am Omar ,I found this toll that can create for yourr website or Producrts  2 free'),
(0, 'miketoclala', 'p.ro.sp.eri.ty.t.h.e.moneyuspen@gmail.com\r\n', '', 0, 'Ready for change? Then this is for you! Earn up to $500 per day and free yourself from fin'),
(0, 'Vandananar', 'downloadsmot.ri@gmail.com', '', 0, '<b><a href=https://kok7.ru/>Ð£Ð·Ð½Ð°Ð¹Ñ‚Ðµ Ð²Ð¸Ð´ÐµÐ¾ ÑÐ¾Ð²ÐµÑ‚Ñ‹ Ð½Ð° ÐºÐ°Ð¶Ð´Ñ‹Ð¹ Ð´ÐµÐ'),
(0, 'brittneyry16', 'ivan@pfe58.maillinkplus.run', '', 0, 'Stunning milf ariella ferrera takes on mandingo s epic bbc pornhub\r\nhttp://hot.porn.3-sum.'),
(0, 'Ameliainfintyc', 'Ignilidly3@gmail.com', '', 0, 'Hey, care to join me for a candlelit bubble bath? -  https://rb.gy/7xb976?el'),
(0, 'Brian And Dee Cribb', 'carri.cribb@gmail.com', '', 0, 'The TikTok social media platform has seen explosive growth over the last two years. It now'),
(0, 'jessicainfintya', 'whenderrya@gmail.com', '', 0, 'Hi darling, want to join me for some naked yoga? -  https://u.to/NsOtIA?pr'),
(0, 'Emily Jones', 'emilyjones2250@gmail.com', '', 0, 'Hi there,\r\n\r\nWe run a YouTube growth service, which increases your number of subscribers b'),
(0, 'Jacqueline Baume', 'jacqueline.baume@googlemail.com', '', 0, 'Do you need targeted Customers emails and phone numbers , so I am here to help you check o'),
(0, 'flagstoneveneydel2q9+41na8vtan15c@gmail.com', 'flagstoneveneydel2q9+41na8vtan15c@gmail.com', '', 0, 'User Request to Subscribe Now'),
(0, 'flagstoneveneydel2q9+41na8vtan15c@gmail.com', 'flagstoneveneydel2q9+41na8vtan15c@gmail.com', '', 0, 'dolor sint molestiae magni autem dicta minus quia ratione voluptatem eveniet dolor quia vi'),
(0, 'flagstoneveneydel2q9+41na8vtan15c@gmail.com', 'flagstoneveneydel2q9+41na8vtan15c@gmail.com', '', 0, 'est molestias placeat laborum et sed facilis iste ut facere placeat ut vero ut illum ea. e'),
(0, 'flagstoneveneydel2q9+41na8vtan15c@gmail.com', 'flagstoneveneydel2q9+41na8vtan15c@gmail.com', '', 0, 'User Request to Subscribe Now'),
(0, 'flagstoneveneydel2q9+41na8vtan15c@gmail.com', 'flagstoneveneydel2q9+41na8vtan15c@gmail.com', '', 0, 'non dolor sit fugiat eligendi optio sit ab reiciendis nisi officiis. animi fugit minus sol'),
(0, 'flagstoneveneydel2q9+41na8vtan15c@gmail.com', 'flagstoneveneydel2q9+41na8vtan15c@gmail.com', '', 0, 'tenetur dolorem et omnis magni incidunt non dolores est molestias adipisci incidunt. nostr'),
(0, 'Ameliainfintyc', 'Ignilidly3@gmail.com', '', 0, 'Hello, how about we share some sweet treats in bed? -  https://u.to/NsOtIA?el'),
(0, 'stanleybr4', 'casandra@alb3410.whr53.inboxforwarding.website', '', 0, 'King gay twinks gay boy porn gay teen sex at gay twink tube\r\nhttp://whitey-nayanthara-xxx.'),
(0, 'sew', 'megaboommegaboom@yandex.com', '', 0, 'I want to show you one exclusive software called (BTC PROFIT SEARCH AND MINING PHRASES), w'),
(0, 'Carlo Garon', 'carlo.garon@outlook.com', '', 0, 'ážooking tâ²Ÿ hire skilled developers for web & application development? ážook no fÕ½rth'),
(0, 'Mike Sykes\r\n', 'mikeappardy@gmail.com', '', 0, 'Hi there \r\n \r\nJust checked your diamondcityre.com baclink profile, I noticed a moderate pe'),
(0, 'John Swanston', 'john.swanston@gmail.com', '', 0, 'Donâ€™t spend another penny on leads or advertising without first getting your business Ve'),
(0, 'Osvaldofum', 'morrismi1@outlook.com', '', 0, 'A remote job opportunity for a Law Firm, the role of a Payment/Deposit Handler. This posit'),
(0, 'Brian Wend', 'dalene', '', 0, 'Our company has helped more than 240,000 small businesses access the capital they need to '),
(0, 'RichardNeamy', '', '', 0, 'https://fbde.short.gy/A6Qq4u \r\n \r\nJoin Exnova.com for a superior trading experience. Trade'),
(0, 'Irma Porterfield', 'porterfield.irma59@gmail.com', '', 0, 'áŽ Ð¾ ÊÎ¿u feel Ð° Resource Crunch Ñ–n Ñƒß‹ur Company? á”Ðµ offer Ö…n-demand developers '),
(0, 'Katrina Scarf', 'scarf.katrina7@outlook.com', '', 0, 'Discover the Latest Profitable Projects  in DEPIN!\r\nhttps://www.depinprofit.com/\r\n\r\nEarn 3'),
(0, 'Ameliainfinty3', 'Ignilidly2@gmail.com', '', 0, 'Hello, how about we share some sweet treats in bed? -  https://rb.gy/7xb976?el'),
(0, 'Ramona Peel', 'ramona.peel@msn.com', '', 0, 'Donâ€™t spend another penny on leads or advertising without first getting your business Ve'),
(0, 'MasonGet', 'kaenquirynicholls@gmail.com', '', 0, 'Ola, querÃ­a saber o seu prezo.'),
(0, 'jessicainfintyc', 'whenderryc@gmail.com', '', 0, 'Hi darling, want to join me for some naked yoga? -  https://rb.gy/7xb976?Smal'),
(0, 'RobertGet', 'algebraically.pawlo@gmail.com', '', 0, 'ÐŸÑ€Ñ‹Ð²Ñ–Ñ‚Ð°Ð½Ð½Ðµ, Ñ Ñ…Ð°Ñ†ÐµÑž Ð´Ð°Ð²ÐµÐ´Ð°Ñ†Ñ†Ð° Ð’Ð°Ñˆ Ð¿Ñ€Ð°Ð¹Ñ.'),
(0, 'Brian And Dee Horrell', 'alethea.horrell@outlook.com', '', 0, 'The TikTok social media platform has seen explosive growth over the last two years. It now'),
(0, 'Oman Rook', 'pr5yukr3hkpq@opayq.com', '', 0, 'Hello, \r\n \r\nOne of the most significant hurdles for startups and existing businesses is se'),
(0, 'Rene', 'vhs.kurse@bluewin.ch', '', 0, 'Hi,\r\n\r\nIf you are one of the sufferers of the common problems nails have, then you are in '),
(0, 'flagstoneveneydel2q9+41na8toq727p@gmail.com', 'flagstoneveneydel2q9+41na8toq727p@gmail.com', '', 0, 'User Request to Subscribe Now'),
(0, 'flagstoneveneydel2q9+41na8toq727p@gmail.com', 'flagstoneveneydel2q9+41na8toq727p@gmail.com', '', 0, 'assumenda maxime quasi vero sed cupiditate nulla soluta voluptatem quas adipisci eligendi '),
(0, 'flagstoneveneydel2q9+41na8toq727p@gmail.com', 'flagstoneveneydel2q9+41na8toq727p@gmail.com', '', 0, 'eius ad error non quisquam et molestias fuga beatae enim esse soluta. totam hic ipsam ut m'),
(0, 'flagstoneveneydel2q9+41na8toq727p@gmail.com', 'flagstoneveneydel2q9+41na8toq727p@gmail.com', '', 0, 'User Request to Subscribe Now'),
(0, 'flagstoneveneydel2q9+41na8toq727p@gmail.com', 'flagstoneveneydel2q9+41na8toq727p@gmail.com', '', 0, 'exercitationem et ducimus quae eligendi cupiditate quia neque atque repellendus ab hic sin'),
(0, 'flagstoneveneydel2q9+41na8toq727p@gmail.com', 'flagstoneveneydel2q9+41na8toq727p@gmail.com', '', 0, 'nostrum architecto quod ut est voluptas occaecati officia magnam nemo et. nostrum ut conse'),
(0, 'CompanyRegistar.com', 'robyn.strehlow40@msn.com', '', 0, 'Hi\r\n\r\nThis will greatly impact your page rank, the more increased directories your company'),
(0, 'Irrachtab', 'LabLoyabs@mailsphere.space', '', 0, 'In TAM resistant ILC cells, TAM treatment is associated with activation of PIK3CA, AHR, an'),
(0, 'Mike Gilmore\r\n', 'mikeArrirm@gmail.com', '', 0, 'Hi there, \r\n \r\nI have reviewed your domain in MOZ and have observed that you may benefit f'),
(0, 'Nolan Pung', 'pung.nolan77@yahoo.com', '', 0, 'Donâ€™t continue pouring good money into advertising & leads without first getting your bu'),
(0, 'Lazaro Harton', 'harton.lazaro@googlemail.com', '', 0, ' Finally, an easy way to offer affordable payments to ALL customers and credit grades No m'),
(0, 'Brian And Dee Everhart', 'wilma.everhart@msn.com', '', 0, 'The TikTok social media platform has seen explosive growth over the last two years. It now'),
(0, 'Simon Navarrete', 'simon.navarrete@msn.com', '', 0, 'A local store or a multinational chain, we build mobile Apps at crazy prices. We convert y'),
(0, 'MasonGet', 'kaenquirynicholls@gmail.com', '', 0, 'Hallo, ek wou jou prys ken.'),
(0, 'Mike Laird\r\n', 'petersewsgecy@gmail.com', '', 0, 'Howdy \r\n \r\nI have just took an in depth look on your  diamondcityre.com for its SEO Trend '),
(0, 'Genia Dyal', 'genia.dyal@gmail.com', '', 0, 'Hi, I was trying to contact the business owner because I found a great system for marketin'),
(0, 'Aidan Clare', 'aidan.clare@gmail.com', '', 0, 'Vetted is a powerful sales multiplier that helps you close 60 % more deals. \r\nThatâ€™s a g'),
(0, 'bethvj69', 'rae@dxc6210.dgx83.securemailboxnet.fun', '', 0, 'Top pornstars and models in full length free sex videos pornhub\r\nhttp://android.sexy-back-'),
(0, 'Colleen Pastor', 'colleen.pastor@yahoo.com', '', 0, 'Unlock Your event Potential following A.I.!\r\n\r\nAre you ready to tolerate your matter to th'),
(0, 'Leandro Pettigrew', 'leandro.pettigrew@gmail.com', '', 0, ' \r\nWho said running a business was easy? \r\nEspecially when the cost of nearly everything c'),
(0, 'Ardis Coffman', 'ardis.coffman@yahoo.com', '', 0, 'Do you need targeted Customers emails and phone numbers , so I am here to help you check o'),
(0, 'Novella Atchison', 'novella.atchison40@gmail.com', '', 0, 'Unlock Your thing Potential later than A.I.!\r\n\r\nAre you ready to agree to your thing to th'),
(0, 'Earl Chapman', 'chapman.earl@gmail.com', '', 0, 'Unlock Your matter Potential subsequent to A.I.!\r\n\r\nAre you ready to say yes your matter t'),
(0, 'Whibiamub', 'floanty@mailport.lat', '', 0, 'However, we observed a highly mosaic distribution of cells within the tooth germ at E14 <a'),
(0, 'Velda Arnold', 'velda.arnold@hotmail.com', '', 0, 'Businesses that get Vetted are running circles around their competition that continue pour'),
(0, 'Mike Stephen\r\n', 'mikeArrirm@gmail.com', '', 0, 'Hello \r\n \r\nThis is Mike Stephen\r\n \r\nLet me introduce to you our latest research results fr'),
(0, 'Haroldovags', 'curciowilging79@schuetz72.hexagonaldrawings.com ', '', 0, '<a href=\"https://zelpgo.ru\">https://zelpgo.ru</a>'),
(0, 'Whibiamub', 'floanty@mailport.lat', '', 0, '<a href=https://cialis.lat/discover-the-best-prices-for-cialis>online cialis</a> Various t'),
(0, 'Josefina Cervantes', 'cervantes.josefina79@outlook.com', '', 0, 'Hi,\r\n\r\nThis is crazy, we are building mobile Apps for $50.\r\n\r\nGet your iOS and Android App'),
(0, 'Haroldovags', 'kirtner.havlicek@schuetz72.hexagonaldrawings.com ', '', 0, '<a href=\"https://zelpgo.ru\">https://zelpgo.ru</a>'),
(0, 'Carlton Earnhardt Earnhardt', 'carlton.earnhardt@gmail.com', '', 0, 'Hi ,\r\n\r\nBuy Google Workspace + OAuth Setup at just $3/Mo\r\n\r\nClick here to start ===> https'),
(0, 'Chris Smith', 'leadmegaphoneus@gmail.com', '', 0, 'Hi,\r\n\r\nI was on your website and noticed some words are missing. It might sound silly, but'),
(0, 'Lupita Greeves', 'lupita.greeves@hotmail.com', '', 0, 'enthusiastic nearly how A.I. can supercharge your business?\r\n\r\nTake our quiz and uncover p'),
(0, 'Katja Mahmood', 'mahmood.katja23@gmail.com', '', 0, 'Struggling with SEO?\r\n\r\nOur AI tool helps to get your website on top of Google, Yahoo & Bi'),
(0, 'kathleenyu16', 'larry@dxc6210.dgx83.securemailboxnet.fun', '', 0, 'Free japanese porn videos uncensored porno tube pornhub\r\nhttp://controlling-leolulu-rough.'),
(0, 'Brian And Dee Ma', 'titus.ma@googlemail.com', '', 0, 'The TikTok social media platform has seen explosive growth over the last two years. It now'),
(0, 'Adela Newman', 'adela.newman@hotmail.com', '', 0, 'Vetted businesses gain an immediate & significant advantage over their local competition t'),
(0, 'DavidGet', 'cautioningsehomogen@gmail.com', '', 0, 'ÐŸÑ€Ñ‹Ð²Ñ–Ñ‚Ð°Ð½Ð½Ðµ, Ñ Ñ…Ð°Ñ†ÐµÑž Ð´Ð°Ð²ÐµÐ´Ð°Ñ†Ñ†Ð° Ð’Ð°Ñˆ Ð¿Ñ€Ð°Ð¹Ñ.'),
(0, 'DavidGet', 'cautioningsehomogen@gmail.com', '', 0, 'Hej, jeg Ã¸nskede at kende din pris.'),
(0, 'MasonGet', 'yjdisantoyjdissemin@gmail.com', '', 0, 'Hi, roeddwn i eisiau gwybod eich pris.'),
(0, 'Haroldovags', 'randallwesselink31@schuetz72.hexagonaldrawings.com ', '', 0, '<a href=\"https://zelpgo.ru\">https://zelpgo.ru</a>'),
(0, 'Louieabomi', 'bucha.n.ao.nm.at.t.@gmail.com', '', 0, '\r\n\r\n\r\n\r\nCertified Roofing Experts in Wilmington\r\n\r\nResiding near the seaside offers many r'),
(0, 'Noah', 'noah@diamondcityre.com', '', 0, 'Hi there \r\n\r\nThe New Powerful LED Flashlight is The Perfect Flashlight For Any Situation!\r'),
(0, 'AmandaDoginozyb', 'amandaCreand1@gmail.com', '', 0, 'Hey darling, want to hang out? -  https://is.gd/2xVU7z?Agony'),
(0, 'Al Sabo', 'sabo.al@googlemail.com', '', 0, 'Getting your business Vetted could help you close 60% more leads allowing you to reduce yo'),
(0, 'Onita Schauer', 'schauer.onita@gmail.com', '', 0, 'Hi, I was searching through Siri on my phone and I couldnâ€™t find you.\r\n\r\nWe know how to '),
(0, 'Luis Alves', 'intl.law7@aol.com', '', 0, 'Greeting. \r\nI hope this message will interest you, giving the unconventional opportunity i'),
(0, 'Philip Norman', 'philipnorman777@yahoo.com', '', 0, 'Greetings, \r\n \r\nI hope this message finds you well. My name is Philip Norman, and I am a s'),
(0, 'Michael Bracegirdle', 'noreen.bracegirdle@yahoo.com', '', 0, 'Hi ,\r\n\r\nBoost your website to first google page in ranking \r\n\r\nClick here to start ===> ht'),
(0, 'Maham Menkens', 'leanna.menkens@gmail.com', '', 0, 'The Instagram social media platform has seen explosive growth over the last two years. It '),
(0, 'Whibiamub', 'floanty@mailport.lat', '', 0, '1k, median overall survival 45 months for TP53 WT vs 263 months for TP53 mutant undefined '),
(0, 'Jerald Santoro', 'santoro.jerald84@gmail.com', '', 0, 'Outsource Developer Ð°t Half tÒ»e cost á§f ÔhÉ‘t Êá§u É‘ï½’Ðµ paying ï½ƒurrently, sche'),
(0, 'Maribel Leger', 'maribel.leger@gmail.com', '', 0, ' Finally, an easy way to offer affordable payments to ALL customers and credit grades No m'),
(0, 'Brigette Manzo', 'brigette.manzo@yahoo.com', '', 0, ''),
(0, 'flagstoneveneydel2q9+6mvedp0n3fne@gmail.com', 'flagstoneveneydel2q9+6mvedp0n3fne@gmail.com', '', 0, 'User Request to Subscribe Now'),
(0, 'flagstoneveneydel2q9+6mvedp0n3fne@gmail.com', 'flagstoneveneydel2q9+6mvedp0n3fne@gmail.com', '', 0, 'User Request to Subscribe Now'),
(0, 'flagstoneveneydel2q9+6mvedp0n3fne@gmail.com', 'flagstoneveneydel2q9+6mvedp0n3fne@gmail.com', '', 0, 'vero non quod alias accusamus nulla neque id enim omnis explicabo eos doloribus laboriosam'),
(0, 'flagstoneveneydel2q9+6mvedp0n3fne@gmail.com', 'flagstoneveneydel2q9+6mvedp0n3fne@gmail.com', '', 0, 'vero non quod alias accusamus nulla neque id enim omnis explicabo eos doloribus laboriosam'),
(0, 'flagstoneveneydel2q9+6mvedp0n3fne@gmail.com', 'flagstoneveneydel2q9+6mvedp0n3fne@gmail.com', '', 0, 'User Request to Subscribe Now'),
(0, 'flagstoneveneydel2q9+6mvedp0n3fne@gmail.com', 'flagstoneveneydel2q9+6mvedp0n3fne@gmail.com', '', 0, 'voluptas eaque aut est vitae animi labore quia eveniet incidunt vitae porro sequi similiqu'),
(0, 'flagstoneveneydel2q9+6mvedp0n3fne@gmail.com', 'flagstoneveneydel2q9+6mvedp0n3fne@gmail.com', '', 0, 'qui totam tempore quo quasi rem. quis fugit consequuntur facilis officiis quasi in dolor o'),
(0, 'TedGet', 'yjdisantoyjdissemin@gmail.com', '', 0, 'Dia duit, theastaigh uaim do phraghas a fhÃ¡il.'),
(0, 'Wendy Freytag', 'wendy.freytag@yahoo.com', '', 0, 'Hey diamondcityre.com team\r\n\r\nLooking for a simple way to boost your ad revenue? Pristine '),
(0, 'Kevinbaree', 'branden@rockstarseo.net', '', 0, '\r\n\r\nKinds of Vapor Tanks: Which Fits Your Style?\r\nFrom RDAs to RTAs to low-resistance tank'),
(0, 'Maham Pearsall', 'wendy.pearsall@googlemail.com', '', 0, 'The Instagram social media platform has seen explosive growth over the last two years. It '),
(0, 'Toby Nealy', 'nealy.toby@googlemail.com', '', 0, 'Businesses that get Vetted are running circles around their competition that continue pour'),
(0, 'Louiseameld', 'lori@dronesdragon.com', '', 0, ' \r\n \r\nImproving Your Cycle to enable Commuting \r\n \r\nCommuting by bicycle will be effective'),
(0, 'Hudson Phelps', 'hudson.phelps@msn.com', '', 0, 'Hi there\r\n\r\nWe provide real human traffic with a revenue share option.\r\n\r\nAre you striving'),
(0, 'Mike Ward\r\n', 'mikesewsgecy@gmail.com', '', 0, 'Hi there \r\n \r\nJust checked your diamondcityre.com baclink profile, I noticed a moderate pe'),
(0, 'Edmundo Glenelg', 'glenelg.edmundo@msn.com', '', 0, '\r\nHave you ever worried that you wonâ€™t make payroll?\r\n\r\nAre rising business expenses str'),
(0, 'Kekemanny', 'Dryptom@envelopelink.xyz', '', 0, 'Eat meals sitting upright <a href=https://cialis.lat/discover-the-best-prices-for-cialis>c'),
(0, 'Kekemanny', 'Dryptom@envelopelink.xyz', '', 0, '<a href=http://cialis.lat/discover-the-best-prices-for-cialis>cialis 10mg</a> It s full of'),
(0, 'Kevinbaree', 'branden@rockstarseo.net', '', 0, '\r\n\r\nHomemade Vape Juice: Making Your Own Tastes\r\nCut costs and tailor your vaping with DIY'),
(0, 'wallacefa3', 'concetta@kdp31.webmailgateway.fun', '', 0, 'Wild milfs and grannies sex videos granny milf porn\r\nhttp://hostgator.adult-fletcher.relay'),
(0, 'Michaela Muhammad', 'muhammad.michaela@googlemail.com', '', 0, '\r\nHave you ever worried that you wonâ€™t make payroll?\r\n\r\nAre rising business expenses str'),
(0, 'licMoorce', 'pramest@mailnest.xyz', '', 0, 'Ð©â‚¬Ð¨â„–Ð©â€  Ð¨Â§Ð¨ÐÐ©â€  Ð©â€¦Ð¨Ñ–Ð¨â„–Ð©â‚¬Ð¨Ð‡ Ð¨Â±Ð¨Â¶Ð©Ð‰ Ð¨Â§Ð©â€žÐ©â€žÐ©â€¡ Ð¨â'),
(0, 'Maham Agaundo', 'shelley.agaundo8@hotmail.com', '', 0, 'The Instagram social media platform has seen explosive growth over the last two years. It '),
(0, 'Edwardper', 'no_replyclen42@gmail.com', '', 0, 'Hello, \r\n \r\nPrivate FTP FLAC/Mp3/Clips 1990-2024. \r\nNew Club/Electro/Trance/Techno/Hardsty'),
(0, 'Bernd Luna', 'luna.bernd@gmail.com', '', 0, 'Businesses that get Vetted are running circles around their competition that just keeps po'),
(0, 'Mike Gill\r\n', 'mikesewsgecy@gmail.com', '', 0, 'After reviewing your domain in MOZ, it has come to my attention that you may benefit from '),
(0, 'XRumer23seand', 'xrumer23seand@gmail.com', '', 0, 'Hey people!!!!! \r\nGood mood and good luck to everyone!!!!!'),
(0, 'X23seand', 'xrumer23seand@gmail.com', '', 0, 'Hey people!!!!! \r\nGood mood and good luck to everyone!!!!!'),
(0, 'Ganddreri', 'tootPreld@posthome.space', '', 0, 'Hepatic artery thrombosis in pediatric liver transplantation, Thomas Heffron, Todd Pillen,'),
(0, 'licMoorce', 'pramest@mailnest.xyz', '', 0, '<a href=http://cialis.lat/discover-the-best-prices-for-cialis>cialis online without</a> Mi'),
(0, 'MasonGet', 'yjdisantoyjdissemin@gmail.com', '', 0, 'Salut, ech wollt Ã„re PrÃ¤is wÃ«ssen.'),
(0, 'plumber_ucOt', 'atcufuncbid1974@morozfs.store', '', 0, 'Ð›ÑƒÑ‡ÑˆÐ¸Ðµ ÑÐ°Ð½Ñ‚ÐµÑ…Ð½Ð¸ÐºÐ¸ Ð² Ð¡Ð°Ð½-Ð¥Ð¾ÑÐµ. \r\nÐ›ÑƒÑ‡ÑˆÐ¸Ðµ Ñ€ÐµÑˆÐµÐ½Ð¸Ñ Ð´Ð»Ñ'),
(0, 'X23seand', 'xrumer23seand@gmail.com', '', 0, 'Hey people!!!!! \r\nGood mood and good luck to everyone!!!!!'),
(0, 'XRumer23seand', 'xrumer23seand@gmail.com', '', 0, 'Hey people!!!!! \r\nGood mood and good luck to everyone!!!!!'),
(0, 'Mike Walter\r\n', 'petersewsgecy@gmail.com', '', 0, 'Hi \r\n \r\nI have just verified your SEO on  diamondcityre.com for  the current search visibi'),
(0, 'Mike Durham\r\n', 'petersewsgecy@gmail.com', '', 0, 'Hello \r\n \r\nI have just analyzed  diamondcityre.com for its SEO Trend and saw that your web'),
(0, 'Dyan Skirving', 'dyan.skirving@yahoo.com', '', 0, 'Do you need targeted Customers emails and phone numbers , so I am here to help you check o'),
(0, 'Brian And Dee Friedmann', 'friedmann.leona@gmail.com', '', 0, 'The TikTok social media platform has seen explosive growth over the last two years. It now'),
(0, 'britneyaz2', 'kelley@dd8210.eqt36.webmaildirect.online', '', 0, 'Mature porn piics free mature pussy xxx hot moms images\r\nhttp://zjerkinhoff-paraplegic.ama'),
(0, 'Amelia Brown', 'ameliabrown0325@gmail.com', '', 0, 'Hi there,\r\n\r\nWe run a Youtube growth service, where we can increase your subscriber count '),
(0, 'Roxana Slayton', 'roxana.slayton@gmail.com', '', 0, 'Vetted is a powerful sales multiplier that helps you close 60 % more deals. \r\nThatâ€™s a g'),
(0, 'Amelia Brown', 'ameliabrown0325@gmail.com', '', 0, 'Hi there,\r\n\r\nWe run a YouTube growth service, which increases your number of subscribers b'),
(0, 'CompanyRegistar.org', 'helena.pokorny41@yahoo.com', '', 0, 'Dear Sir/Madam \r\n\r\nI see your domain is only listed in 9 out of 2421 directories\r\n\r\nThis w'),
(0, 'Ravi Leclair', 'leclair.juana@hotmail.com', '', 0, 'Hi,\r\nMy name is Ravi, owner of Webomaze Australia. You have finally found an SEO Company t'),
(0, 'stephenup16', 'sofia@pfe58.maillinkplus.run', '', 0, 'Scarlett bloom porn videos verified pornstar profile pornhub\r\nhttp://bassa-miragememorialg'),
(0, 'Gina Brenner', 'gina.brenner83@yahoo.com', '', 0, ' \r\nPeople + Processes + Capital = The Recipe for Business Success\r\n\r\nHowever most small bu'),
(0, 'MasonGet', 'yjdisantoyjdissemin@gmail.com', '', 0, 'Ciao, volevo sapere il tuo prezzo.'),
(0, 'licMoorce', 'pramest@mailnest.xyz', '', 0, '2007 Sep; 148 1 29 43 <a href=https://cialis.lat/discover-the-best-prices-for-cialis>ciali'),
(0, 'MasonGet', 'yjdisantoyjdissemin@gmail.com', '', 0, 'Hej, jeg Ã¸nskede at kende din pris.'),
(0, 'Brian And Dee Epp', 'epp.alphonso@gmail.com', '', 0, 'The TikTok social media platform has seen explosive growth over the last two years. It now'),
(0, 'Elvia Primm', 'elvia.primm@yahoo.com', '', 0, 'UPGRADE YOUR EDUCATION SPACE plus your CONFERENCE ROOM and CUT COSTS!\r\n\r\nEPSON PowerLite 1'),
(0, 'DavidGet', 'kayleighbpsteamship@gmail.com', '', 0, 'Sveiki, aÅ¡ norÄ—jau suÅ¾inoti jÅ«sÅ³ kainÄ….'),
(0, 'madelyniu60', 'francisca@pfe58.maillinkplus.run', '', 0, 'Bypass internet restrictions and unblock websites worldwide speedify\r\nhttp://allison.parke'),
(0, 'licMoorce', 'pramest@mailnest.xyz', '', 0, '<a href=https://cialis.lat/discover-the-best-prices-for-cialis>buy cialis online 20mg</a> '),
(0, 'ernautdatheand6c0+6mvedo2ucej0@gmail.com', 'ernautdatheand6c0+6mvedo2ucej0@gmail.com', '', 0, 'User Request to Subscribe Now'),
(0, 'ernautdatheand6c0+6mvedo2ucej0@gmail.com', 'ernautdatheand6c0+6mvedo2ucej0@gmail.com', '', 0, 'User Request to Subscribe Now'),
(0, 'ernautdatheand6c0+6mvedo2ucej0@gmail.com', 'ernautdatheand6c0+6mvedo2ucej0@gmail.com', '', 0, 'est doloribus animi porro eos quas placeat ea et optio voluptatem. in impedit praesentium '),
(0, 'ernautdatheand6c0+6mvedo2ucej0@gmail.com', 'ernautdatheand6c0+6mvedo2ucej0@gmail.com', '', 0, 'est doloribus animi porro eos quas placeat ea et optio voluptatem. in impedit praesentium '),
(0, 'ernautdatheand6c0+6mvedo2ucej0@gmail.com', 'ernautdatheand6c0+6mvedo2ucej0@gmail.com', '', 0, 'User Request to Subscribe Now'),
(0, 'ernautdatheand6c0+6mvedo2ucej0@gmail.com', 'ernautdatheand6c0+6mvedo2ucej0@gmail.com', '', 0, 'ut qui magnam natus ut eligendi est nulla a ut eligendi magni perspiciatis. aperiam tempor'),
(0, 'ernautdatheand6c0+6mvedo2ucej0@gmail.com', 'ernautdatheand6c0+6mvedo2ucej0@gmail.com', '', 0, 'a et iusto dignissimos est numquam quis dolor et perspiciatis saepe est maiores possimus s'),
(0, 'Juliann Lionel', 'juliann.lionel@googlemail.com', '', 0, 'Tired of sore muscles, aches, and pains? Ready to get back to doing the things you love?\r\n'),
(0, 'Omar Cadle', 'creatify64@gmail.com', '', 0, 'Hi,\r\nI am Omar , I am offering for your website or Producrts  free Marketing short video t'),
(0, 'AmandaDoginozy3', 'amandaCreandb@gmail.com', '', 0, 'Hey darling, want to hang out? -  https://is.gd/2xVU7z?Agony'),
(0, 'sashafr60', 'clinton@pfe58.maillinkplus.run', '', 0, 'Top 100 most visited websites us and worldwide ahrefs\r\nhttp://ulm.known.topanasex.com/?mae'),
(0, 'AmandaDoginozya', 'amandaCreandb@gmail.com', '', 0, 'Hey darling, want to hang out? -  https://is.gd/2xVU7z?Agony'),
(0, 'Alethea Heavener', 'alethea.heavener81@hotmail.com', '', 0, 'People + Processes + Working Capital = The Recipe for Business Success\r\n\r\nBut most small b'),
(0, 'Melody York', 'melody.york21@googlemail.com', '', 0, 'This legend just introduced the wildest cheat code of the year for consultants and coaches'),
(0, 'Jeffreynix', 'yasen.krasen.13+80277@mail.ru', '', 0, 'Ofedkwdkjwkjdkwjdkjw jdwidjwijdwfw fjdkqwasqfoewofjewof ojqwejfqwkdokjwofjewofjewoi diamon'),
(0, 'Lewismek', 't0.7.713.6.4@gmail.com', '', 0, ' \r\n \r\nChoose the Ideal Unicycle for Off-Terrain Journeys \r\n \r\nChoosing the optimal monowhe'),
(0, 'Louieabomi', 'bu.ch.ana.o.n.mat.t.@gmail.com', '', 0, '\r\n\r\n\r\n\r\n\r\n\r\nMotivations Homeowners Would Hire a Certified Roofing Expert in Wilmington\r\n\r\n'),
(0, 'Nicholas Bone', 'bone.nicholas@gmail.com', '', 0, 'Hello,\r\n\r\nIt is with sad regret that after 12 years, LeadsMax.biz is shutting down.\r\n\r\nWe '),
(0, 'Ronny Duterrau', 'klaudia.duterrau@googlemail.com', '', 0, 'Social media marketing boosts your business by capturing your target audience with contemp'),
(0, 'Ravi Warfield', 'margart.warfield@hotmail.com', '', 0, 'Hi,\r\nMy name is Ravi, owner of Webomaze Australia. You have finally found an SEO Company t'),
(0, 'carmelazt11', 'jerri@alb3410.whr53.inboxforwarding.website', '', 0, 'Janice griffith s is a porn model video photos and biography\r\nhttp://android-sexy-song.qua'),
(0, 'licMoorce', 'pramest@mailnest.xyz', '', 0, 'We classified drug intake according to the following principles within each six month peri'),
(0, 'nikkijf16', 'samantha@dxc6210.dgx83.securemailboxnet.fun', '', 0, 'Paulraymond cara delahoyde mayfair volume 50 eropics\r\nhttp://submissivebicuckold-hiroinpho'),
(0, 'AmandaDoginozya', 'amandaCreandc@gmail.com', '', 0, 'Hey darling, want to hang out? -  https://is.gd/2xVU7z?Agony'),
(0, 'Michal Hendricks', 'michal.hendricks10@gmail.com', '', 0, 'Tired of sore muscles, aches, and pains? Ready to get back to doing the things you love?\r\n'),
(0, 'Mohammed Murry', 'mohammed.murry23@gmail.com', '', 0, 'People + Processes + Working Capital = The Recipe for Business Success\r\n\r\nBut most small b'),
(0, 'AmandaDoginozy3', 'amandaCreanda@gmail.com', '', 0, 'Hey darling, want to hang out? -  https://is.gd/2xVU7z?Agony'),
(0, 'Natalie Ayala', 'russell.skeen@outlook.com', '', 0, 'Are you aware?\r\n\r\nGoing green is not just a trend!\r\n\r\nBe part of the change and upgrade yo'),
(0, 'Rickie Boss', 'boss.rickie@hotmail.com', '', 0, 'People + Processes + Working Capital = The Recipe for Business Success\r\n\r\nBut most small b'),
(0, 'Raymondlaf', 'no.reply.JulesDavid@gmail.com', '', 0, 'Greetings! diamondcityre.com \r\n \r\nDo you know that it is possible to send a letter in a co'),
(0, 'DavidGet', 'kayleighbpsteamship@gmail.com', '', 0, 'Hi, I wanted to know your price.'),
(0, 'AmandaDoginozy1', 'amandaCreandc@gmail.com', '', 0, 'Hey darling, want to hang out? -  https://is.gd/2xVU7z?Agony'),
(0, 'Darla Han', 'han.darla@googlemail.com', '', 0, 'hi!\r\n\r\nExplode Your Earnings:(Seriously!): SECRET EMAIL SYSTEM\r\n\r\nWithout Ever Creating Pr'),
(0, 'Jamaal Rucker', 'rucker.jamaal@gmail.com', '', 0, 'Learning Activities Pre Algreba\r\nhttps://gigglegeniusgames.com\r\n'),
(0, 'Omar Brindley', 'creatify64@gmail.com', '', 0, 'Hi,\r\nI am Omar , I am offering for your website or Producrts  free Marketing short video t'),
(0, 'AmandaDoginozy3', 'amandaCreand1@gmail.com', '', 0, 'Canâ€™t wait to show you a good time tonight. -  https://goo.su/zARWg?Agony'),
(0, 'Ravi Bettis', 'ada.bettis@yahoo.com', '', 0, 'Hi,\r\nMy name is Ravi, owner of Webomaze Australia. You have finally found an SEO Company t'),
(0, 'AmandaDoginozy2', 'amandaCreand2@gmail.com', '', 0, 'Iâ€™ve been naughty, want to help me with that?) -  https://rb.gy/7rnhss?Mapapefe'),
(0, 'Mike Thornton\r\n', 'mikesewsgecy@gmail.com', '', 0, 'Hi there, \r\n \r\nWhile checking your diamondcityre.com for its ranks, I have noticed that th'),
(0, 'TedGet', 'yjdisantoyjdissemin@gmail.com', '', 0, 'Hola, querÃ­a saber tu precio..'),
(0, 'MasonGet', 'yjdisantoyjdissemin@gmail.com', '', 0, 'Salut, ech wollt Ã„re PrÃ¤is wÃ«ssen.'),
(0, 'AmandaDoginozyb', 'amandaCreand3@gmail.com', '', 0, 'Canâ€™t wait to show you a good time tonight. -  https://goo.su/zARWg?Agony'),
(0, 'Zachary Zox', 'zox.zachary@gmail.com', '', 0, 'hi!\r\n\r\nExplode Your Earnings:(Seriously!): SECRET EMAIL SYSTEM\r\n\r\nWithout Ever Creating Pr'),
(0, 'lucymb16', 'francine@alb3410.whr53.inboxforwarding.website', '', 0, 'The 13 best lesbian movies onflix right now marie claire\r\nhttp://beach.equipment-lacy.lee.'),
(0, 'AmandaDoginozy2', 'amandaCreand3@gmail.com', '', 0, 'Iâ€™ve been naughty, want to help me with that?) -  https://goo.su/zARWg?Agony'),
(0, 'Selina Rooke', 'rooke.selina35@gmail.com', '', 0, 'Do you need targeted Customers emails and phone numbers , so I am here to help you check o'),
(0, 'Ravi Kohn', 'opal.kohn@gmail.com', '', 0, 'Hi,\r\nMy name is Ravi, owner of Webomaze Australia. You have finally found an SEO Company t'),
(0, 'Ravi Poulson', 'poulson.julienne@msn.com', '', 0, 'Hi,\r\nMy name is Ravi, owner of Webomaze Australia. You have finally found an SEO Company t'),
(0, 'Fredericka Snowden', 'fredericka.snowden@msn.com', '', 0, ' Running a business is not easy.\r\nEspecially when the cost of nearly everything continues '),
(0, 'Isidra Decicco', 'decicco.isidra@gmail.com', '', 0, 'Get An INSTANT FLOOD of Non-Stop HUNGRY LEADS\r\nUsing This SHOCKING HACK That Nobodyâ€™s Ev'),
(0, 'Mike Dodson\r\n', 'petersewsgecy@gmail.com', '', 0, 'Greetings \r\n \r\nI have just analyzed  diamondcityre.com for  the current search visibility '),
(0, 'Brian And Dee Trundle', 'paulina.trundle@gmail.com', '', 0, 'The TikTok social media platform has seen explosive growth over the last two years. It now'),
(0, 'maureenum11', 'reba@dgx710.snps64.securemailboxnet.fun', '', 0, 'Pictures solair family nudist resort hartford courant\r\nhttp://legs-mature.kissing-lesbians'),
(0, 'Ronny Lanham', 'lanham.alisha@msn.com', '', 0, 'Social media marketing boosts your business by capturing your target audience with contemp'),
(0, 'AmandaDoginozya', 'amandaCreand2@gmail.com', '', 0, 'Canâ€™t wait to show you a good time tonight. -  https://goo.su/zARWg?Agony'),
(0, 'Maricela Powers', 'powers.maricela@hotmail.com', '', 0, 'Important: \r\nYour Vetted Business listing is no longer visible because the annual verifica'),
(0, 'AmandaDoginozya', 'amandaCreanda@gmail.com', '', 0, 'Iâ€™ve been naughty, want to help me with that?) -  https://goo.su/zARWg?Agony'),
(0, 'Bobby Craine', 'bobby.craine47@msn.com', '', 0, 'Payroll, Insurance, inventory, marketing EXPENSES â€¦â€¦UGHH\r\n\r\nWant to remove the stress '),
(0, 'pearlierq18', 'casey@dd8210.eqt36.webmaildirect.online', '', 0, 'Large porn films free tube videos full length streaming sex\r\nhttp://amateur-lovers.tina.ti'),
(0, 'Donaldshify', 'tina@articles.sedona-psychic.com', '', 0, 'Reveal advantages of Large Multi-Port Cultivate Containers for Home Outdoor \r\n \r\nHorticult'),
(0, 'wetzelmhoonjgq1a2+6mvedn55lc1s@gmail.com', 'wetzelmhoonjgq1a2+6mvedn55lc1s@gmail.com', '', 0, 'User Request to Subscribe Now'),
(0, 'wetzelmhoonjgq1a2+6mvedn55lc1s@gmail.com', 'wetzelmhoonjgq1a2+6mvedn55lc1s@gmail.com', '', 0, 'User Request to Subscribe Now'),
(0, 'wetzelmhoonjgq1a2+6mvedn55lc1s@gmail.com', 'wetzelmhoonjgq1a2+6mvedn55lc1s@gmail.com', '', 0, 'error veritatis quae enim omnis placeat maxime corporis nemo voluptates officiis culpa dol'),
(0, 'wetzelmhoonjgq1a2+6mvedn55lc1s@gmail.com', 'wetzelmhoonjgq1a2+6mvedn55lc1s@gmail.com', '', 0, 'error veritatis quae enim omnis placeat maxime corporis nemo voluptates officiis culpa dol'),
(0, 'wetzelmhoonjgq1a2+6mvedn55lc1s@gmail.com', 'wetzelmhoonjgq1a2+6mvedn55lc1s@gmail.com', '', 0, 'User Request to Subscribe Now'),
(0, 'wetzelmhoonjgq1a2+6mvedn55lc1s@gmail.com', 'wetzelmhoonjgq1a2+6mvedn55lc1s@gmail.com', '', 0, 'ex eos non quis et porro quia sunt molestiae suscipit. et rerum dolores reiciendis id arch'),
(0, 'wetzelmhoonjgq1a2+6mvedn55lc1s@gmail.com', 'wetzelmhoonjgq1a2+6mvedn55lc1s@gmail.com', '', 0, 'sed ullam quae magni tempore et dolores voluptatum magni ratione excepturi. omnis quas dol'),
(0, 'MasonGet', 'yjdisantoyjdissemin@gmail.com', '', 0, 'Ola, querÃ­a saber o seu prezo.'),
(0, 'Boyd Steil', 'boyd.steil@gmail.com', '', 0, 'Do you need targeted Customers emails and phone numbers , so I am here to help you check o'),
(0, 'Ronny Sanjuan', 'sanjuan.allen@gmail.com', '', 0, 'Social media marketing boosts your business by capturing your target audience with contemp'),
(0, 'Anthonyhag', 'smudgekitten@hotmail.com', '', 0, 'AMAZING NEWS: IPHONE 16 PRO MAX http://xn--80aktaxjdv.xn--p1ai/bitrix/rk.php?goto=https%3A'),
(0, 'Kekemanny', 'Dryptom@envelopelink.xyz', '', 0, 'Then pay attention <a href=https://cialis.lat/discover-the-best-prices-for-cialis>5 mg cia'),
(0, 'Louiseameld', 'jeanpaulionodewitt@gmail.com', '', 0, ' \r\n \r\nMetropolitan Biking: Optimal Hybrid Bikes \r\n \r\nHybrid bikes are the ideal choice for'),
(0, 'Kevinbaree', 'branden@rockstarseo.net', '', 0, '\r\n\r\nHealth Benefits of Transitioning to E-Cigarettes\r\nThinking about transitioning from ci'),
(0, 'Anthonyhag', 'jlrogers99@yahoo.com', '', 0, 'Act Now: Your $77,000 Earnings Are Ready â€“ Withdraw Immediately! https://script.google.c'),
(0, 'VevadinHed', 'dennisdetkovis24@outlook.com', '', 0, 'pochtatest'),
(0, 'Ravi Redd', 'redd.buster@gmail.com', '', 0, 'Hi,\r\nMy name is Ravi, owner of Webomaze Australia. You have finally found an SEO Company t'),
(0, 'Anthonyhag', 'shantalatise@icloud.com', '', 0, 'Claim Your $50,000 Cash: Act Quickly http://mixfiend.com/redirect.php?url=https%3A%2F%2Fte'),
(0, 'Lovie Woods', 'lovie.woods@hotmail.com', '', 0, 'Calling all gamers! Looking for a place to satisfy your gaming cravings? \r\n\r\n3030 Games pr'),
(0, 'Ganddreri', 'tootPreld@posthome.space', '', 0, '<a href=http://cialis.lat/discover-the-best-prices-for-cialis>generic cialis no prescripti'),
(0, 'Joel Linney', 'joel.linney@hotmail.com', '', 0, 'How would you like a surefire way to dominate your local market & win more sales from your'),
(0, 'Rogeliomip', 'gpancho711@icloud.com', '', 0, 'Act Now: Collect Your $50,000 Prize Instantly https://script.google.com/macros/s/AKfycbyjY'),
(0, 'MasonGet', 'yjdisantoyjdissemin@gmail.com', '', 0, 'Hola, volia saber el seu preu.'),
(0, 'Omar Ormiston', 'creatify64@gmail.com', '', 0, 'Hi ,\r\nBoost your views by tracking millions of high-performing videos\r\nFind your next vide'),
(0, 'Ravi Corcoran', 'corcoran.larry@gmail.com', '', 0, 'Hi,\r\nMy name is Ravi, owner of Webomaze Australia. You have finally found an SEO Company t'),
(0, 'Discover true love today. - http://xurl.es/p0gwt', 'bdana6036@gmail.com', '', 0, 'Begin your journey to happiness. - http://xurl.es/p0gwt'),
(0, 'Pillsraw', 'iunskiygipertonik@gmail.com', '', 0, 'Erectile dysfunction treatments available online from TruePills. \r\nDiscreet, next day deli'),
(0, 'JamesNic', 'rastafari831@hotmail.com', '', 0, 'From Start to Finish: Building a $50,000 Weekly Passive Crypto Income https://www.yallahun'),
(0, 'DavidGet', 'kayleighbpsteamship@gmail.com', '', 0, 'Ð—Ð´Ñ€Ð°Ð²ÐµÐ¹Ñ‚Ðµ, Ð¸ÑÐºÐ°Ñ… Ð´Ð° Ð·Ð½Ð°Ð¼ Ñ†ÐµÐ½Ð°Ñ‚Ð° Ð²Ð¸.'),
(0, 'Ryder Mccallister', 'ryder.mccallister@gmail.com', '', 0, 'Get the 4000 Lumen Epson Projector at $649\r\n\r\n++ https://bit.ly/PowerLite-1288\r\n\r\n- Priced'),
(0, 'jerrywi11', 'william@kdp31.webmailgateway.fun', '', 0, 'Free asian japanese wife porn tube videos asianwifeporn\r\nhttp://dm1537-distorts.titsamateu'),
(0, 'Kekemanny', 'Dryptom@envelopelink.xyz', '', 0, '<a href=https://cialis.lat/discover-the-best-prices-for-cialis>tadalafil cialis from india'),
(0, 'Nadya Chitwood', 'creatify64@gmail.com', '', 0, 'Hi ,\r\n\r\nI will help you develop your brand and digital marketing strategies over all your '),
(0, 'Whibiamub', 'floanty@mailport.lat', '', 0, '<a href=https://cialis.lat/discover-the-best-prices-for-cialis>cheapest cialis generic onl'),
(0, 'Alphonso Penrod', 'penrod.alphonso@gmail.com', '', 0, 'Hi there,\r\n\r\nWhile checking your diamondcityre.com for its ranks, I have noticed that ther'),
(0, 'Felicitas Dupont', 'felicitas.dupont@hotmail.com', '', 0, 'Have you ever worried that you wonâ€™t make payroll?\r\n\r\nAre rising business expenses stres'),
(0, 'Wiley Greener', 'greener.wiley18@googlemail.com', '', 0, 'Do you need targeted Customers emails and phone numbers , so I am here to help you check o'),
(0, 'Graciela Propsting', 'propsting.graciela@hotmail.com', '', 0, 'Frustrated of your site being slow and/or going offline from time to time?\r\nTry Cloudways '),
(0, 'Lamasew', 'megaboommegaboom@yandex.com', '', 0, 'I want to show you one exclusive program called (BTC PROFIT SEARCH AND MINING PHRASES), wh'),
(0, 'Marcel Santacruz', 'santacruz.marcel@yahoo.com', '', 0, 'Discover the Latest Profitable Projects for your business\r\nhtps://www.depinprofit.com/\r\n\r\n'),
(0, 'Renee Dyke', 'dyke.renee@yahoo.com', '', 0, 'Hi,\r\n\r\nI wanted to introduce you to something that could truly revolutionize your financia'),
(0, 'elinoryq2', 'francisco@glw96.mailguardianpro.online', '', 0, 'Pornhub and xvideos will be subject to the same strict eu rules\r\nhttp://big-ass.porntour.a'),
(0, 'Elinor Stone', 'stone.elinor61@outlook.com', '', 0, 'Discover the Latest Profitable Projects for your business\r\nhtps://www.depinprofit.com/\r\n\r\n'),
(0, 'Ronny Levin', 'amelie.levin89@gmail.com', '', 0, 'Social media marketing boosts your business by capturing your target audience with contemp'),
(0, 'TonyGet', 'kayleighbpsteamship@gmail.com', '', 0, 'Hola, querÃ­a saber tu precio..'),
(0, 'Errol Cabena', 'cabena.errol@msn.com', '', 0, 'Have you ever worried that you wonâ€™t make payroll?\r\n\r\nAre rising business expenses stres'),
(0, 'Brian And Dee Spurgeon', 'spurgeon.sonia@gmail.com', '', 0, 'The TikTok social media platform has seen explosive growth over the last two years. It now'),
(0, 'Miguelskade', 'jill@sedona-vortex-tours.com', '', 0, 'https://9humantypes.com/9-spiritual-gifts - Ways to apply divine talents to strengthen the'),
(0, 'Jeremy McCleary', 'marketingdatabaselists.com@gmail.com', '', 0, 'Ready to elevate your business to the next level? +++ Enhance your sales, optimize your ma'),
(0, 'Katelyn Raiden', 'katelynraiden@gmail.com', '', 0, 'Hi there,\r\n\r\nWe run a Youtube growth service, where we can increase your subscriber count '),
(0, 'deniseyw11', 'estella@dd8210.eqt36.webmaildirect.online', '', 0, 'Life after porn what does a porn star do next sinparty blog\r\nhttp://funnypositivethinkingq'),
(0, 'Ravi Spain', 'spain.juli@hotmail.com', '', 0, 'Hi,\r\nMy name is Ravi, owner of Webomaze Australia. You have finally found an SEO Company t'),
(0, 'Anglea Strauss', 'anglea.strauss@outlook.com', '', 0, 'Do you need targeted Customers emails and phone numbers , so I am here to help you check o'),
(0, 'Johnie Abarca', 'johnie.abarca@gmail.com', '', 0, 'Hello\r\n\r\nIt is with sad regret to inform you that PCXLeads.com is shutting down\r\n\r\nWe have'),
(0, 'AmandaDoginozyb', 'amandaCreandb@gmail.com', '', 0, 'Canâ€™t wait to show you a good time tonight. -  https://goo.su/zARWg?Agony'),
(0, 'Margarette Kayser', 'kayser.margarette@gmail.com', '', 0, 'Your Instagram posts deserve attention and our AI powered Instagram Engagement Network ens'),
(0, 'barbrarc16', 'aaron@glw96.mailguardianpro.online', '', 0, 'Be the first toment on fresh outta high school 9 sc4 porn\r\nhttp://cory.chase-clips.hairy-p'),
(0, 'Karol Macaulay', 'macaulay.karol@yahoo.com', '', 0, 'How would you like a surefire way to dominate your local market & win more sales from your'),
(0, 'AmandaDoginozy2', 'amandaCreand3@gmail.com', '', 0, 'Iâ€™ve been naughty, want to help me with that?) -  https://rb.gy/7rnhss?Mapapefe'),
(0, 'Miguelskade', 'jill@sedona-vortex-tours.com', '', 0, 'https://9humantypes.com/9-gifts-of-the-holy-spirit - Philosophical schools \r\nhttps://decou'),
(0, 'Glenn Tanner', 'tanner.glenn52@gmail.com', '', 0, 'Hey gamers! Need a place to quench your gaming cravings? \r\n\r\n3030 Games presents a wide ar'),
(0, 'Mike Mathews\r\n', 'mikesewsgecy@gmail.com', '', 0, 'Hi there, \r\n \r\nWhile checking your diamondcityre.com for its ranks, I have noticed that th'),
(0, 'AmandaDoginozy2', 'amandaCreanda@gmail.com', '', 0, 'Canâ€™t wait to show you a good time tonight. -  https://goo.su/zARWg?Agony'),
(0, 'Ouida Handy', 'ouida.handy@hotmail.com', '', 0, 'I can provide large Claude 3.5 sonnet, GPT-4o, and Gemini-1.5-pro-exp models. You can get '),
(0, 'MasonGet', 'yjdisantoyjdissemin@gmail.com', '', 0, 'Kaixo, zure prezioa jakin nahi nuen.'),
(0, 'Nichol Digby', 'digby.nichol@hotmail.com', '', 0, 'People + Processes + Working Capital = The Recipe for Business Success\r\n\r\nBut most small b'),
(0, 'Fidelia Ogrady', 'ogrady.fidelia@hotmail.com', '', 0, 'Software Development - Elevate Êâ²Ÿur business Ôith â²Ÿur comprehensive software develop'),
(0, 'AmandaDoginozyb', 'amandaCreanda@gmail.com', '', 0, 'Iâ€™ve been naughty, want to help me with that?) -  https://goo.su/zARWg?Agony'),
(0, 'AmandaDoginozy1', 'amandaCreand1@gmail.com', '', 0, 'Explore my profile, letâ€™s make it unforgettable. -  https://rb.gy/7rnhss?Mapapefe'),
(0, 'Yetta Barrera', 'yetta.barrera18@hotmail.com', '', 0, 'Frustrated of your site being slow or going offline from time to time?\r\nTry Cloudways Auto'),
(0, 'DavidGet', 'kayleighbpsteamship@gmail.com', '', 0, 'Zdravo, htio sam znati vaÅ¡u cijenu.'),
(0, 'Miguelskade', 'jill@sedona-vortex-tours.com', '', 0, 'https://9humantypes.com/9-spiritual-gifts - Holy Presence mystical blessings elucidated \r\n'),
(0, 'Manuelmok', 'jroy9@gt.rr.com', '', 0, 'Time is Running Out: Claim Your $115,000.79 Prize https://script.google.com/macros/s/AKfyc'),
(0, 'Mike Hodges\r\n', 'petersewsgecy@gmail.com', '', 0, 'Good Day \r\n \r\nI have just verified your SEO on  diamondcityre.com for  the current search '),
(0, 'DennisCam', 'oysot0hejbngv7m@tempmail.us.com', '', 0, 'https://SellAccs.net offers high-quality verified accounts that are perfect for marketers,'),
(0, 'Anneliese Ricketson', 'ricketson.anneliese0@hotmail.com', '', 0, 'Have you ever worried that you wonâ€™t make payroll?\r\n\r\nAre rising business expenses stres'),
(0, 'Kevinbaree', 'branden@rockstarseo.net', '', 0, '\r\n\r\nResolving Your Vaping Device: Fast Fixes\r\nIs your e-cig not working right? Here are so'),
(0, 'Marthanob', 'j95.1.5029.6@gmail.com', '', 0, '\r\nFlexibility is crucial when it comes to exercise trousers. Pants made from stretchy mate'),
(0, 'licMoorce', 'pramest@mailnest.xyz', '', 0, '<a href=https://enhanceyourlife.mom/>amazon priligy</a> No long term increase in cardiac r'),
(0, 'AmandaDoginozy1', 'amandaCreanda@gmail.com', '', 0, 'Explore my profile, letâ€™s make it unforgettable. -  https://rb.gy/7rnhss?Mapapefe'),
(0, 'Tommiebup', 'm30.3.8.620.@gmail.com', '', 0, '\r\n\r\n\r\n\r\nHillside Cycling for Novices: Choosing the Suitable Bicycle\r\n\r\nSelecting the right'),
(0, 'TedGet', 'yjdisantoyjdissemin@gmail.com', '', 0, 'Sawubona, bengifuna ukwazi intengo yakho.'),
(0, 'Jude Nies', 'nies.jude@gmail.com', '', 0, 'Software Project Rescue - Revive ï½™â²Ÿur stalled projects with ß‹ur software project resc'),
(0, 'Tommiebup', 'm.30386.20.@gmail.com', '', 0, '\r\n\r\n\r\n\r\nThe Role of Food Intake in Upland Cycling Efficiency\r\n\r\nDiet is crucial of optimal'),
(0, 'Alyce Oberg', 'alyce.oberg@hotmail.com', '', 0, 'Fastest Way to Build a Profitable Business!\r\n\r\nIf youâ€™re new to online marketing, youâ€™'),
(0, 'MichaelActiz', 'no_replyclen628@gmail.com', '', 0, 'Hello, \r\n \r\nMusic download private services Pop/Rock/Rap/RnB/Metal/Jazz/Folk/Punk: https:/'),
(0, 'Irrachtab', 'LabLoyabs@mailsphere.xyz', '', 0, '<a href=https://enhanceyourlife.mom/>priligy online</a> After mapping these DM CPG sites o'),
(0, 'AmandaDoginozya', 'amandaCreand1@gmail.com', '', 0, 'Want to see more? Check my profile now. -  https://goo.su/zARWg?Agony'),
(0, 'MasonGet', 'yjdisantoyjdissemin@gmail.com', '', 0, 'Ndewo, achá»rá» m á»‹mara á»ná»¥ahá»‹a gá»‹.'),
(0, 'AmandaDoginozyb', 'amandaCreand1@gmail.com', '', 0, 'Explore my profile, letâ€™s make it unforgettable. -  https://rb.gy/7rnhss?Mapapefe'),
(0, 'Francine Lovett', 'lovett.francine19@msn.com', '', 0, 'People + Processes + Working Capital = The Recipe for Business Success\r\n\r\nBut most small b'),
(0, 'Elvira Bagot', 'elvira.bagot19@googlemail.com', '', 0, 'Unlock your $32,220 tax credit when you partner SETC PROS, â€”this opportunity expires in '),
(0, 'Richardshuts', 'lyndonhtpeckbq@outlook.com', '', 0, ' \r\nÐ—Ð½Ð°ÐºÐ¾Ð¼ÑÑ‚Ð²Ð° Ð´Ð»Ñ ÑÐµÑ€ÑŒÐµÐ·Ð½Ñ‹Ñ… Ð¾Ñ‚Ð½Ð¾ÑˆÐµÐ½Ð¸Ð¹ \r\n \r\nhttps://t.me/Red'),
(0, 'GenryGet', 'yjdisantoyjdissemin@gmail.com', '', 0, 'Ciao, volevo sapere il tuo prezzo.'),
(0, 'Sammy Hash', 'sammy.hash@yahoo.com', '', 0, 'Discover unique and stylish pieces at Selective Buys Boutique, where every item is handpic'),
(0, 'Conrad Burston', 'burston.conrad@gmail.com', '', 0, '\r\n\r\nTURN ANY VIDEO INTO A VIDEO GAME QUICKLY\r\n\r\nGAMIFICATION is better than ChatGPT\r\n\r\nGam'),
(0, 'Brian And Dee Ma', 'shayne.ma@outlook.com', '', 0, 'The TikTok social media platform has seen explosive growth over the last two years. It now'),
(0, 'sten30_Absem', 'mintorulpicotbfj@outlook.com', '', 0, 'ÐŸÑ€Ð¸Ð²ÐµÑ‚ÑÑ‚Ð²ÑƒÑŽ \r\nÐŸÑ€Ð¾Ñ„ÐµÑÑÐ¸Ð¾Ð½Ð°Ð»ÑŒÐ½Ð¾ Ð·Ð°Ð½Ð¸Ð¼Ð°ÑŽÑÑŒ Ð°Ð²Ñ‚Ð¾Ð¼Ð°Ñ‚Ð'),
(0, 'AmandaDoginozya', 'amandaCreand1@gmail.com', '', 0, 'Want to see more? Check my profile now. -  https://goo.su/zARWg?Agony'),
(0, 'Dave Swanson', 'dave.swanson@gmail.com', '', 0, 'How would you like a surefire way to dominate your local market & win more sales from your'),
(0, 'Irrachtab', 'LabLoyabs@mailsphere.xyz', '', 0, '<a href=https://enhanceyourlife.mom/>buy priligy pills</a> Monitor Closely 1 carvedilol, t'),
(0, 'Kathrin Goode', 'kathrin.goode@gmail.com', '', 0, 'Hi there\r\nI know its difficult for everyone to understand that SEO takes time and a monthl'),
(0, 'Ravi Kotter', 'tommy.kotter@msn.com', '', 0, 'Hi,\r\nMy name is Ravi, owner of Webomaze Australia. You have finally found an SEO Company t'),
(0, 'Whibiamub', 'floanty@mailport.lat', '', 0, 'Centrally defined ER, PgR, Ki 67 were used to defined ER subtypes n 2923 <a href=https://e'),
(0, 'DavidGet', 'kayleighbpsteamship@gmail.com', '', 0, 'Hallo, ek wou jou prys ken.'),
(0, 'TedGet', 'kayleighbpsteamship@gmail.com', '', 0, 'Kaixo, zure prezioa jakin nahi nuen.'),
(0, 'Kekemanny', 'Dryptom@envelopelink.xyz', '', 0, 'Furthermore, the diagnosis of vulvar metastasis is supported by the absence of in situ and'),
(0, 'Ashton Hendrix', 'hendrix.ashton@gmail.com', '', 0, 'FINANCIAL INSTRUMENT AND GLOBAL FUNDING\r\n\r\nWe at WEALTHY CREDIT LIMITED HONG KONG -For all'),
(0, 'AmandaDoginozyb', 'amandaCreandb@gmail.com', '', 0, 'Want to see more? Check my profile now. -  https://rb.gy/7rnhss?Mapapefe'),
(0, 'Ronny Muller', 'muller.eloisa@yahoo.com', '', 0, 'Social media marketing boosts your business by capturing your target audience with contemp'),
(0, 'Kevinbaree', 'branden@rockstarseo.net', '', 0, '\r\n\r\nExtending Your E-Cig Battery Longevity\r\nKeep your e-cig going strong with these advice'),
(0, 'Raymondlaf', 'raymondsewsgecy@gmail.com', '', 0, 'Howdy-doody! diamondcityre.com \r\n \r\nDid you know that it is possible to send commercial of'),
(0, 'Martinpurry', 'j9.78.42.5.9.0@gmail.com', '', 0, 'What Employing The Social Security Disability Counsel Turns Out to Be Vital. \r\nHiring Your'),
(0, 'Marthanob', 'j.9.5.1.5029.6@gmail.com', '', 0, '\r\nMesh fitness trousers be a fashionable and useful choice for any training. The mesh part'),
(0, 'GilbertMow', 'r.eggi.ethem.aste.r.3.3.3.@gmail.com', '', 0, ' \r\n \r\n \r\nsome and Practical an infant Products: father or mother Advice \r\n \r\nComfort and f'),
(0, 'Chloe Holden', 'chloe.holden97@gmail.com', '', 0, 'Software Development - Elevate yÖ…ur business á´¡ith Ð¾ur comprehensive software developme');
INSERT INTO `free_consultation` (`id`, `name`, `email`, `code`, `phone`, `message`) VALUES
(0, 'Thank you for registering - it was incredible and pleasant all the best cucumber  ladonna 88130', 'xrum001@24red.ru\r\n', '', 0, 'User Request to Subscribe Now'),
(0, 'Kevinbaree', 'branden@rockstarseo.net', '', 0, '\r\n\r\nIncreasing Your Vape Battery Duration\r\nKeep your vape going continuously with these ad'),
(0, 'MasonGet', 'yjdisantoyjdissemin@gmail.com', '', 0, 'Î“ÎµÎ¹Î± ÏƒÎ¿Ï…, Î®Î¸ÎµÎ»Î± Î½Î± Î¼Î¬Î¸Ï‰ Ï„Î·Î½ Ï„Î¹Î¼Î® ÏƒÎ±Ï‚.'),
(0, 'Miguelskade', 'jill@sedona-vortex-tours.com', '', 0, 'https://9humantypes.com - Leadership training \r\nhttps://soofy.de/2017/01/17/software-verge'),
(0, 'DennisCam', 'oysot0hejbngv7m@tempmail.us.com', '', 0, 'For verified social media accounts, https://SellAccs.net is your go-to source. We offer a '),
(0, 'DavidGet', 'kayleighbpsteamship@gmail.com', '', 0, 'Zdravo, htio sam znati vaÅ¡u cijenu.'),
(0, 'Hayley Danks', 'hayley.danks@hotmail.com', '', 0, 'Do you need targeted Customers emails and phone numbers , so I am here to help you check o'),
(0, 'Kevinbaree', 'branden@rockstarseo.net', '', 0, '\r\n\r\nCommon Vaping Mistakes and Avoiding Them\r\nEven seasoned e-cigarette users make misstep'),
(0, 'AmandaDoginozy1', 'amandaCreanda@gmail.com', '', 0, 'Explore my profile, letâ€™s make it unforgettable. -  https://rb.gy/7rnhss?Mapapefe'),
(0, 'AmandaDoginozyc', 'amandaCreanda@gmail.com', '', 0, 'Want to see more? Check my profile now. -  https://rb.gy/7rnhss?Mapapefe'),
(0, 'Willie', 'willie@diamondcityre.com', '', 0, 'New Multifunction Anti-theft Waterproof Sling Bag\r\n\r\nThe best ever SUPER Sling Bag: Drop-p'),
(0, 'Irrachtab', 'LabLoyabs@mailsphere.xyz', '', 0, 'Supporting a previous study that provided indirect evidence that kidney function, determin'),
(0, 'Pierre Kristiansen\r\n', 'info@professionalseocleanup.com', '', 0, 'Hi there, \r\n \r\nWhile checking your diamondcityre.com for its ranks, I have noticed that th'),
(0, 'Mariano Holm', 'mariano.holm@msn.com', '', 0, 'We are proud to present our latest product for business data\r\n\r\nExperience our searches on'),
(0, 'Christina Cumpston', 'cumpston.christina6@msn.com', '', 0, 'Dedicated Development Team - Strengthen ï½™á§ur projects Ñ¡ith ß‹ur dedicated development'),
(0, 'VlasowFirmasesi', '14777@loves-ltd.com', '', 0, 'ÐŸÑ€Ð¸Ð²ÐµÑ‚ÑÑ‚Ð²ÑƒÑŽ Ð²Ð°Ñˆ Ð¾Ð½Ð»Ð°Ð¹Ð½-ÑÐ°Ð¹Ñ‚, ÐºÐ¾Ð»Ð»ÐµÐ³Ð¸! \r\n \r\nÐœÑ‹ Ð¿Ñ€ÐµÐ´ÑÑ'),
(0, 'TedGet', 'kayleighbpsteamship@gmail.com', '', 0, 'Szia, meg akartam tudni az Ã¡rÃ¡t.'),
(0, 'MasonGet', 'yjdisantoyjdissemin@gmail.com', '', 0, 'Hi, kam dashur tÃ« di Ã§mimin tuaj'),
(0, 'AmandaDoginozy3', 'amandaCreanda@gmail.com', '', 0, 'Want to see more? Check my profile now. -  https://rb.gy/7rnhss?Mapapefe'),
(0, 'Pillsraw', 'iunskiygipertonik@gmail.com', '', 0, 'Erectile dysfunction treatments available online from TruePills. \r\nDiscreet, next day deli'),
(0, 'Whibiamub', 'floanty@mailport.lat', '', 0, 'Drug Des Discov <a href=https://enhanceyourlife.mom/>buy priligy 60</a> The carrier may no'),
(0, 'Whibiamub', 'floanty@mailport.lat', '', 0, 'Check out pregnenolone review to understand why <a href=https://enhanceyourlife.mom/>prili'),
(0, 'Pascal Eriksson\r\n', 'no-replyxxx@gmail.com', '', 0, 'Hi, \r\n \r\nAre you looking to monetize your website with a high-converting affiliate program'),
(0, 'Amelia Brown', 'ameliabrown12784@gmail.com', '', 0, 'Hi there,\r\n\r\nWe run a Youtube growth service, where we can increase your subscriber count '),
(0, 'Dakota Proby', 'proby.dakota@gmail.com', '', 0, 'Are you worried that you wonâ€™t make payroll this month?\r\n\r\nAre rising business expenses '),
(0, 'Nadya Kable', 'kable.werner@gmail.com', '', 0, 'Hi ,\r\n\r\nCheck this Link ===>  youtubethumbnail.com\r\n'),
(0, 'WlasovFirmaomsi', '14777@loves-ltd.com', '', 0, 'Ð Ð°Ð´Ñ‹ Ð¿Ñ€Ð¸Ð²ÐµÑ‚ÑÑ‚Ð²Ð¾Ð²Ð°Ñ‚ÑŒ Ð²Ð°Ñ Ð½Ð° Ð²Ð°ÑˆÐµÐ¼ Ð¿Ð¾Ñ€Ñ‚Ð°Ð»Ðµ! \r\n \r\nÐÐ³ÐµÐ½'),
(0, 'Lily Lewis', 'ruby.upshaw@msn.com', '', 0, 'Hey,\r\n\r\nWanting to boost your site or business while avoiding breaking the bank? Fiverr fe'),
(0, 'Brett Murillo', 'brett.murillo51@gmail.com', '', 0, 'Software Maintenance - Ensure thï½… longevity É‘nd performance Ð¾f ï½™Î¿ur software with á'),
(0, 'TedGet', 'kayleighbpsteamship@gmail.com', '', 0, 'Hej, jeg Ã¸nskede at kende din pris.'),
(0, 'Thank you for registering - it was incredible and pleasant all the best cucumber  ladonna 220899', '', '', 0, 'User Request to Subscribe Now'),
(0, 'Thank you for registering - it was incredible and pleasant all the best cucumber  ladonna 750544', 'xrum006@24red.ru\r\n', '', 0, 'User Request to Subscribe Now'),
(0, 'Saundra Fowles', 'support@ratingsking.com', '', 0, 'I came across something that could be a game-changer for your business. Itâ€™s a simple, a'),
(0, 'AmandaDoginozya', 'amandaCreanda@gmail.com', '', 0, 'Come closer, find me waiting on my profile. -  http://girlsfunonline.online/?Mapapefe'),
(0, 'Kala Carrier', 'kala.carrier@gmail.com', '', 0, 'Good People + Smart Processes + Working Capital = The Recipe for Business Success.\r\n\r\nBut '),
(0, 'Kekemanny', 'Dryptom@envelopelink.xyz', '', 0, '<a href=https://enhanceyourlife.mom/>buy priligy in the us</a> Neurological Assessments'),
(0, 'Morgan Contreras', 'contreras.morgan@msn.com', '', 0, 'Software Project Rescue - Revive ï½™á§ur stalled projects Ôith Î¿ur software project res'),
(0, '<strong><a href=\"https://pr-site.com\">primer-1</a></strong>', 'thomaskingial13@gmail.com', '', 0, '<strong><a href=\"https://pr-site.com\">primer-8</a></strong>'),
(0, 'Nadya Slade', 'slade.alisa@msn.com', '', 0, 'Hi ,\r\n\r\n\r\nI will help to build chatbot with the power of AI & help you to integrate in you'),
(0, 'Mack Knopwood', 'mack.knopwood@gmail.com', '', 0, 'I can provide large Claude 3.5 sonnet, GPT-4o, and Gemini-1.5-pro-exp models. You can get '),
(0, 'Valeron83seand', 'menhos7@rambler.ru', '', 0, 'Hello. \r\n15,000,000 Welcome Free Coins Countless AMAZING themes Try Your Luck and Play It '),
(0, 'AmandaDoginozy3', 'amandaCreandc@gmail.com', '', 0, 'Curious? Dive deeper and find me here now. -  https://rb.gy/ycu4is/?Mapapefe'),
(0, 'Minerva Bostick', 'bostick.minerva@gmail.com', '', 0, 'Hello diamondcityre.com \r\n\r\nSuccessful sourcing is an artâ€”one that weâ€™ve mastered. Wit'),
(0, 'Martinpurry', 'j.9784.2.59.0.@gmail.com', '', 0, 'What Employing One SSA Disability Attorney Becomes Indispensable. \r\nEngaging One Public As'),
(0, 'Phil Stewart', 'noreplyhere@aol.com', '', 0, 'Looking to get millions of people to like your video affordably?\r\n For Details: http://zwj'),
(0, 'Ronny Sholl', 'sung.sholl@gmail.com', '', 0, 'Social media marketing boosts your business by capturing your target audience with contemp'),
(0, 'AmandaDoginozy1', 'amandaCreandc@gmail.com', '', 0, 'Come closer, find me waiting on my profile. -  https://rb.gy/ycu4is?Mapapefe'),
(0, 'MasonGet', 'yjdisantoyjdissemin@gmail.com', '', 0, 'Hi, roeddwn i eisiau gwybod eich pris.'),
(0, 'Rita Fiore', 'rita.fiore@googlemail.com', '', 0, 'Are you worried that you wonâ€™t make payroll this month?\r\n\r\nAre rising business expenses '),
(0, 'TedGet', 'kayleighbpsteamship@gmail.com', '', 0, 'Kaixo, zure prezioa jakin nahi nuen.'),
(0, 'Brian And Dee Balfe', 'balfe.mattie@yahoo.com', '', 0, 'The TikTok social media platform has seen explosive growth over the last two years. It now'),
(0, 'Lupita Millington', 'millington.lupita@yahoo.com', '', 0, 'Fastest Way to Build a Profitable Business!\r\n\r\nIf youâ€™re new to online marketing, youâ€™'),
(0, 'licMoorce', 'pramest@mailnest.xyz', '', 0, '<a href=https://enhanceyourlife.mom/>priligy equivalent</a> Darrin, USA 2022 06 27 03 33 4');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_images`
--

CREATE TABLE `gallery_images` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Al Furjaan Area', '2023-11-02 19:00:09', '2023-11-02 19:00:09'),
(3, 'Emaar Beachfront', '2023-11-03 18:41:45', '2023-11-03 18:41:45'),
(4, 'Sobha Hartland 2', '2023-11-06 16:02:13', '2023-11-08 16:48:59'),
(5, 'Abu Dhabi', '2023-11-07 13:52:11', '2023-11-07 13:52:11'),
(6, 'Jumeirah Golf Estates', '2023-11-07 14:31:36', '2023-11-07 14:31:36'),
(7, 'Wadi Al Safa', '2023-11-07 16:20:49', '2023-11-07 16:20:49'),
(8, 'Dubai South', '2023-11-08 16:33:32', '2023-11-08 16:33:32'),
(9, 'Dubailand', '2023-11-08 16:39:50', '2023-11-08 16:39:50'),
(10, 'Dubai Maritime City', '2023-11-08 16:41:40', '2023-11-08 16:41:40'),
(11, 'Palm Jebel Ali', '2023-11-08 16:46:30', '2023-11-08 16:46:30'),
(12, 'Sheikh Zayed Road', '2023-11-08 16:52:38', '2023-11-08 16:52:38'),
(13, 'Dubai Marina', '2023-11-09 17:26:37', '2023-11-09 17:26:37'),
(14, 'The Valley', '2023-11-12 12:02:06', '2023-11-12 12:02:06'),
(15, 'The Oasis by Emaar', '2023-11-12 12:05:07', '2023-11-12 12:05:07'),
(16, 'Emaar South', '2023-11-12 13:07:15', '2023-11-16 13:40:42'),
(17, 'Dubai-Al Ain Road', '2023-11-12 15:32:03', '2023-11-12 15:32:03'),
(18, 'Arabian Ranches 3', '2023-11-13 06:43:28', '2023-11-13 06:43:28'),
(19, 'Rashid Yachts & Marina', '2023-11-13 11:50:27', '2023-11-13 11:50:27'),
(20, 'Dubai Hills Estate', '2023-11-13 12:55:27', '2023-11-13 12:55:27'),
(21, 'Dubai Creek Harbour', '2023-11-13 13:43:10', '2023-11-13 13:43:10'),
(22, 'Jebel Ali', '2023-11-14 10:44:21', '2023-11-14 10:44:21'),
(23, 'Downtown Dubai', '2023-11-16 16:09:05', '2023-11-16 16:09:05'),
(24, 'Damac Lagoons', '2023-11-16 16:38:55', '2023-11-21 16:43:31'),
(25, 'Al Marjan Island, Ras Al Khaimah', '2023-11-30 18:38:01', '2023-11-30 18:38:30'),
(26, 'Dubai Islands', '2023-12-26 11:55:24', '2023-12-26 11:55:24'),
(27, 'Dubai Investment Park', '2024-05-21 16:53:19', '2024-05-21 16:53:19'),
(28, 'Town Square Dubai', '2024-09-20 14:25:13', '2024-09-20 14:25:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_20_112351_create_doctors_table', 1),
(6, '2022_12_20_183921_add_role_to_users_table', 1),
(7, '2022_12_21_072447_create_patients_table', 1),
(8, '2022_12_21_200720_add_status_to_patients_table', 1),
(9, '2023_01_04_185641_create_services_table', 1),
(10, '2023_01_06_120445_add_time_to_services', 1),
(11, '2023_01_06_120727_add_day_off_to_services', 1);

-- --------------------------------------------------------

--
-- Table structure for table `off_plans`
--

CREATE TABLE `off_plans` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `developer` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `development_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `property_type` int(3) DEFAULT 0,
  `property_sub_type` varchar(500) NOT NULL DEFAULT '',
  `short_description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `completion_dat` date NOT NULL,
  `location` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `longitude` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `latitude` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `down_payment` int(11) DEFAULT NULL,
  `banner_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img5` varchar(255) NOT NULL DEFAULT '',
  `img6` varchar(255) NOT NULL DEFAULT '',
  `img7` varchar(255) NOT NULL DEFAULT '',
  `img8` varchar(255) NOT NULL DEFAULT '',
  `ame1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ame2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ame3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ame4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ame5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ame6` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `location_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `bed_rooms` varchar(500) NOT NULL DEFAULT '',
  `bath_rooms` int(11) DEFAULT NULL,
  `measurements` int(11) DEFAULT NULL,
  `video_url` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `prime_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `prime_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `marina_min` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `downtown_min` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `airport_min` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `jumeriah_min` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `ame_title1` text DEFAULT NULL,
  `ame_title2` text DEFAULT NULL,
  `ame_title3` text DEFAULT NULL,
  `ame_title4` text DEFAULT NULL,
  `ame_title5` text DEFAULT NULL,
  `ame_title6` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `off_plans`
--

INSERT INTO `off_plans` (`id`, `title`, `price`, `plan`, `developer`, `development_type`, `property_type`, `property_sub_type`, `short_description`, `description`, `completion_dat`, `location`, `longitude`, `latitude`, `down_payment`, `banner_img`, `img1`, `img2`, `img3`, `img4`, `img5`, `img6`, `img7`, `img8`, `ame1`, `ame2`, `ame3`, `ame4`, `ame5`, `ame6`, `location_img`, `status`, `created_at`, `updated_at`, `bed_rooms`, `bath_rooms`, `measurements`, `video_url`, `prime_title`, `prime_description`, `marina_min`, `downtown_min`, `airport_min`, `jumeriah_min`, `ame_title1`, `ame_title2`, `ame_title3`, `ame_title4`, `ame_title5`, `ame_title6`) VALUES
(1, 'Azizi Venice', '550000', '50 / 50', 7, 'Studio,1-3 BR Apartments & Villas', 1, '6,7', 'Studio, 1-3 bedroom waterfront apartments and villas in a blue lagoon community.', '<p class=\"MsoNormal\" style=\"text-align: left;\"><span style=\"font-family: Roboto;\">Azizi Venice in Dubai South represents Azizi Developments\' latest venture, offering a blend of exquisite waterfront residential options, ranging from cozy studio apartments to opulent 1-3 bedroom units and beachfront villas. The residential towers, soaring up to 22 stories, promise an unparalleled living experience, seamlessly fusing contemporary architectural excellence with timeless sophistication along the picturesque oceanfront.<br /><br /></span><strong><span style=\"font-family: Roboto;\">&nbsp;<br />Key Highlights:<br /><br /></span></strong><span style=\"font-family: Roboto; text-indent: -0.25in;\">Offers modern and spacious studio units, 1-3-bedroom apartments, and beachfront villas.<br /></span><span style=\"font-family: Roboto; text-indent: -0.25in;\">Features an extensive lagoon, stretching over 18 kilometers, with oceanfront artificial waves for leisure and entertainment.<br /></span><span style=\"font-family: Roboto; text-indent: -0.25in;\">Includes an innovative and remarkable glass-domed AC boulevard, extending over 700 meters.<br /></span><span style=\"font-family: Roboto; text-indent: -0.25in;\">Offers top-tier amenities, including medical facilities, children\'s recreational areas, fitness centers, high-end dining establishments, and more.<br /></span><span style=\"font-family: Roboto; text-indent: -0.25in;\">Home to the Dubai South Opera House, and a network of picturesque aquatic channels and serene waterfront lagoons.</span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '2025-12-31', 8, '', '', 10, '169899954312.png', '169901770581.png', '169899954342.png', '169901770522.png', '169899954357.png', '', '', '', '', '169935575815.png', '169935507853.png', '169935575884.png', '169935507882.png', '169935507873.png', '169935575833.png', '169899954399.jpg', 0, '2023-11-03 12:19:03', '2024-03-14 08:49:34', '-1,1,2,3', NULL, NULL, '<iframe width=\"560\" height=\"415\" src=\"https://www.youtube.com/embed/tgb4vP6RIqc?autoplay=1\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Connectivity', 'Nestled in the breathtaking Arabian sands of Dubai South, Azizi Venice is poised to be an integral part of a smart and forward-thinking metropolis, spanning over 136 hectares.', '', '', '', '', 'Private Hospital', 'Opera House', 'International School', 'Retail boulevard', 'Parks and green spaces', 'Cable car'),
(5, 'Sobha Reserve at Wadi Al Safa Dubailand Dubai', '7680000', '80 / 20', 9, '4-6 BR Villas', 1, '7', 'The Sobha Reserve in Wadi Al Safa 2, Dubailand is an excellent development that features over 300 villas that offer a variety of 4, 5, and 6-bedroom', '<p>The Sobha Reserve in Wadi Al Safa 2, Dubailand is an excellent development that features over <strong>300 villas</strong> that offer a variety of <strong>4, 5, and 6-bedroom </strong>Sobha Group flagship villas. Every single property is equipped with a private pool and lawn space. Dubailand offers you a wonderful conventional lifestyle, with amazing facilities and equipment to assist you in your efforts, and a place to enjoy various sports with your family.<br /><br /></p>\r\n<p>An exquisite abode with a niche set of exquisite villas situated in the heart of an idyllic green luxury gated community that encompasses bouldering walls, exotic flower-patterned clusters, and tree-lined walkways.</p>', '2026-06-30', 9, '', '', 20, '169901666870.png', '169901666884.png', '169901666837.png', '169901666818.png', '169901666886.png', '', '', '', '', '169935668554.png', '169935668587.png', '169935668574.png', '169935668566.png', '169935668539.png', '169935668584.png', '169901666887.png', 0, '2023-11-03 17:04:28', '2024-04-29 12:42:09', '4,6', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/dPh__UNqg0s?si=e9kEnyGHLxKdCy0q\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Connectivity', 'An excellent step forward The Sobha Reserve in Wadi Al Safa 2, Dubailand offers a selection of 4, 5, and 6-bedroom Sobha Group flagship villas', '', '', '', '', 'Swimming Pool', 'Beach Access', 'Static Outdoor Gym', 'Paddle Tennis', 'Zen & Yoga Garden', 'Spa and Sauna'),
(6, 'Oceanz by Danube', '1100000', '65 / 35', 8, 'Studio, 1, 2 & 3 BR Apartment + Oceanic Villa', 1, '6,7', 'Oceanz by Danube is a sleek and striking high-rise living development with luxurious', '<p>Oceanz by Danube is a sleek and striking high-rise living development with luxurious <strong>Studios, 1, 2 &amp; 3 bedroom</strong> apartments at the coast of Dubai Maritime City. Enjoy an unparalleled lifestyle Luxury interiors with exceptionally designed apartments by Tonino Lamborghini Casa and a range of <strong>40+ Amenities</strong>. Oceanz by Danube offers an easy and <strong>1% Monthly Payment</strong> Plan option.<br /><br /><strong>Dubai Maritime City\'s</strong> strategic location presents a compelling opportunity for investors and buyers alike, promising remarkable capital appreciation. This bustling waterfront district is not only a hub for maritime activities but also a haven for smart real estate investments.</p>', '2027-03-31', 10, '', '', 10, '169901942092.png', '169935179371.png', '169901893689.png', '169901893673.png', '169901893628.png', '', '', '', '', '169901893691.png', '169901893678.png', '169901893660.png', '169901893686.png', '169935756093.png', '169935756099.png', '169901893617.jpg', 0, '2023-11-03 17:42:16', '2023-12-01 11:54:29', '-1,1,2,3', NULL, NULL, '<iframe width=\"560\" height=\"415\" src=\"https://www.youtube.com/embed/GJ7bKu0pv3I?si=MgS485ln7bSBX9f1&amp;controls=0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Prime Location', 'Dubai Maritime City is a testament to Dubai\'s commitment to diversify its economy and become a global maritime and logistics hub. It plays a vital role in supporting the maritime industry, fostering business growth, and contributing to the overall economic development of the Emirate and the United Arab Emirates as a whole.', '', '', '', '', 'Schools and Institutes', 'Water Activity', 'Sports Court', 'Marina & Yacht Club', 'Spa and Sauna', 'Covered Parking'),
(7, 'Bayview By Address Resorts', '2900000', '90 / 10', 6, '1-3 BR Apartments & 5-6 BR Penthouses', 1, '6,8', 'Experience the pinnacle of luxury living by the sea with Emaar Bayview Tower 2 by Address Resorts offering 1 to 3 bedroom apartments and 5 & 6 bedroom penthouses at Emaar Beachfront.', '<p>Experience the pinnacle of luxury living by the sea with Emaar Bayview by Address Resorts offering <strong>1 to 3 bedroom apartments</strong> and <strong>5 &amp; 6 bedroom</strong> penthouses at Emaar Beachfront. Bayview by Address Resorts at Emaar Beachfront carries the future in its details and promises a life that will fulfil your dreams of luxurious living by the sea in your luxurious, fully-furnished Address Hotels + Resorts-branded home.</p>\r\n<p>Savour the pleasures of retail therapy at the promenade or indulge in leisurely lunches at sophisticated restaurants and cafes.A true gem of luxury living offers breathtaking panoramas and an awe-inspiring setting, overlooking the azure waters of the Arabian Gulf.</p>', '2028-07-31', 3, '', '', 10, '169902122919.png', '170066254649.png', '169902122954.png', '169935193830.png', '1700662546100.png', '170066254635.jpg', '170066254668.jpg', '', '', '169935830795.png', '169935840134.png', '169935830790.png', '169935830741.png', '169935830726.png', '169935830718.png', '169902180059.png', 0, '2023-11-03 18:20:29', '2023-12-01 11:59:04', '1,2,3,5,6', NULL, NULL, '<iframe width=\"560\" height=\"415\" src=\"https://www.youtube.com/embed/aF8ypz8fQR8?si=unnZkzOP4UdHbfdW&amp;controls=0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Prime Location', 'Come home to Dubai\'s most exclusive island, located within the new maritime centre of the UAE, Dubai Harbour.', '', '', '', '', 'Infinity Pools', 'Restaurants & Cafes', 'Kids\' Playground', 'BBQ Pods', 'Landscaped Garden', '2 km Private Pristine Beach'),
(10, 'Damac Lagoons Morocco', '2990000', '60 / 40', 10, '5 -7 BR Villas & Townhouses', 1, '7,9', 'Embark on a Mediterranean journey and experience the alluring charm of sun-kissed sands, calm waters, cobblestone streets and island living at DAMAC Lagoons – Dubai\'s most awaited water-inspired community.', '<p><strong>DAMAC Lagoons</strong>&nbsp; project is a beautiful Mediterranean-inspired residential development, situated close to DAMAC Hills, offering eight clusters representing some of the most stunning and lively destinations in the world. Experience a community full of serene water features and lush greenery, where every day is a holiday and every moment is a chance to live the good life.<br />With a perfect blend of contemporary living and traditional Mediterranean charm, DAMAC Lagoons offers the beauty of clear lagoons, lush landscapes and serene, calming vibes. Escape from the bustle of the city and discover luxury villas that transport you to faraway lands, where every day feels like a dream.</p>', '2026-11-30', 24, '', '', 24, '169926190695.png', '169926190655.png', '169926220071.png', '169926190640.png', '1699261906100.png', '169926190664.png', '', '', '', '169936023771.png', '169936023755.png', '169936023748.png', '169926190685.png', '169936193763.png', '169936023768.png', '169926190692.png', 0, '2023-11-06 14:11:46', '2023-12-01 11:59:28', '5,6,7', NULL, NULL, '<iframe width=\"560\" height=\"415\" src=\"https://www.youtube.com/embed/kdbU9rMhzzw?si=Ightz-T_yVYhMnhf&amp;controls=0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Prime Location', 'The DAMAC Lagoons community is located amidst the picturesque surroundings of DAMAC Hills, Tilal Al Ghaf, and Remraam. Its strategic location allows residents to easily access any part of Dubai, with Downtown Dubai, Business Bay, and Dubai International Airport being just 35-minutes away from the community. Dubai Marina is a 30-minute drive away, while Deira can be reached within 40 minutes.', '', '', '', '', 'Landscaped Areas', 'Restaurants & Cafes', 'Kids\' Playground', 'Swimming Pools', 'Outdoor yoga studio', 'Sports courts'),
(11, '310 Riverside Crescent', '1490000', '80 / 20', 9, '1 - 2 BR Apartments', 1, '6', '310 Riverside Crescent is gracefully enveloped by a pristine beach, a serene blue lagoon, expansive green spaces, and vibrant lush landscapes.', '<p>Unwind, rejuvenate, and relish life\'s simple pleasures. <strong>310 Riverside Crescent</strong>, the latest inclusion in the tranquil Sobha Hartland community, spans over <strong>8 million square feet</strong>, with an unwavering commitment to promoting health and well-being. Select from a range of <strong>1 and 2 bedroom </strong>apartments featuring top-notch finishes, premium materials, and contemporary layouts. <br />Yet, the allure doesn\'t stop there &ndash; you\'ll also enjoy the serenity of waterfront views, doorstep access to crystal-clear lagoons, and beautifully landscaped greenery for leisurely strolls.</p>', '2028-04-30', 4, '', '', 20, '169927037829.png', '169927037833.png', '169927037827.png', '169934274131.png', '169927037870.png', '', '', '', '', '169936093548.png', '169936093517.png', '169936093567.png', '169936093574.png', '169936262748.png', '169936093577.png', '169927037815.png', 0, '2023-11-06 16:32:58', '2023-12-01 11:59:47', '1,2', NULL, NULL, '<iframe width=\"560\" height=\"415\" src=\"https://www.youtube.com/embed/TVeBHhYvQkk?si=5RMbfmDs3zeskOKH&amp;controls=0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Location', 'Discover the extraordinary in this one-of-a-kind waterfront community, where a new tower with panoramic views stands as an exceptional addition, living up to all your expectations.', '', '', '', '', 'Infinity pool', 'Barbecue area', 'Sports courts', 'Sky gardens', 'Parks and walkways', 'Kids play Area'),
(12, '320 Riverside Crescent', '1360000', '80 / 20', 9, '1- 3 BR Apartments', 1, '6', '320 Riverside Crescent is a high rise tower offering 1, 2 and 3 bedroom apartments with elegant finishes and world class facilities.', '<p>Prepare for an exciting addition to <strong>Sobha Hartland </strong>that lives up to its fantastic appearance. Welcome to <strong>320 Riverside Crescent</strong>, a soaring high-rise tower presenting a range of <strong>1, 2, </strong>and<strong> 3 bedroom apartments</strong> adorned with exquisite finishes and top-tier amenities. Meticulously designed to prioritize your well-being and comfort, anticipate a life of luxury, breathtaking waterfront vistas, and an unparalleled living experience.</p>', '2027-07-31', 4, '', '', 20, '169927201354.png', '169934284370.png', '169927201398.png', '169927201317.png', '169927201339.png', '', '', '', '', '169936302821.png', '169936293759.png', '169936302817.png', '169936293767.png', '169936293714.png', '169936302880.png', '169927201358.png', 0, '2023-11-06 17:00:13', '2023-12-01 12:00:55', '1,2,3', NULL, NULL, '', 'Prime Location', 'Nestled conveniently close to Ras Al Khor Road, 320 Riverside Crescent provides effortless access to everything that Dubai has in store for you.', '', '', '', '', 'Parks and walkways', 'Infinity pool', 'Wellness spaces', 'Sports Courts', 'Barbecue Area', 'Retail and Restaurant Arena'),
(13, '330 Riverside Crescent', '1570000', '80 / 20', 9, '1 & 2 BR Apartments', 1, '6', '330 Riverside Crescent is your passport to a waterfront lifestyle brimming with serenity and elegance. This 57-story architectural marvel offers unparalleled craftsmanship, providing unobstructed vistas of pristine waters and the captivating city lights', '<p><strong>330 Riverside Crescent</strong> is your passport to a waterfront lifestyle brimming with serenity and elegance. This <strong>57-story architectural</strong> marvel offers unparalleled craftsmanship, providing unobstructed vistas of pristine waters and the captivating city lights. Situated within Sobha Hartland II, 330 Riverside Crescent is just moments away from Downtown Dubai and Dubai Creek Harbour. Here, you\'ll find thoughtfully designed residences featuring <strong>1-2 bedroom apartments</strong>, each showcasing breathtaking panoramas that encapsulate the entire experience.</p>', '2027-06-30', 4, '', '', 20, '169927777373.png', '169934295344.png', '169927777390.png', '169927777397.png', '169927777388.png', '', '', '', '', '169927777379.png', '169936106875.png', '169936106816.png', '169936106836.png', '169936106874.png', '169936106890.png', '169927777380.png', 0, '2023-11-06 18:36:13', '2023-12-01 12:01:47', '1,2', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/zEYwpHByxp4?si=oGvQ_EJr8h9reNn8\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Prime Location', 'Experience life at 330 Riverside Crescent, where you\'ll immerse yourself in unparalleled beachfront vistas from the interconnected four-tiered open terrace gardens that seamlessly blend with the vibrant retail and restaurant spaces on the ground level.', '', '', '', '', 'Parks and walkways', 'Infinity pool', 'Sky gardens', 'Open terrace gardens', 'Sports courts', 'Retail and restaurant arena'),
(14, '340 Riverside Crescent', '1300000', '80 / 20', 9, '1 - 2 BR Apartments', 1, '6', '340 Riverside Crescent is the newest addition to Sobha Hartland II, a serene community designed with comfort in mind.', '<p>340 Riverside Crescent marks the latest chapter in the <strong>Sobha Hartland II</strong> community, a tranquil enclave meticulously crafted to prioritize your peace and contentment. Within this high-rise tower, discover an extraordinary way of life, featuring <strong>1 and 2-bedroom apartments</strong> adorned with lavish touches reminiscent of a luxury hotel. Immerse yourself in a realm of opulence, complemented by a wealth of premium amenities and breathtaking vistas of the waterfront.</p>', '2027-09-30', 4, '', '', 20, '169934259550.png', '169934259534.png', '169934259547.png', '169934248372.png', '169934248319.png', '', '', '', '', '169936113833.png', '169936113869.png', '169936113838.png', '1699342483100.png', '169936113847.png', '169936113875.png', '169934248354.png', 0, '2023-11-07 12:34:43', '2023-12-01 12:02:48', '1,2', NULL, NULL, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/zEYwpHByxp4?si=oGvQ_EJr8h9reNn8\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Prime Location', 'Located near Ras Al Khor Road, 340 Riverside Crescent enjoys easy access to all that Dubai has to offer.', '', '', '', '', 'Parks and walkways', 'Infinity pool', 'Sky gardens', 'Water obstacle course', 'Barbecue area', 'Sports courts'),
(15, 'Coral Reef by DAMAC', '1657000', '70 / 30', 10, '1, 2, & 3 BR Apartments', 1, '6', 'Soaring gracefully to 54 stories along the historic shores of Old Dubai, you\'ll find a remarkable addition to the residential landscape by DAMAC.Soaring gracefully to 54 stories along the historic shores of Old Dubai, you\'ll find a remarkable addition to the residential landscape by DAMAC.', '<p>Ascending majestically to 54 stories along the iconic shores of Old Dubai, a residential marvel by <strong>DAMAC</strong> takes center stage. Within this distinctive tower, you\'ll uncover a selection of <strong>1, 2, and 3-bedroom</strong> apartments, each intricately designed to draw inspiration from the fluidity of the sea, vivid hues, and the enchanting <strong>Coral Reef</strong>&nbsp;that grace the depths of the ocean.<br />Each and every residence has been meticulously crafted to exemplify the pinnacle of excellence, boasting opulent finishes and a sophisticated color scheme reminiscent of a lush tropical resort. Yearning for an ideal spot to savor your morning coffee? Just venture onto your balcony and indulge in breathtaking vistas, bask in the warm embrace of sunlight, and relish the invigorating sea breeze. Here, you\'ll find a seamless fusion of island-inspired serenity and the epitome of luxury living.</p>', '2028-03-31', 10, '', '', 20, '169934475098.png', '169934475097.png', '169934475045.png', '169934475023.png', '169934475069.png', '', '', '', '', '169936041318.png', '169936041351.png', '169936041389.png', '169934475025.png', '169936041381.png', '169936041347.png', '169934475049.jpg', 0, '2023-11-07 13:12:30', '2023-12-01 12:04:19', '1,2,3', NULL, NULL, '<iframe width=\"560\" height=\"415\" src=\"https://www.youtube.com/embed/oYGwasmi9gk?si=IKIo3srPMPIaR7ef&amp;controls=0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Prime Location', 'Nestled within the prestigious Dubai Maritime City, Coral Reef provides a serene residence with convenient access to both the timeless charm of the city\'s historic heart and the vibrancy of its modern districts', '', '', '', '', 'Swimming pools', 'Outdoor cinema', 'Coral tunnel', 'Lounge areas', 'Fully equipped gym', 'Kids play area'),
(16, 'Volta By Damac', '1670000', '50 / 50', 10, '1-4 BR Apartments', 1, '6', 'Volta Heights in the Heart of Downtown Dubai: A Visionary Residential Project by Damac Properties', '<p>Volta Heights in the Heart of Downtown Dubai: A Visionary Residential Project by Damac Properties\"</p>\r\n<p>Nestled in the vibrant heart of Dubai\'s bustling downtown area, Damac Properties presents Volta Heights, an avant-garde residential development that redefines luxurious living. Offering a range of opulent homes, Volta Heights seamlessly blends tranquility with modern amenities, ensuring an immersive and dynamic living experience for its residents.</p>\r\n<p><strong>Discover a World of Serenity:</strong></p>\r\n<p>Volta Heights provides an oasis of calm amidst the hustle and bustle of the city. With meticulously designed living spaces, residents can escape to a world of serenity where their well-being takes center stage. Each home is a sanctuary, offering respite from the daily grind.</p>\r\n<p><strong>Unmatched Convenience:</strong><br />Living at Volta Heights means enjoying unparalleled convenience. From world-class shopping and dining options to state-of-the-art fitness centers and leisure facilities, everything you need is just steps away. Your daily life becomes effortless, allowing you to focus on what truly matters.</p>\r\n<p><strong>A Hub of Entertainment:</strong><br />Experience a world of entertainment like never before. Volta Heights places you at the center of an exciting environment with endless recreational opportunities. From cultural events to nightlife, this is the perfect place for those seeking an active and exhilarating lifestyle.</p>\r\n<p>In conclusion, Volta Heights at Downtown Dubai is not just a residential project; it\'s a visionary concept that offers a haven of peace, unmatched convenience, and a hub of entertainment in the heart of the city. Embrace the future of luxury living with Damac Properties at Volta Heights.</p>', '2028-03-31', 12, '', '', 20, '169934693490.png', '169934693490.png', '169934693448.png', '169934693434.png', '169934693448.png', '', '', '', '', '169936066273.png', '169936066223.png', '169936066299.png', '169936066287.png', '169936066259.png', '169936066281.png', '169934693454.jpg', 0, '2023-11-07 13:48:54', '2023-12-01 12:05:06', '1,2,3,4', NULL, NULL, '<iframe width=\"560\" height=\"415\" src=\"https://www.youtube.com/embed/ndNL_U9pCrI?si=5L6Ie69C-LG7woPp&amp;controls=0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'A Highly Coveted Location', 'Downtown Dubai is a vibrant and iconic district located in the heart of Dubai, United Arab Emirates. It is known for its luxurious lifestyle, modern architecture, and being home to some of the city\'s most famous landmarks.', '', '', '', '', 'Sky Pool', 'Aqua Massage', 'Cryo Spa', 'Gymnastics Areas', 'Sport Facilities', 'BBQ'),
(17, 'Gardenia Bay', '805000', '50 / 50', 17, '1, 2, & 3 BR Apartments', 1, '6', 'Your Tropical Oasis in Yas Island Gardenia Bay, Where Dreams Come True.', '<p>Have you ever imagined living in a tropical paradise? <strong>Gardenia Bay </strong>is here to turn your dreams into reality. Nestled in the heart of the UAE\'s dynamic capital, this stunning new project is situated on Yas Island, a sun-soaked destination cherished by both its residents and visitors.<br />At Gardenia Bay, we believe that your living space should reflect your unique style and preferences. That\'s why we offer you the freedom to customize your home. Select from our range of <strong>1, 2, or 3 bedroom</strong> apartments and make it your own by choosing from our carefully curated color palettes, which include inviting warm hues and refreshing, light tones.<br /><br /></p>\r\n<p><strong>A Variety of Layouts to Suit Your Lifestyle:</strong><br />We understand that every resident has their own vision of an ideal living space. That\'s why Gardenia Bay offers a variety of layouts to cater to your specific needs and desires. Whether you prefer a corner apartment for extra privacy and stunning views or a ground-floor residence for easy access to lush gardens and open spaces, you\'ll find the perfect fit that complements your lifestyle.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Your Dream Home Awaits:<br /></strong>Gardenia Bay is more than just a place to live; it\'s a canvas for you to create your dream home. Your choice of apartment size and color palette, along with a layout that suits your lifestyle, ensures that every resident can craft a space that\'s uniquely theirs.</p>\r\n<p>In summary, at Gardenia Bay, your living space is an expression of your individuality. Choose from a range of 1, 2, or 3 bedroom apartments, customize your color palette, and select a layout that suits your lifestyle. Your dream home is within reach at Gardenia Bay, where personalization meets luxury.</p>', '2027-12-31', 5, '', '', 5, '169934890141.png', '169934877949.png', '169934877974.png', '169934905557.png', '169934877972.png', '169934877931.png', '', '', '', '169936050361.png', '169936050357.png', '169994643458.png', '169936050319.png', '169936050344.png', '169936050369.png', '169934877993.jpg', 0, '2023-11-07 14:19:39', '2023-12-01 12:11:04', '1,2,3', NULL, NULL, '<iframe width=\"560\" height=\"415\" src=\"https://www.youtube.com/embed/INTYwHuGPOg?si=XMpPhW9hvKqvVMM2&amp;controls=0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Prime Location', 'Yas Island is one of Abu Dhabi’s most renowned locations, and it’s just 30 minutes away from Downtown Abu Dhabi and 50 minutes away from Dubai.', '', '', '', '', 'Swimming pools', 'Beach club access', 'Security', 'Dining & Entertainment', 'Fitness spaces', 'Waterfront promenade'),
(18, 'Jouri Hills Arada', '4900000', '60 / 40', 18, '3 - 6 BR Villas & Townhouses', 1, '7,9', 'Jouri Hills, Your Gateway to Luxury Living in Jumeirah Golf Estates. A residential project, is set to redefine the standards of luxury living in this exclusive enclave.', '<p>Introducing <strong>Jouri Hills</strong>, Your Gateway to Luxury Living in Jumeirah Golf Estates.</p>\r\n<p>Jumeirah Golf Estates, renowned as a world-class residential golf destination spanning over <strong>40 million square feet</strong>, is about to welcome a remarkable addition to its prestigious community. Jouri Hills, a residential project, is set to redefine the standards of luxury living in this exclusive enclave. Developed by Arada, a name synonymous with premium projects in the emirate of Sharjah, Jouri Hills marks Arada\'s inaugural foray into the dynamic real estate landscape of Dubai.<br />Residences will be built in a modern architectural style. Future occupants can choose a unit from <strong>3&ndash;4 bedroom townhouses</strong>, <strong>5-bedroom villas</strong> and <strong>signature villas</strong>, as well as <strong>6-bedroom mansions</strong>. Each residence will feature a modern design. The living area of the properties ranges from <strong>3,160 sq. ft</strong> to <strong>14,321 sq. ft</strong>.<br />At Jumeirah Golf Estates, you\'ll discover an extensive array of world-class facilities that redefine luxury living. This exclusive enclave offers residents an unparalleled lifestyle, complete with a variety of amenities designed to cater to their every need and desire.<br /><br /><br /></p>', '2025-06-30', 6, '', '', 20, '169935110314.png', '169935110390.png', '169935110392.png', '169935110346.png', '169935110349.png', '', '', '', '', '169936161673.png', '169936161688.png', '169936161660.png', '169936161667.png', '169936161685.png', '169936161666.png', '169935110361.png', 0, '2023-11-07 14:58:23', '2023-12-01 12:12:19', '3,4,5,6', NULL, NULL, '<iframe width=\"560\" height=\"415\" src=\"https://www.youtube.com/embed/Q2uk7AOcT30?si=opXeF2klUYLCt3l_&amp;controls=0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Prime Location', 'Jouri Hills is located in Jumeirah Golf Estates, one of the best golfing destinations in the world. Travel time to Downtown Dubai takes about 25 minutes, while Dubai Marina is reachable within a 20-minute drive. DXB Airport will take 30 minutes to get to by car.', '', '', '', '', 'Green Areas', 'Golf Course', 'Swimming  Pools', 'Kids Play Zone', 'Fitness Centre', 'Padel Tennis Courts'),
(21, 'Alana The Valley', '3500000', '90 / 10', 6, '3, 4 & 5 - Bedroom Twin Villas', 1, '7', 'Alana at The Valley is the latest residential development by Emaar Properties that offers luxury collection of 3, 4, and 5-bedroom villas in Dubai.', '<p>Introducing <strong>Alana at The Valley</strong>, the epitome of opulent living in Dubai crafted by Emaar Properties. This newest residential marvel boasts an exquisite selection of <strong>3, 4, and 5-bedroom villas</strong>, seamlessly blending luxury with nature\'s symphony to redefine your residential experience.</p>\r\n<p>Positioned strategically along the Dubai-Al Ain Road, a vital link between Dubai and Abu Dhabi, The Valley ensures seamless connectivity to key areas in the city. The convenience of exploration and daily commutes is unparalleled, giving residents the freedom to immerse themselves in the dynamic pulse of Dubai.</p>\r\n<p>Nestled within expansive, glistening sands and verdant open spaces, The Valley emerges as a charming new town, a sanctuary where life draws inspiration from its surroundings. These villas transcend mere structures; they are meticulously crafted works of art that captivate with unparalleled craftsmanship and grace.</p>\r\n<p>Each villa within this exclusive development is a testament to creativity without bounds, a perfect fusion of innovation and style. Thoughtfully designed layouts cater to the most discerning tastes, offering a unique living experience that is both luxurious and practical.</p>\r\n<p>Upon entering The Valley, a sense of tranquility envelops you as you are greeted by elegant neighborhoods and breathtaking views of shimmering waters. This is your final opportunity to embrace waterfront living at The Valley, an unparalleled chance to seize the perfect blend of sophistication and natural beauty.</p>\r\n<p>Immerse yourself in the last opportunity to experience unparalleled luxury at Alana at The Valley &ndash; where each villa is not just a home but a masterpiece waiting to be discovered.</p>', '2027-05-31', 17, '', '', 10, '169977248839.png', '170012390228.png', '169977248857.png', '169977248870.png', '169977248845.png', '', '', '', '', '170012344949.png', '170012344961.png', '170012344967.png', '170012344993.png', '170012344961.png', '170012344995.png', '169977248876.png', 0, '2023-11-12 12:01:28', '2023-12-01 12:12:59', '3,4,5', NULL, NULL, '', 'Prime Location', 'With easy access to the Dubai-Al Ain Road, The Valley offers privacy and serenity with easy access to all that the emirate has to offer.', '', '', '', '', 'Dining Outlets', 'Green Surrounding', 'Gymnasium', 'Aqua SPA', 'Swimming Pool', 'Parking Facility'),
(22, 'Palmiera The Oasis by Emaar', '8500000', '85 / 15', 6, '4 & 5 BR Villas', 1, '7', 'Palmiera Villas at The Oasis by Emaar Properties is a newly launched magnificent residential development that features 4 & 5 bedroom villas at service', '<p><strong>Palmiera Villas </strong>at The Oasis by Emaar Properties is a newly launched magnificent residential development that features <strong>4 &amp; 5 bedroom villas</strong> at service. The architectural masterpieces and exquisitely designed environment present an exceptional living experience within a private, luxury resort-like setting, surrounded by lush greenery, serene waterways, and world-class amenities.</p>\r\n<p><br />One of the standout features is its strategic location. Situated near major transportation routes like D54 and E44, residents enjoy easy access to key areas of Dubai. The Al Maktoum International Airport is just minutes&rsquo; drive away, making international travel a breeze. For those seeking retail therapy, Dubai Marina and Dubai Marina Mall are just a 28-minutes&rsquo; drive away, while the heart of the city, Downtown Dubai, and Dubai Mall are reachable within 35 minutes.</p>', '2027-12-31', 9, '', '', 10, '169987013032.png', '170012609422.png', '169987013024.png', '169987013064.png', '169987013069.png', '', '', '', '', '169994636151.png', '169994636199.png', '169994636132.png', '169994636163.png', '169994636120.png', '169994636132.png', '169977433388.png', 0, '2023-11-12 12:32:13', '2023-12-01 12:13:19', '4,5', NULL, 8966, '<iframe width=\"560\" height=\"415\" src=\"https://www.youtube.com/embed/cgIA96s41Zg?si=IgHV9BtqbK0JcTD2&amp;controls=0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Prime Location', 'A short 18-minute drive to Al Maktoum International Airport, Palmiera The Oasis is conveniently located with proximity to major transport routes like D54 and E44. It is also within easy reach of major Dubai hot spots like Dubai Marina (28 minutes) and Downtown Dubai (35 minutes) - the heart of the city.', '', '', '', '', 'Beach Access', 'Gymnasium', 'Sports Court', 'Water Activity', 'Wellness and spa facilities', 'Retail Outlets'),
(23, 'Fairway Villas 2', '3200000', '85 / 15', 6, '3 & 4 BR Villas and 4 BR Golf Suites', 1, '7', 'Fairway Villas 2 at Emaar South is the latest standard residential development propelled by Emaar Properties offering 3 and 4 bedroom villas with golf course views.', '<p>Introducing Fairway Villas 2, the latest benchmark in residential excellence from Emaar Properties. Discover a harmonious blend of luxury and nature in these 3 and 4-bedroom villas boasting captivating golf course views. This exclusive addition to the community not only offers unparalleled amenities but also reflects a steadfast commitment to sustainability, promising residents an exceptional living experience.</p>\r\n<p>&nbsp;</p>\r\n<p>Nestled in the prestigious Emaar South Dubai, this development ensures unparalleled connectivity. Seamlessly navigate major road networks for swift access to Dubai\'s vibrant city center, renowned entertainment destinations, and world-class dining experiences. The convenience extends further with proximity to the international airport, making travel effortlessly accessible.</p>\r\n<p>&nbsp;</p>\r\n<p>Immerse yourself in an oasis of serenity where each moment is meticulously crafted to elevate your senses and redefine the essence of home. The picturesque neighborhood serves as a sanctuary adorned with lush greenery, meticulously landscaped gardens, and winding pathways that beckon exploration&mdash;a perfect equilibrium between nature and modern living.</p>\r\n<p>&nbsp;</p>\r\n<p>Each villa within Fairway Villas 2 is a masterpiece of thoughtful design, seamlessly blending with its natural surroundings while emanating contemporary charm. From elegant facades to the seamless integration of indoor and outdoor spaces, every detail is carefully considered to create an ambiance of refined sophistication. Awaken to the mesmerizing sight of rolling greens and embrace the gentle breeze on your terrace.</p>\r\n<p>&nbsp;</p>\r\n<p>Fairway Villas 2 at Emaar South is more than a residential development; it\'s an invitation to experience the epitome of modern living, where luxury meets sustainability amidst the tranquility of nature. Welcome to a home where every detail is a testament to a life of unparalleled elegance and comfort.</p>', '2026-12-31', 16, '', '', 10, '169977767389.jpg', '169986879132.png', '169986879123.png', '169986879155.png', '169986879169.png', '', '', '', '', '169994623132.png', '169994623149.png', '169994623158.png', '169994623167.png', '169994623152.png', '169994623150.png', '169977767313.png', 0, '2023-11-12 13:27:53', '2023-12-01 12:14:28', '3,4', NULL, 3880, '<iframe width=\"560\" height=\"415\" src=\"https://www.youtube.com/embed/EZNyEZZsvUQ?si=wgqQbatAINswms_i&amp;controls=0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Prime Location', 'Fairway Villas 2 are the latest edition of residential development located at Emaar South, Dubai offering a true lifestyle with a sense of community living at ease.', '', '', '', '', '18-hole Championship Golf Course', 'Infinity Pool', 'Gymnasium', 'Kids Play Area', 'Retail Outlets', 'Amusement Park'),
(25, 'May at Arabian Ranches III', '2000000', '90 / 10', 6, '3 & 4 BR Townhouses', 1, '9', 'May offers stylish 3 and 4 bedroom townhouses in a peaceful suburban setting, and of course a convenient location that everyone will love.', '<p>Nestled within the coveted <strong>Arabian Ranches 3</strong>, May by Emaar Properties unveils a luxurious enclave of <strong>3 and 4-bedroom townhouses</strong>, characterized by bespoke design and enriched with an array of unmatched amenities. This development seamlessly harmonizes modern aesthetics with enduring sophistication, crafting a remarkable architectural statement that graces the skyline with distinction.</p>\r\n<p>&nbsp;</p>\r\n<p>Enveloped in the prestigious community of <strong>Arabian Ranches 3</strong>, May offers residents seamless access to Dubai\'s prime attractions. From indulging in retail therapy at renowned shopping destinations to savoring culinary delights at gourmet restaurants, and immersing in dynamic entertainment options, the richness of city life unfolds at your doorstep. Additionally, with its strategic location providing excellent connectivity to major road networks, navigating across Dubai becomes a breeze, ensuring effortless commutes to various parts of the city.</p>\r\n<p>&nbsp;</p>\r\n<p>May at Arabian Ranches 3 beckons discerning individuals seeking an unparalleled blend of opulence, convenience, and connectivity, establishing itself as a haven for those who appreciate the finer aspects of contemporary living.</p>', '2027-09-30', 18, '', '', 10, '169985571185.png', '169985571153.png', '169985571198.png', '169985571199.png', '169985571115.png', '', '', '', '', '169994614877.png', '169994614878.png', '169994614850.png', '169994614872.png', '169994614880.png', '169994614818.png', '169985571125.png', 0, '2023-11-13 11:08:31', '2023-12-01 12:15:46', '3,4', NULL, 2457, '', 'The Perfect Location', 'With quick access to Academic Road and Emirates Road, Arabian Ranches III enjoys an extra convenient location close to popular attractions. Residents can get to Global Village in only 5 minutes, while Downtown Dubai and Dubai International Airport are just a 20 minute drive away.', '', '', '', '', 'Green Surrounding', 'Swimming Pool', 'Kids Play Area', '24x7 Security', 'Gymnasium', 'Retail Outlets'),
(26, 'Raya at Arabian Ranches III', '1950888', '80 / 20', 6, '3 & 4 BR Townhouses', 1, '9', 'Raya at Arabian Ranches 3 is the latest launch of exclusive design 3 & 4-bedroom townhouses developed by Emaar Properties with an exclusive range of facilities. Get a taste of the picture-perfect ambience in a community where indoor and outdoor spaces are harmoniously integrated.', '<p>Embark on a new chapter of refined living with Raya at Arabian Ranches 3, the latest unveiling of meticulously designed <strong>3 &amp; 4-bedroom townhouses</strong> by Emaar Properties. Discover a world where exclusive facilities meet picturesque landscapes, seamlessly integrating indoor and outdoor spaces. Here, life unfolds in a flawless rhythm, with each day capturing the essence of harmony.</p>\r\n<p>&nbsp;</p>\r\n<p>Nestled within the heart of Dubai\'s esteemed gated community, <strong>Arabian Ranches 3, Raya</strong> promises a lifestyle where every detail is a testament to exclusivity. Picture-perfect ambience sets the stage for a life of elegance and comfort, where every corner is thoughtfully designed to enhance your daily experience.</p>\r\n<p>&nbsp;</p>\r\n<p>Convenience takes center stage as Raya enjoys a prime location with easy access to major roads like the Emirates Road, ensuring seamless connectivity to the city\'s pulse. Immerse yourself in a residence where the art of living is finely curated, and every moment is a celebration of harmony and sophistication. Welcome to Raya, where life is crafted with precision and lived with grace.</p>', '2026-07-31', 18, '', '', 10, '169985720338.png', '170012510776.png', '170012510745.png', '170012510742.png', '170012510771.png', '169985720355.png', '', '', '', '169994578734.png', '169994578757.png', '169994578784.png', '169994578794.png', '169994578724.png', '169994578793.png', '169985720366.png', 0, '2023-11-13 11:33:23', '2023-12-01 12:16:10', '3,4', NULL, 2354, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/_AOouURBYRE?si=WplZJEV1GU6Jo37L\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Prime Location', 'Nestled in an optimal location with key roads and connectivity options just moments away, residents of this community will relish effortless access to nearby attractions, renowned destinations, and the vibrant hotspots that define the city\'s allure.', '', '', '', '', 'Green Surrounding', 'Dining Outlets', 'Gymnasium', 'Kids Play Area', 'Swimming Pool', 'Spa and Sauna'),
(27, 'Anya at Arabian Ranches III', '2260000', '80 / 20', 6, '3 & 4 BR Townhouses', 1, '9', 'ANYA at Arabian Ranches 3, Dubai is a new development offering premium 3 & 4 bedroom townhouses developed by Emaar Properties. Be the part of this incredible journey that takes you to the world of third phase of Arabian Ranches.', '<p>Prepare to be captivated by Emaar\'s newest masterpiece, <strong>Anya 2</strong>. This exceptional offering presents an array of <strong>3 and 4-bedroom townhouses</strong>, promising a serene lifestyle enveloped by verdant nature and a host of family-friendly amenities that redefine modern living.</p>\r\n<p>Discover one of the most captivating and sought-after communities, where an array of amenities, premium facilities, and diverse services converge to offer residents a life worth celebrating. Embrace the best of each day surrounded by your loved ones and family members in an environment crafted for joy and connection.</p>\r\n<p>Step into a new chapter of life, where every morning unfolds amidst lush greenery and natural elements that purify the air you breathe. Experience a refined way of living, where premium standards and captivating designs steal your heart, creating an oasis of relaxation within.</p>\r\n<p>This community is a tapestry of several premium developments and a neighborhood that caters to your every mood, ensuring quality standards that elevate your living experience. Immerse yourself in an adventurous world of entertainment, health hubs, business centers, retail therapy, diverse dining experiences, and more. Join these remarkable homes where sleek designs seamlessly blend with grand interiors, promising an unparalleled sense of comfort and luxury.</p>', '2026-12-31', 18, '', '', 10, '169985805555.png', '169985805535.png', '169994561015.jpg', '169985805516.png', '169985805517.png', '', '', '', '', '169994561079.png', '169994561013.png', '169994561077.png', '169994561019.png', '169994561076.png', '169994561061.png', '169985805560.png', 0, '2023-11-13 11:47:35', '2023-12-01 12:16:59', '3,4', NULL, 2622, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/aEnLOcpqW8M?si=pkUcNM5er3Bt7lrY\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Prime Location', 'With easy access to Academic Road and Emirates Road, Arabian Ranches III sits close to Dubai\'s most popular attractions. Get to Global Village in only 5 minutes, or drive 20 minutes to Downtown Dubai and DXB International Airport.', '', '', '', '', 'Central Park', 'Sauna and Spa', 'Swimming pools', 'Gymnasium', 'Retail Outlets', 'Tennis courts and cricket field'),
(28, 'Clearpoint at Rashid Yachts and Marina', '1540000', '90 / 10', 6, '1-3 BR Apartments and Duplexes', 1, '6', 'Waterfront residences surrounded by lush green pockets in an idyllic setting.', '<p>Experience the pinnacle of luxury living at <strong>Clearpoint</strong>, Emaar Properties\' latest gem in <strong>Rashid Yachts &amp; Marina</strong>. This exclusive development boasts luxury <strong>1, 2, and 3-bedroom</strong> beachfront apartments, along with exquisite 3-bedroom duplexes across four opulent towers. A harmonious blend of sophistication, waterfront charm, and modernity awaits within the vibrant heart of Dubai.</p>\r\n<p>&nbsp;</p>\r\n<p>Nestled in Mina Rashid, Clearpoint\'s strategic location ensures seamless connectivity to key road networks, including Sheikh Zayed Road, offering easy access to Downtown Dubai and international airports. Beyond convenience, the development stands out with its proximity to Dubai Creek Harbour and the longest swimmable canal pool in Dubai, providing residents with iconic marina and skyline views.</p>\r\n<p>&nbsp;</p>\r\n<p>Clearpoint goes beyond aesthetics, offering an array of world-class amenities that redefine contemporary living. From state-of-the-art fitness centers and spa facilities to infinity-edge swimming pools, every detail reflects the elegance and style synonymous with Dubai\'s sophistication. This is more than a residence; it\'s an invitation to a lifestyle of unparalleled luxury and comfort.</p>', '2027-07-31', 19, '', '', 10, '169986060188.png', '169986060114.png', '169986060123.png', '169986060163.png', '169986060151.png', '169986060176.png', '', '', '', '', '169994523354.png', '169994523340.png', '169994523364.png', '169994523324.png', '169994523310.png', '169986060140.png', 0, '2023-11-13 12:30:01', '2024-04-25 14:08:46', '1,2,3', NULL, 1959, '', 'Prime Location', 'The location at Rashid Yachts & Marina within Mina Rashid plays a crucial role in the allure of this new development. Connecting residents with the major key road networks including the Sheikh Zayed Road offers easy access to Downtown Dubai, International Airports and many such without facing any hassle at all.', '', '', '', '', 'Signature hotels', 'Sea and skyline views', 'World class Superyacht Marina', 'Kids Play Area', 'Swimming Pool', 'Generous promenades');
INSERT INTO `off_plans` (`id`, `title`, `price`, `plan`, `developer`, `development_type`, `property_type`, `property_sub_type`, `short_description`, `description`, `completion_dat`, `location`, `longitude`, `latitude`, `down_payment`, `banner_img`, `img1`, `img2`, `img3`, `img4`, `img5`, `img6`, `img7`, `img8`, `ame1`, `ame2`, `ame3`, `ame4`, `ame5`, `ame6`, `location_img`, `status`, `created_at`, `updated_at`, `bed_rooms`, `bath_rooms`, `measurements`, `video_url`, `prime_title`, `prime_description`, `marina_min`, `downtown_min`, `airport_min`, `jumeriah_min`, `ame_title1`, `ame_title2`, `ame_title3`, `ame_title4`, `ame_title5`, `ame_title6`) VALUES
(29, 'Seascape at Rashid Yachts and Marina', '1300000', '80 / 20', 6, '1-3 BR Apartments & Townhouses', 1, '6,9', 'A coastal luxury haven with breathtaking views of the Marina.', '<p>Welcome to <strong>Seascape at Rashid Yachts &amp; Marina</strong>, a distinguished development by Emaar Properties, presenting a range of <strong>1 to 3-bedroom waterfront apartments</strong>&nbsp;nestled within the serene enclave of Mina Rashid. Immerse yourself in seafront luxury across four multi-storey buildings, where contemporary residences harmonize with sophisticated amenities and tranquil surroundings, complemented by an array of exciting retail and attractions.</p>\r\n<p>This prime world-class address at Rashid Yachts &amp; Marina offers an exclusive gateway to 430 wet berths for yachts, equipped with state-of-the-art facilities and a dedicated marina team. Seascape invites you to explore a lifestyle that celebrates endless possibilities, allowing you to cruise to the hottest destinations with sandy beaches and a cosmopolitan flair.</p>\r\n<p>&nbsp;</p>\r\n<p>As a resident, you become part of a remarkable residential community that defines luxury within Dubai. This neighborhood promises a lifestyle like never before, presenting a truly remarkable opportunity to enhance your life and embrace a yachting destination in the heart of Dubai.</p>\r\n<p>&nbsp;</p>\r\n<p>The development\'s luxury, style, and elegance are accentuated by breathtaking views of the marina and the endless blue horizon of the gulf. Access to exclusive facilities and services adds a layer of privilege to your everyday life, making Seascape a decision that not only benefits you but enhances the lifestyle experience for your entire family. Choose the extraordinary at Seascape, where every moment is framed by luxury and the boundless beauty of the sea.</p>', '2026-11-30', 19, '', '', 10, '169986202135.png', '169986202114.png', '170066044426.png', '170066044432.png', '170066044417.png', '170066044488.png', '170066044445.png', '170066044453.png', '', '169994504228.png', '169994504212.png', '169994504246.png', '169994504227.png', '169994504281.png', '169994504263.png', '169986202157.png', 0, '2023-11-13 12:53:41', '2024-04-26 16:37:01', '1,2,3', NULL, 1759, '<iframe width=\"560\" height=\"415\" src=\"https://www.youtube.com/embed/pmyEXzzjxS8?si=OLS6C-cdOXMDREin&amp;controls=0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Prime Location', 'Located just minutes from Dubai\'s many attractions and with plenty of carefully curated amenities, Seascape provides the perfect combination of retreat and adventure.', '', '', '', '', 'Swimmable Canal Pool', 'Sauna and Spa', 'Yacht club with exclusive facilities', 'Retail boulevard', 'Sports  park', 'Community park'),
(30, 'Emaar Parkside Views', '1450000', '90 / 10', 6, '1-3 BR Apartments & Townhouses', 1, '6,9', 'Discover Parkside Views at Dubai Hills Estate, a new residential development that features opulent collection of 1, 2, 3 bedroom apartments, duplexes and townhouses by Emaar Properties. This multi-storey residential building under development is set to redefine luxurious living in the heart of Dubai, offering its residents and visitors the very best health, education and recreational facilities.', '<p>Introducing Parkside Views at Dubai Hills Estate, an extravagant residential development by Emaar Properties featuring a lavish collection of 1, 2, and 3-bedroom apartments, duplexes, and townhouses. This multi-storey masterpiece is poised to redefine luxurious living in the heart of Dubai, offering residents and visitors unrivaled access to top-notch health, education, and recreational facilities.</p>\r\n<p>&nbsp;</p>\r\n<p>Nestled within the expansive Dubai Hills Estate, this development seamlessly blends urban convenience with the tranquility of nature. With swift access to Al Khail Road, it\'s just minutes away from Downtown Dubai and other key locations. Living in proximity to the planned Etihad Rail and Dubai Metro lines ensures fast and easy access to everywhere you need to be.</p>\r\n<p>&nbsp;</p>\r\n<p>Wake up each morning to the calming views of a lush splash pad and verdant greens from your balcony&mdash;an idyllic scene that sets the perfect tone for your day. Immerse yourself in the beauty of Dubai Hills Park, stretching over kilometers and just a stone\'s throw away. Picture starting your day with a rejuvenating run in this oasis of greenery, framed by the Burj Khalifa and the Dubai skyline.</p>\r\n<p>&nbsp;</p>\r\n<p>Parkside Views offers unparalleled convenience. For working professionals, the Dubai Hills Business Park is within walking distance, streamlining your daily commute. Your children\'s schools are a mere 5-minute walk away, making drop-offs and pickups a breeze. Indulge in the culinary delights along Dubai Hills Boulevard, home to numerous dining options, ideal for a satisfying business lunch.</p>\r\n<p>&nbsp;</p>\r\n<p>The contemporary living experience is defined by serenity, showcasing modern architectural style with clean lines and a timeless aesthetic. The elegant building design maximizes parkside views, creating a seamless connection to nature. Step into the grand lobby with its inviting environment, adorned with tasteful furnishings and a palette that sets the tone for relaxation and social interaction. Parkside Views invites you to embrace every day with the goodness of nature and leisure in a grand and welcoming setting.</p>', '2027-08-31', 20, '', '', 10, '169986350035.png', '169986350085.png', '169986350014.png', '169986350050.png', '169986350095.png', '', '', '', '', '169994478781.png', '169994478769.png', '169994478776.png', '169994478719.png', '169994478768.png', '169994478725.png', '170063856927.png', 0, '2023-11-13 13:18:20', '2023-12-01 12:21:56', '1,2,3', NULL, 2543, '', 'Prime Location', 'Located just a few minutes away from Dubai\'s top attractions, Dubai Hills Estate offers a serene environment while keeping you connected to your favourite spots in the city.', '', '', '', '', 'Swimming pool with loungers', 'Sandy beach', '18 hole golf course', 'Kids Play Area', 'Health Care Centre', 'Dining Outlets'),
(31, 'Elvira at Dubai Hills Estate', '1290000', '80 / 20', 6, '1-3 BR Apartments & Townhouses', 1, '6,8', 'Luxury residences with iconic views of the Dubai skyline.', '<p>Step into the latest residential masterpiece &ndash; <strong>Elvira</strong> at <strong>Dubai Hills Estate</strong> by Emaar Properties, introducing an extraordinary collection of <strong>1, 2 &amp; 3-bedroom apartments</strong>, complemented by <strong>3-bedroom townhouses</strong> &amp; <strong>duplexes</strong> featuring generous terraces. This twin tower marvel, nestled within a leisure podium, spans 16 residential floors and is enveloped by natural elements, creating a serene atmosphere that effortlessly brings life to ease. The impressive community lifestyle offers a premium living structure that seamlessly combines the joy of luxury with the bliss of nature.</p>\r\n<p>&nbsp;</p>\r\n<p>Emaar Properties, renowned for their incredible style and unparalleled architecture, presents Elvira as the epitome of residential excellence. Immerse yourself in a destination where strategically selected facilities cater to your preferences, ensuring a lifestyle that perfectly aligns with your needs and tastes.</p>\r\n<p>&nbsp;</p>\r\n<p>Beyond your wildest imagination, Elvira unveils a world of astonishing entertainment, sports amenities, leisure, and fun right at your doorstep. Indulge in beach access, water activities, and lush green landscaped areas, all lined with captivating attractions that elevate your living experience.</p>\r\n<p>&nbsp;</p>\r\n<p>At Dubai Hills Estate, life becomes extraordinary as these residences are meticulously designed with incredible details and aesthetics that transcend imagination. Revel in life\'s purest form, surrounded by natural ornaments and relaxing vibes that define your days. Enjoy enhanced views of the lush green environment, skylines, and landmarks that grace the site, creating a living experience like no other. Elvira invites you to embrace a life of opulence and tranquility in the heart of Dubai Hills Estate.</p>', '2026-12-31', 20, '', '', 10, '169986490193.png', '169986490171.png', '169986490193.png', '169986490186.png', '169986490135.png', '169986490138.png', '', '', '', '', '169994441070.png', '169994441018.png', '169994441028.png', '169994441027.png', '169994441088.png', '169986490159.png', 0, '2023-11-13 13:41:41', '2024-04-26 16:33:28', '1,2,3', NULL, 2532, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Ja_6wiUzSas?si=lZV0F7ppdYYhpDC2\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Prime Location', 'With easy access to Al Khail Road, Elvira is just minutes away from Downtown Dubai and a wide array of business, retail, and tourism hubs. Close proximity to planned Etihad Rail and Dubai Metro lines will allow for fast and easy access to airports and other emirates in the near future.', '', '', '', '', 'Landscaped podium area', 'Fully Equipped Gym', 'BBQ Area with access to Dubai Hills Park', 'Swimming Pool & Kids’ Pool', 'Sports courts', 'Retail Outlets'),
(32, 'Creek Waters 2', '1700000', '90 / 10', 6, '1-4 BR Apartments, 3 BR Townhouses & 5 BR Penthouse', 1, '6', 'Creek Waters 2 at Dubai Creek Harbour is the latest addition by Emaar Properties offering luxury 1 to 4 bedroom apartments, townhouses and penthouses.', '<p>Introducing <strong>Creek Waters 2</strong> at Dubai Creek Harbour, the newest masterpiece by Emaar Properties featuring luxury <strong>1 to 4-bedroom apartments</strong>, <strong>3-bedroom</strong> <strong>townhouses</strong>, and <strong>4-bedroom</strong> <strong>penthouses</strong>. This development\'s modern and stylish architectural design creates a natural haven for residents, offering an unparalleled experience of urban living with breathtaking vistas of the surroundings.</p>\r\n<p>&nbsp;</p>\r\n<p>Situated along the shores of Dubai Creek, Creek Waters 2 promises a prime location with stunning views of the waterfront and the iconic Dubai skyline. Beyond its luxurious lifestyle, the locality ensures unmatched connectivity and convenience for residents, providing a seamless blend of tranquility and urban vibrancy within arm\'s reach.</p>\r\n<p>&nbsp;</p>\r\n<p>Every aspect of Creek Waters 2 reflects meticulous attention to detail and a commitment to creating a harmonious living environment. The tower\'s architecture is inspired by the surrounding vistas, striking a balance between sleek urban design and structured elegance. The entrance, adorned with an exclusive water feature, sets the tone for a luxurious experience, leading to a lobby area with sweeping views of the boulevard.</p>\r\n<p>&nbsp;</p>\r\n<p>This development offers an extraordinary lifestyle experience, with amenities that include private marinas, lush landscaped gardens, state-of-the-art fitness centers, luxurious spa facilities, and swimming pools that seamlessly merge with the shimmering waters of the Creek. Residents also enjoy exclusive access to fine dining restaurants, high-end retail outlets, and vibrant entertainment options, ensuring a dynamic and fulfilling experience at Creek Island. Creek Waters 2 is poised to become a new icon in Dubai Creek Harbour, enriching the skyline with its contemporary elegance and offering residents a truly exceptional living experience.</p>', '2027-12-31', 21, '', '', 10, '169986685598.png', '169986685590.png', '170057011985.png', '170057011923.png', '170057011966.png', '170057011964.png', '170057011922.png', '170057011913.jpg', '', '169994424926.png', '169994424924.png', '169994424997.png', '169994424933.png', '169994424927.png', '169994424986.png', '169986685543.png', 0, '2023-11-13 14:14:15', '2023-11-21 17:35:19', '', NULL, 3009, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/WsUS-FM1yhc?si=y1fsqOqGoK8ZBIjK\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Prime Location', 'Creek Waters 2 sits at the centre of a district that will offer all the modern amenities that you need, including schools, lifestyle and entertainment destinations, and easy access to the rest of the city.', '', '', '', '', 'Infinity Pool & Sun Deck', 'Kids’ Pool & Play Area', 'Viewing Decks', 'Fully Equipped Gym with Pool Views', 'BBQ Area', 'Access to Creek Marina and yacht club'),
(33, 'Haven by Aldar', '2500000', '70 / 30', 17, '3-6 BR Apartments, Villas & Townhouses', 1, '6,7,9', 'Luxury villas and townhouse in a wellness based community.', '<p>Welcome to <strong>Haven by Aldar Properties</strong>, the latest residential haven featuring <strong>3 to 6-bedroom apartments</strong>, <strong>villas</strong>, and <strong>townhouses</strong>. Nestled in Dubailand, this development presents a harmonious blend of wellness and luxury living, marking Aldar\'s debut in Dubai with an innovative concept that prioritizes community-wide wellness.</p>\r\n<p>&nbsp;</p>\r\n<p>Strategically positioned in Dubailand, Haven offers easy access to major roadways, including E611 (Emirates Road) and D54 (Zayed Bin Hamdan al Nahyan Street). A short 25-minute drive connects you to iconic landmarks like the Burj Khalifa and Dubai Marina, ensuring you stay well-connected to the vibrant pulse of Dubai\'s dynamic city life.</p>\r\n<p>&nbsp;</p>\r\n<p>Comprising 2428 residential units, Haven provides a diverse range of living options, from luxurious villas to modern apartments. With choices ranging from elite and serene villa types to park townhouses, residents have the freedom to select living spaces that align with their preferences, whether they seek spacious villas or more compact, manageable townhouses without compromising on quality. Haven by Aldar Properties introduces a new era of living where wellness and luxury converge in the heart of Dubailand.</p>', '2027-09-30', 9, '', '', 5, '169986827637.png', '169986827623.png', '169986827610.png', '169986827614.png', '169986827642.png', '169986827693.png', '169986827627.png', '', '', '169994392370.png', '169994392386.png', '169994392374.png', '169994392353.png', '169994392316.png', '169994392357.png', '169986925765.jpg', 0, '2023-11-13 14:37:56', '2023-12-01 13:13:21', '3,4,5', NULL, 9114, '<iframe width=\"560\" height=\"415\" src=\"https://www.youtube.com/embed/SzvZWB48RNk?si=OieAfTQ8_xnqpfrB&amp;controls=0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Prime Location', 'Set in the master community of Dubailand, Haven enjoys easy access to all that the city has to offer, with Downtown Dubai and Dubai Marina just a 25 minute drive away.', '', '', '', '', 'Haven Central Park', 'The Streams Rooms', 'Retail & Cafe', 'Outdoor Gym', 'Retail Therapy', 'Zen Gardens'),
(34, 'Club Drive', '1500000', '90 / 10', 6, '1-3 BR Apartments', 1, '6', 'Club Drive at Dubai Hills Estate, developed by Emaar Properties is a captivating addition to the thriving landscape of Dubai with 1, 2 & 3 bedroom apartmentschat', '<p><span style=\"font-family: roboto, sans-serif;\">Introducing <strong>Club Drive</strong> at<strong> Dubai Hills Estate</strong>, an exquisite creation by Emaar Properties that graces Dubai\'s skyline with its charm. This residential haven offers an array of <strong>1, 2 &amp; 3 bedroom apartments</strong>, inviting residents to experience a blend of luxury and nature in the heart of the city.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: roboto, sans-serif;\">Set against the backdrop of the iconic Burj Khalifa and the Dubai skyline, Club Drive ensures a lifestyle of sophistication, inspiring residents to reach new heights every day. The Dubai Hills Boulevard, adorned with art installations and lush greenery, weaves through the estate, connecting key destinations and providing a shaded oasis for comfortable strolls.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: roboto, sans-serif;\">Crafted to seamlessly integrate modern living with the beauty of a sprawling golf landscape, the development caters to the refined tastes of its residents. Step into the opulent lobby, where contemporary furnishings set the stage for the luxurious living experience that awaits you.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: roboto, sans-serif;\">Driven by a commitment to eco-friendliness, the entire project prioritizes sustainability without compromising on luxury. From versatile layouts to carefully chosen neutral finishes, every detail reflects a dedication to minimizing environmental impact. Thoughtfully designed to adapt to the evolving needs of modern living, the layouts offer flexibility and functionality, whether you\'re working, entertaining, or simply unwinding.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-family: roboto, sans-serif;\">While providing a serene green retreat, Club Drive is strategically located along the Northern Boulevard, ensuring residents enjoy the tranquility of an urban pocket with city center attractions just moments away. Experience the convenience of easy access to premium healthcare, educational centers, a central park, a leading golf course, and the expansive Dubai Hills Mall.</span></p>\r\n<p><span style=\"font-family: roboto, sans-serif;\">&nbsp;</span></p>\r\n<p><span style=\"font-family: roboto, sans-serif;\">Discover a lifestyle where luxury meets eco-conscious living at Club Drive, where every moment is an elevation of your living experience.</span></p>', '2028-02-29', 20, '', '', 10, '170013278668.png', '170013265289.png', '170056954187.png', '170057127825.png', '170013265231.png', '170056954117.png', '170056960112.jpg', '', '', '170013278677.png', '170013278692.png', '170013278643.png', '170013278623.png', '170013278674.png', '170013278656.png', '170013265254.png', 0, '2023-11-16 16:04:12', '2024-02-16 17:30:10', '0', NULL, NULL, '<iframe width=\"560\" height=\"415\" src=\"https://www.youtube.com/embed/suqkjPOFM2c?si=Hmq5Ya7du0qzLxi4&amp;controls=0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Prime Location', 'Dubai Hills Estate offers a serene environment while keeping you connected to your favourite spots in the city.', '', '', '', '', 'Infinity pool & deck', 'Kids\' play Area', 'Basketball Court', 'Fitness Centre', 'Retail Outlets', 'Parks and Leisure Areas'),
(35, 'Opera Grand Downtown Dubai', '5499888', '25 / 75', 6, '1 - 5 BR Apartments & 5 BR Townhouses', 1, '6', 'Opera Grand, a prominent development by Emaar Properties offers 1 to 5-bedroom apartments and 5-bedroom townhouses located at the heart of The Opera District in Downtown Dubai.', '<p>Presenting Opera Grand, an exceptional development crafted by Horizon Builders, situated in the heart of The Harmony District within Downtown Dubai. This distinguished residence offers a variety of meticulously designed living spaces, ranging from <strong>1 to 5-bedroom apartments</strong> and exclusive <strong>5-bedroom townhouses</strong>, redefining the standards of luxury living.</p>\r\n<p>&nbsp;</p>\r\n<p>Opera Grand proudly features a soaring 66-storey residential tower, housing 249 thoughtfully designed apartments. Revel in the expansive views through floor-to-ceiling windows that flood each residence with natural light. The interiors are adorned with graceful low-hanging chandeliers, creating an ambiance of luminous sophistication.</p>\r\n<p>&nbsp;</p>\r\n<p>Residents of Opera Grand enjoy seamless access to Sheikh Mohammed Bin Rashid Boulevard, seamlessly connecting to Sheikh Zayed Road and Ras Al Khor Road. Immerse yourself in the rich tapestry of the surrounding neighborhood, from traditional souks to the world-renowned Dubai Mall&mdash;an unparalleled shopping and entertainment destination with over 1,200 shops, the captivating Dubai Aquarium and Underwater Zoo, the exhilarating Dubai Mall Ice Rink, and the thrilling SEGA Republic theme park.</p>\r\n<p>&nbsp;</p>\r\n<p>Live in Opera Grand with luxury and convenience at Crescendo Heights, where every detail is meticulously curated to offer a life of radiant elegance and excitement in the vibrant heart of Downtown Dubai. Welcome to a residence that harmonizes opulence, comfort, and the dynamic spirit of city living.</p>', '2021-09-30', 23, '', '', 15, '170013467612.png', '170013467634.png', '170013467624.png', '170013467669.png', '', '', '', '', '', '170013467647.png', '170013467695.png', '170013467697.png', '170013467641.png', '170013467690.png', '170013467667.png', '170013467686.png', 0, '2023-11-16 16:37:56', '2024-04-26 11:52:01', '1', NULL, NULL, '', 'Connectivity', 'Downtown Dubai occupies two of the most prestigious square kilometres in Dubai. Flanked on either side by Sheikh Zayed Road and Financial Centre Road, this dynamic city hub has catalysed the economy and cemented Dubai’s reputation as a true global icon.', '', '', '', '', 'Dining Outlets', 'Health Care Centre', 'Kids Play Area', 'Rooftop Swimming Pool', 'Parks and Leisure Areas', 'Gymnasium'),
(36, 'Grand Bleu Tower 2', '3752888', '70 / 30', 6, '1-4 BR Apartments & Penthouses', 1, '6', 'Elie Saab Grand Bleu Tower 2 at Emaar Beachfront is a residential development by Emaar Properties and offers a mix of 1, 2 & 3 bedroom apartments & 4 bedroom penthouses', '<p>Elie Saab <strong>Grand Bleu Tower 2</strong> at <strong>Emaar Beachfront</strong> is a residential development by Emaar Properties and offers a mix of<strong> 1, 2 &amp; 3 bedroom apartments</strong> &amp; <strong>4 bedroom penthouses</strong>. Phase 2 of the project, a joint venture between a leading fashion and Emaar Properties is all set to introduce a new form of luxury and sophistication.</p>\r\n<p>&nbsp;</p>\r\n<p>The stylish apartment units in this high-end development blend the rich heritage and progressive ethos of Elie Saab and a contemporary design that is truly exceptional and one of a kind.</p>\r\n<p>&nbsp;</p>\r\n<p>Set within a popular gated island retreat, the residential units are poised to become the next lifestyle address that exudes warmth and elegance. Laced with all the modern amenities and facilities, the development redefines the notions of luxury and comfort. With the designer making it a point to give each of the residences a personal touch,&nbsp; this further makes way for the residences to get a distinct identity.</p>\r\n<p>&nbsp;</p>\r\n<p>Besides, the 1930&rsquo;s art deco gives this waterfront development stand out from the rest. Starting with, the design of the interiors, and a vast collection of art installations, everything is planned to suit modern day sensibilities.</p>', '2024-12-31', 3, '', '', 12, '170013661197.png', '170056936429.png', '170013661121.png', '170013661178.png', '170013661180.png', '170056930815.png', '170056936492.png', '', '', '170013661175.png', '170013661147.png', '170013661128.png', '170013661127.png', '170013661168.png', '170013661118.png', '170013661183.png', 0, '2023-11-16 17:10:11', '2023-11-21 17:22:44', '', NULL, NULL, '', 'Prime Location', 'Grand Bleu Tower is set in the heart of Emaar Beachfront and imbued with Elie Saab\'s innate elegance. With its sweeping views of the Palm, sea and sky, punctuated only by glimpses of the promenade and nearby parks, the tower is the pinnacle of modern luxury.', '', '', '', '', 'Marina & yacht club', 'Infinity-edge swimming pool', 'Gymnasium', 'Kids\' splash pads & play area', 'Private access to the 1.5km beach', 'Parks and Leisure Areas'),
(37, 'Bayline at Rashid Yachts and Marina', '1600000', '90 / 10', 6, '1, 2 & 3 BR Apartments & Townhouses', 1, '6', 'Emaar Bayline at Rashid Yachts & Marina stands as a beacon of modern luxury with premium designed 1, 2 & 3 bedroom apartments and 3 bedroom duplexes, seamlessly blending the serenity of waterfront living with the rich cultural allure of the city.', '<p>Emaar Bayline at Rashid Yachts &amp; Marina stands as a beacon of modern luxury with premium designed<strong> 1, 2 &amp; 3 bedroom apartments</strong> and <strong>3 bedroom duplexes</strong>, seamlessly blending the serenity of waterfront living with the rich cultural allure of the city. The architectural marvel seamlessly combines modern design with the tranquility of waterfront living, providing residents with an exquisite blend of opulence and nature\'s charm.</p>\r\n<p>The prime location at Rashid Yachts &amp; Marina in Dubai offers the development a prestigious address like no other in the region. Boasting panoramic windows, each residence offers captivating views of the Marina and the iconic Dubai Downtown skyline. The community is designed as a contemporary oasis, providing a serene environment complemented by nearby attractions, including the renowned Dubai Mall, Dubai Museum, and the Dubai International Airport, all within a short drive.</p>', '2023-11-30', 19, '', '', 10, '170013842354.png', '170013842312.png', '170056906635.png', '170056906691.png', '170056906656.png', '170056906677.png', '170056906621.png', '170056906687.png', '', '170013842394.png', '170013842358.png', '170013842349.png', '170013842351.png', '170013842376.png', '170013842378.png', '170013842344.png', 0, '2023-11-16 17:40:23', '2024-04-25 13:40:22', '1', NULL, NULL, '<iframe width=\"560\" height=\"415\" src=\"https://www.youtube.com/embed/sf__bmgaQXs?si=C2Vo50A4cMZlmQO7&amp;controls=0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'A Highly Coveted Location', 'Dubai\'s latest and unprecedented residential marina masterpiece on the Arabian Gulf coast is driven by a desire to change the meaning of sophistication.', '', '', '', '', 'Marina & yacht club', 'Gymnasium', 'Kids Play Area', 'Swimming Pool', 'Dining Outlets', 'BBQ Areas'),
(38, 'Greenside Residence', '1400000', '90 / 10', 6, '1, 2 & 3 BR Apartments', 1, '6', 'Emaar Properties offers a brand-new epitome of creative development Greenside Residence which acquires well-furnished luxurious 1, 2 & 3 bedroom apartments in Dubai Hills Estate.', '<p>Emaar Properties offers a brand-new epitome of creative development <strong>Greenside Residence </strong>which acquires well-furnished luxurious <strong>1, 2 &amp; 3 bedroom apartments</strong> in Dubai Hills Estate. In one of the most thriving communities, this development provides a natural escape to the people with brilliant opportunities for healthy and luxurious living.</p>\r\n<p>&nbsp;</p>\r\n<p>In the strategic location, this project comes with an exceptional neighborhood of lush landscapes, golf courses, and clear lagoons. Many famous attractions, leisure, and entertainment sources offer an enthralling and comfortable daily life experience.<br /><br />Imagine a realm of breathtaking natural splendour, accompanied by an endless green championship golf course. Take a moment to envision a world where all your desires are fulfilled. Picture the sensation of having every longing met within a community of kindred spirits.&nbsp;</p>\r\n<p>An advantage of highway connectivity connects the residents of this community to the outer districts and landmarks of Dubai. For leading an elevated, urban, and healthy family-focused lifestyle, this excellent development is away from the hassle of the crowded city in a serene environment.</p>', '2027-07-31', 20, '', '', 10, '170014039135.png', '170014039156.png', '170014039111.png', '170014039196.png', '170056867432.png', '170056855566.png', '170056855559.png', '170056867495.png', '170056867418.png', '170014039178.png', '170014039186.png', '170014039142.png', '170014039182.png', '170014039150.png', '170014039119.png', '170014039120.png', 0, '2023-11-16 18:13:11', '2023-11-21 17:11:14', '', NULL, NULL, '<iframe width=\"560\" height=\"415\" src=\"https://www.youtube.com/embed/mdso_HjAtwo?si=3oE1OYHaMKp-6LKA&amp;controls=0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Prime Location', 'The location of Greenside Residence is a key feature of the project as it is nestled in the heart of the vibrant Dubai Hills Estate. This strategic location places residents in close proximity to vital city amenities yet maintaining its individuality.', '', '', '', '', 'Basketball Court', 'Gymnasium', 'Health Care Centre', 'Kids Play Area', 'Retail Outlets', 'Covered Car Park'),
(39, 'Palm Jebel Ali', '18000000', '80 / 20', 14, '5-7 BR Luxury Villas', 1, '7', 'Palm Jebel Ali will be a new standalone community with all the necessary amenities and facilities to live a comfortable life.', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; background-color: #ffffff;\"><span style=\"color: #212529; font-family: roboto;\">A new standalone community with all the necessary amenities and facilities to live a comfortable life.Artfully designed private waterfront residences on Dubai&rsquo;s iconic palm shaped island. Located on the exclusive fronds, each residence enjoys direct beach connectivity in this serene, private neighbourhood. Nakheel presents a once in a lifetime opportunity to be a part of Dubai&rsquo;s history. Palm Jebel Ali is twice the size of Palm Jumeirah and 174% cheaper. Prices are set to sky rocket in the future (approximate ROI of 25%+ in one year), presenting investors with a golden opportunity to secure a property at the current low price.&nbsp;</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; background-color: #ffffff;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; background-color: #ffffff;\"><span style=\"color: #212529; font-family: roboto;\">Allow us to secure a home for you in the next release. Be the first to buy in this exclusive luxury community.&nbsp;</span></p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; background-color: #ffffff;\"><span style=\"color: #212529; font-family: roboto;\"><strong>35000+ Beachside Accommodation</strong> , <strong>80+ Hotels, 68 Miles Beach Lenght</strong>, <strong>7+ Connected Islands</strong></span></p>', '2027-10-31', 22, '', '', 10, '170022119226.png', '170022235147.png', '170056671071.png', '170056671032.png', '170056671087.png', '170056671029.png', '170056671041.png', '170056671081.png', '', '170022137661.png', '170022137658.png', '170022137672.png', '170022137696.png', '170022137633.png', '170022137639.png', '170022119229.png', 0, '2023-11-17 16:39:52', '2023-11-30 17:50:43', '5', NULL, 11223, '<iframe width=\"560\" height=\"415\" src=\"https://www.youtube.com/embed/R5r9bnz_gyA?si=IgRmM3_RPqqk9bQq&amp;controls=0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'A Highly Coveted Location', 'With its strategic location, Palm Jebel Ali is a luxurious landmark within the Dubai real estate landscape. The ideal location places it close to Dubai\'s most popular areas.', '', '', '', '', 'Jacuzzi', 'Dining Outlets', 'Aqua SPA', 'Swimming Pool', 'Gymnasium', 'Kids play area'),
(40, 'Seapoint at Emaar Beachfront Dubai', '2700000', '90 / 10', 6, '1-4 BR apartments, 4-6 BR Penthouses', 1, '6', 'Seapoint is the exclusive waterfront development at Emaar Beachfront, Dubai offering luxury class 1, 2, 3 & 4 bedroom apartments and 4, 5 & 6 bedroom penthouses developed by Emaar Properties', '<p>Seapoint at <strong>Emaar Beachfront</strong> in Dubai is a luxurious and exclusive waterfront development offering a range of upscale residences, including <strong>1, 2, 3, and 4-bedroom apartments,</strong> as well as <strong>4, 5, and 6-bedroom penthouses</strong>. Developed by <strong>Emaar Properties</strong>, this project boasts a prime location with access to 450 meters of white sandy beaches and a leisure promenade.</p>\r\n<p>&nbsp;</p>\r\n<p>The two uniquely designed towers provide breathtaking views of the sea, Dubai Marina, and come with podium level facilities. The mention of the largest swimming pool adds to the appeal of the development, offering residents a high-end lifestyle experience.</p>\r\n<p>&nbsp;</p>\r\n<p>The community\'s surroundings seem to be designed to create a vibrant and attractive living environment. The reference to spending the best life with loved ones within this community suggests a focus on creating a close-knit and enjoyable living experience. The mention of a seaside dream implies a tranquil and picturesque setting, complemented by the presence of gleaming white yachts.</p>\r\n<p>&nbsp;</p>\r\n<p>The location\'s prestige is highlighted by its smooth access from Sheikh Zayed Road, one of Dubai\'s major thoroughfares, providing convenience for residents. The emphasis on waking up to the sunrise over the bay suggests a scenic and idyllic setting that adds to the overall charm of Seapoint.</p>\r\n<p>&nbsp;</p>\r\n<p>Overall, Seapoint at Emaar Beachfront seems to offer a blend of luxury, exclusivity, and a picturesque seaside lifestyle in one of Dubai\'s most sought-after locations.</p>', '2028-04-30', 3, '', '', 10, '170065923519.png', '170065923567.png', '170065923549.png', '170065923517.png', '170065923571.png', '170065923534.jpg', '170065923541.jpg', '170065923565.jpg', '170065923525.jpg', '170065923544.png', '170065923527.png', '170065923531.png', '170065923530.png', '170065923520.png', '170065923520.png', '170065923589.webp', 0, '2023-11-22 18:20:35', '2024-05-17 17:44:50', '0', NULL, 356, '<iframe width=\"560\" height=\"415\" src=\"https://www.youtube.com/embed/X91atuKbueg?si=ZPG50t3JxFmuJsZY&amp;controls=0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Prime Location', 'Seapoint is a new development located at Emaar Beachfront within Dubai and offers residents hassle-free access with its sea and road connectivity.', '', '', '', '', 'Dining Outlets', 'Gymnasium', 'Infinity pools', 'Kids Play Area', 'Spa and Sauna', 'Sports courts'),
(41, 'Emaar Avonlea', '1600000', '90 / 10', 6, '1, 2, & 3 BR Apartments', 1, '6', 'Avonlea at Rashid Yachts & Marina, as described, appears to be a refined and meticulously crafted residential development by Emaar Properties.', '<p><strong>Avonlea</strong> at <strong>Rashid Yachts &amp; Marina</strong>, as described, appears to be a refined and meticulously crafted residential development by <strong>Emaar Properties</strong>. The mention of \"curated <strong>1, 2 &amp; 3 bedroom apartments</strong>\" suggests a thoughtful and intentional design catering to various housing needs.</p>\r\n<p>&nbsp;</p>\r\n<p>The location, nestled in the heart of Dubai and situated at Rashid Yachts &amp; Marina, implies a waterfront setting with the potential for picturesque views and a serene atmosphere. Living in close proximity to a marina often adds a touch of luxury and leisure to the residential experience.</p>\r\n<p>&nbsp;</p>\r\n<p>The use of the term \"masterpiece\" by Emaar Properties emphasizes their commitment to creating a development that goes beyond mere functionality, embodying a level of artistry and excellence. This, combined with the promise of \"refined living,\" suggests a high standard of quality, amenities, and attention to detail.</p>\r\n<p>&nbsp;</p>\r\n<p>The availability of different-sized apartments indicates a versatility in meeting the diverse needs of potential residents, whether they are individuals, couples, or families. Overall, the description paints a picture of a sophisticated living experience within the vibrant landscape of Dubai, offering both comfort and elegance.</p>', '2027-11-28', 19, '', '', 10, '170116358239.png', '170116358244.png', '170116358260.png', '170116358231.png', '170116358282.png', '170116358220.png', '170116358248.png', '170116358240.png', '170116358270.png', '170116358214.png', '170116358297.png', '170116358252.png', '170116358217.png', '170116358285.png', '170116358298.png', '170116358254.webp', 0, '2023-11-28 14:26:22', '2023-11-28 14:26:22', '', NULL, NULL, '', 'Prime Location', 'Enjoy a contemporary residential oasis with tranquil surroundings and exciting nearby attractions, all within minutes of Sheikh Zayed Road, Dubai International Airport, Downtown Dubai, and more.', '', '', '', '', 'Community Park', 'Gym', 'Swimming Pool', 'Retail & Dining Options', 'Recreational Courts', 'Covered Parking Spaces'),
(42, 'Golf Grand', '2087888', '90 / 10', 6, '1, 2, & 3 BR Apartments', 1, '6', 'Emaar Golf Grand at Dubai Hills Estate is the latest residential epitome offering luxury 1, 2 & 3 bedroom apartments, adding a sense of suburban bliss to your modern living', '<p><strong>Emaar Golf Grand</strong> at<strong> Dubai Hills Estate </strong>stands as the epitome of contemporary residential living, presenting an array of luxurious <strong>1, 2, and 3 bedroom apartments</strong>. Immerse yourself in a tranquil oasis within the dynamic landscape of Dubai Hills Estate, where a touch of suburban bliss harmonizes seamlessly with modern living.</p>\r\n<p>Experience the thrill of residing in a top-rated environment, promising not just a home but a lifestyle of unparalleled sophistication. Gaze upon the breathtaking views of an <strong>18-hole championship golf course</strong>, adding a scenic and prestigious dimension to your everyday life.</p>\r\n<p>Emaar Golf Grand is dedicated to serving residents with top-class convenience and comfort, recognizing the demands of the dynamic Dubai Hills Estate. Discover a residence where luxury meets functionality, offering a living experience that transcends expectations.</p>', '2027-03-31', 20, '', '', 10, '170117128573.png', '170117128530.png', '170117128540.png', '170117128531.png', '170117128564.png', '170117128568.png', '170117128560.png', '170117128553.png', '170117128569.png', '170117128528.png', '170117128595.png', '170117128579.png', '170117128534.png', '170117128576.png', '170117128513.png', '170117128595.webp', 0, '2023-11-28 16:34:45', '2023-12-01 12:23:56', '1,2,3', NULL, 1065, '<iframe width=\"560\" height=\"415\" src=\"https://www.youtube.com/embed/U4IsJ7xzcv0?si=Mk6_Hwpkm3w4ymSc&amp;controls=0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Prime Location', 'Imagine the place filled with stunning beauty and a green championship golf course that goes on forever. The lush landscaped areas of attraction offer its residents a place to grow and create lasting memories together in a luxury home tailored to your needs, where the lifestyle is comfortable and convenient.', '', '', '', '', 'Infinity Pool & Pool Deck', 'Children’s Play Area', 'Fitness Centre', 'Golf Course', 'Covered Car Park', 'Rooftop Lounge'),
(43, 'Park Horizon at Dubai Hills Estate', '2131888', '80 / 20', 6, '1, 2, & 3 BR Apartments', 1, '6', 'Park Horizon at Dubai Hills Estate by Emaar Properties, a newly added residential development offering luxury apartments. Feel the excitement of living in the most luxurious and sophisticated lifestyle possible, which is tucked away in a natural setting.', '<p>Introducing the much-anticipated launch of <strong>Park Horizon</strong> at <strong>Dubai Hills Estate</strong> by <strong>Emaar Properties</strong>&mdash;an exclusive residential development redefining luxury living. Immerse yourself in the thrill of residing in a sophisticated lifestyle, carefully curated and nestled within a serene natural setting.</p>\r\n<p>&nbsp;</p>\r\n<p>Discover the convenience of easy access to key hubs, commercial spaces, vibrant destinations, and an array of culinary delights. Park Horizon is designed to enhance your everyday experience, making life more enjoyable through proximity to essential facilities. This is your chance to elevate your lifestyle, combining accessibility with affordability.</p>\r\n<p>&nbsp;</p>\r\n<p>Celebrate each day in these opulent residences, meticulously crafted to exact specifications. Embrace the opportunity to reinvent your life at Park Horizon, where luxury meets functionality in a setting that reflects both elegance and natural beauty.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '2026-09-30', 20, '', '', 10, '170117424181.png', '170118091366.png', '170117424130.png', '170117424197.png', '170117424197.png', '170117424195.png', '170117424191.png', '170117424167.png', '', '170117424112.png', '170117424133.png', '170117424176.png', '170117424149.png', '170117424140.png', '170117424184.png', '170117424120.webp', 0, '2023-11-28 17:24:01', '2024-01-04 13:24:41', '1,2', NULL, NULL, '<iframe width=\"560\" height=\"415\" src=\"https://www.youtube.com/embed/roD1T7yL1Pg?si=cxwJGCV7sq9Wv-ek&amp;controls=0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Prime Location', 'its hard to think of a more appealing location to enjoy the famous Dubai lifestyle than at Dubai Hills Estate. one of the emirates most sought after areas. With luscious, landscaped greens and pristine fairways with an iconic backdrop of the Burj Khalifa and the Dubai skyline, its quite unlike anywhere else.', '', '', '', '', 'Dining Outlets', 'Gymnasium', 'Health Care Centre', 'Kids Play Area', 'Swimming Pool', 'Sports courts'),
(44, 'Acacia at Dubai Hills Estate', '1420000', '20 / 80', 6, '1, 2, & 3 BR Apartments', 1, '6', 'Acacia Apartments by Emaar Properties is a residential development that offers 1, 2 & 3-bedroom units located at Dubai Hills Estate, Dubai. The project offers you a chance to experience endless unforgettable moments in the serene neighbourhood, where one can find the walkways lined with restaurants and boutique shops.', '<p><strong>Acacia Apartments</strong> by <strong>Emaar Properties</strong> presents a residential haven at <strong>Dubai Hills Estate</strong>, Dubai, featuring <strong>1, 2, and 3-bedroom</strong> units. Immerse yourself in a community where every moment is an unforgettable experience, surrounded by serene walkways adorned with restaurants and boutique shops.</p>\r\n<p>&nbsp;</p>\r\n<p>This development invites you to reside within the vibrant golfing community of Dubai Hills Estate, offering a charming neighborhood. Centrally located, Acacia Apartments ensure hassle-free accessibility to various key destinations. Positioned between Sheikh Mohammed bin Zayed Road and Al Khail Road, connectivity becomes seamless.</p>\r\n<p>&nbsp;</p>\r\n<p>The apartments boast elegant design with premium quality finishes, catering to the needs of individuals, couples, and families. Enveloped in a setting of lush greenery, these mid-rise complexes provide luxurious in-house amenities, elevating the overall concept of premium living spaces. Experience the perfect blend of comfort and sophistication at Acacia Apartments.</p>', '2018-02-28', 20, '', '', 20, '170117646489.png', '170117646462.png', '170117646442.png', '170117646481.png', '170117646414.png', '170117646425.png', '170117646427.png', '170117646479.png', '170117646469.png', '1701176464100.png', '170117646459.png', '170117646476.png', '170117646419.png', '170117646454.png', '170117646499.png', '170117646420.webp', 0, '2023-11-28 18:01:04', '2023-12-01 12:25:23', '1,2,3', NULL, NULL, '', 'Prime Location', 'Minutes away from bustling area of Downtown, it is facilitated with an utmost tranquility and soothing climate where you can hear the chirping of birds. It is cradled with wide open green areas, tree-lined pavements, and healthcare facilities along with a cluster of schools, sporting activities, and endless retail stores for every necessity.', '', '', '', '', 'Supermarket', 'Gymnasium', 'Health Care Centre', 'Swimming Pool', 'Tennis Courts', 'Kids Play Area'),
(45, 'Vida Residences at Dubai Marina', '7142888', '20 / 80', 6, '1, 2, & 3 BR Apartments', 1, '6', 'Vida Residences Dubai Marina, a magnificent development by Emaar Properties that offers 1 to 4-bedroom apartments located at Dubai Marina, Dubai.', '<p><strong>Vida Residences</strong> at <strong>Dubai Marina</strong>, an extraordinary venture by <strong>Emaar Properties</strong>, introduces a collection of <strong>1 to 4-bedroom apartments</strong> situated in the heart of Dubai Marina. Towering 50 stories above, this high-rise waterfront development presents exclusive opportunities to embrace a life marked by unparalleled quality and sophistication, expertly managed by Vida Hotels and Resorts.</p>\r\n<p>&nbsp;</p>\r\n<p>Nestled within a luxurious yacht community and mere minutes from Dubai Marina Mall, this strategically located project offers more than just a residence&mdash;it provides a lifestyle. The residences boast a picture-perfect setting, offering breathtaking views over the bay, with an array of yachts and a palm-lined promenade creating a picturesque backdrop against the stunning Marina skyline.</p>\r\n<p>&nbsp;</p>\r\n<p>Vida Residences Dubai Marina promises not just a home but a refined living experience, combining the allure of waterfront living with the meticulous management of Vida Hotels and Resorts, making it a compelling choice for those seeking luxury and convenience in one of Dubai\'s most iconic locations.</p>', '2023-08-31', 13, '', '', 20, '170117794189.png', '170117794193.png', '170117794116.png', '170117794145.png', '170117794151.png', '170117794164.png', '170117794161.png', '170117794160.png', '', '', '', '', '', '', '', '170117794195.webp', 0, '2023-11-28 18:25:41', '2023-12-01 12:25:11', '1,2,3', NULL, NULL, '', 'Prime Location', 'VIDA Residence is linked to VIDA Downtown Dubai Hotel via an air-conditioned glass bridge connecting the podium levels of the residences to the hotel. This link will give you seamless access to all a world-class hotel has to offer, in a modern style.', '', '', '', '', 'Basketball Court', 'Dining Outlets', 'Gymnasium', 'Spa', 'Medical Centre', 'Marina & Yacht Club');
INSERT INTO `off_plans` (`id`, `title`, `price`, `plan`, `developer`, `development_type`, `property_type`, `property_sub_type`, `short_description`, `description`, `completion_dat`, `location`, `longitude`, `latitude`, `down_payment`, `banner_img`, `img1`, `img2`, `img3`, `img4`, `img5`, `img6`, `img7`, `img8`, `ame1`, `ame2`, `ame3`, `ame4`, `ame5`, `ame6`, `location_img`, `status`, `created_at`, `updated_at`, `bed_rooms`, `bath_rooms`, `measurements`, `video_url`, `prime_title`, `prime_description`, `marina_min`, `downtown_min`, `airport_min`, `jumeriah_min`, `ame_title1`, `ame_title2`, `ame_title3`, `ame_title4`, `ame_title5`, `ame_title6`) VALUES
(46, 'The Cove at Dubai Creek Harbour', '1295888', '20 / 80', 6, '1, 2, & 3 BR Apartments', 1, '6', 'Emaar Properties introduces an innovative and modern in its looks and classic in comfort, The Cove premium 1, 2 & 3 bedroom apartments at Dubai Creek Harbour.', '<p>Emaar Properties proudly presents <strong>The Cove</strong>, a collection of premium <strong>1, 2 &amp; 3 bedroom apartments</strong> at <strong>Dubai Creek Harbour</strong>. Blending innovation with modern aesthetics and classic comfort, The Cove epitomizes a distinctive living experience.</p>\r\n<p>Located along the historic Dubai Creek, Dubai Creek Harbour is a vast city-within-a-city designed to bring the traditional heart of Dubai into the 21st century. The Island District within this development offers a sanctuary of stylish living, seamlessly integrating upscale residences with enticing leisure and recreational facilities, forming a world-class harbor community.</p>\r\n<p>Residents of The Cove are treated to impressive views along the sparkling promenade, creating a serene and picturesque environment. The Island District further enhances the living experience with a lush central park, magnificent marina, yacht club, and five-star hotels, providing opportunities for unforgettable moments and a truly luxurious lifestyle.</p>\r\n<p>Surrounding The Cove is a flourishing waterfront hotspot where the past and future of Dubai effortlessly intertwine. Stylish boutiques, inviting caf&eacute;s, and delightful dining options create a vibrant atmosphere of luxury and leisure. The Cove at Dubai Creek Harbour is not just a residence; it\'s an invitation to indulge in an unmatched blend of sophistication and relaxation in one of Dubai\'s most iconic locations.</p>', '2022-12-31', 21, '', '', 20, '170117965496.png', '170117965418.png', '170117965475.png', '170117965470.png', '170117965481.png', '170117965449.png', '170117965441.png', '170117965472.png', '', '', '', '', '', '', '', '170117965499.webp', 0, '2023-11-28 18:54:14', '2023-12-01 12:25:55', '1,2', NULL, NULL, '<iframe width=\"560\" height=\"415\" src=\"https://www.youtube.com/embed/W-cxd4AQWNc?si=dA7Vl18AwRRD-6wT&amp;controls=0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Prime Location', 'Ideally located in Creek Island, an integral part of Dubai Creek Harbour, THE COVE benefits from a fully integrated transport system so you can get around Dubai with ease.', '', '', '', '', 'Yacht Club Marina', 'Barbecue area', 'Kids playground', 'Fully equipped fitness centre', 'Swimming pool', 'Views of Wildlife Sanctuary'),
(47, 'Cedar at Dubai Creek Harbour', '3172888', '90 / 10', 6, '1, 2, & 3 BR Apartments', 1, '6', 'Cedar at Creek Beach is part of the larger Dubai Creek Harbour project, which is a mixed-use development by Emaar Properties. The development aims to offer a waterfront lifestyle with a range of amenities and facilities.', '<p><strong>Cedar</strong> at <strong>Creek Beach</strong> is part of the larger <strong>Dubai Creek Harbour</strong> project, which is a mixed-use development by Emaar Properties. The development aims to offer a waterfront lifestyle with a range of amenities and facilities.The exclusive design project presents the state-of-the-art design infrastructure providing one of the exclusive addresses within Dubai with awe-inspiring views of the Skylines.</p>\r\n<p>One of the key features of Dubai Creek Harbour is the pedestrian-friendly waterfront promenade. The promenade is lined with restaurants, cafes, and shops, making it the perfect place to relax and take in the stunning views of Dubai Creek.</p>\r\n<p>Another major attraction in Dubai Creek Harbour is the Dubai Creek Marina. This state-of-the-art marina has 81 berths and can accommodate yachts of up to 30 meters in length. The marina also features a yacht club with a restaurant and lounge area.</p>\r\n<p>&nbsp;</p>', '2026-07-31', 21, '', '', 10, '170125631646.png', '170125631633.png', '170125631648.png', '170125631665.png', '1701256316100.png', '170125631615.png', '170125631617.png', '170125631613.png', '170125631668.png', '170125631693.png', '170125631617.png', '170125631626.png', '170125631624.png', '170125631616.png', '170125631612.png', '170125631633.webp', 0, '2023-11-29 16:11:56', '2024-01-03 16:13:12', '1', NULL, NULL, '<iframe width=\"560\" height=\"415\" src=\"https://www.youtube.com/embed/jkgtNS73VpQ?si=kKnQfy8uiUrjyFnz&amp;controls=0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Prime Location', 'Close to Creek Marina and the Wildlife Sanctuary (home to pink flamingos!), Cedar enjoys a fantastic location just 10 minutes away from Downtown Dubai and 15 minutes from Dubai International Airport.', '', '', '', '', 'Direct access to the new park', 'Large family pool and pool deck', 'Kids’ play area', 'Gym', 'Retail Outlets', 'Health Care Centre'),
(48, 'Savanna at Dubai Creek Harbour', '1300000', '90 / 10', 6, '1, 2, & 3 BR Apartments', 1, '6', 'Savanna at Creek Beach is the latest beachfront development by Emaar Properties offering limited edition 1, 2 & 3 bedroom apartments at Dubai Creek Harbour (DCH)', '<p><strong>Savanna</strong> at <strong>Creek Beach</strong>, Emaar Properties\' latest beachfront development in <strong>Dubai Creek Harbour (DCH)</strong>, introduces a collection of limited edition <strong>1, 2, and 3-bedroom apartments</strong>. This meticulously designed development is positioned at a pristine city address, offering residents access to top-tier leisure and entertainment options, ensuring a focus on a quality lifestyle.</p>\r\n<p>&nbsp;</p>\r\n<p>Immersed in a pristine design, Savanna provides access to crystal-clear beach areas that exude a sense of calmness, creating the perfect space to unwind after a long day of work. The development promises a unique urban experience with an extended beach-inspired lifestyle for residents.</p>\r\n<p>&nbsp;</p>\r\n<p>This iconic luxury development comes with exclusive facilities and amenities that make it a compelling choice. Residents can indulge in a refreshing dip in the pools, socialize with friends, and provide their children with play areas to thrive and explore new possibilities. The community encourages social interaction, fostering connections with like-minded individuals and creating a limitless lifestyle.</p>\r\n<p>Savanna at Creek Beach offers different levels of standards and services, ensuring a tailored fit for each resident. It presents a grand opportunity to secure dreams in Dubai Creek Harbour, one of the most sought-after destinations in the city. The walkable neighborhood areas, adorned with beach promenades, leisure spaces, and attractions, add to the appeal of this vibrant and desirable location.</p>', '2023-11-30', 21, '', '', 10, '170125807326.png', '170125807387.png', '170125807394.png', '170125807383.png', '170125807379.png', '170125807375.png', '170125807397.png', '', '', '170125807376.png', '170125807343.png', '170125807389.png', '170125807389.png', '170125807360.png', '170125807333.png', '170125807385.webp', 0, '2023-11-29 16:41:13', '2023-12-01 12:26:18', '1,2,3', NULL, NULL, '<iframe width=\"560\" height=\"415\" src=\"https://www.youtube.com/embed/NcZ6ms7MKEs?si=1-Qb2zhz0g1-Onul&amp;controls=0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Prime Location', 'Savanna is located minutes away from the pristine Creek Beach, where you can enjoy the serenity of the natural surroundings. It is also conveniently close to all primary business, shopping and entertainment destinations in Dubai, so you’ll find peace at home without being too far from all the action.', '', '', '', '', 'Swimming Pool', 'Barbecue Area', 'Fitness Centre', 'Retail & Dining Options', 'Kid\'s Play Area', 'Health Care Centre'),
(49, 'Creek side18 at Dubai Creek Harbour', '1246888', '50 / 50', 6, '1, 2, & 3 BR Apartments', 1, '6', 'Creekside 18 by Emaar Properties, a twin-tower development that offers a collection of 1, 2 & 3-bedroom apartments located at Dubai Creek Harbour.', '<p><strong>Creekside 18</strong> by Emaar Properties is an impressive twin-tower development offering a range of <strong>1, 2, and 3-bedroom apartments</strong> in <strong>Dubai Creek Harbour</strong>. This ultra-modern residential complex is characterized by state-of-the-art facilities, with each of the 37 residential floors providing residents with a choice of lifestyles in this vibrant creek harbor locale.</p>\r\n<p>Strategically designed to capitalize on the dynamic skyline views and in close proximity to the bird sanctuary and lush green mangroves, these twin towers exemplify sophistication, timeless aesthetics, and elegant clean lines, showcasing Emaar\'s unwavering creative vision and commitment to precision.</p>\r\n<p>&nbsp;</p>\r\n<p>Situated facing Dubai\'s iconic skyline, especially the towering Burj Khalifa, the Island District where Creekside 18 is located is renowned as one of the most stunning places on Earth. Residents can savor breathtaking views from the tree-lined waterfront promenade, enjoy the spectacle of fountains, and dine at world-class restaurants. The development offers more than just road access; it provides easy entry to the yacht club for those looking to explore the waters.</p>\r\n<p>Creekside 18 serves as the centerpiece of the Dubai Creek Harbour master plan, welcoming residents with a lofty, light-filled atrium upon entering. The development fosters a calm and serene living environment, with a podium featuring green walkways, lush open spaces, delightful areas, swimming pools, sun loungers, and more for residents to enjoy. It promises a lifestyle that seamlessly combines luxury, aesthetics, and tranquility.</p>', '2020-05-31', 21, '', '', 10, '170126010985.png', '170126010995.png', '170126010982.png', '170126010971.png', '170126010965.png', '170126010952.png', '170126010998.png', '170126010958.png', '', '170126010936.png', '170126010915.png', '170126010983.png', '170126010959.png', '170126010957.png', '170126010992.png', '170126010945.webp', 0, '2023-11-29 17:15:09', '2023-12-01 12:26:33', '1,2,3', NULL, NULL, '', 'Prime Location', 'Perfectly positioned within the heart of Creek Island, at Creekside 18 you are just a short walk away from Dubai Square, the city’s new global retail destination. Soaring high above the Dubai Creek, the twin towers are accessible via Creek Island’s circular boulevard, with Downtown Dubai and Dubai International Airport a 10 to 15-minute drive away.', '', '', '', '', 'Dining Outlets', 'Gymnasium', 'Health Care Centre', 'Kids Play Area', 'Swimming Pool', 'Spa and Sauna'),
(50, 'Boulevard Heights At Downtown Dubai', '2092888', '20 / 80', 6, '1, 2, 3 & 4 BR Apartments', 1, '6', 'BLVD Heights, a prominent development by Emaar Properties that offers 1, 2, 3 & 4-bedroom apartments, penthouses and duplex located in Downtown Dubai.', '<p>BLVD Heights, developed by Emaar Properties, stands as a prominent residential project in Downtown Dubai, offering an array of<strong> 1, 2, 3, and 4-bedroom apartments, penthouses</strong>, and <strong>duplex</strong> units. The development comprises two impressive twin towers, one soaring 53 stories high and the other standing at 46 stories, showcasing luxury, elegance, and contemporary chic design to captivate its residents, coupled with state-of-the-art facilities.</p>\r\n<p>&nbsp;</p>\r\n<p>Nestled in the heart of Downtown Dubai, BLVD Heights consists of 492 meticulously designed apartments along Sheikh Mohammed Bin Rashid Boulevard, just across from the Opera District. This bustling boulevard serves as a vibrant hub for community events, cultural initiatives, and features dynamically lit pavements adorned with integrated art pieces, creating a lively and engaging atmosphere.</p>\r\n<p>The interiors of BLVD Heights are adorned with striking design elements, including a grand entrance, spacious balconies, and a sun terrace that provides stunning views of iconic landmarks such as the Dubai Fountain, Burj Khalifa, Dubai Mall, and the city\'s skyline. Residents can immerse themselves in the urban landscape, surrounded by numerous lanes, 5-star restaurants, luxury hotels, and other key attractions in the city center.<br /><br />In essence, BLVD Heights offers not just a residence but a lifestyle experience, blending sophistication with the convenience of being at the heart of one of Dubai\'s most iconic and dynamic neighborhoods.</p>', '2023-08-31', 23, '', '', 20, '170126477313.png', '170126477351.png', '170126441047.png', '170126441068.png', '170126441089.png', '170126441096.png', '170126441020.png', '', '', '170126441015.png', '170126441061.png', '170126441057.png', '170126441074.png', '170126441059.png', '170126441044.png', '170126441062.webp', 0, '2023-11-29 18:26:50', '2024-04-04 11:26:38', '1,2,3,4', NULL, NULL, '', 'Prime Location', 'With panoramic views of Downtown Dubai, BLVD Heights rises alongside Mohammed Bin Rashid Boulevard. The physical connection to the street allows residents to seamlessly settle into the surrounding urban reality, maximising the dining and cultural offerings of the neigbourhood which include La Serre and Toko, a multiple award-winning Japanese restaurant.', '', '', '', '', 'Dining Outlets', 'Gymnasium', 'Kids Play Area', 'Parks and Leisure Areas', 'Sheikh Zayed Road', 'Swimming Pool'),
(51, 'The Residence Burj Khalifa', '16000888', '80 / 20', 6, '3, 4, 5 & 7 BR Apartments', 1, '6', 'Emaar Properties now comes up with The Residence Burj Khalifa, an exclusive development next to Burj Khalifa with 3, 4, 5 & 7 bedroom apartments at Downtown Dubai.', '<p><strong>The Residence Burj Khalifa</strong>, a new exclusive development by Emaar Properties, stands adjacent to the iconic Burj Khalifa in <strong>Downtown Dubai</strong>. This luxurious offering features <strong>3, 4, 5, and 7-bedroom apartments</strong>, providing residents with a dynamic location and a plethora of tailored and dedicated spaces for entertainment, fun, sports, recreation, and leisure.</p>\r\n<p><br />Nestled in the heart of Downtown Dubai, this exceptional destination boasts meticulous designs and decor that emphasize attractive aesthetics and luxury. The living spaces not only offer close and direct access to renowned landmarks such as Fashion Avenue, Dubai Mall, and Burj Khalifa but also immerse residents in a world of inspired architecture, artistic designs, influential art, and stylish interiors.</p>\r\n<p><br />Recognized as one of the most famous communities globally, Downtown Dubai is celebrated for its world-class developments, luxurious spaces, curated brands, and the presence of multinational corporations. The Residence Burj Khalifa adds to this legacy with unique designs and contemporary residential development, elevating the lifestyle of its residents with a stylish outlook and striking exterior.</p>\r\n<p>The development goes beyond the ordinary by providing a range of amenities and world-class facilities, ensuring that residents can enjoy entertainment, fun, and leisure within the comfort of their homes. The Residence Burj Khalifa offers a lifestyle beyond imagination, blending attractive homes with the finest of luxury in a setting that reflects the grandeur of this exceptional place.</p>', '2024-12-31', 23, '', '', 10, '170126727983.png', '170126727938.png', '170126727941.png', '170126727947.png', '170126727988.png', '170126727952.png', '170126727996.png', '170126727945.png', '', '170134843777.png', '170134843743.png', '170134843719.png', '1701348437100.png', '170134843734.png', '170134843714.png', '170126727947.webp', 0, '2023-11-29 19:14:39', '2023-12-01 11:30:08', '3,4,5,7', NULL, NULL, '', 'Prime Location', 'Situated only minutes away from the majestic Burj Khalifa and complemented by direct access to the prestigious Fashion Avenue and The Dubai Mall.', '', '', '', '', 'Infinity Lap Pool', 'Secured Underground Parking', 'Gym with Training Studio', 'Sky View Deck', 'Restaurant and Cafe', 'Spa and Sauna'),
(52, 'Address Residences', '1700000', '90 / 10', 6, '1-3 BR Apartments, 4 BR Penthouses, 2-3 BR townhouses', 1, '6,8,9', 'Address Residences at Al Marjan Island is the new pinnacle of luxury and coastal living by Emaar Properties offering an unparalleled blend of luxury-class 1, 2, 3 bedroom apartments, 4 bedroom penthouses and 2 & 3 bedroom townhouses.', '<p><strong>Address Residences</strong> at <strong>Al Marjan Island</strong> is a luxurious and exclusive residential development by Emaar Properties. The project offers a range of upscale living options, including <strong>1, 2, and 3-bedroom apartments</strong>, <strong>4-bedroom penthouses</strong>, and <strong>2 &amp; 3-bedroom townhouses</strong>. The entire development is part of a massive mixed-use project <strong>spanning 2 million square feet</strong>.</p>\r\n<p>With a total plot area of <strong>77,000 square meters</strong>,<strong>1,100+ Residential Units</strong> and <strong>40,000 Sqm Beachfront </strong>Address Residences at Al Marjan Island covers a significant land area.</p>\r\n<p>One of the key highlights of this development is its prime location on Al Marjan Island, providing residents with breathtaking panoramic views of the Arabian Sea. This scenic backdrop contributes to a serene and natural ambiance, creating an immersive coastal lifestyle experience. The proximity to the urban core of the master-planned community and the town center adds to the convenience for residents.</p>\r\n<p>&nbsp;</p>\r\n<p>The architecture and design of the apartments showcase a commitment to excellence, with high-end finishes and state-of-the-art amenities that seamlessly blend sophistication and comfort. The integration of lifestyle amenities is carefully planned to ensure residents have access to the epitome of comfort and convenience. Additionally, the direct access to over 600 meters of pristine beachfront adds to the appeal of this resort-style development.</p>\r\n<p>&nbsp;</p>\r\n<p>Overall, Address Residences at Al Marjan Island appears to be a sanctuary where luxury harmonizes with nature, offering residents not just a home but an elevated coastal living experience.</p>', '2028-02-29', 25, '', '', 10, '170135348615.png', '170135348681.png', '170135348629.png', '170135348617.png', '170135348643.png', '170135348642.png', '170135348614.png', '170135348666.png', '', '170135348644.png', '1701353486100.png', '170135348688.png', '170135348626.png', '170135348648.png', '170135348688.png', '1701353486100.webp', 0, '2023-11-30 19:11:26', '2023-12-06 14:40:37', '1,2,3,4', NULL, NULL, '<iframe width=\"560\" height=\"415\" src=\"https://www.youtube.com/embed/prJvnDFbnpU?si=5OezDMBGe3op1wCf&amp;controls=0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Prime Location', 'Emaar Address Residences occupies a prime location on Al Marjan Island, Ras Al Khaimah. This exclusive enclave provides residents with the luxury of being only minutes from Ras Al Khaimah International Airport and from Dubai International Airport. The strategic positioning within the four-island mega-development ensures proximity to the urban core and the town center. With direct access to over 600 meters of beachfront, residents can indulge in breathtaking views of the Arabian Sea. This sought-after address perfectly balances tranquility and accessibility, making it a premier choice for those seeking a coastal haven.', '', '', '', '', 'Infinity Pool', 'Pristine Beach', 'Captivating Sea Views', 'Parking Facility', 'Kids Play Area', 'Fitness Center'),
(53, 'Rixos Dubai Islands By Nakheel', '2600000', '80 / 20', 14, '1, 2, 3 & 4 BR Apartments', 1, '6,7,8', 'Rixos Hotel & Residences by Nakheel is the latest luxury development at Dubai Islands presenting standard 1, 2 and 3 bedroom apartments, 4 bedroom duplexes, beach houses and standalone villas.', '<p>Rixos Dubai Islands Hotel &amp; Residences is poised to epitomize the epitome of waterfront living, seamlessly blending the vibrant cityscape with the serene seafront. This iconic development promises an unparalleled fusion of urban dynamism and coastal tranquility, setting a new standard for luxury living in Dubai.</p>\r\n<p>&nbsp;</p>\r\n<p>This extraordinary project will showcase modern landscaped residences, offering an array of upscale living options, including <strong>Luxurious Apartments</strong>, <strong>Villas</strong>, &amp; <strong>Beach houses</strong>. Adding to the allure is the convenience of having an on-site Rixos hotel, promising a seamless blend of sophisticated living spaces and world-class hospitality.</p>', '2026-09-30', 26, '', '', 20, '170357668327.png', '170357668370.png', '170357668347.png', '170357684830.png', '170357668357.png', '170357668390.png', '170357668396.png', '170357668371.png', '170357668368.png', '170357668380.png', '170357668395.png', '170357668345.png', '170357684822.png', '170357668374.png', '170357668317.png', '170357668345.jpg', 0, '2023-12-26 12:44:43', '2023-12-26 12:47:28', '0', NULL, NULL, '<iframe width=\"560\" height=\"415\" src=\"https://www.youtube.com/embed/0s-6LgMJ9WM?si=oEhAs1HC3dAcWjah?controls=0\" title=\"Rixos Dubai Islands By Nakheel\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Prime Location', 'Rixos Residences is ideally located within Dubai Islands, one of the largest manmade island communities in Dubai. The luxury waterfront development is centrally located off the coast of Deira. Residents will enjoy close proximity to both the urban core of the master-planned community and the vibrant city centre.', '', '', '', '', 'Adult and Kids Pools', 'Kids Play Area', 'Gym & Fitness Centre', 'Sports Centre', 'Treatment Room', 'Lobby Cafe'),
(54, 'Farm Gardens by Emaar', '6000000', '80 / 20', 6, '4 & 5 BR villas', 1, '7', 'The Farm Gardens at The Valley. 4 & 5 bedroom stand-alone villas offering 8,000 to 10,000 square foot lots, making these one of the most sought-after spacious villas with the lowest price/sqft in Dubai.', '<p>Discover The Farm Gardens at The Valley.</p>\r\n<p>4 &amp; 5 bedroom stand-alone villas offering 8,000 to 10,000 square foot lots, making these one of the most sought-after spacious villas with the lowest price/sqft in Dubai.</p>\r\n<p>Ideally located on the Dubai-Al Ain road, This private gated neighbourhood is set within a natural, country setting, complete with world-class resort-like amenities.<br /><br /></p>\r\n<p>This private gated community features luxury villas with Emaar\'s signature finishes, lush green open spaces and resort-style amenities.After a successful first launch of</p>\r\n<p>The Farm Gardens, which sold out within hours, we are now accepting early bookings for phase 2. To learn about the available payment plans and layouts, register your interest below.</p>', '2028-03-31', 14, '', '', 20, '170565259141.png', '170565267577.png', '170565259130.png', '170565259150.png', '170565259153.png', '170565259182.png', '170565259190.png', '170565259128.png', '170565259117.png', '170565259149.png', '170565259195.png', '170565259198.png', '170565259172.png', '170565259151.png', '170565284272.png', '170565259196.png', 0, '2024-01-19 13:23:11', '2024-04-04 11:15:06', '0', NULL, NULL, '<iframe width=\"560\" height=\"415\" src=\"https://www.youtube.com/embed/HScDgrR0n1M?si=UTQ_qV4ARMSI5Dcs&amp;controls=0\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'Prime Location', 'Farm Gardens is located in the sought-after community of The Valley. The community is strategically located on Dubai - Al Ain road seamlessly connecting you to Downtown Dubai and other major hubs with minimal road congestion.', '', '', '', '', 'Pools and Private Beach', 'Padel Court', 'Fitness Centre', 'Sports Village', 'Community Farming Allotments', 'Desert Majlis & Bonfire'),
(55, 'Expo Golf Villas Phase 3', '1699888', '60 / 40', 6, '4 & 5 BR villas', 1, '7', 'Emaar Properties is presenting Phase 3 of Expo Golf Villas as Parkside 3, featuring 3 & 4 bedroom villas at Emaar South, Dubai. With Parkside 2 of Expo Golf Villas Phase 2 being a sold out and owing to the popular demand, this new development purportedly wants to introduce the same luxury and comfort, albeit on a higher scale.', '<p>Emaar Properties is set to unveil Phase 3 of Expo Golf Villas, aptly named Parkside 3, located in the prestigious Emaar South community in Dubai. These new residences feature 3 and 4-bedroom villas, aiming to elevate the standard of luxury and comfort previously established by the sold-out Parkside 2 of Expo Golf Villas Phase 2.</p>\r\n<p>With high demand driving this new development, Emaar Properties seeks to cater to families seeking a refined living experience. Positioned alongside an 18-hole golf course, Parkside 3 offers residents breathtaking views and a serene atmosphere amidst expansive green spaces.</p>\r\n<p>The project aims to impress both investors and end-buyers alike, emphasizing its prominent location within one of the most affluent communities in the UAE. By combining stylish design with functional living spaces, Parkside 3 promises to meet the needs of discerning homeowners.</p>\r\n<p>Emaar Properties prioritizes the convenience and well-being of residents, intending to create an environment that fosters solitude and tranquility. With a focus on world-class amenities and an ideal setting, these majestic villas aspire to redefine contemporary living standards in Dubai.</p>', '2022-10-31', 8, '', '', 10, '170747828021.png', '170747828097.webp', '1707478280100.webp', '170747828048.webp', '170747828048.png', '170747828048.png', '170747828046.png', '170747828026.png', '', '170747828055.png', '170747828083.png', '170747841544.png', '170747828085.png', '170747828035.png', '170747828096.png', '170747828021.webp', 0, '2024-02-09 16:31:20', '2024-06-26 14:11:00', '0', NULL, NULL, '', 'Prime Location', 'Expo Golf Villas, located adjacent to the Main Boulevard of Emaar South, offers unparalleled connectivity to key destinations in Dubai. Situated mere moments away from the Al Maktoum International Airport, residents enjoy seamless travel options, making it convenient for frequent flyers and travelers.', '', '', '', '', 'Gymnasium', 'Health Care Centre', 'Kids Play Area', 'Swimming Pool', 'Retail Outlets', 'Sports courts'),
(56, 'Expo Golf Villas Phase 4', '1791888', '60 / 40', 6, '3 & 4 BR Villas', 1, '7', 'Expo Golf Villas Phase 4 as Greenview, comprising limited edition 3 & 4 bedroom residential units, in Emaar South, Dubai.', '<p>Emaar Properties is proud to present Expo Golf Villas Phase 4, named Greenview, featuring a limited collection of 3 and 4-bedroom residential units in the prestigious Emaar South community in Dubai. Following the remarkable success of phases 1, 2, and 3, the developer responds to the strong demand from both investors and homebuyers by offering an unmissable opportunity.<br /><br />Greenview, the fourth phase of this esteemed development, is meticulously crafted to exceed your expectations. Nestled within one of Dubai\'s most sought-after neighborhoods, these residential units boast an enviable location near an <strong>18-hole championship golf course</strong>, adding an extra layer of excitement to your lifestyle.</p>\r\n<p>Moreover, the close proximity to the Expo 2020 site enhances the appeal of this investment opportunity, promising substantial growth potential. Emaar Properties further sweetens the deal with a generous 2-year post-completion payment plan, simplifying the acquisition process and providing added flexibility.</p>\r\n<p>Greenview offers two distinctive architectural styles to cater to individual preferences: modern and contemporary. Whether you prefer sleek, futuristic designs or timeless elegance, there\'s a villa style to suit your taste and lifestyle seamlessly. Don\'t miss out on the chance to secure your slice of luxury living in this vibrant community.</p>', '2022-12-31', 8, '', '', 10, '170748074537.png', '170748074566.png', '170748074583.png', '170748074597.png', '170748074542.png', '170748074562.png', '170748074591.png', '170748074580.png', '', '170748074581.png', '170748074551.png', '170748074554.png', '170748074546.png', '170748074540.png', '170748074556.png', '170748074521.webp', 0, '2024-02-09 17:12:25', '2024-06-26 14:14:56', '0', NULL, NULL, '', 'Prime Location', 'The new enclave occupies the north pocket of Emaar South, which is just 30 minutes from Downtown Dubai. The World Expo 2021, Al Maktoum International Airport and all popular attractions in Dubai are easily accessible via the adjacent boulevard.', '', '', '', '', 'Championship Golf Course', 'Kids Play Area', 'Swimming Pool', 'Retail & Dining', 'Health Care Centre', 'Barbecue Area'),
(57, 'Expo Golf Villas Phase 5 at Emaar South', '1756888', '60 / 40', 6, '3 & 4 BR Villas', 1, '7', 'Expo Golf Villas Phase 5 - Greenview Phase 2 by Emaar Properties offering 3 & 4-bedroom premium limited-edition villas in Emaar South, Dubai.', '<p>Emaar Properties proudly presents <strong>Expo Golf Villas Phase 5</strong> - Greenview Phase 2, offering premium 3 and 4-bedroom limited-edition villas in the esteemed Emaar South community, Dubai. Following the overwhelming success of the previous four phases, Phase 5 continues the legacy of excellence in Expo Golf Villas.<br /><br />Located in the north pocket of Emaar South, this new enclave provides residents with convenient access to major boulevards, including Expo 2020, Al Maktoum International Airport, and an <strong>18-Hole Championship Golf Course</strong>. Designed for modern living, each villa in Greenview Phase 2 boasts contemporary finishes and a customizable color palette, allowing homeowners to tailor their interiors to reflect their personal style.<br /><br />The community is designed to offer a modern lifestyle experience, with amenities such as a community center, pool, lawn, and children\'s play areas, all centrally located for residents\' convenience. Surrounded by neighborhood parks and abundant shared amenities, Expo Golf Villas Phase 5 fosters a strong sense of community, creating an inviting and inclusive environment for all residents to enjoy.<br /><br />Experience the epitome of modern living and luxury at Expo Golf Villas Phase 5 - Greenview Phase 2, where every detail is thoughtfully crafted to enhance your quality of life in Dubai\'s premier residential community.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '2023-04-30', 8, '', '', 10, '170748221164.png', '170748230083.png', '170748221121.png', '170748221161.png', '170748221171.png', '170748221132.png', '170748221172.png', '170748221188.png', '', '170748221173.png', '170748221195.png', '170748221180.png', '170748221175.png', '170748221195.png', '170748221183.png', '170748221118.webp', 0, '2024-02-09 17:36:51', '2024-06-26 14:10:47', '0', NULL, NULL, '', 'Prime Location', 'Latest phase 5 of Expo golf villas.This new enclave lies in the north pocket of Emaar south with access to the major boulevard including Expo 2020, Al Maktoum International Airport and 18-Hole Championship Golf Course.', '', '', '', '', 'Championship Golf Course', 'Gymnasium', 'Kids Play Area', 'Retail boulevard', 'Health Care Centre', 'Barbecue area'),
(58, 'Urbana Emaar South Dubai', '1122888', '25 / 75', 6, '2 & 3 BR Villas', 1, '9', 'Emaar Properties has launched its new 1 million square feet of beautiful homes in the name of Urbana  Townhomes, located at the Emaar South site, which is close to the Expo 2020 worldwide. Next to Al Maktoum International Airport is the Dubai Center.', '<p>Emaar Properties has recently unveiled its latest offering, Urbana 2 Townhomes, spanning an impressive 1 million square feet within the Emaar South site, strategically situated in close proximity to the Expo 2020 grounds and adjacent to the Al Maktoum International Airport, the heart of Dubai\'s commerce.<br /><br />Urbana Townhomes epitomize luxury living with a touch of elegance, offering residents a world-class living experience. These homes represent an unparalleled opportunity for individuals seeking the epitome of luxury and comfort in townhouses or villas. Moreover, they are available at affordable prices, making them an attractive option for investors seeking future development prospects in this burgeoning region.</p>\r\n<p>Investing in properties within Emaar South presents a lucrative opportunity with the potential for significant returns within a timeframe of 3-4 years. The success of this infrastructure development lies in meticulous planning and outstanding execution, hallmarks of Emaar Properties\' commitment to excellence.</p>\r\n<p>Furthermore, the community at Emaar South is thoughtfully designed with universal facilities aimed at fostering happiness and comfort among residents. From green spaces to recreational amenities, every aspect of the community is tailored to enhance the quality of life for its residents.</p>\r\n<p>In summary, Urbana&nbsp; Townhomes at Emaar South represent not only a sound investment opportunity but also a chance to experience luxury living in a vibrant and thriving community. With its prime location, affordability, and world-class amenities, Emaar South stands out as a premier destination for investors and homeowners alike.</p>', '2024-02-29', 8, '', '', 20, '170748394640.webp', '170748394680.png', '170748394667.jpg', '170748394661.png', '170748394618.png', '170748394621.png', '170748394764.png', '170748394719.png', '', '170748394649.png', '170748394687.png', '170748394645.png', '170748394640.png', '170748394645.png', '170748394612.png', '170748394652.webp', 0, '2024-02-09 18:05:47', '2024-06-26 14:14:29', '0', NULL, NULL, '', 'Prime Location', 'A safe, gated neighbourhood, Urbana III is ideally located on the crossroads between Dubai and Abu Dhabi. In addition to the 18-hole Championship golf course at its doorstep, Urbana, Urbana is only a few moments away from the globally significant Expo 2021 and the Al Maktoum International Airport.', '', '', '', '', 'Amusement Park', 'Gymnasium', 'Health Care Centre', 'Infinity Pool', 'Kids Play Area', 'Retail Outlets'),
(59, 'Urbana 3 Emaar South Dubai', '1067888', '25 / 75', 6, '2 & 3 BR Townhouses', 1, '9', 'Urbana III, developed by Emaar Properties, is a prestigious residential address offering impeccably designed 2 and 3-bedroom townhouses situated within Emaar South, part of Dubai South.', '<p>Urbana III, developed by Emaar Properties, is a prestigious residential address offering impeccably designed 2 and 3-bedroom townhouses situated within Emaar South, part of Dubai South. This development presents an opportunity to immerse oneself in an urban lifestyle set amidst lush greenery and the world-class championship golf course.</p>\r\n<p>Strategically positioned at the crossroads between Dubai and Abu Dhabi, Urbana III residents enjoy unparalleled accessibility. The proximity to the Expo 2020 sites and Al Maktoum International Airport adds to the convenience and allure of this location, making it an ideal choice for those seeking a well-connected living experience.</p>\r\n<p>Residents can easily navigate to their favorite landmarks via the Dubai World Centre peripheral road and Sheikh Mohammed Bin Rashid Al Maktoum highway, allowing for swift access to various destinations within minutes. Whether it\'s commuting to work, visiting leisure attractions, or traveling to neighboring cities, Urbana III offers residents seamless connectivity to all their desired destinations.<br /><br />The development is designed within integrated art collection network of walkways offering an ideal evening stroll or simple relaxation on its green side. While near to the 18-hole championship golf course that offers amazing golf views from your home.</p>', '2024-02-29', 8, '', '', 20, '170748464878.webp', '170748464852.png', '170748464866.png', '170748464896.png', '170748464873.png', '170748464822.png', '170748464898.png', '170748464853.png', '', '170748464863.png', '170748464816.png', '170748464864.png', '170748464892.png', '170748464886.png', '170748464899.png', '170748464858.webp', 0, '2024-02-09 18:17:28', '2024-06-26 14:10:17', '0', NULL, NULL, '', 'Prime Location.', 'Urbana III, developed by Emaar Properties, is a prestigious residential address offering impeccably designed 2 and 3-bedroom townhouses situated within Emaar South, part of Dubai South. This development presents an opportunity to immerse oneself in an urban lifestyle set amidst lush greenery and the world-class championship golf course.', '', '', '', '', '18 Hole Golf Course', 'Gymnasium', 'Kids Play Area', 'Swimming Pool', 'Parks & Green Spaces', 'Barbecue Area'),
(60, 'Golf Link  Emaar South Dubai', '2596888', '15 / 85', 6, '3,4 & 5 BR Villas', 1, '7', 'Prestigious development Golf Links Villas by Emaar Properties comes with its exclusive designed 3, 4 & 5 bedroom villas located in Emaar South, Dubai. The development is surrounded by the lush greenery and parkland beside with its 18-Hole Championship Golf Course.', '<p>The Golf Link Villas stand as the epitome of luxury living within Emaar South, representing the pinnacle of residential excellence. These villas are nestled within a gated community, ensuring privacy and security for residents. Interconnected by shaded alleyways, the villas lead to meticulously designed parks, play areas, and swimming pools, offering families the opportunity to fully immerse themselves in alfresco living.</p>\r\n<p>Residents can choose between exquisite 4- and 5-bedroom standalone villas, each meticulously crafted to provide a luxurious lifestyle experience. Set against the backdrop of the expansive fairways of the 18-hole championship golf course, these villas offer breathtaking views and an unparalleled sense of tranquility.</p>\r\n<p>Whether enjoying leisurely strolls through the landscaped pathways or relaxing by the poolside, residents of Golf Link Villas can indulge in a lifestyle of luxury and sophistication. With its harmonious blend of elegance, comfort, and security, Golf Link Villas redefine contemporary living standards within Emaar South, making them the envy of the community.</p>', '2024-02-29', 8, '', '', 15, '170748553059.png', '170748553035.png', '170748553093.png', '170748553096.png', '170748553064.png', '170748553037.png', '170748553041.png', '170748553012.png', '', '170748553049.png', '170748553028.png', '170748553089.png', '170748553056.png', '170748553054.png', '170748553068.png', '170748553088.webp', 0, '2024-02-09 18:32:10', '2024-06-26 14:11:45', '0', NULL, NULL, '', 'Prime Location', 'The community offer state-of-the-art facilities with best in luxury class recreational facilities, easy and convenient shopping centres, a resort hotel and a well-appointed community centre, one can enjoy comfort any day of the week in addition to being within easy reach of rest of Dubai and is a roadway to Abu Dhabi.', '', '', '', '', '18 Hole Golf Course', 'Gymnasium', 'Kids Play Area', 'Swimming Pool', 'Health Care Centre', 'Retail Outlets'),
(61, 'Golf View Residence', '715888', '20 / 80', 6, '1-4 BR Apartments', 1, '6', 'Golf Views provides residents with options of 1, 2, 3, and 4-bedroom residences, each meticulously designed with stunning interior and exterior aesthetics.', '<p>Emaar Properties, renowned as a leading real estate developer in Dubai, proudly presents Golf Views, a prestigious residential project situated within the vibrant community of Emaar South. Offering a range of luxurious apartments, Golf Views provides residents with options of 1, 2, 3, and 4-bedroom residences, each meticulously designed with stunning interior and exterior aesthetics.</p>\r\n<p>Nestled within one of the finest locations in Dubai, Golf Views allows residents to embrace the beauty of nature while enjoying modern urban living. Whether it\'s waking up to panoramic views of lush green landscapes or unwinding amidst serene surroundings, residents of Golf Views are treated to an unparalleled living experience that seamlessly integrates with nature.</p>\r\n<p>With its prime location, luxurious amenities, and exceptional design, Golf Views epitomizes the essence of contemporary living in Dubai. Whether you\'re seeking a tranquil retreat or a vibrant urban lifestyle, Golf Views offers the perfect balance of luxury, comfort, and natural beauty, making it an ideal choice for discerning homeowners.</p>\r\n<p>Emaar South Golf Views is best connected by road and metro. It is close to Al Maktoum International Airport, providing easy access and exit, while the rail and metro network will facilitate communication in the city. The road network along the project offers transportation capacity for the people of southern Emaar.</p>', '2024-02-29', 8, '', '', 20, '170748629442.png', '170748629433.png', '170748629493.png', '170748629431.png', '170748629474.png', '170748629472.png', '170748629446.png', '170748629423.png', '', '170748629460.png', '170748629453.png', '170748629468.png', '170748629424.png', '170748629490.png', '170748629466.png', '170748629461.webp', 0, '2024-02-09 18:44:54', '2024-06-26 14:08:44', '0', NULL, NULL, '', 'Prime Location', 'Emaar South Golf Views is best connected by road and metro. It is close to Al Maktoum International Airport, providing easy access and exit, while the rail and metro network will facilitate communication in the city. The road network along the project offers transportation capacity for the people of southern Emaar.', '', '', '', '', '18 Hole Golf Course', 'Fully Equipped Gym', 'Kids Play Area', 'Swimming Pool', 'Parks and walkways', 'Retail Outlets'),
(62, 'Expo Golf Villas  Phase6', '1470000', '70 / 30', 6, '3 & 4 BR Villas', 1, '7', 'xpo Golf Villas Phase 6 as Greenview 3 is the newly launched residential development by Emaar Properties that features 3 & 4 bedroom units located at Emaar South, Dubai.', '<p>Expo Golf Villas Phase 6, also known as Greenview 3, is the latest residential development unveiled by Emaar Properties, featuring exquisite 3 and 4-bedroom units situated within the prestigious Emaar South community in Dubai. These residences are meticulously designed to offer residents an unparalleled lifestyle experience, characterized by serenity and luxury, complemented by a plethora of amenities.</p>\r\n<p>Located in a pristine locality, Greenview 3 ensures residents enjoy hassle-free access to Dubai\'s key destinations while being surrounded by lush green landscapes and premium community facilities. Whether you seek relaxation or adventure, everything is within reach at Greenview 3.</p>\r\n<p>Each residence in this development boasts its unique identity, providing residents with an exclusive address to call home. With an exclusive color palette that can be customized to match your choice of interiors, every detail is thoughtfully crafted to enhance your living experience.</p>\r\n<p>Furthermore, Greenview 3 offers attractive payment plan options, catering to the needs of both end-users and investors alike. Don\'t miss the opportunity to be a part of this exclusive venture and elevate your lifestyle at Expo Golf Villas Phase 6 - Greenview&nbsp;</p>', '2025-10-31', 8, '', '', 10, '170748698115.png', '170748698137.png', '170799206024.jpg', '170748698180.png', '170748698118.png', '170748698199.png', '170748698110.png', '170748698194.png', '', '170748698133.png', '170748698146.png', '170748698176.png', '170748698111.png', '170748698177.png', '170748698151.png', '170748698127.webp', 0, '2024-02-09 18:56:21', '2024-06-26 14:13:49', '0', NULL, NULL, '', 'Prime Location', 'It is located in a pristine locality that offers residents hassle-free access to the rest of Dubai and easy reach to the famous key destinations. Enjoy next door living to the lush green landscapes, lined with premium facilities of the community as well as access to everything.', '', '', '', '', '18 Hole Golf Course', 'Fully Equipped Gym', 'Kids Play Area', 'Parks and Leisure Areas', 'Swimming Pool', 'Barbecue area'),
(63, 'Fairways villas 2', '3210000', '85 / 15', 6, '3 & 4 BR Villas', 1, '7', 'Fairway Villas 2 at Emaar South is the latest standard residential development propelled by Emaar Properties offering 3 and 4 bedroom villas with golf course views', '<p>Fairway Villas 2, the latest residential development by Emaar Properties, sets a new standard of luxury living with its offering of exquisite 3 and 4-bedroom villas boasting stunning golf course views. This exclusive addition to the Emaar South community promises residents an unparalleled living experience, complete with unmatched amenities and a commitment to sustainability.</p>\r\n<p>Located within the prestigious Emaar South Dubai, Fairway Villas 2 ensures residents enjoy unrivaled connectivity. With easy access to major road networks, reaching Dubai\'s vibrant city center, renowned entertainment venues, and world-class dining establishments is effortless. Moreover, the proximity to the international airport enhances travel convenience, making it ideal for frequent flyers and travelers.</p>\r\n<p>&nbsp;</p>\r\n<p>Immerse yourself in an oasis of tranquility where every moment is crafted to elevate your senses and redefine the concept of home. The picturesque neighborhood offers a sanctuary of lush greenery, meticulously landscaped gardens, and winding pathways, inviting residents to explore and discover the perfect blend of nature and modern living.</p>\r\n<p>&nbsp;</p>\r\n<p>Each villa in Fairway Villas 2 is a masterpiece, meticulously designed to harmonize with its natural surroundings while radiating contemporary elegance. From the graceful facades to the seamless integration of indoor and outdoor spaces, every aspect has been carefully crafted to create an atmosphere of refined sophistication. Wake up to breathtaking views of rolling greens and unwind on your terrace as you bask in the gentle breeze, experiencing the epitome of luxury living.</p>', '2024-02-29', 8, '', '', 10, '170748778456.png', '170748778462.png', '170748778473.png', '170748778456.png', '170748778471.jpg', '170748778464.png', '', '', '', '170748778475.png', '170748778483.png', '170748778410.png', '170748778418.png', '170748778441.png', '170748778410.png', '170748778448.webp', 0, '2024-02-09 19:09:44', '2024-06-26 14:08:17', '0', NULL, NULL, '', 'Prime Location', 'Located within the prestigious Emaar South Dubai, Fairway Villas 2 ensures residents enjoy unrivaled connectivity. With easy access to major road networks, reaching Dubai\'s vibrant city center, renowned entertainment venues, and world-class dining establishments is effortless. Moreover, the proximity to the international airport enhances travel convenience, making it ideal for frequent flyers and travelers.', '', '', '', '', 'Swimming Pool', 'Gymnasium', 'Kids Play Area', 'Zen & Yoga Garden', 'Health Care Centre', 'Retail Outlets');
INSERT INTO `off_plans` (`id`, `title`, `price`, `plan`, `developer`, `development_type`, `property_type`, `property_sub_type`, `short_description`, `description`, `completion_dat`, `location`, `longitude`, `latitude`, `down_payment`, `banner_img`, `img1`, `img2`, `img3`, `img4`, `img5`, `img6`, `img7`, `img8`, `ame1`, `ame2`, `ame3`, `ame4`, `ame5`, `ame6`, `location_img`, `status`, `created_at`, `updated_at`, `bed_rooms`, `bath_rooms`, `measurements`, `video_url`, `prime_title`, `prime_description`, `marina_min`, `downtown_min`, `airport_min`, `jumeriah_min`, `ame_title1`, `ame_title2`, `ame_title3`, `ame_title4`, `ame_title5`, `ame_title6`) VALUES
(64, 'The Acres Meraas', '5090000', '65 / 35', 19, '3, 4 & 5 BR Villas', 1, '7', 'The Acres by Meraas represents the epitome of luxury living in Dubailand, offering a unique selection of 3, 4 & 5-bedroom standalone villas.', '<p>The Acres by Meraas represents the epitome of luxury living in Dubailand, offering a unique selection of 3, 4 &amp; 5-bedroom standalone villas. This exceptional community sets a new standard for modern living, where residents can enjoy the perfect fusion of nature and contemporary luxury.</p>\r\n<p>Villas boast contemporary design, open-plan layouts, double-height living spaces, and floor-to-ceiling windows, bringing the captivating flora indoors.The architecture and design philosophy embody a harmonious alliance between modern luxury and nature. Inspired by the elements, the architecture features stone, wood, and glass, crafting a visual symphony mirroring the natural surroundings.</p>\r\n<p>The development unfolds as a masterplan of natural living, where bespoke villas find their home amidst flourishing surroundings. Lush parks, a mere stroll away, beckon residents to effortlessly immerse themselves in the beauty of nature. Swimmable lagoons, embraced by a serene natural landscape, create a picturesque setting, and the Halo Loop Park connects neighborhoods, fostering a safe, people-centric environment.<br />Whereas, it introduces exquisite villas that redefine refined living. <br /><br />Distinguished by signature outdoor rooms and rear gardens merging seamlessly with nature, these villas boast contemporary design, open-plan layouts, double-height living spaces, and floor-to-ceiling windows, bringing the captivating flora indoors. The architecture and design philosophy embody a harmonious alliance between modern luxury and nature. Inspired by the elements, the architecture features stone, wood, and glass, crafting a visual symphony mirroring the natural surroundings.</p>', '2027-10-31', 9, '', '', 5, '170808354371.png', '170808372217.png', '170808354312.png', '170808354348.png', '170808354370.png', '170808354391.png', '170808354364.png', '170808354323.png', '170808354392.png', '170808354354.png', '170808354367.png', '170808354366.png', '170808354359.png', '170808354381.png', '170808354354.png', '170808354322.jpg', 0, '2024-02-16 16:39:03', '2024-02-29 14:49:16', '0', NULL, NULL, '', 'Prime Location', 'The Acres centrally located within the Dubailand area with a very well-connected road network, the community has direct access to the city\'s Sheikh Zayed Bin Hamdan Al Nahyan Street and Emirates Road', '', '', '', '', 'Beach Access & Pools', 'Fitness Centre & Gym', 'Indoor Games', 'Supermarkets', 'Gardens, Parks & Leisure Areas', 'Swimmable Lagoons'),
(65, 'Oria at Dubai Creek Harbour By Emaar', '1700000', '90 / 10', 6, '1, 2, & 3 BR Apartments', 1, '6', 'Oria at Dubai Creek Harbour, a new residential development by Emaar Properties lined with 1, 2 & 3 bedroom beachfront apartments.', '<p><strong>Oria</strong> at <strong>Dubai Creek Harbour</strong>, a new residential development by <strong>Emaar Properties</strong> lined with 1, 2 &amp; 3 bedroom beachfront apartments. This exclusive advancement offers a beachfront fa&ccedil;ade designed for those who appreciate the finer things in life. With its urban designs and seamless connectivity to the metro, it presents a prime investment opportunity in Dubai\'s ever-growing real estate market. From breathtaking views of Dubai Creek Canal to lush parks and iconic skyscrapers, it promises residents an enchanting tapestry of urban vibrancy and natural beauty.</p>\r\n<p>&nbsp;</p>\r\n<p>Nestled within the vibrant heart of Dubai Creek Harbour, it stands as a beacon of modern elegance amidst the dynamic urban landscape. One of the standout features is its prime location, offering seamless metro access and proximity to a plethora of attractions and amenities. From upscale residences at Creek Island to retail and dining options at Creek Marina, residents are spoiled for choice when it comes to leisure and entertainment. The nearby Central Park and Harbour Promenade provide lush green spaces and stunning cityscape views, while the Creek Harbour Beach offers a sophisticated urban experience, blending coastal charm with urban energy.</p>\r\n<p>&nbsp;</p>\r\n<p>The residential units offer a range of living spaces, each boasting impressive urban views and luxurious amenities. Designed for the modern socialite, the lounges and game rooms provide the perfect blend of entertainment and relaxation, while the outdoor and indoor gym spaces cater to the fitness enthusiast. Additionally, the 3600-sqm amenities podium serves as a lively community center, featuring a multipurpose room, state-of-the-art gym, elegant pool areas, and tranquil wellness spaces, fostering a strong sense of community and enriching the living experience.</p>', '2028-07-31', 21, '', '', 10, '171499787418.png', '171499725487.png', '171499734733.png', '171499740846.png', '171499725461.png', '171499734796.png', '171499759869.png', '', '', '171499740824.png', '171499725427.png', '171499725439.png', '171499725453.png', '171499725417.png', '171499725486.png', '171499725456.jpg', 0, '2024-05-06 16:07:34', '2024-05-20 16:00:50', '1,2,3', NULL, NULL, '', 'Prime Location', 'One of the standout features is its prime location, offering seamless metro access and proximity to a plethora of attractions and amenities. From upscale residences at Creek Island to retail and dining options at Creek Marina, residents are spoiled for choice when it comes to leisure and entertainment.', '', '', '', '', 'Beach Access', 'Marina & Yacht Club', 'Kids Play Area', 'BBQ Areas', 'Sport Facilities', 'Fitness Center'),
(66, 'AEON at Dubai Creek Harbour by Emaar', '1710000', '90 / 10', 6, '1, 2, & 3 BR Apartments', 1, '6', 'AEON at Dubai Creek Harbour, developed by the renowned Emaar Properties, lined with premium 1, 2 & 3-bedroom beachfront apartments.', '<p><strong>AEON</strong> at <strong>Dubai Creek Harbour</strong>, developed by the renowned <strong>Emaar Properties</strong>, lined with premium 1, 2 &amp; 3-bedroom beachfront apartments. This new development seamlessly integrates ultra-modern urbanism with the historic charm of Dubai Creek. Wake up to awe-inspiring open skies and picturesque water scenes, as Dubai Creek Harbour emerges as a thriving community for living, working, playing, and capturing cherished moments.<br /><br /></p>\r\n<p>Dubai Creek Harbour boasts an efficient and fully integrated transport system, featuring an extensive road and bus network, four metro stations, water taxis to Downtown Dubai, and a convenient interchange. Pedestrian-friendly streets connect the neighborhood center to open spaces, creating a trendy destination with a vibrant mix of retail, business, recreation, and community facilities.</p>\r\n<p><br />Immerse yourself in the biodiversity haven along the historic Dubai Creek, home to the Ras Al Khor Wildlife Sanctuary. Here, nature lovers can admire tens of thousands of birds in their natural habitat, adding a unique touch to the community. Find your dream home in a range of modern properties that exemplify design excellence. The architectural elements and textures coexist with a soft color palette, enhancing the surrounding views and creating a sense of modern luxury. The eclectic interiors provide the perfect setting for a private urban retreat.</p>\r\n<p>Residents of the development are treated to a visual feast from dawn to dusk. Extending views of the captivating Dubai Creek Canal, verdant parks, and Dubai\'s skyscrapers create an intricate weave of thriving energy and natural beauty. Being an inhabitant means having the metropolis at your fingertips. From Dubai Creek Harbour to pristine beaches and the city\'s bustling heart, residents are perpetually plugged into the urban grid.</p>', '2028-04-30', 21, '', '', 10, '171499970263.png', '171499970293.png', '171499970251.png', '171499970238.png', '171499970258.png', '171499970248.png', '171499970248.png', '171499970278.png', '171499970235.png', '171499970268.png', '171499970275.png', '171499970254.png', '171499970268.png', '171499970232.png', '171499970287.png', '171499970232.webp', 0, '2024-05-06 16:48:22', '2024-05-20 15:58:38', '1,2,3', NULL, NULL, '', 'Prime Location', 'Dubai Creek Harbour boasts an efficient and fully integrated transport system, featuring an extensive road and bus network, four metro stations, water taxis to Downtown Dubai, and a convenient interchange', '', '', '', '', 'Beach Access', 'Marina & Yacht Club', 'Kids Play Area', 'Sport Facilities', 'Fitness Center', 'Wellness Center'),
(67, 'Creek Edge at Dubai Creek Harbour By Emaar', '988888', '70 / 30', 6, '1, 2, & 3 BR Apartments', 1, '6,9', 'Creek Edge, offering elegant designed 1, 2 & 3 bedroom apartments and 2 & 3 bedroom townhouses located at Dubai Creek Harbour.', '<p>Creek Edge at Dubai Creek harbour by Emaar Properties, offering elegant designed 1, 2 &amp; 3 bedroom apartments and 2 &amp; 3 bedroom townhouses located at Dubai Creek Harbour. Innovated with the artistically designed units, elegantly presenting the beauty of the waterfront development that makes a unique destination choice for the residents.</p>\r\n<p>&nbsp;</p>\r\n<p>The two elegant designed towers come with its 40 and 20 storey rise above the waterfront promenade of Creek Island surrounded with a lush landscape and its leisure podium level. Residents can access its beautiful boulevard that makes your day inspiring and pleasant while you can work, play and enjoy with its outstanding surrounding.</p>\r\n<p>&nbsp;</p>\r\n<p>The Development presents the pioneer of integrated living which inspires the world with the perfect combination of dynamic experiences, innovation, and iconic design. Discover this bold vision of defining the future of living for generations to come.</p>\r\n<p>&nbsp;</p>\r\n<p>It is also near to the key destination places such as Dubai Festival City, Dubai Creek Tower, Burj Khalifa, Burj Al Arab Jumeirah, Dubai Mall everything at its ease, whereas you can shop, dine and enjoy with its nearby restaurants and clubhouses, various shopping malls and recreational facilities at its heart.</p>', '2024-05-31', 21, '', '', 20, '171500161269.png', '171500161269.png', '171500161240.png', '171500161244.png', '171500161236.png', '171500161215.png', '171500161283.png', '171500161231.png', '', '171500182588.png', '171500182548.png', '171500182562.png', '171500182563.png', '171500182567.png', '171500182595.png', '171500161234.jpg', 0, '2024-05-06 17:20:12', '2024-05-20 15:54:24', '1,2,3', NULL, NULL, '', 'Prime Location', 'Creek Edge by Emaar is strategically located in Dubai Creek Harbour, a premier waterfront destination. It is just 10 minutes away from Dubai International Airport and close to attractions such as the Ras Al Khor Wildlife Sanctuary and Downtown Dubai.', '', '', '', '', 'Swimming Pool', 'Gymnasium', 'Health Care Centre', 'Retail & Dining', 'BBQ Area', 'Kids play area'),
(68, 'Valo at Dubai Creek Harbour by Emaar', '1790000', '90 / 10', 6, '1-3 BR Apartments & Townhouse', 1, '6,9', 'Valo at Dubai Creek Harbour, the latest residential fade by Emaar Properties with premium 1 to 3-bedroom apartments & 3-bedroom townhouses.', '<p><strong>Valo</strong> at <strong>Dubai Creek Harbour</strong>, the latest residential fa&ccedil;ade by <strong>Emaar Properties </strong>with premium 1 to 3-bedroom apartments &amp; 3-bedroom townhouses. The development promises residents an unparalleled blend of elegance, comfort, and convenience. With seamless metro connectivity and mesmerizing views of the Dubai Creek and Badia Golf Course, it epitomizes modern urban living at its finest.</p>\r\n<p>&nbsp;</p>\r\n<p>Strategically located at Dubai Creek Harbour (DCH), it offers seamless connectivity to Dubai\'s key attractions and transportation hubs. With easy access to the RTA ferry terminal and metro station, residents can navigate the city with ease. The waterfront promenade, cycling track, and sports courts provide endless opportunities for outdoor recreation, while the proximity to Dubai\'s bustling heart ensures that urban conveniences are always within reach.</p>\r\n<p>&nbsp;</p>\r\n<p>The architectural identity is a testament to modernity and sustainability. Designed with locally sourced materials and innovative elements such as shaded balconies and tinted windows, its aesthetic appeal is unmatched. Every aspect has been meticulously planned to ensure sustainability, innovation, and urban elegance. From sleek one-bedroom units to spacious three-bedroom townhouses, it offers a variety of residences designed to cater to every lifestyle need. Combining the eco-friendly practices, the sustainable design comes with architectural excellence to preserve the environment while ensuring resident comfort.</p>', '2028-09-30', 21, '', '', 10, '171500388898.png', '171500388821.png', '171500388898.png', '171500388885.png', '171500388832.png', '171500388817.png', '171500388876.png', '171500388869.png', '', '171500388865.png', '171500388823.png', '171500388889.png', '171500388814.png', '171500388868.png', '171500388896.png', '171500388872.webp', 0, '2024-05-06 17:58:08', '2024-05-20 15:55:34', '1,2,3', NULL, NULL, '', 'Prime Location', 'Strategically located at Dubai Creek Harbour (DCH), it offers seamless connectivity to Dubai\'s key attractions and transportation hubs. With easy access to the RTA ferry terminal and metro station, residents can navigate the city with ease', '', '', '', '', 'Swimming Pool', 'Gymnasium', 'Kids Play Area', 'Beach Access', 'Sport Facilities', 'BBQ Areas'),
(69, 'Mangrove at Creek Beach Dubai By Emaar Properties', '1642888', '80 / 20', 6, '1, 2, & 3 BR Apartments', 1, '6', 'Mangrove at Creek Beach by Emaar Properties introduces an unparalleled waterfront living experience in the heart of Dubai Creek Harbour with 1, 2 & 3-bedroom waterfront apartments', '<p><strong>Mangrove</strong> at <strong>Creek Beach</strong> by<strong> Emaar Properties</strong> introduces an unparalleled waterfront living with 1, 2 &amp; 3-bedroom waterfront apartments, poised to become the epitome of luxury and sophistication. Nestled along the pristine shores of Creek Beach, this luxury class project offers a harmonious blend of natural beauty and urban convenience, promising residents a lifestyle of unparalleled comfort and tranquility.<br /><br /></p>\r\n<p>Mangrove located at the Creek Beach within Dubai Creek Harbour, it is perfectly situated next to the beach areas offering serene waterfront living amidst the bustling cityscape of Dubai. Residents can enjoy the tranquillity of the creek waters while being conveniently close to primary business, shopping, and entertainment destinations. Whether indulging in leisurely strolls along the 700-meter beach or immersing in the vibrant energy of nearby attractions, it strikes the perfect balance between work and play, providing residents with an unmatched sense of refined sophistication.<br /><br /></p>\r\n<p>The architectural marvel boasts high-quality construction and cutting-edge design, featuring elegant and spacious interiors adorned with superb finishes. Each residence showcases a unique exterior, complemented by light-filled living spaces, bedroom areas, and balconies that offer panoramic views of the Creek. With an emphasis on tailored living, residents can bask in the beauty of a communal inner plaza or unwind in the private pool, all while enjoying the convenience of nearby shops, restaurants, and fitness facilities.</p>', '2026-07-31', 21, '', '', 10, '171500520126.png', '171500520135.png', '171620543591.png', '171500520185.png', '171500520178.png', '171500520126.png', '171500520144.png', '171500520129.png', '', '171500520152.png', '171500520188.png', '171500520176.png', '171500520163.png', '171500520115.png', '171500520174.png', '171500520178.webp', 0, '2024-05-06 18:20:01', '2024-06-20 12:12:02', '1,2,3', NULL, NULL, '', 'Prime Location', 'With its premium locality at the Creek Beach within Dubai Creek Harbour, it is perfectly situated next to the beach areas offering serene waterfront living amidst the bustling cityscape of Dubai. Residents can enjoy the tranquillity of the creek waters while being conveniently close to primary business, shopping, and entertainment destinations.', '', '', '', '', 'Swimming Pool', 'Gymnasium', 'Beach Access', 'Kids Play Area', 'Sport Facilities', 'BBQ Areas'),
(70, 'Surf Apartments by Emaar at Dubai Creek Harbour', '1130888', '70 / 30', 6, '1, 2, & 3 BR Apartments', 1, '6', 'Emaar Properties presents Surf offering a collection of luxurious 1, 2 & 3 bedroom apartments located at Creek Beach in Dubai Creek Harbour', '<p><strong>Surf Apartments</strong> by Emaar Properties at <strong>Dubai Creek beach</strong> offering a collection of luxurious 1, 2 &amp; 3 bedroom apartments located at Creek Beach in Dubai Creek Harbour, where the city meets the beach. Welcome to the world of tomorrow at the heart of the bold vision of Dubai with its kilometers of waterfront destination bound to push the frontier architecture design and quality life.<br /><br /></p>\r\n<p>Residents can enjoy its wonderful views of Dubai Creek with its purpose-built social hubs with its blissful serenity of Ras Al Khor Wildlife Sanctuary, Dubai Square Mall and Burj Khalifa. It provides a pure mixture of art and well-planned architecture with a promise to set a new benchmark with its elegant design. With its multiple benefits of having a home at the beach location, while connecting the residents to the city&rsquo;s most relevant location points.&nbsp;&nbsp;<br /><br /></p>\r\n<p>This development provides beautiful views of Dubai Creek Marina and the pristine white beach. One can feel a sense of calmness due to its stunning location providing a stress-free lifestyle environment. Ride the wave of wonderful moments with its warm golden sand, a plaza full of unique experience and a boutique Vida Hotel.</p>', '2023-04-30', 21, '', '', 10, '171507184116.png', '171507184149.png', '171507184152.png', '171507184137.png', '171507295196.png', '171507184121.png', '171507184183.png', '', '', '171507184139.png', '171507184143.png', '171507184135.png', '171507184114.png', '171507184117.png', '171507184134.png', '171507184145.webp', 0, '2024-05-07 12:50:41', '2024-05-20 15:21:19', '1,2,3', NULL, NULL, '', 'Prime Location', 'Surf is located just a few steps away from Creek Beach, which offers a fresh wave of beach activities, gourmet restaurants and world-class entertainment venues.', '', '', '', '', 'Beach Access', 'Gymnasium', 'Kids Play Area', 'BBQ Areas', 'Retail Outlets', 'Landscape and Green Spaces'),
(71, 'Creek Gate Dubai By Emaar', '2756888', '60 / 40', 6, '1,2,3 BR Apartments', 1, '6', 'Creek Gate, situated at Dubai Creek Harbour, consists of 1, 2, and 3 luxurious apartments with balconies', '<p><strong>Creek Gate</strong> by <strong>Emaar Properties</strong> latest development situated at Dubai Creek Harbour, offering a range of 1,2 and 3 bedroom luxurious apartments with balconies overlooking breathtaking views. Residents will relish the marina lifestyle while being in close proximity to the Ras Al Khor Wildlife Sanctuary, home to a diverse array of 450 wildlife species.</p>\r\n<p>This project boasts stunning vistas of iconic landmarks like The Tower and The Island Central Park. Step outside Creek Gate and discover a bustling waterfront hotspot where Dubai\'s rich history merges seamlessly with its futuristic allure, providing an exquisite dining experience for all.</p>\r\n<p>Nestled within a vibrant marina community, Creek Gate offers panoramic views of Dubai Creek Harbour. Strategically positioned near The Tower, set to be the world\'s next tallest building, this development promises an unparalleled living experience.</p>\r\n<p>Dubai Creek Harbour is envisioned as a cutting-edge cityscape, a collaborative effort between Emaar and Dubai Holding. With the tagline \'discover life at the source,\' this project is set against the backdrop of the renowned Ras Al Khor wildlife sanctuary, celebrated for its vibrant flamingo population.</p>\r\n<p>Positioned as a \'city for tomorrow\'s families,\' Creek Harbour emphasizes state-of-the-art technology, an integrated transportation network, and environmentally sustainable surroundings. Expect dedicated pedestrian retail areas, educational institutions, healthcare facilities, an array of recreational options, and expansive green parks, creating a harmonious living environment.</p>', '2024-01-31', 21, '', '', 10, '171507969556.png', '171507969517.png', '171620299685.jpg', '171507969552.png', '171507969527.png', '171507969525.png', '', '', '', '171507969563.png', '171507969537.png', '171507969560.png', '171507969533.png', '171507969572.png', '171507969559.png', '171507969570.webp', 0, '2024-05-07 15:01:35', '2024-05-20 15:03:16', '1,2,3', NULL, NULL, '', 'Prime Location', 'Creek Gate is located in a thriving marina community with all-encompassing views of Dubai Creek Harbour. This venture is deliberately found nearest to the Tower,', '', '', '', '', 'BBQ Areas', 'Fitness Centre', 'Kids Park', 'Restaurant and Cafe', 'Sports Court', 'Wellness Center'),
(72, 'Harbour Gate Apartments by Emaar', '3132888', '50 / 50', 6, '1, 2, & 3 BR Apartments', 1, '6', 'Harbour Gate Apartments by Emaar Properties, a luxurious designed twin-stepped tower development that offers 1, 2 & 3-bedroom apartments located at Dubai Creek Harbour', '<p style=\"border: 0px solid #e3e3e3; box-sizing: border-box; --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; margin: 0px 0px 1.25em; color: #0d0d0d; font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; white-space-collapse: preserve; background-color: #ffffff;\"><span style=\"color: #0d0d0d; font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;\"><span style=\"white-space-collapse: preserve;\"><strong>Harbour Gate Apartments</strong> by <strong>Emaar Properties</strong>, a luxurious designed twin-stepped tower development that offers 1, 2 &amp; 3-bedroom apartments located at Dubai Creek Harbour. These stylishly designed units create a clear line of sight to the Dubai Creek Harbour overlooking the lush parkland below and the shimmering waters of the Creek.<br /></span></span><br /><span style=\"color: #0d0d0d; font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji;\"><span style=\"white-space-collapse: preserve;\">The Harbour Gate Apartments by Emaar Properties sound like a fantastic place to live! The combination of luxurious design, waterfront views, and access to leisure facilities makes it an appealing choice for many. Plus, being located in Dubai Creek Harbour adds to its allure, with its proximity to key locations like Downtown Dubai and Dubai International Airport.</span></span></p>\r\n<p style=\"border: 0px solid #e3e3e3; box-sizing: border-box; --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; margin: 1.25em 0px; color: #0d0d0d; font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; white-space-collapse: preserve; background-color: #ffffff;\">The emphasis on providing residents with a vibrant lifestyle is evident in the amenities offered, such as the fully equipped gymnasium for workouts and the temperature-controlled swimming pool for relaxation. The views of the lush parkland and Dubai Creek Harbour from the apartments must be breathtaking, creating a serene yet stimulating environment.</p>\r\n<p style=\"border: 0px solid #e3e3e3; box-sizing: border-box; --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; margin: 1.25em 0px; color: #0d0d0d; font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; white-space-collapse: preserve; background-color: #ffffff;\">The convenience factor is also notable, with easy access to major roadways and proximity to the Creek Marina. This makes it convenient for residents to explore the surrounding areas and enjoy all that Dubai has to offer.</p>\r\n<p style=\"border: 0px solid #e3e3e3; box-sizing: border-box; --tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(69,89,164,.5); --tw-ring-offset-shadow: 0 0 transparent; --tw-ring-shadow: 0 0 transparent; --tw-shadow: 0 0 transparent; --tw-shadow-colored: 0 0 transparent; margin: 1.25em 0px 0px; color: #0d0d0d; font-family: S&ouml;hne, ui-sans-serif, system-ui, -apple-system, \'Segoe UI\', Roboto, Ubuntu, Cantarell, \'Noto Sans\', sans-serif, \'Helvetica Neue\', Arial, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; white-space-collapse: preserve; background-color: #ffffff;\">Overall, Harbour Gate Apartments seem like a perfect blend of luxury, convenience, and scenic beauty, making it an attractive option for those looking for a premium living experience in Dubai.</p>', '2022-08-31', 21, '', '', 20, '171508194410.png', '171508194419.png', '171508194423.png', '171508194433.png', '171508194455.png', '171508194492.png', '171508194471.png', '', '', '171508194456.png', '171508194462.png', '171508194437.png', '171508194449.png', '171508194435.png', '171508194412.png', '171508194456.webp', 0, '2024-05-07 15:39:04', '2024-05-20 14:56:00', '1,2,3', NULL, NULL, '', 'Prime Location', 'Rooted in Creek Island’s parkland, Harbour Gate is easily accessible via the circular boulevard.', '', '', '', '', 'Swimming Pool', 'Gymnasium', 'Kids Play Area', 'Retail boulevard', 'Sport Facilities', 'Spa and Sauna'),
(73, 'Palace Residences North By Emaar', '1230000', '80 / 20', 6, '1, 2, & 3 BR Apartments', 1, '6', 'Palace Residences North is a premium residential project developed by Emaar Properties, situated in the vibrant Dubai Creek Harbour.', '<p><strong>Palace Residences North</strong> is a premium residential project developed by <strong>Emaar Properties</strong>, situated in the vibrant Dubai Creek Harbour. This luxurious development offers a range of living options, including 1, 2, and 3-bedroom branded apartments, as well as 3-bedroom townhouses. The 33-storey high-rise tower is designed to provide residents with unparalleled amenities and stunning views of the surrounding Creek Beach and Park.<br /><br /></p>\r\n<p>Located in the prime destination at Creek Island, an eco-friendly community known for its magnificent lifestyle. An exceptional lifestyle of ultra-modern designs and stylish as well as pedestrian friendly routes, all integrated with sustainable urban character. As it\'s located carefully and strategically in the heart of the Dubai Creek Harbour and along many beaches and water features.</p>\r\n<p>&nbsp;</p>\r\n<p>Living close to Historic Dubai Creek nestled in the most enhanced atmosphere of the city. The neighbourhood consists of world-class amenities, where the development provides direct access to 5-star hotel services. The brilliant Creek promenade is available at your doorstep, offering easy access to the gourmet restaurants, retail and floating deck areas.</p>', '2027-06-30', 21, '', '', 10, '171577305843.png', '171577300921.png', '171577300940.png', '171577300984.png', '171577300962.png', '171577300993.png', '171577300989.png', '', '', '171577300999.png', '171577300974.png', '171577300971.png', '171577300918.png', '171577300978.png', '171577300912.png', '171577300994.webp', 0, '2024-05-15 15:36:49', '2024-05-20 14:48:51', '0', NULL, NULL, '', 'Prime Location', 'The breathtaking Palace Residences North are steps away to the Palace hotel, providing convenient access to a variety of 5-star amenities. Whether you wish to relax at the spa or savour exceptional gourmet cuisine, the Palace hotel is just steps from your home.', '', '', '', '', 'BBQ Areas', 'Gymnasium', 'Swimming Pool', 'Kids Play Area', 'Retail Outlets', 'Sports courts'),
(74, 'Creek Rise Apartments', '1365888', '25 / 75', 6, '1, 2, & 3 BR Apartments', 1, '6', 'Creek Rise Apartments by Emaar Properties that comes with its elegant designed 1, 2 & 3-bedrooms units located at Dubai Creek Harbour, Dubai.', '<p><strong>Creek Rise Apartments</strong> by Emaar Properties features elegantly designed <strong>1, 2, and 3-bedroom</strong> units at Dubai Creek Harbour. This development includes two high-rise residential buildings with unparalleled views of Creek Island&rsquo;s Parkland and Dubai Creek Tower.</p>\r\n<p>Situated in the northern part of Creek Island, the apartments offer direct access to the island&rsquo;s circular boulevard and are a short walk from Emaar Square, a new global retail destination. Residents also enjoy easy access to Dubai\'s main roads, Downtown Dubai, and Dubai International Airport, all within a 10 to 15-minute drive.</p>', '2023-06-01', 21, '', '', 15, '171585420518.png', '171585420525.png', '171585420583.png', '171585420551.png', '171585420540.png', '171585420547.png', '171585420588.png', '', '', '171585420593.png', '171585420543.png', '171585420563.png', '', '171585420520.png', '171585420582.png', '171585420542.webp', 0, '2024-05-16 14:10:05', '2024-05-16 14:10:05', '1,2,3', NULL, NULL, '', 'Prime Location', 'Nestled in the northern part of Creek Island, Creek Rise Apartments offers stunning parkland views and direct access to the island’s circular boulevard. Just a short walk from Emaar Square, the new global retail destination, it provides convenient access to Dubai’s main roads, Downtown Dubai, and Dubai International Airport within 10 to 15 minutes.', '', '', '', '', 'Swimming Pool', 'Kids Play Area', 'Gymnasium', 'Aqua SPA', 'Sport Facilities', 'BBQ Areas'),
(75, 'The Heights Country Club and Wellness By Emaar', '2490000', '80 / 20', 6, '3,4 Bedrooms Villas', 1, '7,9', 'The Heights Country Club and Wellness by Emaar Properties, an opulent residential development offering luxurious 3 and 4-bedroom townhouses, and semi-detached villas.', '<p>The Heights Country Club and Wellness by Emaar Properties, an opulent residential development offering luxurious 3 and 4-bedroom townhouses, and semi-detached villas. This newly launched development comes under the pristine community sprawling across 81 million square feet at the intersection of Expo and Emirates Road in Dubai. <br /><br />The total cost of the luxury projects will be AED 96bn (USD 21bn). Real estate in the community will be traditionally focused on luxury and comfort of residents.The project sets a new standard in high-end living, with a commitment to excellence, world-class integrated destinations, elevating the lifestyle experience for residents.</p>', '2028-03-31', 9, '', '', 10, '171628239745.png', '171628239767.png', '171628239775.png', '171628239784.png', '171810891869.png', '171628239747.png', '', '', '', '171628239761.png', '171628239743.png', '171628239797.png', '171628239780.png', '171628239740.png', '171628239762.png', '1716282397100.webp', 0, '2024-05-21 13:06:37', '2024-06-11 16:54:15', '3,4', NULL, NULL, '', 'Prime Location', 'The Heights Country Club and Wellness is located within the newest residential community in Dubai, situated at the prime intersection of Expo and Emirates Road', '', '', '', '', 'Gym', 'Kids\' play Area', 'Health Care Centre', 'Garden Area', 'Spa and Sauna', 'Retail Center'),
(76, 'Riverside By Damac at Dubai Investment Park', '1990000', '75 / 25', 21, '4 & 5 BR villas & Townhouse', 1, '7,9', 'Damac Riverside developed by Damac Properties with premium collection of 4 & 5-bedroom villas and townhouses.', '<p><strong>Damac Riverside </strong>by Damac Properties with premium collection of 4 &amp; 5-bedroom villas and townhouses. This meticulously crafted newest community sets a new standard in luxury living, promising an unparalleled blend of sophistication, convenience, and tranquillity.</p>\r\n<p>&nbsp;</p>\r\n<p>Nestled along the serene riverside, the development boasts a total of 1,900 residences spread across three to four clusters, fostering an intimate and less congested community ambiance. With an emphasis on spaciousness and exclusivity, this development offers only villas and townhouses, catering to discerning individuals and families seeking opulent living spaces.</p>\r\n<p>&nbsp;</p>\r\n<h2><strong>GREEN VEIN</strong></h2>\r\n<p>Green Vein is dedicated to sustainability and holistic well-being, providing residents with a sanctuary to reconnect with nature and embrace a healthier lifestyle. This verdant oasis features a variety of amenities designed to nurture the mind, body, and soul:</p>\r\n<p><strong>Outdoor Culinary Classes</strong>: Residents can participate in cooking classes amidst hydroponic farms, using fresh, organic produce. These classes not only offer delicious meals but also educate participants on sustainable living practices.<br /><br /><strong>BBQ and Live Cooking Stations</strong>: These areas are perfect for communal gatherings, where neighbors can bond over alfresco dining experiences, fostering a strong sense of community.</p>\r\n<h2><br />WATER VEIN</h2>\r\n<p>Water Vein offers a dynamic and immersive aquatic experience, providing residents with exhilarating adventures and memorable moments amidst Dubai\'s shimmering waters. The amenities cater to a wide range of interests and preferences:</p>\r\n<p><strong>Floating Sports and Splash Climbing</strong>: These activities offer exciting ways to stay active and enjoy the water.</p>\r\n<p><strong>Essential Oil Lakes and Hydrodynamic Fitness Spaces</strong>: These unique features provide relaxation and fitness opportunities in a serene aquatic environment.</p>\r\n<p><strong>Portofino Restaurant and Island Restaurant</strong>: These dining venues offer exquisite culinary experiences with panoramic waterfront views, allowing residents to indulge in delicious meals while enjoying the beautiful surroundings.</p>', '2027-12-31', 27, '', '', 5, '171629572842.png', '171629575559.png', '171629572864.png', '171629572865.png', '171629572898.png', '171629572823.png', '', '', '', '171629572852.png', '171629572829.png', '171629572837.png', '171629572879.png', '171629572870.png', '171629572869.png', '171629572820.webp', 0, '2024-05-21 16:48:48', '2024-05-21 16:54:08', '4,5', NULL, NULL, '', 'Damac Riverside Location', 'Riverside is located near the junction of Sheikh Zayed Bin Hamdan Al Nahyan St and Yalais St/Jebel Ali-Al Hibab Rd, providing good access to key areas of the city', '', '', '', '', 'Swimming Pool', 'Kids Play Area', 'Health Care Centre', 'Aqua SPA', 'Health Care Centre', 'Sports courts'),
(77, 'Vida Residences at Creek Beach', '1244888', '20 / 80', 6, '1, 2, & 3 BR Apartments', 1, '6', 'Vida Residences at Creek Beach by Emaar Properties is a prestigious beachfront development situated in Dubai Creek Harbour (DCH), UAE. This exclusive project offers elegantly designed 1, 2, and 3-bedroom apartments', '<p>Vida Residences at Creek Beach by Emaar Properties is a prestigious beachfront development situated in Dubai Creek Harbour (DCH), UAE. This exclusive project offers elegantly designed 1, 2, and 3-bedroom apartments with breathtaking views of the Creek Tower and surrounding areas.</p>\r\n<p>Key Features:</p>\r\n<ul>\r\n<li><strong>High-Rise Living</strong>: The 33-storey branded tower offers luxurious living spaces adjacent to the award-winning Vida Hotel, providing top-notch dining and hospitality experiences.<br /><br /></li>\r\n<li><strong>Waterfront Lifestyle</strong>: The development emphasizes a stress-free environment, promoting a luxurious waterfront lifestyle.<br /><br /></li>\r\n<li><strong>Strategic Location</strong>: Positioned in Dubai Creek Harbour, residents can enjoy the serene views of Dubai Creek and easy access to social hubs, the Ras Al Khor Wildlife Sanctuary, Dubai Square Mall, and the iconic Burj Khalifa.<br /><br /></li>\r\n<li><strong>Connectivity</strong>: The development ensures residents are well-connected to the city\'s major landmarks and points of interest.</li>\r\n</ul>\r\n<p>Vida Residences at Creek Beach combines the allure of beachfront living with the convenience and luxury of a world-class urban development.</p>', '2023-07-31', 21, '', '', 20, '172121911742.png', '172121911716.png', '172121911753.png', '172121911724.png', '172121911768.png', '172121911769.png', '', '', '', '1721219117100.png', '172121911722.png', '172121911726.png', '172121911721.png', '172121911725.png', '172121911794.png', '172121911761.webp', 0, '2024-07-17 16:25:17', '2024-07-17 16:52:09', '1,2,3', NULL, NULL, '', 'Prime Location', 'Strategically situated between Downtown Dubai and Dubai Marina, and flanked by Al Khail Road, the community offers easy access to the city\'s most popular', '', '', '', '', 'Beach Access', 'Restaurants & Cafes', 'Gymnasium', 'BBQ Areas', 'Kids Play Area', 'Swimming Pool'),
(78, 'ARLO at Dubai Creek Harbour by Emaar Properties', '1700888', '90 / 10', 6, '1, 2, & 3 BR Apartments', 1, '6,9', 'Introducing Arlo by Emaar Properties. A stunning new high-rise residential development located in the sought-after Dubai Creek Harbour community.', '<p>Discover Arlo by Emaar Properties, a stunning high-rise residential development in Dubai Creek Harbour. A stunning new high-rise residential development located in the sought-after Dubai Creek Harbour community. Featuring a stunning modern design and the very latest sustainability practices Arlo provides a range of luxury one to three-bedroom apartments and a limited selection of 3-bed townhouses with expansive rooftop terraces.</p>\r\n<p>Along with beautifully crafted properties, Arlo offers a vibrant lifestyle and an excellent range of hotel-style amenities. A stunning infinity pool overlooking the water, top-class fitness areas, and landscaped gardens are just some of the inclusions that make living at Aura exceptional.</p>\r\n<p>Arlo&rsquo;s prime location places it just minutes away from the stunning Creek Beach, offering breathtaking views of the peaceful creek waters. Its close proximity to Dubai&rsquo;s major business, shopping, and entertainment districts makes it a highly desirable residential option.</p>\r\n<p>The developer behind the Arlo at Dubai Creek Harbour is Emaar Properties. A distinguished name in Dubai and a leading global real estate company, Emaar is best known for being the developer behind world-renowned projects such as the Burj Khalifa and Dubai Marina.</p>\r\n<p>Since being established in 1997 the company has built an extensive portfolio that includes residential communities, retail spaces, hospitality venues, and entertainment and leisure facilities. By mid-2024, Emaar Properties has completed over 108,000 residential units, with more than 25,000 off-plan properties currently in development.</p>\r\n<p>Emaar&rsquo;s most notable projects include Downtown Dubai, Arabian Ranches, and Dubai Hills Estate. These award-winning communities are regarded as some of the finest examples of fully integrated master communities in the UAE.</p>\r\n<p>&nbsp;</p>', '2028-10-31', 21, '', '', 10, '172258398581.png', '172258404443.png', '172258398564.png', '172258398538.png', '172258398597.png', '172258398510.png', '', '', '', '172258398512.png', '172258398515.png', '172258398519.png', '172258398574.png', '172258398584.png', '', '172258398576.png', 0, '2024-08-02 11:33:05', '2024-08-02 12:46:46', '1,2,3', NULL, NULL, '', 'Prime Location', 'Boasting a waterfront location in one of Dubai’s fastest-growing new developments: Dubai Creek Harbour', '', '', '', '', 'Swimming Pool', 'Gymnasium', 'Retail & Dining Options', 'BBQ Facilities', 'Community Parks', 'Town Centre'),
(79, 'Altus at Dubai Creek Harbour by Emaar Properties', '1600000', '80 / 20', 6, '1, 2, & 3 BR Apartments', 1, '6', 'ALTUS by Emaar Properties is a stunning new mid-rise residential development located in the sought-after Dubai Creek Harbour community.', '<p>ALTUS by Emaar Properties is a stunning new mid-rise residential development located in the sought-after Dubai Creek Harbour community. Featuring a modern design and the latest sustainability practices, ALTUS offers a range of luxury one to three-bedroom apartments and a limited selection of 3-bedroom townhouses with expansive rooftop terraces.</p>\r\n<p><br />Alongside beautifully crafted properties, ALTUS provides a vibrant lifestyle and an exceptional range of hotel-style amenities. Residents can enjoy a stunning infinity pool overlooking the water, top-class fitness areas, and landscaped gardens, making living at ALTUS truly exceptional.</p>\r\n<p>ALTUS&rsquo;s prime location places it just minutes away from the beautiful Creek Beach, offering breathtaking views of the peaceful creek waters. Its close proximity to Dubai&rsquo;s major business, shopping, and entertainment districts makes it a highly desirable residential option.</p>', '2029-01-31', 21, '', '', 10, '172258629683.png', '172258629662.png', '172258629647.png', '172258629677.png', '172258629693.png', '172258629654.png', '172258629615.png', '', '', '172258887857.png', '172258629698.png', '172258629656.png', '172258629657.png', '172258629651.png', '172258629610.png', '172258629666.png', 0, '2024-08-02 12:11:36', '2024-08-02 12:54:38', '1,2,3', NULL, NULL, '', 'Prime Location', 'Waterfront location in Dubai Creek Harbour, one of Dubai’s fastest-growing developments.', '', '', '', '', 'Swimming Pool', 'Gymnasium', 'Health Care Centre', 'Aqua SPA', 'Parks and green spaces', 'BBQ Areas'),
(80, 'Club Place at Dubai Hills Estate By Emaar Properties', '1480000', '80 / 20', 6, '1, 2, & 3 BR Apartments', 1, '6', 'Discover Club Place by EMAAR Properties. A stunning new apartment project strategically located on the golf course side of the hugely popular Dubai Hills Estate.', '<p>Discover Club Place by EMAAR Properties at dubai Hills, a stunning new apartment project strategically located on the golf course side of the hugely popular Dubai Hills Estate. This premium location offers residents sprawling views of the beautifully designed and evergreen Dubai Hills Golf Course, providing a serene and picturesque living environment. Residents at Club Place will enjoy a luxurious lifestyle with easy access to the lush green fairways and world-class amenities of the Dubai Hills Golf Club.</p>\r\n<p>Boasting a range of 1, 2, and 3-bedroom options, the apartments at Club Place are designed to maximize views and incorporate high-end finishes, ensuring a modern and elegant living space. The building features a slick, modern design that uses natural tones, seamlessly blending with the surrounding landscape. Large balconies are incorporated into each apartment to maximize the stunning views of the golf course and the lush green surroundings.</p>\r\n<p>Additionally, a stunning rooftop terrace allows residents to enjoy glorious panoramic views, making it a perfect spot for relaxation and social gatherings.</p>', '2028-12-31', 20, '', '', 10, '172258832453.png', '172258832499.png', '172258832486.png', '172258832431.png', '172258832499.png', '172258832418.png', '', '', '', '172258832434.png', '172258832449.png', '172258832436.png', '172258832448.png', '172258832440.png', '172258832474.png', '172258832457.png', 0, '2024-08-02 12:45:24', '2024-08-02 12:46:33', '1,2,3', NULL, NULL, '', 'Prime Location', 'Situated on the golf course side of Dubai Hills Estate, offering unobstructed views of the Dubai Hills Golf Course.', '', '', '', '', 'Swimming Pool', 'Kids Play Area', 'Health Care Centre', 'Zen & Yoga Garden', 'Spa and Sauna', 'BBQ Areas'),
(81, 'Palace Residences at Dubai Hills Estate', '1760000', '80 / 20', 6, '1, 2, & 3 BR Apartments, Townhouse', 1, '6,9', 'Emaar Properties presents the latest launch of Palace Residences, the first 5-star branded residence in Dubai Hills Estate, lined with premium 1, 2 & 3-bedroom apartments and 3-bedroom townhouses.', '<p>Emaar Properties presents the latest launch of Palace Residences, the first 5-star branded residence in Dubai Hills Estate, lined with premium 1, 2 &amp; 3-bedroom apartments and 3-bedroom townhouses. Situated amidst the lush greenery of Dubai Hills Park, this development redefines contemporary elegance with its sleek, modern design and natural materials in the luxury signature of Palace Hotels Resorts style.<br /><br /></p>\r\n<p>Strategically located between Downtown Dubai and Dubai Marina, with easy access to Al Khail Road, it offers residents unparalleled connectivity to the city\'s most popular districts and attractions. Within minutes, you can reach Dubai\'s vibrant lifestyle hubs, including Downtown Dubai, Dubai Marina, and both international airports. Additionally, the community\'s proximity to the planned Etihad Rail and Dubai Metro lines ensures fast and easy access to airports and other emirates in the future.<br /><br /></p>\r\n<p>As you consider your next move in the world of luxury and leisure, it stands out as a beacon of elegance and sophistication. Whether you\'re seeking a cozy urban retreat or a spacious family home, there\'s a residence to suit every lifestyle. Vast balconies and lush landscape views ensure that every home is a sanctuary of comfort and tranquility. With panoramic views of the park and convenient access to Dubai Hills Mall, residents enjoy a vibrant yet serene lifestyle.<br /><br /></p>\r\n<p>Step into a world of unparalleled amenities designed to redefine your lifestyle. From the moment you enter the beautiful Palace branded lobby, you are greeted with elegance and grandeur. Multiple swimming pools, sports facilities, and sky terraces on all three towers provide residents with ample opportunities for relaxation and recreation. Whether you\'re enjoying the lagoon views from your balcony or preparing a meal in the semi-closed kitchen, every detail has been carefully crafted to enhance your living experience.<br /><br /></p>\r\n<p>With its prime location, world-class amenities, and exquisite living spaces, it offers a lifestyle beyond compare. Whether you\'re seeking a permanent residence or an investment opportunity, this newly launched fa&ccedil;ade promises a future filled with luxury, comfort, and endless possibilities.</p>', '2024-04-30', 20, '', '', 10, '172259522149.png', '172259522181.png', '172259522173.png', '172259522158.png', '172259522154.png', '172259522119.png', '', '', '', '172259522138.png', '1722595221100.png', '172259578769.png', '172259522114.png', '172259522167.png', '172259522161.png', '172259522197.png', 0, '2024-08-02 14:40:21', '2024-08-02 14:49:47', '1,2,3', NULL, NULL, '', 'Prime Location', 'Palace Residences has direct access to Al Khail Road, making it a breeze to get around the city. This convenient location enables residents to reach key areas such as Business Bay, Dubai Marina and Dubai International Airport in just 25 minutes or less.', '', '', '', '', 'Gardens and Parks', 'Gymnasium', 'Health Care Centre', 'BBQ Areas', 'Swimming Pool', 'Paddle Tennis');
INSERT INTO `off_plans` (`id`, `title`, `price`, `plan`, `developer`, `development_type`, `property_type`, `property_sub_type`, `short_description`, `description`, `completion_dat`, `location`, `longitude`, `latitude`, `down_payment`, `banner_img`, `img1`, `img2`, `img3`, `img4`, `img5`, `img6`, `img7`, `img8`, `ame1`, `ame2`, `ame3`, `ame4`, `ame5`, `ame6`, `location_img`, `status`, `created_at`, `updated_at`, `bed_rooms`, `bath_rooms`, `measurements`, `video_url`, `prime_title`, `prime_description`, `marina_min`, `downtown_min`, `airport_min`, `jumeriah_min`, `ame_title1`, `ame_title2`, `ame_title3`, `ame_title4`, `ame_title5`, `ame_title6`) VALUES
(82, 'Park Lane Interiors by VIDA', '1400000', '80 / 20', 6, '1, 2, & 3 BR Apartments, Townhouse', 1, '6,9', 'Park Lane - Interiors by VIDA is a premium complex by Emaar Properties in the prestigious area of Dubai Hills Estate.', '<p>Experience luxury living at Park Lane - Interiors by VIDA with stunning golf course views, elegant 1-3 bedroom apartments, townhouses and world-class amenities in Dubai Hills Estate., this development epitomizes elegance and breathtaking views. Following the remarkable success of Emaar Vida Residences, this new addition continues to set new standards and garner enthusiastic responses from buyers. Immerse yourself in a lifestyle of leisure and comfort with world-class amenities designed to elevate everyday living.</p>\r\n<p>&nbsp;</p>\r\n<p>Located within the esteemed Dubai Hills Estate, this exclusive development harmoniously blends sophistication and convenience. Overlooking a stunning 18-hole championship golf course and spanning 2,700 acres, residents are treated to breathtaking vistas and serene surroundings. With easy access to key landmarks such as Dubai Hills Mall, DHE corporate park, and GEMS Schools, residents enjoy the convenience of urban amenities within close reach. Whether unwinding in tranquil yoga and meditation areas or spending quality time with family at the kids\' play zones, Park Lane offers an unmatched living experience in the heart of Dubai.</p>\r\n<p><br />Catering to individuals with discerning tastes, Park Lane presents a luxurious and sophisticated lifestyle at every turn. From architectural excellence that seamlessly integrates with the serene landscape to meticulously designed interiors that showcase modern grace, every detail exudes elegance and refinement. Residents are offered an exquisite array of living spaces, each thoughtfully crafted with a keen eye for detail and style.</p>\r\n<p>The amenities at Park Lane cater to residents\' every need, providing a versatile hub of activity and enjoyment. From state-of-the-art gyms for fitness enthusiasts to infinity pools and children\'s play areas for leisure and relaxation, every aspect is designed to foster a sense of community and well-being.</p>\r\n<p>Nearby attractions, such as Dubai Hills Park, further enhance the living experience, offering residents a lush green oasis with wadi trails, children\'s play areas, sports facilities, and more. Whether jogging along the longest park of any community or unwinding in the outdoor gym, residents have endless opportunities for recreation and enjoyment.</p>', '2028-10-31', 20, '', '', 10, '172259815025.png', '172259815048.png', '172259815086.png', '172259815010.png', '172259850748.png', '172259815037.png', '172259815064.png', '172259815040.png', '', '172259815032.png', '172259815015.png', '172259815095.png', '172259850735.png', '172259815075.png', '172259815078.png', '172259815045.webp', 0, '2024-08-02 15:29:10', '2024-08-02 15:35:07', '1,2,3', NULL, NULL, '', 'Prime Location', 'Park Lane - Interiors by VIDA is situated close to Al Khail Road, which is one of Dubai’s main transportation arteries. This strategic location allows residents to easily reach Business Bay, Dubai Marina and Dubai International Airport within a maximum of 25 minutes.', '', '', '', '', 'Equipped Gyms', 'Kids\' Play Area', 'Swimming Pool', 'Aqua SPA', 'Parks and green spaces', 'Retail Outlets'),
(84, 'Emaar Ocean Star at rashid yachts and Marina', '1700000', '90 / 10', 6, '1, 2, & 3 BR Apartments', 1, '6', 'Ocean Star at Rashid Yachts & Marina epitomizes luxury waterfront living developed by Emaar Properties with premium 1, 2 & 3-bedroom apartments', '<p>Ocean Star at Rashid Yachts &amp; Marina is a luxury waterfront development by Emaar Properties, featuring premium 1, 2, and 3-bedroom apartments. Nestled within the prestigious Rashid Yachts &amp; Marina, it combines urban sophistication with natural serenity, offering breathtaking views of the marina and Dubai\'s iconic skyline.</p>\r\n<p>The development is a peaceful retreat amidst the dynamic cityscape, surrounded by lush greenery and waterfront promenades. Its proximity to Dubai\'s landmarks, business districts, and cultural attractions provides a perfect balance of convenience and exclusivity.</p>\r\n<p>The architecture of Ocean Star reflects Dubai\'s visionary spirit, blending classic elegance with modern design. The residences are thoughtfully designed with open kitchens, en-suite bathrooms, expansive balconies, and ample storage space, ensuring luxury and comfort.</p>\r\n<p>Residents have access to a range of world-class amenities, including a state-of-the-art gym, sports facilities, children\'s play areas, and serene gardens. The elegant canal pool and waterfront promenade offer relaxation, while alfresco dining amidst lush greenery provides a delightful culinary experience.</p>\r\n<p>Convenience is a key feature, with an on-site health clinic and close proximity to schools, shopping centers, and cultural attractions. Ocean Star at Rashid Yachts &amp; Marina offers a harmonious blend of tranquility and urban vibrancy, setting a new standard for luxury living in Dubai.</p>', '2028-07-01', 19, '', '', 10, '172319161355.png', '172319161389.png', '172319161341.png', '172319161383.png', '172319161313.png', '172319161313.png', '172319161343.png', '172319161326.png', '', '172319161365.png', '172319161382.png', '172319161350.png', '172319161353.png', '172319161328.png', '172319161361.png', '172319161363.png', 0, '2024-08-09 12:20:13', '2024-08-09 12:20:13', '1,2,3', NULL, NULL, '', 'Prime Location', 'Located in a fast up-and-coming waterfront community Ocean Star is positioned as a prime investment and one that is set to outperform the market average.', '', '', '', '', 'World Class Marina', 'Indoor and Outdoor Gyms', 'Private Beach Clubs', 'Kids’ Indoor and Outdoor Play Areas', 'BBQ Area', 'Multi-Use Games Area'),
(85, 'Palace Residences Creek Blue at dubai Creek Harbour', '1870000', '90 / 10', 6, '1, 2, & 3 BR Apartments', 1, '6', 'Palace Residences Creek Blue at Dubai Creek Harbour (DCH), a new high-rise development by Emaar Properties with premium 1 to 3-bedroom apartments.', '<p>Palace Residences Creek Blue at Dubai Creek Harbour sounds like an exceptional addition to Dubai&rsquo;s luxury real estate landscape. Its combination of modern design with natural elements, along with its prime waterfront location, makes it a standout option for those seeking both luxury and convenience. <br /><br />The seamless connectivity to Downtown Dubai and the airport, along with proximity to attractions like the Ras Al Khor Wildlife Sanctuary and Al Badia Golf Course, adds to its appealThe design&rsquo;s emphasis on natural light and outdoor living spaces, complemented by the high-end finishes and amenities, ensures a premium living experience. <br /><br />The inclusion of amenities such as a gym with pool views, multiple pools, and dedicated spaces for relaxation and social activities reflects a thoughtful approach to creating a vibrant and sustainable community. This development seems to cater to those who value a sophisticated lifestyle with a touch of nature and luxury.</p>', '2029-03-01', 21, '', '', 10, '172320193156.png', '172320193127.png', '172320193192.png', '172320193158.png', '172320193142.png', '172320193148.png', '172320193127.png', '', '', '172320193126.png', '172320193165.png', '172320193176.png', '172320193173.png', '172320193169.png', '172320193137.png', '172320193181.webp', 0, '2024-08-09 15:12:11', '2024-08-09 15:12:11', '1,2,3', NULL, NULL, '', 'Prime Location', 'Dubai Creek Harbour is a 6 million sq. ft development by Emaar Properties that offers an unrivalled waterfront lifestyle. Upon its completion, the area will house a ‘female’ version of the world’s tallest building; the Burj Khalifa.', '', '', '', '', 'Swimming Pool', 'Kids Play Area', 'Beach Acces', 'BBQ Area', 'Health Care Centre', 'Sports court'),
(86, 'Venera at The Valley 2', '248000', '80 / 20', 6, '3 & 4 Br Townhouses', 1, '9', 'Venera at the Valley Phase 2 is the latest exclusive development by Emaar Properties situated within Dubai offering premium designed 3 & 4-bedroom townhouses.', '<p><strong>Venera</strong> at <strong>The Valley Phase 2</strong> by<strong> Emaar Properties</strong> introduces an exclusive collection of<strong> 3 &amp; 4-bedroom townhouses</strong> in Dubai, each thoughtfully crafted to perfection. Nestled within a serene community, this premium development offers residences in seven unique styles: Slate, Oakley, Ravine, Serene, Nash, Vale, and Dale. These homes embody a harmonious blend of contemporary architecture and natural landscapes, creating an idyllic environment for both families and individuals.</p>\r\n<p>&nbsp;</p>\r\n<p>Located within the lush surroundings of The Valley Phase 2, Venera offers an address that combines tranquility with connectivity. With immediate access to Jebel Ali Lehbab Road, residents are conveniently close to major hubs such as Jebel Ali Industrial Area, Dubai South, and Expo 2020 sites. This strategic location ensures that the community is both easily accessible and poised for future growth within Dubai&rsquo;s dynamic landscape.</p>\r\n<p>&nbsp;</p>\r\n<p>Inspired by its serene natural surroundings, Venera offers a lifestyle where urban sophistication meets the peace of nature. The residences are designed to integrate luxury within a natural setting, surrounded by lush greenery and enhanced by top-tier amenities. The townhouses redefine modern living, featuring expansive floor-to-ceiling windows that offer sweeping views of the verdant landscape, creating a seamless connection between indoor and outdoor spaces.</p>\r\n<p>&nbsp;</p>\r\n<p>The architectural excellence extends beyond the homes, with modern facades that complement the natural beauty of the environment. Every detail has been meticulously crafted, with spacious interiors that blend elegance and functionality. Whether you&rsquo;re enjoying the privacy of your own backyard or engaging with neighbors at the community plaza, Venera caters to every aspect of contemporary living.</p>', '2028-09-30', 14, '', '', 10, '172353675847.png', '172353675862.png', '172354091718.png', '172353675863.png', '172353675889.png', '172353675848.png', '', '', '', '172353675879.png', '172353675890.png', '172353675858.png', '172353675877.png', '172353675842.png', '172353675859.png', '172353675884.webp', 0, '2024-08-13 12:12:38', '2024-08-13 13:21:57', '3,4', NULL, NULL, '', 'Prime Location', 'Velora and Venera boast a strategic position along Al Ain Road – Dubai and Jebel Ali – Lehbab Rd, offering flawless connectivity across the emirate. Just a 25-minute drive connects residents to key hubs like Dubai International Airport, Business Bay, and DIFC.', '', '', '', '', 'Fitness Area', 'Kids Play Area', 'Sports courts', 'BBQ Areas', 'Swimming Pool', 'Spa and Sauna'),
(87, 'Ocean Cove at Rashid Yachts Marina', '1760000', '80 / 20', 6, '1, 2, & 3 BR Apartments', 1, '6', 'Ocean Cove at Rashid Yachts & Marina developed by the renowned Emaar Properties with premium 1, 2 & 3-bedroom apartments in Mina Rashid.', '<p><strong>Ocean Cove </strong>at <strong>Rashid Yachts &amp; Marina</strong> by<strong> Emaar Properties</strong> offers a luxurious collection of <strong>1, 2 &amp; 3-bedroom apartments</strong> in the prestigious Mina Rashid. Surrounded by lush greenery and a full-service marina, Ocean Cove provides a refined living experience that perfectly balances relaxation and sophistication. The architectural design seamlessly blends with the verdant landscape and stunning waterfront, creating a serene yet vibrant community.<br /><br /></p>\r\n<p>Located in the heart of Rashid Yachts &amp; Marina, Ocean Cove represents the pinnacle of elegance and luxury, drawing in both discerning yacht owners and residents. This global destination is a masterful fusion of modern architecture and traditional charm, offering a luxurious lifestyle enriched by a full-service marina, an array of world-class amenities, and a diverse selection of restaurants and shops. The community is meticulously designed to deliver a unique living experience, where every aspect is crafted with precision. The surrounding lush gardens and tranquil waterfront promenade further enhance the beauty and serenity of this exceptional location, offering a peaceful retreat within the bustling city.<br /><br /></p>\r\n<p>The exclusive waterfront design of Ocean Cove reflects Dubai\'s forward-thinking vision, combining classic elegance with contemporary style. The use of premium, nature-inspired materials adds cultural richness to the modern design. Each apartment is thoughtfully crafted, featuring spacious layouts, generous storage, and expansive balconies that showcase breathtaking views of the marina and cityscape. The attention to detail is evident in the high-quality finishes and the well-planned spaces, ensuring maximum comfort and functionality. The architecture not only harmonizes with the surrounding environment but also elevates the overall aesthetic appeal of the community.</p>\r\n<p>&nbsp;</p>\r\n<p>Every day at Ocean Cove offers a heightened sense of luxury and refinement. The amenities are designed to meet the highest standards, providing residents with unparalleled comfort and convenience. A state-of-the-art fitness center, elegant swimming pool, serene gardens, and top-tier sports facilities offer endless opportunities for relaxation and recreation. The children&rsquo;s play area, along with a variety of dining and retail options, adds to the community&rsquo;s appeal. The proximity to a clinic and school enhances the convenience for families, making Ocean Cove an ideal choice for those seeking a balanced lifestyle. The lush terraces and green spaces transform outdoor living into unforgettable experiences, celebrating the essence of luxury in every moment.</p>\r\n<p>&nbsp;</p>', '2028-08-31', 19, '', '', 10, '172354042554.png', '172354074748.png', '172354042579.png', '172354042554.png', '172354042599.png', '', '', '', '', '172354042549.png', '172354042581.png', '172354042572.png', '172354042572.png', '172354042527.png', '172354042567.png', '172354042583.webp', 0, '2024-08-13 13:13:45', '2024-08-13 15:18:17', '1,2,3', NULL, NULL, '', 'Prime Location', 'Strategically situated near Marina Cubes Street, Ocean Cove offers easy access to Dubai\'s most sought-after locales. A quick 20-minute drive connects residents to the DIFC, Downtown Dubai, and Dubai International Airport.', '', '', '', '', 'Swimming Pool', 'Kids Play Area', 'Gymnasium', 'Zen & Yoga Garden', 'Retail Outlets', 'BBQ Areas'),
(88, 'Marina Views at Rashid Yachts & Marina', '1600000', '80 / 20', 6, '1-4 BR Apartments', 1, '6', 'Marina Views at Rashid Yachts & Marina is the latest jewel in Dubai\'s coastal crown by Emaar Properties, offering premium 1 to 4-bedroom apartments with unparalleled blend of luxury and maritime elegance.', '<p><strong>Marina Views</strong> at <strong>Rashid Yachts &amp; Marina by Emaar Properties</strong> is the latest gem in Dubai\'s coastal landscape, offering a collection of <strong>1 to 4-bedroom</strong> apartments that seamlessly blend luxury with maritime elegance. Set against the mesmerizing backdrop of the Arabian Gulf, this premier development promises not just breathtaking vistas but also a lifestyle infused with modern amenities and timeless charm. Located in one of Dubai\'s most prestigious areas, Marina Views redefines waterfront living with its cutting-edge design and top-tier facilities.</p>\r\n<p><br />This exceptional location offers more than just stunning views; it also situates residents close to Dubai\'s vibrant core, making it a perfect sanctuary that harmonizes tranquility with urban convenience. The community at Rashid Yachts &amp; Marina is a lively and diverse hub, embodying the dynamic essence of Dubai. The marina, featuring 430 wet berths that can accommodate yachts up to 100 meters, serves as a global destination for yacht enthusiasts. The boardwalk promenade, lined with an array of dining venues and chic boutiques, enhances the community&rsquo;s allure.</p>\r\n<p><br />Architecturally, Marina Views stands out with its sleek glass facades, aluminum accents, and modern detailing, exuding both elegance and efficiency. The interiors are meticulously designed with open-concept layouts that maximize space and natural light, embracing a minimalist aesthetic. High-end materials and finishes lend a sense of opulence, ensuring that each residence provides a distinctive living experience.<br /><br /></p>\r\n<p>Living at Marina Views means embracing a lifestyle that combines convenience with sophistication. The development features a lushly landscaped central podium, a hidden oasis that interconnects the buildings. Residents can relax in tranquil outdoor areas, complete with serene pools, offering a perfect retreat from the city\'s fast pace. The ground floor is a bustling retail area, offering a wide selection of dining, shopping, and leisure options. This seamless integration of residential and commercial spaces ensures that all amenities are within easy reach, making everyday life both convenient and luxurious.</p>\r\n<p>&nbsp;</p>', '2028-12-31', 19, '', '', 10, '172354234584.png', '172354203728.png', '172354234560.png', '172354203769.png', '172354203744.png', '', '', '', '', '172354203753.png', '172354203753.png', '172354203772.png', '172354203752.png', '172354203754.png', '172354203778.png', '172354203710.webp', 0, '2024-08-13 13:40:37', '2024-08-13 13:45:45', '1,2,3,4', NULL, NULL, '', 'Prime Location', 'Positioned strategically near Marina Cubes Street, Marina Views grants effortless access to Dubai\'s prime locations. Residents are a short 20-minute drive from key spots such as DIFC, Downtown Dubai, and Dubai International Airport, facilitating easy city navigation.', '', '', '', '', 'Swimming Pool', 'Beach Access', 'Viewing Decks', 'Marina & Yacht Club', 'Retail Outlets', 'Spa and Sauna'),
(89, 'Avena at The Valley By Emaar', '4300000', '80 / 20', 6, '4 Br Vila', 1, '7', 'Avena at The Valley is the latest residential series developed by Emaar Properties, lined with premium collection of 4 bedroom En-Suite Villas in Dubai.', '<p><strong>Avena at The Valley</strong> by <strong>Emaar Properties</strong> introduces a luxurious collection of <strong>4-bedroom</strong> en-suite villas in Dubai, where sophisticated living meets contemporary design amidst tranquil nature. These villas offer a serene yet modern lifestyle, seamlessly blending comfort with the timeless beauty of their natural surroundings. Crafted for families who seek the perfect balance between nature and modernity, the architectural design enhances both aesthetic appeal and comfort.</p>\r\n<p>Located in a prime area of <strong>The Valley</strong>, Avena offers a highly coveted address within Dubai, providing unparalleled access to the rest of the city. Its proximity to Dubai-Al Ain Road ensures seamless connectivity to key destinations across Dubai, while being just minutes away from landmarks such as the Rugby Sevens Stadium, Dubai Outlet Mall, and major business hubs. This prime location offers not only convenience but also the appeal of serene living, with access to central parks and urban amenities.</p>\r\n<p>The architectural elegance of these exclusive villas is meticulously crafted to provide a harmonious living experience, where each day is filled with relaxation and convenience. The design focuses on clean lines and modern facilities, with three distinct fa&ccedil;ade styles to choose from. Interiors are designed with warm, natural tones, creating classic living spaces that are complemented by floor-to-ceiling windows, maximizing views that inspire a sense of serenity and motivation.</p>\r\n<p>Avena is designed as a sustainable, community-oriented environment that promotes a lifestyle centered around green living. The beautifully landscaped urban gardens, forest walks, and meadow-like facilities create an environment that fosters a strong sense of community. The commitment to sustainability is evident in the thoughtfully designed villas and premium amenities, ensuring minimal environmental impact. Residents can indulge in outdoor adventures and relaxation while being part of a vibrant community that values environmental stewardship and a harmonious way of life.</p>', '2028-06-30', 14, '', '', 10, '172354468189.png', '172354468147.png', '172354476875.png', '172354468119.png', '172354468142.png', '172354468134.png', '172354468188.png', '', '', '172354468185.png', '172354468133.png', '1723544681100.png', '172354468140.png', '172354468139.png', '172354468173.png', '172354468114.webp', 0, '2024-08-13 14:24:41', '2024-08-13 14:26:08', '4', NULL, NULL, '', 'Prime Location', 'Strategically located along Al Ain Road – Dubai and Jebel Ali – Lehbab Road, Avena and Avena 2 offer unparalleled connectivity throughout the emirate. Residents are just a 25-minute journey from central hubs such as Dubai International Airport, Business Bay, and DIFC.', '', '', '', '', 'Dining Outlets', 'Green Surrounding', 'Gymnasium', 'Kids Play Area', 'Parking Facility', 'Swimming Pool'),
(90, 'Dubai Creek Residences at Dubai Creek Harbour', '1574888', '20 / 80', 6, '1, 2, & 3 BR Apartments', 1, '6', 'Creek Residences by Emaar Properties, a luxurious designed ready to move in waterfront development that offer 1, 2 & 3-bedroom apartments located at Dubai Creek Harbour, Dubai.', '<p>The Creek Residences by Emaar Properties is a luxurious, ready-to-move-in waterfront development located at Dubai Creek Harbour, Dubai. This exclusive project offers<strong> 1, 2, and 3-bedroom apartments</strong> spread across six ultra-modern towers, each designed with the highest standards of luxury and comfort. The development provides residents with an unparalleled lifestyle experience, featuring an array of world-class amenities and facilities, all set against the stunning backdrop of the marina and waterfront.</p>\r\n<p>Strategically located in Dubai Creek Harbour, the residences offer easy access to innovative recreational experiences, high-end retail establishments, and essential civic facilities, making it a true urban oasis. The development is also adjacent to the Ras Al Khor Wildlife Sanctuary, home to over 450 species of animals, including the famous Pink Flamingos, adding a unique natural element to the luxurious living experience.</p>\r\n<p>The three main residential towers of the development are notable for their impressive heights&mdash;<strong>T1 with 30 floors, T2 with 35 floors, and T3 with 40 floors&mdash;comprising a total of 872 units</strong>. Residents enjoy a variety of amenities, including access to the Island park, a waterfront promenade, Creek Beach, and a yacht club with 81 berths.</p>\r\n<p>Living at Creek Residences offers a true island retreat experience, with a strong sense of community, lush landscaping, marina yacht clubs, and a vibrant boardwalk. The towers are anchored to a podium that complements the vibrant marina lifestyle, providing residents with a beautiful, serene, and convenient living environment.</p>\r\n<p>The development\'s atmosphere is further enhanced by its beautiful waterfront areas, which are home to yacht clubs, pools, a world-class marina, and a retail podium, all contributing to the luxurious marina lifestyle and urban habitat.</p>', '2021-03-31', 21, '', '', 10, '1724062660100.png', '172406266092.png', '172406266010.png', '172406266071.png', '172406266040.png', '172406266069.png', '', '', '', '172406266045.png', '172406266068.png', '172406266056.png', '172406266013.png', '172406266086.png', '172406266081.png', '172406266046.webp', 0, '2024-08-19 14:17:40', '2024-08-19 14:22:16', '1,2,3', NULL, NULL, '', 'Prime Location', 'The property is just 2.5 km from Ras Al Khor Road which connects with Sheikh Zayed Road. This location offers easy access to the major Business Bay and Downtown Dubai.', '', '', '', '', 'Swimming Pool', 'Kids Play Area', 'BBQ Area', 'Retail boulevard', 'Marina Yacht', 'Tennis courts'),
(91, 'Creek Horizon at Dubai Creek Harbour', '1264888', '80 / 20', 6, '1, 2, & 3 BR Apartments', 1, '6', 'Creek Horizon, a twin tower development which will be situated on the Island District of The Lagoons and will attribute over 500 lofts in the form of 1, 2 & 3 bedroom apartments', '<p>Creek Horizon is a prestigious twin-tower development situated in the Island District of The Lagoons, Dubai. This remarkable project will feature over 500 lofts, including 1, 2, and 3-bedroom apartments, as well as luxurious penthouses. Additionally, villa townhouses will be available on the podium level, seamlessly connecting the two towers and providing residents with a unique and cohesive living experience.</p>\r\n<p>The twin towers of Creek Horizon soar gracefully above lush parks and shimmering waterways, offering breathtaking views from each of their over 40 stories. These towers are designed to create lasting memories with their remarkable vistas and contemporary living spaces. With over 500 modern apartments of varying sizes and a selection of exclusive townhouses, Creek Horizon offers an elevated living experience defined by exceptional style and comfort.</p>\r\n<p>Strategically located near the central park of the Island District, Creek Horizon provides residents with stunning views of the Downtown Dubai skyline, the Creek Harbour, and the Ras Al Khor Wildlife Sanctuary. The Lagoons, where this development is located, is set to become one of Dubai\'s premier residential districts. With projects in this area being competitively priced, Creek Horizon represents a valuable long-term investment in a prime location that combines natural beauty with urban sophistication.</p>', '2024-08-31', 21, '', '', 25, '172406796449.png', '172406796452.png', '172406796448.png', '172406796430.png', '172406796423.png', '', '', '', '', '172406796488.png', '172406796486.png', '172406796484.png', '172406796429.png', '172406796490.png', '172406796418.png', '172406796458.webp', 0, '2024-08-19 15:46:04', '2024-08-19 15:47:10', '1,2,3', NULL, NULL, '', 'Prime Location', 'It is located nearby to the central park of the island district and have amazing views of the Downtown skyline, the Creek Harbour, and the Ras Al Khor Wildlife Sanctuary. The Lagoons is going to be one of Dubai\'s premier residential districts. Projects currently being launched in this area offer great value in the long-term as they are priced competitively.', '', '', '', '', 'Dining Outlets', 'Gymnasium', 'Health Care Centre', 'Kids Play Area', 'Swimming Pool', 'Padel Tennis Courts'),
(92, 'Emaar Creek Water at Dubai Creek Harbour', '1780000', '90 / 10', 6, '1-4 BR Apartments, Townhouses, Penthous', 1, '6,8,9', 'Creek Waters at Dubai Creek Harbour is a new destination by Emaar Properties that is laced with premium choice of 1 to 4 bedroom waterfront apartments, 3 bedroom townhouses and 5 bedroom penthouse.', '<p><strong>Creek Waters</strong> at Dubai Creek Harbour by <strong>Emaar Properties</strong> presents an exceptional opportunity to elevate your lifestyle with a range of premium waterfront residences. This exclusive development offers a variety of beautifully designed homes, including <strong>1 to 4-bedroom apartments</strong>, <strong>3-bedroom townhouses</strong>, and an exquisite <strong>5-bedroom penthouse</strong>. Each residence is meticulously crafted, combining natural aesthetics with modern architecture to create a harmonious living environment.</p>\r\n<p>The interiors of these homes are bright and spacious, enhanced by maple lighting that adds a touch of elegance. With stunning views from balconies and rooms, these homes offer a serene and luxurious living experience. The development is equipped with a variety of basic and premium amenities, ensuring a lifestyle of comfort and convenience. Residents can enjoy sports facilities, scenic beaches, creek promenades, tree-lined walkways, picnic spots, and leisure areas, all within the natural beauty of Dubai Creek Harbour.</p>\r\n<p>Creek Waters is more than just a place to live; it\'s a community designed to address all your lifestyle needs effortlessly. With seamless connectivity to key city locations, proximity to retail outlets, spas, malls, and beaches, this development offers a hassle-free and luxurious lifestyle. Embrace a life of tranquility and convenience in this beautifully crafted paradise.</p>', '2027-09-30', 21, '', '', 10, '172414424083.png', '172414424066.png', '172414424014.png', '172414424054.png', '172414424044.png', '', '', '', '', '172414424070.png', '172414424065.png', '172414424038.png', '172414424097.png', '172414424082.png', '172414424077.png', '172414424063.webp', 0, '2024-08-20 12:57:20', '2024-08-20 12:59:31', '1,2,3,4', NULL, NULL, '', 'Prime Location', 'Creek Waters will be nestled in Creek Island, which is a part of Dubai Creek Harbour by Emaar Properties.', '', '', '', '', 'Dining Outlets', 'Gymnasium', 'Health Care Centre', 'Beach Access', 'BBQ Area', 'Swimming Pool'),
(93, 'Address Hillcrest Villas', '23000000', '80 / 20', 6, '5 Bedroom Villas', 1, '7', 'Address Hillcrest by Emaar Properties is a unique development, offering a collection of premium 5-bedroom villas under the Address Hotels + Resorts brand at Dubai Hills Estate.', '<p>Address Hillcrest by Emaar Properties is a unique development, offering a collection of premium 5-bedroom villas under the Address Hotels + Resorts brand at Dubai Hills Estate. Surrounded by lush greenery and with the serene backdrop of Dubai Hills Park, these luxury homes provide a lifestyle of elegance, tranquility, and sophistication.</p>\r\n<p>The development boasts excellent connectivity to key landmarks, business centers, industrial and commercial hubs, making it ideal for those seeking both convenience and elevated living. With easy access to a variety of facilities, Address Hillcrest offers a truly luxurious and desirable lifestyle in the heart of Dubai Hills Estate.<br /><br /></p>\r\n<p>Designed with meticulous planning, the estate combines the charm of a country village with contemporary elegance. The result is a comprehensive community that offers a comfortable and convenient lifestyle. With everything from essential amenities to world-class retail, leisure, and entertainment options just a stone\'s throw away, it truly represents the pinnacle of urban living.<br /><br /></p>\r\n<p>One of the most striking features is its proximity to nature. The verdant greenery and lush landscape that surrounds these luxurious homes make it an ideal sanctuary for those seeking a connection with the natural world. Whether it\'s a leisurely stroll, quality time with family, or moments of reflection, this idyllic neighbourhood provides the perfect backdrop for life\'s most beautiful moments.</p>\r\n<p>Residents of this development have the privilege of immersing themselves in a thriving community that is seamlessly connected to nature. Exceptional shopping, dining, leisure, and recreational experiences are just a stone&rsquo;s throw away, making every day an opportunity to explore new facets of Dubai&rsquo;s dynamic offerings.</p>', '2026-06-30', 20, '', '', 20, '172647452380.png', '172647452335.png', '172647452317.png', '172647452367.png', '172647495468.png', '172647452359.png', '', '', '', '172647452315.png', '172647452361.png', '172647452315.png', '172647495479.png', '172647452358.png', '172647452337.png', '172647452394.webp', 0, '2024-09-16 12:15:23', '2024-09-16 12:22:34', '5', NULL, NULL, '', 'Prime Location', 'Address Villas – Hillcrest is conveniently situated in close proximity to Al Khail Road, which is one of the major Dubai highways. The location ensures hassle-free commutes to some of the most well-known addresses in the emirate, such as Business Bay, Dubai Marina and Dubai International Airport, which are all a 25-minute drive away. As for public transport, the infrastructure in this area has not yet been developed, and as a result, it is recommended to move around by private vehicle', '', '', '', '', 'Swimming Pool', 'Gymnasium', 'Kids Play Area', 'Zen & Yoga Garden', 'Spa and Sauna', 'Paddle Tennis'),
(94, 'Park Field at dubai hills estate', '1060000', '70 / 30', 6, '1,2,3 BR Apartments', 1, '6', 'Park Field by Emaar Properties is a new residential development located at Dubai Hills Estate that presents elegant design residences at service.', '<p>Park Field by Emaar Properties is an exceptional residential development located in the prestigious Dubai Hills Estate, offering elegantly designed residences amidst lush greenery. This modern architectural project blends contemporary design with luxurious living, offering residents access to a range of premium amenities set within beautifully landscaped surroundings.</p>\r\n<p>Its prime location within Dubai Hills Estate places residents close to key landmarks and attractions, including an 18-hole championship golf course. The abundance of green spaces and outdoor amenities makes it an ideal setting for a balanced, tranquil lifestyle.</p>\r\n<p>These exclusive residences provide an elevated living experience, combining sophisticated interiors with breathtaking views of the surrounding landscapes. The development offers state-of-the-art amenities, ensuring residents can relax and enjoy a truly privileged lifestyle in a setting that exceeds expectations in both luxury and beauty.</p>', '2025-10-31', 20, '', '', 10, '172648456587.png', '172648456567.png', '172648456570.png', '172648456571.png', '172648456523.png', '172648456589.png', '', '', '', '172648462813.png', '172648462831.png', '172648462856.png', '172648462814.png', '172648462861.png', '172648462814.png', '172648456559.webp', 0, '2024-09-16 15:02:45', '2024-09-16 15:03:48', '1,2,3', NULL, NULL, '', 'Prime Location', 'Park Field will boast close proximity to the Al Khail Road, ensuring great road connections and an excellent commute around the rest of Dubai. That being said, occupants of the envisioned development will be able to reach Dubai Marina, Business Bay and Dubai International Airport within 25 minutes.', '', '', '', '', 'Swimming Pool', 'Kids Play Area', 'Gymnasium', 'Beach Access', 'BBQ Area', 'Retail and Restaurant Arena'),
(95, 'Velora at The Valley Phase 2', '2400000', '80 / 20', 6, '3 & 4 BR Townhouses', 1, '9', 'Velora at The Valley Phase 2 presents the next level residential development by Emaar Properties with limited series of 3 & 4-bedroom townhouses in Dubai.', '<p>Velora at The Valley Phase 2 by Emaar Properties offers a unique residential experience with its limited collection of 3 and 4-bedroom townhouses. Nestled in a prime location within Dubai, this community is inspired by the natural beauty of the surrounding landscapes. The townhouses come in six distinctive styles&mdash;Oakley, Ravine, Serene, Nash, Vale, and Dale&mdash;each blending urban convenience with the tranquility of nature. The community features rolling hills, lush meadows, rivers, picturesque valleys, and dense forest areas, all complemented by premium amenities.</p>\r\n<p>The Valley Phase 2 offers exceptional connectivity, with easy access to Jebel Ali Lehbab Road, linking residents to key business districts, leisure hubs, and prominent areas of Dubai. Its proximity to the Expo 2020 sites further enhances the appeal of this luxury community, making it ideal for those seeking a premium lifestyle with convenience.</p>\r\n<p>The architectural design seamlessly integrates with the natural landscape, offering a serene yet contemporary environment. Each unit features spacious interiors designed with practicality and sophistication in mind, with earth-toned finishes that add warmth and elegance. The expansive floor-to-ceiling windows allow natural light to flood the interiors, creating a seamless connection between indoor and outdoor spaces.</p>\r\n<p>Residents can enjoy a balanced and active lifestyle with thoughtfully designed nature-themed play areas, cycling tracks, jogging paths, and retail spaces. Whether relaxing with family in the lush greenery or exploring the community&rsquo;s amenities, Velora at The Valley Phase 2 fosters a sense of connection to nature and community, offering a truly exclusive lifestyle.</p>', '2028-08-31', 14, '', '', 10, '172649232188.png', '172649232138.png', '172649232187.png', '172649232173.png', '172649232185.png', '172649232142.png', '172649232158.png', '172649232181.png', '', '172649232124.png', '172649241547.png', '172649232121.png', '172649241536.png', '172649232117.png', '172649232190.png', '172649232135.webp', 0, '2024-09-16 17:12:01', '2024-09-16 17:13:35', '2,3', NULL, NULL, '', 'Prime Location', 'The Valley 2 is the second phase of the ever popular The Valley by Emaar Properties in Dubailand. Situated along Al Ain Road – Dubai and Jebel Ali – Lehbab Rd, it offers flawless connectivity to Dubai International Airport, Business Bay, and DIFC within 25 minutes.', '', '', '', '', 'Swimming Pool', 'Botanical Garden', 'Kids Play Area', 'BBQ Areas', 'Restaurant and Cafe', 'Sports courts'),
(96, 'Hillcrest at Town Square Dubai', '980888', '50 / 50', 16, '1, 2, & 3 BR Apartments and Duplex', 1, '6,9', 'Hillcrest on The Park at Town Square Dubai is a brand-new residential development presented by Nshama featuring lavish, 2 & 3-bedroom apartments and duplexes.', '<p>Hillcrest at Town Square Dubai by Nshama offers a unique blend of luxury, practicality, and sustainability. This premium residential project includes 1, 2, and 3-bedroom apartments, along with 3-bedroom duplexes, designed with modern aesthetics and thoughtful details. It seamlessly integrates contemporary living with nature, creating a lifestyle that balances wellness, outdoor activities, and community engagement.</p>\r\n<p>The project is located within the vibrant Town Square Dubai, a community renowned for its beautifully landscaped central park. Surrounded by jogging and cycling tracks, the green space serves as the heart of the neighborhood, providing a serene yet active environment for residents. Whether for fitness enthusiasts or those seeking relaxation, the park offers endless opportunities for outdoor enjoyment.</p>\r\n<p>The luxury apartments at Hillcrest are distinguished by sleek, modern designs with large windows that flood interiors with natural light. Each residence features porcelain-tiled floors, built-in wardrobes, and fully-equipped kitchens, combining style and practicality. The surrounding green spaces ensure stunning views and a constant connection to nature.</p>\r\n<p>Residents will also have access to top-notch amenities, including fitness centers, swimming pools, playgrounds, and sports courts, catering to a wide range of preferences. Additionally, a variety of retail outlets and cafes are just steps away, making it easy to enjoy the best of urban convenience within a peaceful, nature-centric setting. Hillcrest at Town Square offers a lifestyle that truly elevates modern living in Dubai.</p>', '2027-06-30', 28, '', '', 10, '172682998752.png', '172682998753.png', '172682791482.png', '172682791428.png', '172682791487.png', '172682791467.png', '172682791479.png', '172682791451.png', '', '172682791492.png', '172682802545.png', '172682791490.png', '172682791444.png', '172682791474.png', '172682791490.png', '172682791431.webp', 0, '2024-09-20 14:25:14', '2024-09-20 14:59:47', '1,2,3', NULL, NULL, '', 'Prime Location', 'In the blooming region of Town Square Dubai, Hillcrest on The Park is a prominent and recently launched residential benchmark with luxurious homes. Ideally positioned within the mega gated-development, it is a prime community with full of amenities and common sites to elevate the living standards of people. Your locality’s some iconic features of a spectacular town square park, more than 250 retail outlets, running and cycling tracks and many sports arenas are just at the few minutes of strolling away. The Al Qudra and Emirates Roads are the major highway options to commute to the nearby attractions and districts of Motor & Sports City, AL Barsha, Marina Walk, Global Village, Meydan, Business Bay and International Airport of Al Maktoum.', '', '', '', '', 'Swimming Pool', 'Barbecue area', 'Kids Play Area', 'Retail boulevard', 'Parking Facility', 'Gymnasium'),
(97, 'Address Residences at Dubai Creek Harbour', '2000000', '80 / 20', 6, '1, 2, & 3 BR Apartments & Townhouse', 1, '6,9', 'Address Residences at Dubai Creek Harbour marks the latest pristine residential addition by Emaar Properties to the ever-evolving community lined with premium 1, 2 & 3-bedroom apartments and townhouses.', '<p>Address Residences at Dubai Creek Harbour, developed by Emaar Properties, introduces a new era of luxury living with its premium 1, 2, and 3-bedroom apartments and townhouses. This high-rise development boasts breathtaking views of the serene waterfront, offering residents an enriched lifestyle where they can cherish moments with loved ones or explore the vibrant harbour promenade. The setting blends modern elegance with the beauty of Dubai Creek\'s waterfront, creating a distinctive living experience.</p>\r\n<p>Positioned in a prime location at Dubai Creek Harbour, Address Residences offers unparalleled connectivity and convenience. Located near Al Jaddaf and Festival City, residents enjoy easy access to all parts of Dubai, whether by metro, roadways, or water taxis. The strategic location also puts famous landmarks like the Burj Khalifa, Dubai International Airport, and Ras Al Khor Wildlife Sanctuary within easy reach, ensuring residents are always close to the action.</p>\r\n<p>The Address brand elevates this residence, blending the luxury of a five-star hotel with the warmth of home. From the grand lobby to the meticulously designed apartments, every detail reflects sophistication and style. Residents can indulge in a range of exclusive amenities while enjoying the stunning backdrop of Dubai Creek.</p>\r\n<p>Address Residences encourages an active and sustainable lifestyle. The pedestrian-friendly environment features a waterfront promenade, cycling tracks, skate parks, and sports courts for outdoor enthusiasts. The development also prioritizes environmental responsibility with energy-efficient systems, advanced lighting controls, and smart waste management practices, ensuring that luxury and sustainability go hand in hand.</p>', '2029-01-31', 21, '', '', 10, '172682977740.png', '172682977734.png', '172682957990.png', '172682957919.png', '172682957970.png', '172682957978.png', '172682957920.png', '172682957995.png', '', '172682957965.png', '172682957956.png', '172682957937.png', '172682957951.png', '172682957943.png', '172682957963.png', '172682957982.webp', 0, '2024-09-20 14:52:59', '2024-09-20 14:56:17', '1,2,3', NULL, NULL, '', 'Prime Location', 'Address Residences Dubai Creek Harbour by Emaar Properties will offer 324 luxury 1-3 bedroom apartments and townhouses. This waterfront development features contemporary design, sustainable living, and world-class amenities, expertly managed by Address Hotels + Resorts.', '', '', '', '', 'Swimming Pool', 'Gymnasium', 'Kids Play Area', 'Aqua SPA', 'Retail Outlets', 'Barbecue area'),
(98, 'Greenridge at Emaar South', '2940000', '80 / 20', 6, '3 & 4 Br Townhouses', 1, '9', 'Greenridge at Emaar South is the latest residential launch by Emaar Properties offering pristine limited edition 3 & 4 bedroom townhouses within the vibrant community.', '<p>Discover Greenridge at Emaar South, the latest residential launch by Emaar Properties. Offering limited edition 3 &amp; 4 bedroom townhouses within a vibrant community. Modern living in a serene setting.<br /><br /></p>\r\n<p>The fa&ccedil;ade at Greenridge promises a tranquil lifestyle in a leisure-inspired setting surrounded by lush greenery. With a perfect blend of contemporary elegance and modern design, it is ideal for families and individuals seeking luxury and relaxation, all complemented by premium amenities.</p>\r\n<p>Nestled in the vibrant, landscaped community of Emaar South, Greenridge boasts a prime address in Dubai. Situated close to Expo City Dubai and Al Maktoum International Airport, this development positions itself as a future city landmark. Its southern location offers seamless access to major business hubs and Dubai&rsquo;s top attractions via well-connected highways. The fa&ccedil;ade stands as a beacon of family-oriented, luxurious living, with everything conveniently within reach.</p>\r\n<p>Architecturally designed to foster connection and create lasting memories, Greenridge offers a harmonious fusion of modern living and natural beauty. The spacious townhouses cater to the needs of today&rsquo;s families, with a strong emphasis on both privacy and community. The serene environment encourages a lifestyle that blends personal peace with opportunities for interaction.</p>\r\n<p>The townhouse designs are inspired by nature, merging contemporary architecture with organic surroundings. Earthy tones and sleek lines create a seamless fusion between modern and natural elements. Exteriors are artistically crafted to reflect the surrounding greenery, while interiors feature bright, open spaces that provide a welcoming atmosphere. From expansive living areas to elegant kitchens and thoughtfully designed bedrooms, each townhouse is a sanctuary of comfort and style.</p>\r\n<p>More than just luxury homes, Greenridge offers a variety of amenities and leisure opportunities. Residents can enjoy an 18-hole championship golf course, complete with pristine fairways, manicured greens, and world-class clubhouse facilities. The community center offers a gym, swimming pool, and multipurpose rooms, while outdoor fitness areas, walking paths, and a basketball court ensure plenty of recreational options for all. Here, every aspect of the lifestyle has been thoughtfully considered, offering both relaxation and vibrant activity in one place.</p>', '2028-12-31', 16, '', '', 10, '172707854731.png', '172707854736.png', '172707854775.png', '172707854710.png', '172707854751.png', '172707854733.png', '172707854763.png', '172707854731.png', '', '172707873357.png', '172707873383.png', '172707873371.png', '172707873317.png', '172707873344.png', '172707873358.png', '172707854792.webp', 0, '2024-09-23 12:02:27', '2024-09-23 12:05:33', '3,4', NULL, NULL, '', 'Prime Location', 'Greenridge is located in Emaar South, a thriving community in the southern part of Dubai. It is situated close to Expo City Dubai and Al Maktoum International Airport, offering excellent connectivity to major business hubs and attractions in Dubai. The location provides easy access to highways such as Sheikh Mohammed Bin Zayed Road (E311) and Emirates Road (E611), making it convenient for residents to reach key destinations across the city.', '', '', '', '', 'Swimming Pool', 'Restaurants & Cafes', 'Beach Access', 'Aqua SPA', 'Kid\'s Play Area', 'Paddle Tennis');
INSERT INTO `off_plans` (`id`, `title`, `price`, `plan`, `developer`, `development_type`, `property_type`, `property_sub_type`, `short_description`, `description`, `completion_dat`, `location`, `longitude`, `latitude`, `down_payment`, `banner_img`, `img1`, `img2`, `img3`, `img4`, `img5`, `img6`, `img7`, `img8`, `ame1`, `ame2`, `ame3`, `ame4`, `ame5`, `ame6`, `location_img`, `status`, `created_at`, `updated_at`, `bed_rooms`, `bath_rooms`, `measurements`, `video_url`, `prime_title`, `prime_description`, `marina_min`, `downtown_min`, `airport_min`, `jumeriah_min`, `ame_title1`, `ame_title2`, `ame_title3`, `ame_title4`, `ame_title5`, `ame_title6`) VALUES
(99, 'Golf Hillside at Dubai Hills Estate', '1470000', '80 / 20', 6, '1, 2, & 3 BR Apartments', 1, '6', 'Golf Hillside at Dubai Hills Estate is the latest 20-storey residential development by Emaar Properties featuring a selection of premium 1, 2 and 3-bedroom apartments', '<p>Discover Golf Hillside at Dubai Hills Estate, a 20-storey residential development by Emaar Properties featuring premium 1, 2, and 3-bedroom apartments with modern amenities and stunning golf course views.</p>\r\n<p>The high-rise fa&ccedil;ade of Golf Hillside at Dubai Hills Estate showcases architectural brilliance, blending sophistication, functionality, and modern comfort. Every design detail has been meticulously crafted, offering premium-class interiors that exude refined elegance. Residents can enjoy expansive, panoramic views of iconic landmarks and the dynamic city skyline, while the exterior design promotes a seamless connection to the outdoors, fostering a close-knit community atmosphere and redefining the essence of luxury living.</p>\r\n<p>Situated within the green oasis of Dubai Hills Estate, the location offers exceptional connectivity and accessibility, ensuring residents are never far from key destinations across Dubai. Life here is convenient and stress-free, with essentials and daily needs just minutes away. Residents can enjoy proximity to Dubai Hills Mall, offering a vast selection of shopping, dining, and entertainment options. For nature lovers and golf enthusiasts, Dubai Hills Golf Club is just a stroll away, offering a peaceful retreat amidst lush greenery.</p>\r\n<p>From your private balcony, immerse yourself in serene vistas of sprawling green golf courses, undisturbed by the city&rsquo;s bustle. The fa&ccedil;ade of Golf Hillside serves as a tranquil backdrop where nature&rsquo;s calm meets vibrant urban living, offering a daily escape into a lifestyle of unparalleled luxury and ease.</p>\r\n<p>This is where the future of luxury living begins. With a contemporary design that harmonizes natural beauty and urban convenience, Golf Hillside provides residents with a fulfilling lifestyle, whether you\'re looking for a home or a valuable long-term investment.</p>\r\n<p>Amenities are thoughtfully curated to ensure every resident enjoys a high standard of living. The elevated podium deck is the centerpiece of the outdoor amenities, featuring an elegant swimming pool where you can unwind while taking in the stunning landscape. The pool deck provides the perfect setting for relaxation or spending quality time with family and friends.</p>\r\n<p>For families, the children&rsquo;s play area offers a fun and secure space for little ones to explore, while the multipurpose room adds flexibility for social gatherings, fitness classes, or personal hobbies. Fitness enthusiasts will appreciate the fully equipped gym, designed to support an active and healthy lifestyle within the comforts of home.</p>', '2028-12-31', 20, '', '', 10, '172708326748.png', '172708326730.png', '172708326725.png', '172708326794.png', '172708326765.png', '172708326726.png', '172708326791.png', '172708326747.png', '', '172708326729.png', '172708326777.png', '172708326785.png', '172708326768.png', '172708326780.png', '172708326774.png', '172708326720.webp', 0, '2024-09-23 13:21:07', '2024-09-23 13:22:16', '1,2,3', NULL, NULL, '', 'Prime Location', 'Golf Hillside is located within Dubai Hills Estate, one of Dubai’s most prestigious and sought-after communities. This prime location offers easy access to major highways, including Sheikh Mohammed Bin Zayed Road (E311) and Al Khail Road (E44), ensuring quick connectivity to key areas of Dubai such as Downtown Dubai, Dubai Marina, and Dubai International Airport.', '', '', '', '', 'Gardens and Parks', 'Health Care Centre', 'Gym & Fitness Centre', 'Kids Play Zone', 'Sport Facilities', 'Covered Parking'),
(100, 'Parkland at Dubai Hills', '1500000', '80 / 20', 6, '1, 2, & 3 BR Apartments', 1, '6', 'Parkland at Dubai Hills Estate is the latest residential facade launched by the renowned Emaar Properties promising sophisticated urban living with premium 1, 2 & 3-bedroom apartments', '<p>Discover Parkland at Dubai Hills Estate by Emaar Properties, offering premium 1, 2 &amp; 3-bedroom apartments for sophisticated urban living in the heart of Dubai.<br /><br />Parkland at Dubai Hills Estate by Emaar is a premium residential development offering 1, 2 &amp; 3-bedroom apartments designed for modern living. Nestled in a green, serene environment, the fa&ccedil;ade boasts an infinity pool, fitness center, and a rooftop lounge with stunning skyline views. Located minutes away from Al Khail Road, residents enjoy seamless connectivity to Dubai\'s vibrant city life while embracing the peaceful atmosphere of nature. With sustainable design principles, spacious living areas, and luxurious finishes, Parkland combines elegance, comfort, and convenience for an unmatched lifestyle experience.</p>', '2028-11-30', 20, '', '', 10, '172708795968.png', '172708810547.png', '172708795911.png', '172708795911.png', '172708795913.png', '1727087959100.png', '172708795932.png', '', '', '172708795982.png', '172708795931.png', '172708795957.png', '172708795934.png', '172708795989.png', '172708795994.png', '172708795991.webp', 0, '2024-09-23 14:39:19', '2024-09-23 16:30:12', '1,2,3', NULL, NULL, '', 'Prime Location', 'Parkland at Dubai Hills Estate is strategically located within the expansive Dubai Hills community, providing residents with easy access to major thoroughfares like Al Khail Road. This prime location places it just minutes away from key destinations such as Downtown Dubai, Burj Khalifa, and Dubai Mall. Residents can enjoy the lush green spaces, an 18-hole championship golf course, and a variety of world-class amenities, all while being connected to the vibrant lifestyle that Dubai has to offer.', '', '', '', '', 'Parks and walkways', 'Kids Play Area', 'Swimming Pool', 'Gymnasium', 'Health Care Centre', 'Sports courts'),
(101, 'Farm Gardens 2 at the Valley by Emaar', '7260000', '90 / 10', 6, '4 & 5 BR Villas', 1, '7', 'Emaar Properties introduces Farm Gardens Phase 2 at The Valley, offering luxurious 4 & 5-bedroom villas nestled within the heart of Dubai.', '<p>Discover luxurious 4 &amp; 5-bedroom villas at Emaar\'s Farm Gardens Phase 2 in The Valley, Dubai. Choose between Horizon and Oren styles, featuring modern designs, spacious interiors, sustainable living, and family-friendly amenities.<br /><br />These luxurious homes, available in two distinctive styles&mdash;Horizon and Oren&mdash;are designed to blend modern sophistication with a serene, nature-inspired lifestyle. Offering spacious interiors and contemporary design, the villas provide families with a tranquil retreat, combining beauty with functionality.</p>\r\n<p>Each villa is crafted with precision, highlighting expansive open spaces and abundant natural light through large, floor-to-ceiling windows that reveal stunning views of the lush surrounding landscapes. The development exemplifies refined living, from its sleek architectural design to the thoughtful incorporation of high-end materials, creating an atmosphere of elegance and calm.</p>\r\n<p>A key feature of this community is its dedication to sustainability. With eco-friendly initiatives at its core, residents can enjoy an environment designed for health, wellness, and sustainability. The inclusion of community farming activities, like hydroponic greenhouses and communal gardens, coupled with sports facilities and wellness-focused amenities, ensures a holistic living experience.</p>\r\n<p>Both Horizon and Oren villa styles offer something unique, catering to different lifestyle preferences. Horizon Villas provide a serene, balanced design, while Oren Villas focus on seamless indoor-outdoor living. Ranging from 431 sqm to 564 sqm, each villa offers ample space, large private gardens, and luxurious features such as fitted elevators and driver&rsquo;s rooms, providing the perfect blend of comfort and luxury for modern families.</p>', '2028-03-30', 14, '', '', 10, '172770328142.png', '172770328138.png', '172770328174.png', '172770328157.png', '172770328195.png', '172770328191.png', '172770328166.png', '172770328192.png', '', '172770328173.png', '172770328135.png', '172770328164.png', '172770328193.png', '172770328169.png', '172770328112.png', '172770328171.webp', 0, '2024-09-30 17:34:41', '2024-09-30 17:34:41', '4,5', NULL, NULL, '', 'Prime Location', 'Farm Gardens Phase 2 by Emaar is located within The Valley, a master-planned community situated along the Dubai-Al Ain Road (E66), offering easy access to key areas of Dubai while providing a peaceful, nature-inspired lifestyle away from the bustling city.', '', '', '', '', 'BBQ Areas', 'Gymnasium', 'Swimming Pool', 'Kids Play Area', 'Health Care Centre', 'Spa and Sauna');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `prime_nearby_locations`
--

CREATE TABLE `prime_nearby_locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `off_plan_id` int(11) DEFAULT NULL,
  `nearby_location` varchar(255) DEFAULT NULL,
  `distance` double(5,0) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `prime_nearby_locations`
--

INSERT INTO `prime_nearby_locations` (`id`, `off_plan_id`, `nearby_location`, `distance`, `created_at`, `updated_at`) VALUES
(52, 2, 'set', 2, '2023-11-03 12:10:28', '2023-11-03 12:10:28'),
(54, 4, 'Animi repellendus', 10, '2023-11-03 12:42:08', '2023-11-03 12:42:08'),
(113, 8, 'Aliquid elit aut ip', 64, '2023-11-06 07:31:20', '2023-11-06 07:31:20'),
(421, 19, 'Aliqua Perspiciatis', 58, '2023-11-08 18:14:56', '2023-11-08 18:14:56'),
(424, 20, 'Non nostrud tempore', 90, '2023-11-08 19:07:19', '2023-11-08 19:07:19'),
(505, 24, 'Distinctio Dolor ve', 43, '2023-11-13 05:48:33', '2023-11-13 05:48:33'),
(842, 9, 'Burj Khalifa', 40, '2023-11-16 13:21:35', '2023-11-16 13:21:35'),
(843, 9, 'Palm Jumeirah', 30, '2023-11-16 13:21:35', '2023-11-16 13:21:35'),
(844, 9, 'Mall of the Emirate', 35, '2023-11-16 13:21:35', '2023-11-16 13:21:35'),
(845, 9, 'Dubai Marina', 30, '2023-11-16 13:21:35', '2023-11-16 13:21:35'),
(918, 38, 'Downtown Dubai', 15, '2023-11-21 12:11:14', '2023-11-21 12:11:14'),
(919, 38, 'Dubai Marina', 15, '2023-11-21 12:11:14', '2023-11-21 12:11:14'),
(920, 38, 'Dubai International Airport', 20, '2023-11-21 12:11:14', '2023-11-21 12:11:14'),
(921, 38, 'Al Maktoum Int\'l Airport', 20, '2023-11-21 12:11:14', '2023-11-21 12:11:14'),
(930, 36, 'Dubai Marina', 5, '2023-11-21 12:22:44', '2023-11-21 12:22:44'),
(931, 36, 'Downtown Dubai', 20, '2023-11-21 12:22:44', '2023-11-21 12:22:44'),
(932, 36, 'Dubai International Airport', 22, '2023-11-21 12:22:44', '2023-11-21 12:22:44'),
(933, 36, 'Business Bay', 25, '2023-11-21 12:22:44', '2023-11-21 12:22:44'),
(942, 32, 'Burj Khalifa', 19, '2023-11-21 12:35:19', '2023-11-21 12:35:19'),
(943, 32, 'Creek Marina', 5, '2023-11-21 12:35:19', '2023-11-21 12:35:19'),
(944, 32, 'Dubai International Airport', 12, '2023-11-21 12:35:19', '2023-11-21 12:35:19'),
(945, 32, 'Jumeirah Beach', 22, '2023-11-21 12:35:19', '2023-11-21 12:35:19'),
(990, 41, 'Burj Khalifa', 20, '2023-11-28 09:26:22', '2023-11-28 09:26:22'),
(991, 41, 'Dubai International Airport', 15, '2023-11-28 09:26:22', '2023-11-28 09:26:22'),
(992, 41, 'Sheikh Zayed Road', 10, '2023-11-28 09:26:22', '2023-11-28 09:26:22'),
(993, 41, 'The Dubai Mall', 20, '2023-11-28 09:26:22', '2023-11-28 09:26:22'),
(1094, 39, 'Burj Khalifa', 40, '2023-11-30 12:50:43', '2023-11-30 12:50:43'),
(1095, 39, 'Palm Jumeirah', 30, '2023-11-30 12:50:43', '2023-11-30 12:50:43'),
(1096, 39, 'Mall of Emirate', 35, '2023-11-30 12:50:43', '2023-11-30 12:50:43'),
(1097, 39, 'Dubai Marina', 30, '2023-11-30 12:50:43', '2023-11-30 12:50:43'),
(1186, 51, 'Burj Khalifa', 2, '2023-12-01 06:30:08', '2023-12-01 06:30:08'),
(1187, 51, 'Dubai International Airport', 15, '2023-12-01 06:30:08', '2023-12-01 06:30:08'),
(1188, 51, 'Dubai Opera', 8, '2023-12-01 06:30:08', '2023-12-01 06:30:08'),
(1189, 51, 'Dubai Marin', 15, '2023-12-01 06:30:08', '2023-12-01 06:30:08'),
(1198, 6, 'Dubai Museum', 15, '2023-12-01 06:54:29', '2023-12-01 06:54:29'),
(1199, 6, 'Burj Khalifa', 20, '2023-12-01 06:54:29', '2023-12-01 06:54:29'),
(1200, 6, 'Dubai Int. Airport', 22, '2023-12-01 06:54:29', '2023-12-01 06:54:29'),
(1201, 6, 'Down Town', 19, '2023-12-01 06:54:29', '2023-12-01 06:54:29'),
(1202, 7, 'Al Maktoum International Airport', 25, '2023-12-01 06:59:04', '2023-12-01 06:59:04'),
(1203, 7, 'Downtown Dubai', 15, '2023-12-01 06:59:04', '2023-12-01 06:59:04'),
(1204, 7, 'Dubai International Airport', 25, '2023-12-01 06:59:04', '2023-12-01 06:59:04'),
(1205, 7, 'Dubai Marina', 5, '2023-12-01 06:59:04', '2023-12-01 06:59:04'),
(1206, 10, 'Motor City', 13, '2023-12-01 06:59:28', '2023-12-01 06:59:28'),
(1207, 10, 'Butterfly Garden', 15, '2023-12-01 06:59:28', '2023-12-01 06:59:28'),
(1208, 10, 'Miracle Garden', 13, '2023-12-01 06:59:28', '2023-12-01 06:59:28'),
(1209, 10, 'Global Village', 14, '2023-12-01 06:59:28', '2023-12-01 06:59:28'),
(1210, 11, 'Ras Al Khor', 5, '2023-12-01 06:59:47', '2023-12-01 06:59:47'),
(1211, 11, 'Meydan Racecourse', 10, '2023-12-01 06:59:47', '2023-12-01 06:59:47'),
(1212, 11, 'Dubai International Airport', 12, '2023-12-01 06:59:47', '2023-12-01 06:59:47'),
(1213, 11, 'Downtown Dubai', 15, '2023-12-01 06:59:47', '2023-12-01 06:59:47'),
(1214, 12, 'Ras Al Khor', 5, '2023-12-01 07:00:55', '2023-12-01 07:00:55'),
(1215, 12, 'Meydan Racecourse', 10, '2023-12-01 07:00:55', '2023-12-01 07:00:55'),
(1216, 12, 'Dubai International Airport', 12, '2023-12-01 07:00:55', '2023-12-01 07:00:55'),
(1217, 12, 'Downtown Dubai', 15, '2023-12-01 07:00:55', '2023-12-01 07:00:55'),
(1218, 13, 'Ras Al Khor', 5, '2023-12-01 07:01:47', '2023-12-01 07:01:47'),
(1219, 13, 'Meydan Racecourse', 10, '2023-12-01 07:01:47', '2023-12-01 07:01:47'),
(1220, 13, 'Dubai International Airport', 12, '2023-12-01 07:01:47', '2023-12-01 07:01:47'),
(1221, 13, 'Downtown Dubai', 15, '2023-12-01 07:01:47', '2023-12-01 07:01:47'),
(1222, 14, 'Ras Al Khor', 5, '2023-12-01 07:02:48', '2023-12-01 07:02:48'),
(1223, 14, 'Dubai International Airport', 12, '2023-12-01 07:02:48', '2023-12-01 07:02:48'),
(1224, 14, 'Downtown Dubai', 15, '2023-12-01 07:02:48', '2023-12-01 07:02:48'),
(1225, 14, 'Palm Jumeirah', 25, '2023-12-01 07:02:48', '2023-12-01 07:02:48'),
(1226, 15, 'Dubai International Airport', 16, '2023-12-01 07:04:19', '2023-12-01 07:04:19'),
(1227, 15, 'Dubai Design District', 18, '2023-12-01 07:04:19', '2023-12-01 07:04:19'),
(1228, 15, 'Downtown Dubai', 18, '2023-12-01 07:04:19', '2023-12-01 07:04:19'),
(1229, 15, 'Business Bay', 15, '2023-12-01 07:04:19', '2023-12-01 07:04:19'),
(1230, 16, 'Burj Khalifa', 5, '2023-12-01 07:05:06', '2023-12-01 07:05:06'),
(1231, 16, 'Business Bay', 7, '2023-12-01 07:05:06', '2023-12-01 07:05:06'),
(1232, 16, 'Jumeirah Beach', 15, '2023-12-01 07:05:06', '2023-12-01 07:05:06'),
(1233, 16, 'Dubai Creek Harbour', 15, '2023-12-01 07:05:06', '2023-12-01 07:05:06'),
(1234, 17, 'Downtown Abu Dhabi', 30, '2023-12-01 07:11:04', '2023-12-01 07:11:04'),
(1235, 17, 'To Dubai', 50, '2023-12-01 07:11:04', '2023-12-01 07:11:04'),
(1236, 18, 'Downtown Dubai', 25, '2023-12-01 07:12:19', '2023-12-01 07:12:19'),
(1237, 18, 'Dubai Marina', 20, '2023-12-01 07:12:19', '2023-12-01 07:12:19'),
(1238, 18, 'DXB Airport', 30, '2023-12-01 07:12:19', '2023-12-01 07:12:19'),
(1239, 18, 'DWC Airport', 35, '2023-12-01 07:12:19', '2023-12-01 07:12:19'),
(1240, 21, 'Rugby Sevens stadium', 5, '2023-12-01 07:12:59', '2023-12-01 07:12:59'),
(1241, 21, 'Dubai Outlet Mall', 12, '2023-12-01 07:12:59', '2023-12-01 07:12:59'),
(1242, 21, 'Burj Khalifa', 25, '2023-12-01 07:12:59', '2023-12-01 07:12:59'),
(1243, 21, 'Dubai International Airport', 25, '2023-12-01 07:12:59', '2023-12-01 07:12:59'),
(1244, 22, 'Downtown Dubai', 35, '2023-12-01 07:13:19', '2023-12-01 07:13:19'),
(1245, 22, 'Dubai Marina', 25, '2023-12-01 07:13:19', '2023-12-01 07:13:19'),
(1246, 22, 'Palm Jumeirah', 22, '2023-12-01 07:13:19', '2023-12-01 07:13:19'),
(1247, 22, 'Al Maktoum International Airport', 18, '2023-12-01 07:13:19', '2023-12-01 07:13:19'),
(1248, 23, 'Downtown Dubai', 30, '2023-12-01 07:14:28', '2023-12-01 07:14:28'),
(1249, 23, 'Palm Jebel Ali', 18, '2023-12-01 07:14:28', '2023-12-01 07:14:28'),
(1250, 23, 'Dubai Marina', 25, '2023-12-01 07:14:28', '2023-12-01 07:14:28'),
(1251, 23, 'Shiekh Zayed Road', 15, '2023-12-01 07:14:28', '2023-12-01 07:14:28'),
(1252, 25, 'Al Maktoum International Airport', 35, '2023-12-01 07:15:46', '2023-12-01 07:15:46'),
(1253, 25, 'Downtown Dubai', 20, '2023-12-01 07:15:46', '2023-12-01 07:15:46'),
(1254, 25, 'Dubai Marina', 35, '2023-12-01 07:15:46', '2023-12-01 07:15:46'),
(1255, 25, 'Global Village', 5, '2023-12-01 07:15:46', '2023-12-01 07:15:46'),
(1256, 26, 'Downtown Dubai', 20, '2023-12-01 07:16:10', '2023-12-01 07:16:10'),
(1257, 26, 'Dubai International Airport', 35, '2023-12-01 07:16:10', '2023-12-01 07:16:10'),
(1258, 26, 'Global Village', 10, '2023-12-01 07:16:10', '2023-12-01 07:16:10'),
(1259, 26, 'Dubai Polo & Equestrian Club', 10, '2023-12-01 07:16:10', '2023-12-01 07:16:10'),
(1260, 27, 'Downtown Dubai', 20, '2023-12-01 07:16:59', '2023-12-01 07:16:59'),
(1261, 27, 'Dubai International Airport', 25, '2023-12-01 07:16:59', '2023-12-01 07:16:59'),
(1262, 27, 'Dubai Polo & Equestrian Club', 10, '2023-12-01 07:16:59', '2023-12-01 07:16:59'),
(1263, 27, 'Global Village', 10, '2023-12-01 07:16:59', '2023-12-01 07:16:59'),
(1272, 30, 'Dubai International Airport', 20, '2023-12-01 07:21:56', '2023-12-01 07:21:56'),
(1273, 30, 'Downtown Dubai', 15, '2023-12-01 07:21:56', '2023-12-01 07:21:56'),
(1274, 30, 'Palm Jumeirah', 17, '2023-12-01 07:21:56', '2023-12-01 07:21:56'),
(1275, 30, 'Dubai Marina', 15, '2023-12-01 07:21:56', '2023-12-01 07:21:56'),
(1280, 42, 'Downtown Dubai', 18, '2023-12-01 07:23:56', '2023-12-01 07:23:56'),
(1281, 42, 'Dubai Intl Airport', 22, '2023-12-01 07:23:56', '2023-12-01 07:23:56'),
(1282, 42, 'Burj Khalifa', 20, '2023-12-01 07:23:56', '2023-12-01 07:23:56'),
(1283, 42, 'Dubai Marina', 15, '2023-12-01 07:23:56', '2023-12-01 07:23:56'),
(1292, 45, 'Downtown Dubai', 5, '2023-12-01 07:25:11', '2023-12-01 07:25:11'),
(1293, 45, 'Burj Khalifa', 6, '2023-12-01 07:25:11', '2023-12-01 07:25:11'),
(1294, 45, 'Dubai Intl Airport', 15, '2023-12-01 07:25:11', '2023-12-01 07:25:11'),
(1295, 45, 'Palm Jumeirah', 5, '2023-12-01 07:25:11', '2023-12-01 07:25:11'),
(1296, 44, 'Downtown Dubai', 10, '2023-12-01 07:25:23', '2023-12-01 07:25:23'),
(1297, 44, 'Dubai Intl Airport', 22, '2023-12-01 07:25:23', '2023-12-01 07:25:23'),
(1298, 44, 'Burj Khalifa', 12, '2023-12-01 07:25:23', '2023-12-01 07:25:23'),
(1299, 44, 'Business Bay', 13, '2023-12-01 07:25:23', '2023-12-01 07:25:23'),
(1300, 46, 'Downtown Dubai', 15, '2023-12-01 07:25:55', '2023-12-01 07:25:55'),
(1301, 46, 'Dubai Intl Airport', 10, '2023-12-01 07:25:55', '2023-12-01 07:25:55'),
(1302, 46, 'Ras Al Khor', 5, '2023-12-01 07:25:55', '2023-12-01 07:25:55'),
(1303, 46, 'Dubai Marina', 20, '2023-12-01 07:25:55', '2023-12-01 07:25:55'),
(1304, 48, 'Al Maktoum International Airport', 40, '2023-12-01 07:26:18', '2023-12-01 07:26:18'),
(1305, 48, 'Creek Marina', 5, '2023-12-01 07:26:18', '2023-12-01 07:26:18'),
(1306, 48, 'Dubai Creek Tower', 5, '2023-12-01 07:26:18', '2023-12-01 07:26:18'),
(1307, 48, 'Dubai International Airport', 10, '2023-12-01 07:26:18', '2023-12-01 07:26:18'),
(1308, 49, 'Downtown Dubai', 12, '2023-12-01 07:26:33', '2023-12-01 07:26:33'),
(1309, 49, 'Burj Khalifa', 12, '2023-12-01 07:26:33', '2023-12-01 07:26:33'),
(1310, 49, 'Dubai Intl Airport', 13, '2023-12-01 07:26:33', '2023-12-01 07:26:33'),
(1311, 49, 'Dubai Marina', 20, '2023-12-01 07:26:33', '2023-12-01 07:26:33'),
(1320, 33, 'Downtown Dubai', 25, '2023-12-01 08:13:21', '2023-12-01 08:13:21'),
(1321, 33, 'Global Village', 10, '2023-12-01 08:13:21', '2023-12-01 08:13:21'),
(1322, 33, 'Dubai Int Airport', 25, '2023-12-01 08:13:21', '2023-12-01 08:13:21'),
(1323, 33, 'Dubai Marina', 30, '2023-12-01 08:13:21', '2023-12-01 08:13:21'),
(1352, 52, 'Al Hamra Village', 10, '2023-12-06 09:40:37', '2023-12-06 09:40:37'),
(1353, 52, 'Dubai International Airport', 45, '2023-12-06 09:40:37', '2023-12-06 09:40:37'),
(1354, 52, 'Downtown Ras Al Khaimah', 33, '2023-12-06 09:40:37', '2023-12-06 09:40:37'),
(1355, 52, 'Ras Al Khaimah International Airport', 15, '2023-12-06 09:40:37', '2023-12-06 09:40:37'),
(1360, 53, 'Dubai Intl Airport', 18, '2023-12-26 07:47:28', '2023-12-26 07:47:28'),
(1361, 53, 'Dubai Mall', 25, '2023-12-26 07:47:28', '2023-12-26 07:47:28'),
(1362, 53, 'Downtown Dubai', 25, '2023-12-26 07:47:28', '2023-12-26 07:47:28'),
(1363, 53, 'Infinity Bridge', 6, '2023-12-26 07:47:28', '2023-12-26 07:47:28'),
(1364, 47, 'Burj Khalifa', 15, '2024-01-03 11:13:12', '2024-01-03 11:13:12'),
(1365, 47, 'Creek Marina', 5, '2024-01-03 11:13:12', '2024-01-03 11:13:12'),
(1366, 47, 'Dubai Creek Tower', 5, '2024-01-03 11:13:12', '2024-01-03 11:13:12'),
(1367, 47, 'Dubai International Airport', 10, '2024-01-03 11:13:12', '2024-01-03 11:13:12'),
(1368, 43, 'Al Maktoum International Airport', 30, '2024-01-04 08:24:41', '2024-01-04 08:24:41'),
(1369, 43, 'Downtown Dubai', 15, '2024-01-04 08:24:41', '2024-01-04 08:24:41'),
(1370, 43, 'Dubai International Airport', 20, '2024-01-04 08:24:41', '2024-01-04 08:24:41'),
(1371, 43, 'Dubai Marina', 15, '2024-01-04 08:24:41', '2024-01-04 08:24:41'),
(1468, 34, 'Downtown Dubai', 15, '2024-02-16 12:30:10', '2024-02-16 12:30:10'),
(1469, 34, 'Dubai Marina', 15, '2024-02-16 12:30:10', '2024-02-16 12:30:10'),
(1470, 34, 'Dubai International Airports', 20, '2024-02-16 12:30:10', '2024-02-16 12:30:10'),
(1471, 34, 'District 2020', 25, '2024-02-16 12:30:10', '2024-02-16 12:30:10'),
(1472, 64, 'Palm Jebel Ali', 15, '2024-02-29 09:49:16', '2024-02-29 09:49:16'),
(1473, 64, 'Dubai Metro Station', 5, '2024-02-29 09:49:16', '2024-02-29 09:49:16'),
(1474, 64, 'Al Maktoum International Airport', 7, '2024-02-29 09:49:16', '2024-02-29 09:49:16'),
(1475, 64, 'Sheikh Zayed Road', 5, '2024-02-29 09:49:16', '2024-02-29 09:49:16'),
(1480, 1, 'Al Maktoum Airport', 7, '2024-03-14 04:49:34', '2024-03-14 04:49:34'),
(1481, 1, 'Palm Jebel Ali', 18, '2024-03-14 04:49:34', '2024-03-14 04:49:34'),
(1482, 1, 'New Metro Station', 2, '2024-03-14 04:49:34', '2024-03-14 04:49:34'),
(1483, 1, 'Downtown Dubai', 30, '2024-03-14 04:49:34', '2024-03-14 04:49:34'),
(1504, 54, 'Burj Khalifa', 20, '2024-04-04 07:15:06', '2024-04-04 07:15:06'),
(1505, 54, 'Downtown Dubai', 20, '2024-04-04 07:15:06', '2024-04-04 07:15:06'),
(1506, 54, 'Dubai International Airport', 25, '2024-04-04 07:15:06', '2024-04-04 07:15:06'),
(1507, 54, 'Dubai Outlet Mall', 8, '2024-04-04 07:15:06', '2024-04-04 07:15:06'),
(1508, 50, 'Burj Khalifa', 10, '2024-04-04 07:26:38', '2024-04-04 07:26:38'),
(1509, 50, 'Dubai International Airport', 10, '2024-04-04 07:26:38', '2024-04-04 07:26:38'),
(1510, 50, 'Dubai Opera', 5, '2024-04-04 07:26:38', '2024-04-04 07:26:38'),
(1511, 50, 'Dubai International Financial Centre', 5, '2024-04-04 07:26:38', '2024-04-04 07:26:38'),
(1532, 37, 'Burj Khalifa', 20, '2024-04-25 09:40:22', '2024-04-25 09:40:22'),
(1533, 37, 'Dubai International Airport', 15, '2024-04-25 09:40:22', '2024-04-25 09:40:22'),
(1534, 37, 'Sheikh Zayed Road', 10, '2024-04-25 09:40:22', '2024-04-25 09:40:22'),
(1535, 37, 'Downtown Dubai', 20, '2024-04-25 09:40:22', '2024-04-25 09:40:22'),
(1536, 28, 'Dubai International Airport', 20, '2024-04-25 10:08:46', '2024-04-25 10:08:46'),
(1537, 28, 'Downtown Dubai', 22, '2024-04-25 10:08:46', '2024-04-25 10:08:46'),
(1538, 28, 'Al Sabkha Gold Souq', 22, '2024-04-25 10:08:46', '2024-04-25 10:08:46'),
(1539, 28, 'Dubai Marina', 32, '2024-04-25 10:08:46', '2024-04-25 10:08:46'),
(1540, 35, 'Burj Khalifa', 10, '2024-04-26 07:52:01', '2024-04-26 07:52:01'),
(1541, 35, 'Dubai International Airport', 10, '2024-04-26 07:52:01', '2024-04-26 07:52:01'),
(1542, 35, 'Dubai Opera', 5, '2024-04-26 07:52:01', '2024-04-26 07:52:01'),
(1543, 35, 'DIFC', 5, '2024-04-26 07:52:01', '2024-04-26 07:52:01'),
(1544, 31, 'Downtown Dubai', 15, '2024-04-26 12:33:28', '2024-04-26 12:33:28'),
(1545, 31, 'Dubai International Airport', 20, '2024-04-26 12:33:28', '2024-04-26 12:33:28'),
(1546, 31, 'Dubai Marina', 15, '2024-04-26 12:33:28', '2024-04-26 12:33:28'),
(1547, 31, 'EXPO 2020', 25, '2024-04-26 12:33:28', '2024-04-26 12:33:28'),
(1548, 29, 'Sheikh Zayed Road', 10, '2024-04-26 12:37:01', '2024-04-26 12:37:01'),
(1549, 29, 'Dubai International Airport', 15, '2024-04-26 12:37:01', '2024-04-26 12:37:01'),
(1550, 29, 'Downtown Dubai', 20, '2024-04-26 12:37:01', '2024-04-26 12:37:01'),
(1551, 29, 'Dubai Mall and Burj Khalifa', 20, '2024-04-26 12:37:01', '2024-04-26 12:37:01'),
(1556, 5, 'Dubai Intl Airport', 19, '2024-04-29 08:42:09', '2024-04-29 08:42:09'),
(1557, 5, 'Dubai Opera', 20, '2024-04-29 08:42:09', '2024-04-29 08:42:09'),
(1558, 5, 'Business Bay', 17, '2024-04-29 08:42:09', '2024-04-29 08:42:09'),
(1559, 5, 'Burj Khalifa', 19, '2024-04-29 08:42:09', '2024-04-29 08:42:09'),
(1647, 74, 'Downtown Dubai', 15, '2024-05-16 10:10:05', '2024-05-16 10:10:05'),
(1648, 74, 'Dubai Festival City', 5, '2024-05-16 10:10:05', '2024-05-16 10:10:05'),
(1649, 74, 'Dubai International Airport', 15, '2024-05-16 10:10:05', '2024-05-16 10:10:05'),
(1650, 74, 'Dubai International Financial Centre (DIFC)', 8, '2024-05-16 10:10:05', '2024-05-16 10:10:05'),
(1655, 40, 'Downtown Dubai', 12, '2024-05-17 13:44:50', '2024-05-17 13:44:50'),
(1656, 40, 'Dubai Marina', 5, '2024-05-17 13:44:50', '2024-05-17 13:44:50'),
(1657, 40, 'Sheikh Zayed Road', 5, '2024-05-17 13:44:50', '2024-05-17 13:44:50'),
(1658, 40, 'Palm Jumeirah', 5, '2024-05-17 13:44:50', '2024-05-17 13:44:50'),
(1659, 73, 'Al Maktoum International Airport', 40, '2024-05-20 10:48:51', '2024-05-20 10:48:51'),
(1660, 73, 'Burj Khalifa', 15, '2024-05-20 10:48:51', '2024-05-20 10:48:51'),
(1661, 73, 'Dubai Marina', 25, '2024-05-20 10:48:51', '2024-05-20 10:48:51'),
(1662, 73, 'Ras Al Khor Wildlife Sanctuary', 5, '2024-05-20 10:48:51', '2024-05-20 10:48:51'),
(1667, 72, 'Downtown Dubai', 18, '2024-05-20 10:56:00', '2024-05-20 10:56:00'),
(1668, 72, 'Dubai International Airport', 15, '2024-05-20 10:56:00', '2024-05-20 10:56:00'),
(1669, 72, 'Ras Al Khor Wildlife Sanctuary', 13, '2024-05-20 10:56:00', '2024-05-20 10:56:00'),
(1670, 72, 'The Dubai Mall', 19, '2024-05-20 10:56:00', '2024-05-20 10:56:00'),
(1671, 71, 'Downtown Dubai', 12, '2024-05-20 11:03:16', '2024-05-20 11:03:16'),
(1672, 71, 'Burj Khalifa', 10, '2024-05-20 11:03:16', '2024-05-20 11:03:16'),
(1673, 71, 'Dubai Intl Airport', 10, '2024-05-20 11:03:16', '2024-05-20 11:03:16'),
(1674, 71, 'Business Bay', 10, '2024-05-20 11:03:16', '2024-05-20 11:03:16'),
(1675, 70, 'Creek Beach', 2, '2024-05-20 11:21:19', '2024-05-20 11:21:19'),
(1676, 70, 'Downtown Dubai', 10, '2024-05-20 11:21:19', '2024-05-20 11:21:19'),
(1677, 70, 'Ras Al Khor Wildlife Sanctuary', 5, '2024-05-20 11:21:19', '2024-05-20 11:21:19'),
(1678, 70, 'Dubai Mall', 8, '2024-05-20 11:21:19', '2024-05-20 11:21:19'),
(1687, 67, 'Burj Khalifa', 12, '2024-05-20 11:54:24', '2024-05-20 11:54:24'),
(1688, 67, 'Downtown Dubai', 10, '2024-05-20 11:54:24', '2024-05-20 11:54:24'),
(1689, 67, 'Creek Beach', 5, '2024-05-20 11:54:24', '2024-05-20 11:54:24'),
(1690, 67, 'Creek Marina', 5, '2024-05-20 11:54:24', '2024-05-20 11:54:24'),
(1695, 68, 'Burj Khalifa', 15, '2024-05-20 11:55:34', '2024-05-20 11:55:34'),
(1696, 68, 'Al Maktoum International Airport', 20, '2024-05-20 11:55:34', '2024-05-20 11:55:34'),
(1697, 68, 'Downtown Dubai', 15, '2024-05-20 11:55:34', '2024-05-20 11:55:34'),
(1698, 68, 'Ras Al Khor Wildlife Sanctuary', 5, '2024-05-20 11:55:34', '2024-05-20 11:55:34'),
(1699, 66, 'Burj Khalifa', 19, '2024-05-20 11:58:38', '2024-05-20 11:58:38'),
(1700, 66, 'Downtown Dubai', 15, '2024-05-20 11:58:38', '2024-05-20 11:58:38'),
(1701, 66, 'Dubai International Airport', 10, '2024-05-20 11:58:38', '2024-05-20 11:58:38'),
(1702, 66, 'Jumeirah Beach', 20, '2024-05-20 11:58:38', '2024-05-20 11:58:38'),
(1703, 65, 'Burj Khalifa', 19, '2024-05-20 12:00:50', '2024-05-20 12:00:50'),
(1704, 65, 'Downtown Dubai', 15, '2024-05-20 12:00:50', '2024-05-20 12:00:50'),
(1705, 65, 'Dubai International Airport', 10, '2024-05-20 12:00:50', '2024-05-20 12:00:50'),
(1706, 65, 'Jumeirah Beach', 20, '2024-05-20 12:00:50', '2024-05-20 12:00:50'),
(1731, 76, 'Expo 2020', 16, '2024-05-21 12:54:08', '2024-05-21 12:54:08'),
(1732, 76, 'Mall of the Emirates', 9, '2024-05-21 12:54:08', '2024-05-21 12:54:08'),
(1733, 76, 'Dubai Marina', 20, '2024-05-21 12:54:08', '2024-05-21 12:54:08'),
(1734, 76, 'Al Maktoum International Airport', 10, '2024-05-21 12:54:08', '2024-05-21 12:54:08'),
(1739, 75, 'Al Maktoum International Airport', 10, '2024-06-11 12:54:15', '2024-06-11 12:54:15'),
(1740, 75, 'Jebel Ali Port', 12, '2024-06-11 12:54:15', '2024-06-11 12:54:15'),
(1741, 75, 'EXPO City', 8, '2024-06-11 12:54:15', '2024-06-11 12:54:15'),
(1742, 75, 'Dubai Investment Park', 5, '2024-06-11 12:54:15', '2024-06-11 12:54:15'),
(1743, 69, 'Al Maktoum International Airport', 40, '2024-06-20 08:12:02', '2024-06-20 08:12:02'),
(1744, 69, 'Burj Khalifa', 15, '2024-06-20 08:12:02', '2024-06-20 08:12:02'),
(1745, 69, 'Downtown Dubai', 15, '2024-06-20 08:12:02', '2024-06-20 08:12:02'),
(1746, 69, 'Dubai Marina', 25, '2024-06-20 08:12:02', '2024-06-20 08:12:02'),
(1747, 63, 'Downtown Dubai', 25, '2024-06-26 10:08:17', '2024-06-26 10:08:17'),
(1748, 63, 'Expo 2020', 15, '2024-06-26 10:08:17', '2024-06-26 10:08:17'),
(1749, 63, 'Al Maktoum International Airport', 15, '2024-06-26 10:08:17', '2024-06-26 10:08:17'),
(1750, 63, 'Palm Jebel Ali', 12, '2024-06-26 10:08:17', '2024-06-26 10:08:17'),
(1751, 61, 'Al Maktoum International Airport', 3, '2024-06-26 10:08:44', '2024-06-26 10:08:44'),
(1752, 61, 'Expo 2020', 10, '2024-06-26 10:08:44', '2024-06-26 10:08:44'),
(1753, 61, 'Palm Jebel Ali', 15, '2024-06-26 10:08:44', '2024-06-26 10:08:44'),
(1754, 61, 'Burj Khalifa', 20, '2024-06-26 10:08:44', '2024-06-26 10:08:44'),
(1755, 59, 'Al Maktoum International Airport', 7, '2024-06-26 10:10:17', '2024-06-26 10:10:17'),
(1756, 59, 'Downtown Dubai', 22, '2024-06-26 10:10:17', '2024-06-26 10:10:17'),
(1757, 59, 'Dubai Marina', 18, '2024-06-26 10:10:17', '2024-06-26 10:10:17'),
(1758, 59, 'Burj Khalifa', 22, '2024-06-26 10:10:17', '2024-06-26 10:10:17'),
(1759, 57, 'Al Maktoum International Airport', 7, '2024-06-26 10:10:47', '2024-06-26 10:10:47'),
(1760, 57, 'Downtown Dubai', 25, '2024-06-26 10:10:47', '2024-06-26 10:10:47'),
(1761, 57, 'Expo 2020', 10, '2024-06-26 10:10:47', '2024-06-26 10:10:47'),
(1762, 57, 'Dubai Marina', 18, '2024-06-26 10:10:47', '2024-06-26 10:10:47'),
(1763, 55, 'Al Maktoum International Airport', 7, '2024-06-26 10:11:00', '2024-06-26 10:11:00'),
(1764, 55, 'EXPO 2020', 10, '2024-06-26 10:11:00', '2024-06-26 10:11:00'),
(1765, 55, 'Dubai Marina', 20, '2024-06-26 10:11:00', '2024-06-26 10:11:00'),
(1766, 55, 'Palm Jumeirah', 18, '2024-06-26 10:11:00', '2024-06-26 10:11:00'),
(1767, 60, 'Al Maktoum International Airport', 3, '2024-06-26 10:11:45', '2024-06-26 10:11:45'),
(1768, 60, 'Downtown Dubai', 22, '2024-06-26 10:11:45', '2024-06-26 10:11:45'),
(1769, 60, 'Palm Jebel ali', 10, '2024-06-26 10:11:45', '2024-06-26 10:11:45'),
(1770, 60, 'Dubai International Airport', 25, '2024-06-26 10:11:45', '2024-06-26 10:11:45'),
(1771, 62, 'Al Maktoum International Airport', 7, '2024-06-26 10:13:49', '2024-06-26 10:13:49'),
(1772, 62, 'Expo 2020', 10, '2024-06-26 10:13:49', '2024-06-26 10:13:49'),
(1773, 62, 'Jebel Ali Free Zone', 30, '2024-06-26 10:13:49', '2024-06-26 10:13:49'),
(1774, 62, 'Abu Dhabi', 50, '2024-06-26 10:13:49', '2024-06-26 10:13:49'),
(1775, 58, 'Al Maktoum International Airport', 12, '2024-06-26 10:14:29', '2024-06-26 10:14:29'),
(1776, 58, 'EXPO 2020', 10, '2024-06-26 10:14:29', '2024-06-26 10:14:29'),
(1777, 58, 'Dubai Marina', 20, '2024-06-26 10:14:29', '2024-06-26 10:14:29'),
(1778, 58, 'Palm Jumeirah', 22, '2024-06-26 10:14:29', '2024-06-26 10:14:29'),
(1779, 56, 'Al Maktoum International Airport', 7, '2024-06-26 10:14:56', '2024-06-26 10:14:56'),
(1780, 56, 'Expo 2020', 10, '2024-06-26 10:14:56', '2024-06-26 10:14:56'),
(1781, 56, 'Downtown Dubai', 20, '2024-06-26 10:14:56', '2024-06-26 10:14:56'),
(1782, 56, 'Dubai Marina', 15, '2024-06-26 10:14:56', '2024-06-26 10:14:56'),
(1787, 77, 'Burj Khalifa', 10, '2024-07-17 12:52:09', '2024-07-17 12:52:09'),
(1788, 77, 'Dubai Creek Tower', 5, '2024-07-17 12:52:09', '2024-07-17 12:52:09'),
(1789, 77, 'Dubai International Airport', 15, '2024-07-17 12:52:09', '2024-07-17 12:52:09'),
(1790, 77, 'Palm Jumeirah', 15, '2024-07-17 12:52:09', '2024-07-17 12:52:09'),
(1807, 80, 'Dubai Hills Park', 5, '2024-08-02 08:46:33', '2024-08-02 08:46:33'),
(1808, 80, 'Dubai Hills Mall', 4, '2024-08-02 08:46:33', '2024-08-02 08:46:33'),
(1809, 80, 'Burj Khalifa', 15, '2024-08-02 08:46:33', '2024-08-02 08:46:33'),
(1810, 80, 'Dubai International Airport', 30, '2024-08-02 08:46:33', '2024-08-02 08:46:33'),
(1811, 78, 'Dubai International Airport', 10, '2024-08-02 08:46:46', '2024-08-02 08:46:46'),
(1812, 78, 'Downtown Dubai', 10, '2024-08-02 08:46:46', '2024-08-02 08:46:46'),
(1813, 78, 'Dubai Marina', 25, '2024-08-02 08:46:46', '2024-08-02 08:46:46'),
(1814, 78, 'Expo 2021', 33, '2024-08-02 08:46:46', '2024-08-02 08:46:46'),
(1815, 79, 'Dubai International Airport', 10, '2024-08-02 08:54:38', '2024-08-02 08:54:38'),
(1816, 79, 'Downtown Dubai', 15, '2024-08-02 08:54:38', '2024-08-02 08:54:38'),
(1817, 79, 'Ras Al Khor Wildlife Sanctuary', 5, '2024-08-02 08:54:38', '2024-08-02 08:54:38'),
(1818, 79, 'Dubai Marina', 25, '2024-08-02 08:54:38', '2024-08-02 08:54:38'),
(1827, 81, 'Burj Al Arab', 15, '2024-08-02 10:49:47', '2024-08-02 10:49:47'),
(1828, 81, 'Dubai Intl Airport', 15, '2024-08-02 10:49:47', '2024-08-02 10:49:47'),
(1829, 81, 'Meydan Racecourse', 12, '2024-08-02 10:49:47', '2024-08-02 10:49:47'),
(1830, 81, 'Mall of the Emirates', 12, '2024-08-02 10:49:47', '2024-08-02 10:49:47'),
(1835, 83, 'Downtown Dubai', 14, '2024-08-02 11:31:50', '2024-08-02 11:31:50'),
(1836, 83, 'Dubai Marina', 16, '2024-08-02 11:31:50', '2024-08-02 11:31:50'),
(1837, 83, 'Dubai International Airport', 20, '2024-08-02 11:31:50', '2024-08-02 11:31:50'),
(1838, 83, 'Palm Jumeirah', 30, '2024-08-02 11:31:50', '2024-08-02 11:31:50'),
(1839, 82, 'Downtown Dubai', 14, '2024-08-02 11:35:07', '2024-08-02 11:35:07'),
(1840, 82, 'Dubai Marina', 16, '2024-08-02 11:35:07', '2024-08-02 11:35:07'),
(1841, 82, 'Dubai International Airport', 20, '2024-08-02 11:35:07', '2024-08-02 11:35:07'),
(1842, 82, 'Palm Jumeirah', 30, '2024-08-02 11:35:07', '2024-08-02 11:35:07'),
(1843, 84, 'Downtown Dubai', 20, '2024-08-09 08:20:13', '2024-08-09 08:20:13'),
(1844, 84, 'Dubai Mall', 20, '2024-08-09 08:20:13', '2024-08-09 08:20:13'),
(1845, 84, 'Dubai International Airport', 15, '2024-08-09 08:20:13', '2024-08-09 08:20:13'),
(1846, 84, 'Sheikh Zayed Road', 10, '2024-08-09 08:20:13', '2024-08-09 08:20:13'),
(1847, 85, 'Dubai Festival City Mall', 15, '2024-08-09 11:12:11', '2024-08-09 11:12:11'),
(1848, 85, 'Ras Al Khor Wildlife Sanctuary', 15, '2024-08-09 11:12:11', '2024-08-09 11:12:11'),
(1849, 85, 'Deep Dive Dubai', 20, '2024-08-09 11:12:11', '2024-08-09 11:12:11'),
(1850, 85, 'Rashid Hospital', 27, '2024-08-09 11:12:11', '2024-08-09 11:12:11'),
(1871, 86, 'Downtown Dubai', 30, '2024-08-13 09:21:57', '2024-08-13 09:21:57'),
(1872, 86, 'Dubai Marina', 45, '2024-08-13 09:21:57', '2024-08-13 09:21:57'),
(1873, 86, 'DXB Airport', 30, '2024-08-13 09:21:57', '2024-08-13 09:21:57'),
(1874, 86, 'DWC Airport', 35, '2024-08-13 09:21:57', '2024-08-13 09:21:57'),
(1879, 88, 'Burj Khalifa', 20, '2024-08-13 09:45:45', '2024-08-13 09:45:45'),
(1880, 88, 'Downtown Dubai', 20, '2024-08-13 09:45:45', '2024-08-13 09:45:45'),
(1881, 88, 'Dubai International Airport', 15, '2024-08-13 09:45:45', '2024-08-13 09:45:45'),
(1882, 88, 'Sheikh Zayed Road', 10, '2024-08-13 09:45:45', '2024-08-13 09:45:45'),
(1887, 89, 'Downtown Dubai', 30, '2024-08-13 10:26:08', '2024-08-13 10:26:08'),
(1888, 89, 'Dubai Marina', 45, '2024-08-13 10:26:08', '2024-08-13 10:26:08'),
(1889, 89, 'DXB Airport', 30, '2024-08-13 10:26:08', '2024-08-13 10:26:08'),
(1890, 89, 'DWC Airport', 35, '2024-08-13 10:26:08', '2024-08-13 10:26:08'),
(1891, 87, 'Downtown Dubai', 20, '2024-08-13 11:18:17', '2024-08-13 11:18:17'),
(1892, 87, 'Dubai Marina', 25, '2024-08-13 11:18:17', '2024-08-13 11:18:17'),
(1893, 87, 'DXB Airport', 20, '2024-08-13 11:18:17', '2024-08-13 11:18:17'),
(1894, 87, 'DWC Airport', 45, '2024-08-13 11:18:17', '2024-08-13 11:18:17'),
(1899, 90, 'Downtown Dubai', 30, '2024-08-19 10:22:16', '2024-08-19 10:22:16'),
(1900, 90, 'Dubai Intl Airport', 24, '2024-08-19 10:22:16', '2024-08-19 10:22:16'),
(1901, 90, 'Dubai Marina', 35, '2024-08-19 10:22:16', '2024-08-19 10:22:16'),
(1902, 90, 'Palm Jumeirah', 40, '2024-08-19 10:22:16', '2024-08-19 10:22:16'),
(1907, 91, 'Downtown Dubai', 20, '2024-08-19 11:47:10', '2024-08-19 11:47:10'),
(1908, 91, 'Creek Beach', 5, '2024-08-19 11:47:10', '2024-08-19 11:47:10'),
(1909, 91, 'Dubai Intl Airport', 15, '2024-08-19 11:47:10', '2024-08-19 11:47:10'),
(1910, 91, 'Ras Al Khor', 10, '2024-08-19 11:47:10', '2024-08-19 11:47:10'),
(1915, 92, 'Burj Khalifa', 19, '2024-08-20 08:59:31', '2024-08-20 08:59:31'),
(1916, 92, 'Creek Marina', 5, '2024-08-20 08:59:31', '2024-08-20 08:59:31'),
(1917, 92, 'Downtown Dubai', 15, '2024-08-20 08:59:31', '2024-08-20 08:59:31'),
(1918, 92, 'Dubai International Airport', 10, '2024-08-20 08:59:31', '2024-08-20 08:59:31'),
(1923, 93, 'Downtown Dubai', 10, '2024-09-16 08:22:34', '2024-09-16 08:22:34'),
(1924, 93, 'Dubai Intl Airport', 20, '2024-09-16 08:22:34', '2024-09-16 08:22:34'),
(1925, 93, 'Dubai Marina', 15, '2024-09-16 08:22:34', '2024-09-16 08:22:34'),
(1926, 93, 'Palm Jumeirah', 15, '2024-09-16 08:22:34', '2024-09-16 08:22:34'),
(1931, 94, 'Al Maktoum International Airport', 30, '2024-09-16 11:03:48', '2024-09-16 11:03:48'),
(1932, 94, 'Downtown Dubai', 15, '2024-09-16 11:03:48', '2024-09-16 11:03:48'),
(1933, 94, 'Dubai Marina', 15, '2024-09-16 11:03:48', '2024-09-16 11:03:48'),
(1934, 94, 'EXPO 2020', 2020, '2024-09-16 11:03:48', '2024-09-16 11:03:48'),
(1939, 95, 'Burj Khalifa', 25, '2024-09-16 13:13:35', '2024-09-16 13:13:35'),
(1940, 95, 'Dubai International Airport', 25, '2024-09-16 13:13:35', '2024-09-16 13:13:35'),
(1941, 95, 'Dubai Outlet Mall', 8, '2024-09-16 13:13:35', '2024-09-16 13:13:35'),
(1942, 95, 'The Dubai Mall', 25, '2024-09-16 13:13:35', '2024-09-16 13:13:35'),
(1962, 97, 'Dubai International Airport', 40, '2024-09-20 10:56:17', '2024-09-20 10:56:17'),
(1963, 97, 'Dubai Intl Airport', 10, '2024-09-20 10:56:17', '2024-09-20 10:56:17'),
(1964, 97, 'Downtown Dubai', 15, '2024-09-20 10:56:17', '2024-09-20 10:56:17'),
(1965, 97, 'Dubai Marina', 25, '2024-09-20 10:56:17', '2024-09-20 10:56:17'),
(1966, 96, 'Dubai Intl Airport', 18, '2024-09-20 10:59:47', '2024-09-20 10:59:47'),
(1967, 96, 'Burj Al Arab', 24, '2024-09-20 10:59:47', '2024-09-20 10:59:47'),
(1968, 96, 'Emirate hills', 27, '2024-09-20 10:59:47', '2024-09-20 10:59:47'),
(1969, 96, 'Dubai Mall', 29, '2024-09-20 10:59:47', '2024-09-20 10:59:47'),
(1970, 96, 'Dubai Miracle Garden', 15, '2024-09-20 10:59:47', '2024-09-20 10:59:47'),
(1976, 98, 'Al Maktoum International Airport', 5, '2024-09-23 08:05:33', '2024-09-23 08:05:33'),
(1977, 98, 'Downtown Dubai', 35, '2024-09-23 08:05:33', '2024-09-23 08:05:33'),
(1978, 98, 'Dubai International Airport', 40, '2024-09-23 08:05:33', '2024-09-23 08:05:33'),
(1979, 98, 'Dubai Investment Park', 20, '2024-09-23 08:05:33', '2024-09-23 08:05:33'),
(1980, 98, 'EXPO 2020', 15, '2024-09-23 08:05:33', '2024-09-23 08:05:33'),
(1986, 99, 'Al Maktoum International Airport', 25, '2024-09-23 09:22:16', '2024-09-23 09:22:16'),
(1987, 99, 'Burj Al Arab', 15, '2024-09-23 09:22:16', '2024-09-23 09:22:16'),
(1988, 99, 'Burj Khalifa', 15, '2024-09-23 09:22:16', '2024-09-23 09:22:16'),
(1989, 99, 'Dubai Hills Mall', 5, '2024-09-23 09:22:16', '2024-09-23 09:22:16'),
(1990, 99, 'Dubai International Airport', 20, '2024-09-23 09:22:16', '2024-09-23 09:22:16'),
(1999, 100, 'Al Maktoum International Airport', 25, '2024-09-23 12:30:12', '2024-09-23 12:30:12'),
(2000, 100, 'Burj Al Arab', 15, '2024-09-23 12:30:12', '2024-09-23 12:30:12'),
(2001, 100, 'Burj Khalifa', 15, '2024-09-23 12:30:12', '2024-09-23 12:30:12'),
(2002, 100, 'Dubai International Airport', 20, '2024-09-23 12:30:12', '2024-09-23 12:30:12'),
(2003, 101, 'Downtown Dubai', 25, '2024-09-30 13:34:41', '2024-09-30 13:34:41'),
(2004, 101, 'Dubai International Airport', 25, '2024-09-30 13:34:41', '2024-09-30 13:34:41'),
(2005, 101, 'Al Maktoum International Airport', 30, '2024-09-30 13:34:41', '2024-09-30 13:34:41'),
(2006, 101, 'Dubai Marina', 35, '2024-09-30 13:34:41', '2024-09-30 13:34:41');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) UNSIGNED NOT NULL,
  `agent_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bed_rooms` int(11) DEFAULT 1,
  `bath_rooms` int(11) NOT NULL DEFAULT 1,
  `property_type` int(3) DEFAULT 0,
  `property_sub_type` int(3) DEFAULT NULL,
  `measurements` int(11) NOT NULL,
  `community` int(11) UNSIGNED DEFAULT NULL,
  `building` int(11) NOT NULL DEFAULT 0,
  `developer` int(11) UNSIGNED DEFAULT NULL,
  `developer_title` text DEFAULT NULL,
  `price` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `longitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `latitude` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `featured` int(11) NOT NULL DEFAULT 0,
  `img1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `img2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `img3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `img4` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `img5` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `img6` varchar(255) NOT NULL DEFAULT '',
  `img7` varchar(255) NOT NULL DEFAULT '',
  `img8` varchar(255) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `agent_id`, `title`, `bed_rooms`, `bath_rooms`, `property_type`, `property_sub_type`, `measurements`, `community`, `building`, `developer`, `developer_title`, `price`, `description`, `tags`, `longitude`, `latitude`, `featured`, `img1`, `img2`, `img3`, `img4`, `img5`, `img6`, `img7`, `img8`, `status`, `created_at`, `updated_at`) VALUES
(5, 2, '1 bedroom-Apartment  for rent  al muhaishna madinat badr qamar  Dubai', 1, 1, 1, 6, 850, 17, 4, 7, NULL, 5300, '<p>with a lovely park, located at Madinat Badr, Muhaisnah, fully gated community in Dubai - UAE.</p>\n\n<h2>Property Details:</h2>\n<ul>\n  <li><strong>Property Type:</strong> 1 Bedroom + Study | 2 Bathrooms</li>\n  <li><strong>Area:</strong> 850sqft</li>\n  <li><strong>Features:</strong>\n    <ul>\n      <li>Sapcious Apartment</li>\n      <li>Gated community</li>\n      <li>Equipped kitchen</li>\n      <li>Park And Community view</li>\n    </ul>\n  </li>\n</ul>\n\n<h2>FACILITIES AND AMENITIES:</h2>\n<ul>\n  <li>Private car parking</li>\n  <li>Children Play Area</li>\n  <li>Swimming Pool</li>\n  <li>Jogging Track</li>\n  <li>Full Gymnasium</li>\n  <li>High-Speed Lifts</li>\n  <li>24 Hours Security</li>\n  <li>Supermarkets</li>\n  <li>Big Park</li>\n  <li>Basketball Court</li>\n  <li>Tennis Court</li>\n  <li>Easy Access from Mohamed bin Zayed road & Al khail.</li>\n</ul>\n\n<p>Diamond City Real Estate is your trusted partner in navigating the dynamic landscape of the UAE real estate market. With an illustrious journey spanning 20 years, we have honed our expertise to become leaders in various facets of the industry, including sales, off-plan ventures, rentals, commercial spaces, and property management. Our dedicated team comprises RERA qualified brokers, ensuring the highest standards of professionalism and knowledge. At Diamond City, our unwavering focus revolves around our clients – their dreams, aspirations, and financial growth. We are committed to not just finding properties, but to crafting investment opportunities that yield the utmost returns.</p>\n\n<p>For viewings and queries contact Sufaiya Mushir Ahmed:</p>\n<p>Email: <a href=\"mailto:sufi@diamondcityre.com\">sufi@diamondcityre.com</a><br>\nPhone: +971-50-211-3712</p>', 'rent', '55.14685069985762', '55.3154088383048', 1, 'Azizi/Azizi_images.jpeg', '169951742732.png', '169951742725.png', '169951742745.png', '', '', '', '', 1, '2023-11-09 13:10:27', '2023-11-15 17:44:18'),
(6, 1, '4 BR | For Sale | Mina By Azizi | Palm Jumeirah', 4, 6, 1, 8, 5824, 4, 6, 7, NULL, 17500000, '<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">Diamond City Real Estate is pleased to present you this Luxury Penthouse in Palm Jumeirah with stunning Panoramic View.</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">- 4 Bedrooms + maid\'s</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">- 6 bathrooms</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">- 5,824 Sqft.</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">- Complete Property and Ready</span></span></p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">Key Features:</span></span></strong></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">&bull;&nbsp; Located on the East Crescent of Palm Jumeirah</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">&bull;&nbsp; Known as the eighth wonder of the world</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">&bull;&nbsp; Uninterrupted views of the crystal blue waters of the Arabian Gulf from every apartment</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">&bull;&nbsp; Views of stunning Dubai&rsquo;s iconic skyline</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">&bull;&nbsp; Private beach access</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">&bull;&nbsp; First-class lifestyle conveniences</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">&bull;&nbsp; Premium leisure and entertainment facilities</span></span></p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">Location Benefits:</span></span></strong></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">&bull; Anantara Hotel / Waldorf&nbsp; Astoria Hotel</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">&bull; Nakheel Mall</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">&bull; Atlantis Hotel / Aquaventure Waterpark</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">&bull; Dubai Marina</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">&bull; Madinat Jumeirah</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">&bull; Bluewaters</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">&bull; Mall of Emirates</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">&bull; JBR</span></span></p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><strong><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">Amenities:</span></span></strong></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">&bull;&nbsp; Private beach access</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">&bull;&nbsp; Infinity swimming pools</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">&bull;&nbsp; Jogging track</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">&bull;&nbsp; Fully equipped gym</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">&bull;&nbsp; Lush open spaces</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">&bull;&nbsp; Health club</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">&bull;&nbsp; Sauna &amp; steam rooms</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">&bull;&nbsp; Covered parking space</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">&bull;&nbsp; Entertainment facilities</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">&bull;&nbsp; Kids play Area</span></span></p>\r\n<p class=\"MsoNormal\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\">For further details please contact</span></span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Roboto;\"><span style=\"font-size: 18px;\"><strong>Sadaf Javaid</strong> | <strong>+971-50-217-6037</strong></span></span></p>\r\n<p class=\"MsoNormal\">&nbsp;</p>', 'sale', '55.14685069985762', '55.3154088383048', 1, '169951907551.png', '169951907540.png', '169951907532.png', '169951907567.png', '169951907595.png', '169951907562.png', '169951907527.png', '', 1, '2023-11-09 13:37:55', '2023-11-16 12:46:53');

-- --------------------------------------------------------

--
-- Table structure for table `property_features`
--

CREATE TABLE `property_features` (
  `id` int(11) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `property_features`
--

INSERT INTO `property_features` (`id`, `property_id`, `feature_id`, `created_at`, `updated_at`) VALUES
(449, 5, 6, '2023-11-15 17:44:18', '2023-11-15 17:44:18'),
(450, 5, 10, '2023-11-15 17:44:18', '2023-11-15 17:44:18'),
(451, 5, 16, '2023-11-15 17:44:18', '2023-11-15 17:44:18'),
(452, 5, 17, '2023-11-15 17:44:18', '2023-11-15 17:44:18'),
(603, 6, 6, '2023-11-16 12:46:53', '2023-11-16 12:46:53'),
(604, 6, 7, '2023-11-16 12:46:53', '2023-11-16 12:46:53'),
(605, 6, 8, '2023-11-16 12:46:53', '2023-11-16 12:46:53'),
(606, 6, 19, '2023-11-16 12:46:53', '2023-11-16 12:46:53'),
(607, 6, 23, '2023-11-16 12:46:53', '2023-11-16 12:46:53'),
(608, 6, 25, '2023-11-16 12:46:53', '2023-11-16 12:46:53'),
(609, 6, 26, '2023-11-16 12:46:53', '2023-11-16 12:46:53'),
(613, 9, 6, '2023-11-16 12:47:10', '2023-11-16 12:47:10'),
(614, 9, 9, '2023-11-16 12:47:10', '2023-11-16 12:47:10'),
(615, 9, 10, '2023-11-16 12:47:10', '2023-11-16 12:47:10'),
(616, 9, 16, '2023-11-16 12:47:10', '2023-11-16 12:47:10'),
(617, 9, 20, '2023-11-16 12:47:10', '2023-11-16 12:47:10'),
(618, 9, 25, '2023-11-16 12:47:10', '2023-11-16 12:47:10'),
(619, 10, 6, '2023-11-16 12:47:19', '2023-11-16 12:47:19'),
(620, 10, 8, '2023-11-16 12:47:19', '2023-11-16 12:47:19'),
(621, 10, 9, '2023-11-16 12:47:19', '2023-11-16 12:47:19'),
(622, 10, 16, '2023-11-16 12:47:19', '2023-11-16 12:47:19'),
(623, 10, 17, '2023-11-16 12:47:19', '2023-11-16 12:47:19'),
(624, 10, 19, '2023-11-16 12:47:19', '2023-11-16 12:47:19'),
(625, 10, 20, '2023-11-16 12:47:19', '2023-11-16 12:47:19'),
(626, 10, 21, '2023-11-16 12:47:19', '2023-11-16 12:47:19'),
(634, 12, 6, '2023-11-16 12:48:52', '2023-11-16 12:48:52'),
(635, 12, 7, '2023-11-16 12:48:52', '2023-11-16 12:48:52'),
(636, 12, 8, '2023-11-16 12:48:52', '2023-11-16 12:48:52'),
(637, 12, 9, '2023-11-16 12:48:52', '2023-11-16 12:48:52'),
(638, 12, 17, '2023-11-16 12:48:52', '2023-11-16 12:48:52'),
(639, 12, 19, '2023-11-16 12:48:52', '2023-11-16 12:48:52'),
(640, 12, 25, '2023-11-16 12:48:52', '2023-11-16 12:48:52'),
(641, 14, 6, '2023-11-16 12:49:03', '2023-11-16 12:49:03'),
(642, 14, 7, '2023-11-16 12:49:03', '2023-11-16 12:49:03'),
(643, 14, 8, '2023-11-16 12:49:03', '2023-11-16 12:49:03'),
(644, 14, 16, '2023-11-16 12:49:03', '2023-11-16 12:49:03'),
(645, 14, 19, '2023-11-16 12:49:03', '2023-11-16 12:49:03'),
(646, 14, 20, '2023-11-16 12:49:03', '2023-11-16 12:49:03'),
(647, 14, 25, '2023-11-16 12:49:03', '2023-11-16 12:49:03'),
(648, 15, 6, '2023-11-16 12:49:15', '2023-11-16 12:49:15'),
(649, 15, 8, '2023-11-16 12:49:15', '2023-11-16 12:49:15'),
(650, 15, 9, '2023-11-16 12:49:15', '2023-11-16 12:49:15'),
(651, 15, 27, '2023-11-16 12:49:15', '2023-11-16 12:49:15'),
(657, 16, 6, '2023-11-19 16:07:53', '2023-11-19 16:07:53'),
(658, 16, 8, '2023-11-19 16:07:53', '2023-11-19 16:07:53'),
(659, 16, 10, '2023-11-19 16:07:53', '2023-11-19 16:07:53'),
(660, 16, 16, '2023-11-19 16:07:53', '2023-11-19 16:07:53'),
(661, 16, 20, '2023-11-19 16:07:53', '2023-11-19 16:07:53'),
(662, 17, 6, '2023-11-19 16:54:00', '2023-11-19 16:54:00'),
(663, 17, 8, '2023-11-19 16:54:00', '2023-11-19 16:54:00'),
(664, 17, 15, '2023-11-19 16:54:00', '2023-11-19 16:54:00'),
(665, 17, 16, '2023-11-19 16:54:00', '2023-11-19 16:54:00'),
(666, 17, 23, '2023-11-19 16:54:00', '2023-11-19 16:54:00'),
(667, 17, 25, '2023-11-19 16:54:00', '2023-11-19 16:54:00'),
(680, 18, 6, '2023-11-19 18:13:33', '2023-11-19 18:13:33'),
(681, 18, 8, '2023-11-19 18:13:33', '2023-11-19 18:13:33'),
(682, 18, 15, '2023-11-19 18:13:33', '2023-11-19 18:13:33'),
(683, 18, 16, '2023-11-19 18:13:33', '2023-11-19 18:13:33'),
(684, 19, 6, '2023-11-19 18:13:44', '2023-11-19 18:13:44'),
(685, 19, 8, '2023-11-19 18:13:44', '2023-11-19 18:13:44'),
(686, 19, 16, '2023-11-19 18:13:44', '2023-11-19 18:13:44'),
(687, 19, 23, '2023-11-19 18:13:44', '2023-11-19 18:13:44'),
(688, 21, 6, '2023-11-19 18:20:06', '2023-11-19 18:20:06'),
(689, 21, 8, '2023-11-19 18:20:06', '2023-11-19 18:20:06'),
(690, 21, 16, '2023-11-19 18:20:06', '2023-11-19 18:20:06'),
(700, 25, 6, '2023-11-19 19:18:57', '2023-11-19 19:18:57'),
(701, 25, 8, '2023-11-19 19:18:57', '2023-11-19 19:18:57'),
(702, 25, 9, '2023-11-19 19:18:57', '2023-11-19 19:18:57'),
(703, 25, 16, '2023-11-19 19:18:57', '2023-11-19 19:18:57'),
(704, 25, 17, '2023-11-19 19:18:57', '2023-11-19 19:18:57'),
(719, 26, 6, '2023-11-19 19:39:13', '2023-11-19 19:39:13'),
(720, 26, 8, '2023-11-19 19:39:13', '2023-11-19 19:39:13'),
(721, 26, 9, '2023-11-19 19:39:13', '2023-11-19 19:39:13'),
(722, 26, 16, '2023-11-19 19:39:13', '2023-11-19 19:39:13'),
(723, 26, 17, '2023-11-19 19:39:13', '2023-11-19 19:39:13'),
(724, 26, 30, '2023-11-19 19:39:13', '2023-11-19 19:39:13'),
(725, 26, 31, '2023-11-19 19:39:13', '2023-11-19 19:39:13'),
(726, 26, 32, '2023-11-19 19:39:13', '2023-11-19 19:39:13'),
(727, 26, 33, '2023-11-19 19:39:13', '2023-11-19 19:39:13'),
(728, 26, 34, '2023-11-19 19:39:13', '2023-11-19 19:39:13'),
(729, 27, 6, '2023-11-19 19:41:46', '2023-11-19 19:41:46'),
(730, 27, 8, '2023-11-19 19:41:46', '2023-11-19 19:41:46'),
(731, 27, 10, '2023-11-19 19:41:46', '2023-11-19 19:41:46'),
(732, 27, 16, '2023-11-19 19:41:46', '2023-11-19 19:41:46'),
(733, 27, 31, '2023-11-19 19:41:46', '2023-11-19 19:41:46'),
(734, 27, 32, '2023-11-19 19:41:46', '2023-11-19 19:41:46'),
(735, 27, 34, '2023-11-19 19:41:46', '2023-11-19 19:41:46'),
(736, 24, 6, '2023-11-19 19:42:04', '2023-11-19 19:42:04'),
(737, 24, 8, '2023-11-19 19:42:04', '2023-11-19 19:42:04'),
(738, 24, 9, '2023-11-19 19:42:04', '2023-11-19 19:42:04'),
(739, 24, 16, '2023-11-19 19:42:04', '2023-11-19 19:42:04'),
(740, 24, 17, '2023-11-19 19:42:04', '2023-11-19 19:42:04'),
(741, 24, 31, '2023-11-19 19:42:04', '2023-11-19 19:42:04'),
(742, 24, 32, '2023-11-19 19:42:04', '2023-11-19 19:42:04'),
(743, 24, 34, '2023-11-19 19:42:04', '2023-11-19 19:42:04'),
(744, 24, 35, '2023-11-19 19:42:04', '2023-11-19 19:42:04'),
(745, 23, 6, '2023-11-19 19:42:51', '2023-11-19 19:42:51'),
(746, 23, 8, '2023-11-19 19:42:51', '2023-11-19 19:42:51'),
(747, 23, 9, '2023-11-19 19:42:51', '2023-11-19 19:42:51'),
(748, 23, 10, '2023-11-19 19:42:51', '2023-11-19 19:42:51'),
(749, 23, 16, '2023-11-19 19:42:51', '2023-11-19 19:42:51'),
(750, 23, 17, '2023-11-19 19:42:51', '2023-11-19 19:42:51'),
(751, 23, 30, '2023-11-19 19:42:51', '2023-11-19 19:42:51'),
(752, 23, 31, '2023-11-19 19:42:51', '2023-11-19 19:42:51'),
(753, 23, 33, '2023-11-19 19:42:51', '2023-11-19 19:42:51'),
(754, 23, 34, '2023-11-19 19:42:51', '2023-11-19 19:42:51'),
(755, 23, 35, '2023-11-19 19:42:51', '2023-11-19 19:42:51'),
(756, 28, 6, '2023-11-20 15:22:13', '2023-11-20 15:22:13'),
(757, 28, 10, '2023-11-20 15:22:13', '2023-11-20 15:22:13'),
(758, 28, 16, '2023-11-20 15:22:13', '2023-11-20 15:22:13'),
(759, 28, 17, '2023-11-20 15:22:13', '2023-11-20 15:22:13'),
(760, 28, 22, '2023-11-20 15:22:13', '2023-11-20 15:22:13'),
(765, 31, 9, '2023-11-20 15:57:00', '2023-11-20 15:57:00'),
(766, 31, 10, '2023-11-20 15:57:00', '2023-11-20 15:57:00'),
(767, 31, 16, '2023-11-20 15:57:00', '2023-11-20 15:57:00'),
(768, 31, 30, '2023-11-20 15:57:00', '2023-11-20 15:57:00'),
(769, 31, 31, '2023-11-20 15:57:00', '2023-11-20 15:57:00'),
(770, 31, 33, '2023-11-20 15:57:00', '2023-11-20 15:57:00'),
(771, 31, 34, '2023-11-20 15:57:00', '2023-11-20 15:57:00'),
(772, 32, 6, '2023-11-20 16:06:44', '2023-11-20 16:06:44'),
(773, 32, 8, '2023-11-20 16:06:44', '2023-11-20 16:06:44'),
(774, 32, 9, '2023-11-20 16:06:44', '2023-11-20 16:06:44'),
(775, 32, 10, '2023-11-20 16:06:44', '2023-11-20 16:06:44'),
(776, 32, 16, '2023-11-20 16:06:44', '2023-11-20 16:06:44'),
(777, 32, 20, '2023-11-20 16:06:44', '2023-11-20 16:06:44'),
(778, 32, 30, '2023-11-20 16:06:44', '2023-11-20 16:06:44'),
(779, 33, 6, '2023-11-20 16:49:57', '2023-11-20 16:49:57'),
(780, 33, 8, '2023-11-20 16:49:57', '2023-11-20 16:49:57'),
(781, 33, 16, '2023-11-20 16:49:57', '2023-11-20 16:49:57'),
(782, 33, 25, '2023-11-20 16:49:57', '2023-11-20 16:49:57'),
(783, 34, 6, '2023-11-20 17:06:51', '2023-11-20 17:06:51'),
(784, 34, 8, '2023-11-20 17:06:51', '2023-11-20 17:06:51'),
(785, 34, 16, '2023-11-20 17:06:51', '2023-11-20 17:06:51'),
(786, 34, 20, '2023-11-20 17:06:51', '2023-11-20 17:06:51'),
(787, 34, 25, '2023-11-20 17:06:51', '2023-11-20 17:06:51'),
(788, 35, 6, '2023-11-21 14:17:54', '2023-11-21 14:17:54'),
(789, 35, 7, '2023-11-21 14:17:54', '2023-11-21 14:17:54'),
(790, 35, 8, '2023-11-21 14:17:54', '2023-11-21 14:17:54'),
(791, 35, 9, '2023-11-21 14:17:54', '2023-11-21 14:17:54'),
(792, 35, 15, '2023-11-21 14:17:54', '2023-11-21 14:17:54'),
(793, 35, 16, '2023-11-21 14:17:54', '2023-11-21 14:17:54'),
(794, 35, 20, '2023-11-21 14:17:54', '2023-11-21 14:17:54'),
(795, 35, 22, '2023-11-21 14:17:54', '2023-11-21 14:17:54'),
(796, 35, 25, '2023-11-21 14:17:54', '2023-11-21 14:17:54'),
(812, 37, 6, '2023-11-21 15:13:42', '2023-11-21 15:13:42'),
(813, 37, 8, '2023-11-21 15:13:42', '2023-11-21 15:13:42'),
(814, 37, 16, '2023-11-21 15:13:42', '2023-11-21 15:13:42'),
(815, 37, 20, '2023-11-21 15:13:42', '2023-11-21 15:13:42'),
(816, 37, 21, '2023-11-21 15:13:42', '2023-11-21 15:13:42'),
(821, 30, 6, '2023-11-24 18:25:58', '2023-11-24 18:25:58'),
(822, 30, 8, '2023-11-24 18:25:58', '2023-11-24 18:25:58'),
(823, 30, 9, '2023-11-24 18:25:58', '2023-11-24 18:25:58'),
(824, 30, 16, '2023-11-24 18:25:58', '2023-11-24 18:25:58');

-- --------------------------------------------------------

--
-- Table structure for table `property_sub_types`
--

CREATE TABLE `property_sub_types` (
  `id` int(5) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `off_plan_enabled` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `property_sub_types`
--

INSERT INTO `property_sub_types` (`id`, `type`, `off_plan_enabled`, `created_at`, `updated_at`) VALUES
(6, 'Apartment', 1, '2023-11-02 18:54:55', '2023-11-02 18:54:55'),
(7, 'Villa', 1, '2023-11-03 15:36:36', '2023-11-03 15:36:36'),
(8, 'Penthouse', 1, '2023-11-03 15:38:36', '2023-11-03 15:38:36'),
(9, 'Townhouse', 1, '2023-11-03 15:39:07', '2023-11-03 15:39:07'),
(10, 'Office Space', 0, '2023-11-21 15:03:11', '2023-11-21 15:03:11');

-- --------------------------------------------------------

--
-- Table structure for table `property_type`
--

CREATE TABLE `property_type` (
  `id` int(5) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `property_type`
--

INSERT INTO `property_type` (`id`, `type`) VALUES
(1, 'Residential'),
(2, 'Commercial');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'doctor'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$QqQk8UOJTsmY/HXVIv4EcuH3rgMWOXb0uhzcLNFTLtmakf6Nr8E7.', NULL, '2022-12-21 09:43:59', '2024-03-13 11:31:25', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `assign_tags`
--
ALTER TABLE `assign_tags`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `community_id` (`community_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `communities`
--
ALTER TABLE `communities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `developers`
--
ALTER TABLE `developers`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `floor_plans`
--
ALTER TABLE `floor_plans`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `off_plans`
--
ALTER TABLE `off_plans`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `prime_nearby_locations`
--
ALTER TABLE `prime_nearby_locations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `property_features`
--
ALTER TABLE `property_features`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `property_sub_types`
--
ALTER TABLE `property_sub_types`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `property_type`
--
ALTER TABLE `property_type`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `communities`
--
ALTER TABLE `communities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `developers`
--
ALTER TABLE `developers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `floor_plans`
--
ALTER TABLE `floor_plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1433;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `off_plans`
--
ALTER TABLE `off_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `prime_nearby_locations`
--
ALTER TABLE `prime_nearby_locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2007;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `property_features`
--
ALTER TABLE `property_features`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=825;

--
-- AUTO_INCREMENT for table `property_sub_types`
--
ALTER TABLE `property_sub_types`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `property_type`
--
ALTER TABLE `property_type`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `communities`
--
ALTER TABLE `communities`
  ADD CONSTRAINT `communities_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
