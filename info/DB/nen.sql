-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 26, 2024 at 08:04 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nen`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` enum('Active','Not Active') NOT NULL DEFAULT 'Active',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `slug`, `email`, `phone`, `address`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Admin\"}', 'admin', 'admin@admin.com', '01123694440', '{\"en\":\"cairo\"}', 'Active', NULL, '$2y$12$KFPLRwMIif6UuUrdfpmeKuffPczomzsmCQqVcwuIoIaAKcYMwUxQe', NULL, '2024-01-26 16:29:26', '2024-01-26 16:29:26'),
(2, '{\"en\":\"Braden Macejkovic\"}', '8786642270', 'rozella35@example.net', '878.664.2270', '{\"en\":\"13078 Bauch Rue\\nYostfurt, WY 55959-0722\"}', 'Active', '2024-01-26 16:29:26', '$2y$10$2KVfihbLxBubGrZLU5Fd/uHKGxUV8M5VELKp3kmuX9zjXjz46njuy', '0PNHHWz9Sg', '2024-01-26 16:29:26', '2024-01-26 16:29:26'),
(3, '{\"en\":\"Isabel McKenzie\"}', '361-414-1863', 'bcasper@example.org', '361-414-1863', '{\"en\":\"7800 Garnett Harbor Suite 564\\nWest Jefferey, SC 99110\"}', 'Active', '2024-01-26 16:29:26', '$2y$10$2KVfihbLxBubGrZLU5Fd/uHKGxUV8M5VELKp3kmuX9zjXjz46njuy', 'aV117ziYNL', '2024-01-26 16:29:26', '2024-01-26 16:29:26'),
(4, '{\"en\":\"Gerson Bogisich\"}', '401-348-9933', 'shanahan.lonny@example.com', '(401) 348-9933', '{\"en\":\"40811 Maia Summit Suite 414\\nPhoebeland, MN 00791\"}', 'Active', '2024-01-26 16:29:26', '$2y$10$2KVfihbLxBubGrZLU5Fd/uHKGxUV8M5VELKp3kmuX9zjXjz46njuy', 'zOOUaDEd9g', '2024-01-26 16:29:26', '2024-01-26 16:29:26'),
(5, '{\"en\":\"Cali Mraz\"}', '1-534-489-5964', 'xpollich@example.com', '1-534-489-5964', '{\"en\":\"750 Amy Lights\\nSouth Rettaview, AL 63014\"}', 'Active', '2024-01-26 16:29:26', '$2y$10$2KVfihbLxBubGrZLU5Fd/uHKGxUV8M5VELKp3kmuX9zjXjz46njuy', 'W7tehvlJi1', '2024-01-26 16:29:26', '2024-01-26 16:29:26'),
(6, '{\"en\":\"Aurore Crooks\"}', '661-374-8986', 'enrico.cormier@example.net', '661-374-8986', '{\"en\":\"13012 Nikolaus Parkway Apt. 915\\nYostville, CO 31130-6745\"}', 'Active', '2024-01-26 16:29:26', '$2y$10$2KVfihbLxBubGrZLU5Fd/uHKGxUV8M5VELKp3kmuX9zjXjz46njuy', 'lnCLTPbJ0G', '2024-01-26 16:29:26', '2024-01-26 16:29:26'),
(7, '{\"en\":\"Carmella Cassin\"}', '15209767348', 'christiansen.cathy@example.com', '+15209767348', '{\"en\":\"5047 Ardith Wells\\nForrestland, NH 35272-9516\"}', 'Active', '2024-01-26 16:29:26', '$2y$10$2KVfihbLxBubGrZLU5Fd/uHKGxUV8M5VELKp3kmuX9zjXjz46njuy', 'KqH8TM95T5', '2024-01-26 16:29:26', '2024-01-26 16:29:26'),
(8, '{\"en\":\"Miss Zoe Bode\"}', '1-539-558-2892', 'gunner.leannon@example.com', '+1-539-558-2892', '{\"en\":\"17020 Becker Greens Apt. 819\\nBrandiberg, IL 83270-9101\"}', 'Active', '2024-01-26 16:29:26', '$2y$10$2KVfihbLxBubGrZLU5Fd/uHKGxUV8M5VELKp3kmuX9zjXjz46njuy', 'fAMjvCS0cK', '2024-01-26 16:29:26', '2024-01-26 16:29:26'),
(9, '{\"en\":\"Magnolia Ortiz\"}', '6205793884', 'collin01@example.net', '620.579.3884', '{\"en\":\"25704 Bette Ferry\\nLake Betsystad, CO 52950\"}', 'Active', '2024-01-26 16:29:26', '$2y$10$2KVfihbLxBubGrZLU5Fd/uHKGxUV8M5VELKp3kmuX9zjXjz46njuy', 'zjs69O8fuj', '2024-01-26 16:29:26', '2024-01-26 16:29:26'),
(10, '{\"en\":\"Sunny Hegmann\"}', '219-976-9571', 'eichmann.cynthia@example.com', '(219) 976-9571', '{\"en\":\"7903 Connelly Radial\\nWest Melyssabury, MA 16083\"}', 'Active', '2024-01-26 16:29:26', '$2y$10$2KVfihbLxBubGrZLU5Fd/uHKGxUV8M5VELKp3kmuX9zjXjz46njuy', '5eBbHPfHw1', '2024-01-26 16:29:26', '2024-01-26 16:29:26'),
(11, '{\"en\":\"Kolby Lesch\"}', '2238981685', 'muller.franco@example.net', '223.898.1685', '{\"en\":\"54887 Abbigail Glen Apt. 631\\nSouth Shawnafort, ND 69790\"}', 'Active', '2024-01-26 16:29:26', '$2y$10$2KVfihbLxBubGrZLU5Fd/uHKGxUV8M5VELKp3kmuX9zjXjz46njuy', 'xQGBXJMFDu', '2024-01-26 16:29:26', '2024-01-26 16:29:26');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` enum('Active','Not Active') NOT NULL DEFAULT 'Active',
  `pages_id` bigint(20) UNSIGNED DEFAULT NULL,
  `childe_pages_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_two` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title_two` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `label_two` varchar(255) DEFAULT NULL,
  `button` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `bref` text DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` enum('Active','Not Active') NOT NULL DEFAULT 'Active',
  `type` varchar(255) NOT NULL,
  `pages_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ltm_translations`
--

CREATE TABLE `ltm_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `key` text NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `many_tables`
--

CREATE TABLE `many_tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `since` varchar(255) DEFAULT NULL,
  `sharing` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` enum('Active','Not Active') NOT NULL DEFAULT 'Active',
  `pages_id` bigint(20) UNSIGNED NOT NULL,
  `item` varchar(255) NOT NULL,
  `static_tables_id` bigint(20) UNSIGNED NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL,
  `conversions_disk` varchar(255) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Solution', 2, '97b93637-b1d1-4533-a998-29515b5b7b01', 'Solution', 'about-03 (1)', 'about-03-(1).jpg', 'image/jpeg', 'media', 'media', 12305, '[]', '[]', '[]', '[]', 1, '2024-01-26 16:29:49', '2024-01-26 16:29:49'),
(2, 'App\\Models\\Solution', 1, '4205de2f-5e7f-4952-9af6-ce5b0d1883cf', 'Solution', 'GYOuqtAvEuWWuIoSQkayYWNf2XhqdwtV8NWiIVMl', 'GYOuqtAvEuWWuIoSQkayYWNf2XhqdwtV8NWiIVMl.png', 'image/png', 'media', 'media', 1444184, '[]', '[]', '[]', '[]', 1, '2024-01-26 16:32:49', '2024-01-26 16:32:49');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_04_02_193005_create_translations_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_12_30_173954_create_media_table', 1),
(7, '2023_12_30_181058_create_admins_table', 1),
(8, '2023_12_30_181332_create_images_table', 1),
(9, '2023_12_30_182211_create_activity_log_table', 1),
(10, '2023_12_30_182212_add_event_column_to_activity_log_table', 1),
(11, '2023_12_30_182213_add_batch_uuid_column_to_activity_log_table', 1),
(12, '2023_12_30_183200_create_settings_table', 1),
(13, '2023_12_30_191410_create_translation_keys_table', 1),
(14, '2023_12_30_221314_create_permission_tables', 1),
(15, '2023_12_30_222811_create_new_role_table', 1),
(16, '2024_01_04_142856_create_pages_table', 1),
(17, '2024_01_05_014740_create_items_table', 1),
(18, '2024_01_06_230528_create_static_tables_table', 1),
(19, '2024_01_09_181558_create_many_tables_table', 1),
(20, '2024_01_11_115330_create_our_teams_table', 1),
(21, '2024_01_25_171945_create_tabs_table', 1),
(22, '2024_01_26_091328_create_projects_table', 1),
(23, '2024_01_26_154339_create_education_table', 1),
(24, '2024_01_26_181041_create_solutions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `our_teams`
--

CREATE TABLE `our_teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `jop` varchar(255) DEFAULT NULL,
  `status` enum('Active','Not Active') NOT NULL DEFAULT 'Active',
  `pages_id` bigint(20) UNSIGNED NOT NULL,
  `item` varchar(255) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` enum('Active','Not Active') NOT NULL DEFAULT 'Active',
  `navbar` enum('Active','Not Active') DEFAULT NULL,
  `footer` enum('Active','Not Active') DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `description`, `status`, `navbar`, `footer`, `parent_id`, `sort`, `link`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"Home\",\"ar\":\"\\u0627\\u0644\\u0635\\u0641\\u062d\\u0629 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a\\u0629\"}', 'home', NULL, 'Active', 'Active', NULL, NULL, 1, NULL, NULL, NULL),
(2, '{\"en\":\"About\",\"ar\":\"\\u0639\\u0646\"}', 'about', NULL, 'Active', 'Active', NULL, NULL, 2, NULL, NULL, NULL),
(3, '{\"en\":\"Projects\",\"ar\":\"\\u0627\\u0644\\u0645\\u0634\\u0627\\u0631\\u064a\\u0639\"}', 'projects', NULL, 'Active', 'Active', NULL, NULL, 3, NULL, NULL, NULL),
(4, '{\"en\":\"Education\",\"ar\":\"Education\"}', 'education', NULL, 'Active', 'Active', NULL, NULL, 4, NULL, NULL, NULL),
(5, '{\"en\":\"Testing\",\"ar\":\"\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a\"}', 'testing', NULL, 'Active', 'Active', NULL, NULL, 5, NULL, NULL, NULL),
(6, '{\"en\":\"Solutions\",\"ar\":\"\\u062d\\u0644\\u0648\\u0644\"}', 'solutions', NULL, 'Active', 'Active', NULL, NULL, 6, NULL, NULL, NULL),
(7, '{\"en\":\"Technology\",\"ar\":\"\\u062a\\u0643\\u0646\\u0648\\u0644\\u0648\\u062c\\u064a\\u0627\"}', 'technology', NULL, 'Active', 'Active', NULL, NULL, 7, NULL, NULL, NULL),
(8, '{\"en\":\"Doc Validation\",\"ar\":\"\\u0627\\u0644\\u062a\\u062d\\u0642\\u0642 \\u0645\\u0646 \\u0635\\u062d\\u0629 \\u0627\\u0644\\u0648\\u062b\\u064a\\u0642\\u0629\"}', 'doc-validation', NULL, 'Active', 'Active', NULL, NULL, 8, NULL, NULL, NULL),
(9, '{\"en\":\"Join Us\",\"ar\":\"\\u0627\\u0646\\u0636\\u0645 \\u0625\\u0644\\u064a\\u0646\\u0627\"}', 'join-us', NULL, 'Active', 'Active', NULL, NULL, 9, NULL, NULL, NULL),
(10, '{\"en\":\"Find Us\",\"ar\":\"\\u0627\\u0628\\u062d\\u062b \\u0639\\u0646\\u0627\"}', 'find-us', NULL, 'Active', 'Active', NULL, NULL, 10, NULL, NULL, NULL),
(11, '{\"en\":\"Identity\",\"ar\":\"\\u0647\\u0648\\u064a\\u0629\"}', 'identity', NULL, 'Active', 'Active', NULL, 2, 1, NULL, NULL, NULL),
(12, '{\"en\":\"Investors\",\"ar\":\"\\u0627\\u0644\\u0645\\u0633\\u062a\\u062b\\u0645\\u0631\\u064a\\u0646\"}', 'investors', NULL, 'Active', 'Active', NULL, 2, 2, NULL, NULL, NULL),
(13, '{\"en\":\"Achievements\",\"ar\":\"\\u0627\\u0644\\u0625\\u0646\\u062c\\u0627\\u0632\\u0627\\u062a\"}', 'achievements', NULL, 'Active', 'Active', NULL, 2, 3, NULL, NULL, NULL),
(14, '{\"en\":\"Awards\",\"ar\":\"\\u0627\\u0644\\u062c\\u0648\\u0627\\u0626\\u0632\"}', 'awards', NULL, 'Active', 'Active', NULL, 2, 4, NULL, NULL, NULL),
(15, '{\"en\":\"Certificates\",\"ar\":\"\\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a\"}', 'certificates', NULL, 'Active', 'Active', NULL, 2, 5, NULL, NULL, NULL),
(16, '{\"en\":\"Partners\",\"ar\":\"\\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u0621\"}', 'partners', NULL, 'Active', 'Active', NULL, 2, 6, NULL, NULL, NULL),
(17, '{\"en\":\"Clients\",\"ar\":\"\\u0627\\u0644\\u0639\\u0645\\u0644\\u0627\\u0621\"}', 'clients', NULL, 'Active', 'Active', NULL, 2, 8, NULL, NULL, NULL),
(18, '{\"en\":\"Our Team\",\"ar\":\"\\u0641\\u0631\\u064a\\u0642\\u0646\\u0627\"}', 'our-team', NULL, 'Active', 'Active', NULL, 2, 9, NULL, NULL, NULL),
(19, '{\"en\":\"Careers\",\"ar\":\"\\u0648\\u0638\\u0627\\u0626\\u0641\"}', 'careers', NULL, 'Active', 'Active', NULL, 2, 10, NULL, NULL, NULL),
(20, '{\"en\":\"Education\",\"ar\":\"\\u062a\\u0639\\u0644\\u064a\\u0645\"}', 'education', NULL, 'Active', 'Active', NULL, 3, 11, NULL, NULL, NULL),
(21, '{\"en\":\"Recruitment\",\"ar\":\"\\u062a\\u0648\\u0638\\u064a\\u0641\"}', 'recruitment', NULL, 'Active', 'Active', NULL, 3, 12, NULL, NULL, NULL),
(22, '{\"en\":\"Government\",\"ar\":\"\\u062d\\u0643\\u0648\\u0645\\u0629\"}', 'government', NULL, 'Active', 'Active', NULL, 3, 13, NULL, NULL, NULL),
(23, '{\"en\":\"Entrepreneurship\",\"ar\":\"\\u0631\\u064a\\u0627\\u062f\\u0629 \\u0627\\u0644\\u0623\\u0639\\u0645\\u0627\\u0644\"}', 'entrepreneurship', NULL, 'Active', 'Active', NULL, 3, 14, NULL, NULL, NULL),
(24, '{\"en\":\"Subsidized Programs\",\"ar\":\"\\u0627\\u0644\\u0628\\u0631\\u0627\\u0645\\u062c \\u0627\\u0644\\u0645\\u062f\\u0639\\u0648\\u0645\\u0629\"}', 'subsidized-programs', NULL, 'Active', 'Active', NULL, 3, 15, NULL, NULL, NULL),
(25, '{\"en\":\"International Certificates\",\"ar\":\"\\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u062f\\u0648\\u0644\\u064a\\u0629\"}', 'international-certificates', NULL, 'Active', 'Active', NULL, 4, 16, NULL, NULL, NULL),
(26, '{\"en\":\"International Exams\",\"ar\":\"\\u0627\\u0644\\u0627\\u0645\\u062a\\u062d\\u0627\\u0646\\u0627\\u062a \\u0627\\u0644\\u062f\\u0648\\u0644\\u064a\\u0629\"}', 'international-exams', NULL, 'Active', 'Active', NULL, 4, 17, NULL, NULL, NULL),
(27, '{\"en\":\"Postgraduate\",\"ar\":\"\\u062f\\u0631\\u0627\\u0633\\u0627\\u062a \\u0639\\u0644\\u064a\\u0627\"}', 'postgraduate', NULL, 'Active', 'Active', NULL, 4, 18, NULL, NULL, NULL),
(28, '{\"en\":\"Study Abroad\",\"ar\":\"\\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u0629 \\u0641\\u064a \\u0627\\u0644\\u062e\\u0627\\u0631\\u062c\"}', 'study-abroad', NULL, 'Active', 'Active', NULL, 4, 19, NULL, NULL, NULL),
(29, '{\"en\":\"Tqs\",\"ar\":\"\\u062a\\u064a\\u0643 \\u0627\\u0633\"}', 'tqs', NULL, 'Active', 'Active', NULL, 4, 20, NULL, NULL, NULL),
(30, '{\"en\":\"Alumni\",\"ar\":\"\\u0627\\u0644\\u062e\\u0631\\u064a\\u062c\\u0648\\u0646\"}', 'alumni', NULL, 'Active', 'Active', NULL, 4, 21, NULL, NULL, NULL),
(31, '{\"en\":\"Tourism\",\"ar\":\"\\u0627\\u0644\\u0633\\u064a\\u0627\\u062d\\u0629\"}', 'tourism', NULL, 'Active', 'Active', NULL, 4, 22, NULL, NULL, NULL),
(32, '{\"en\":\"Virtual Academy\",\"ar\":\"\\u0627\\u0644\\u0623\\u0643\\u0627\\u062f\\u064a\\u0645\\u064a\\u0629 \\u0627\\u0644\\u0627\\u0641\\u062a\\u0631\\u0627\\u0636\\u064a\\u0629\"}', 'virtual-academy', NULL, 'Active', 'Active', NULL, 4, 23, NULL, NULL, NULL),
(33, '{\"en\":\"Why Choose Us?\",\"ar\":\"\\u0644\\u0645\\u0627\\u0630\\u0627 \\u0623\\u062e\\u062a\\u0631\\u062a\\u0646\\u0627\\u061f\"}', 'why-choose-us', NULL, 'Active', 'Active', NULL, 5, 24, NULL, NULL, NULL),
(34, '{\"en\":\"Examination Platform\",\"ar\":\"\\u0645\\u0646\\u0635\\u0629 \\u0627\\u0644\\u0627\\u0645\\u062a\\u062d\\u0627\\u0646\\u0627\\u062a\"}', 'examination-platform', NULL, 'Active', 'Active', NULL, 5, 25, NULL, NULL, NULL),
(35, '{\"en\":\"Security & Quality\",\"ar\":\"\\u0627\\u0644\\u0623\\u0645\\u0646 \\u0648\\u0627\\u0644\\u062c\\u0648\\u062f\\u0629\"}', 'security-quality', NULL, 'Active', 'Active', NULL, 5, 26, NULL, NULL, NULL),
(36, '{\"en\":\"Test Development\",\"ar\":\"\\u062a\\u0637\\u0648\\u064a\\u0631 \\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\"}', 'test-development', NULL, 'Active', 'Active', NULL, 5, 27, NULL, NULL, NULL),
(37, '{\"en\":\"Test Delivery\",\"ar\":\"\\u062a\\u0633\\u0644\\u064a\\u0645 \\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\"}', 'test-delivery', NULL, 'Active', 'Active', NULL, 5, 28, NULL, NULL, NULL),
(38, '{\"en\":\"Test Taker\",\"ar\":\"\\u0645\\u062a\\u0642\\u062f\\u0645 \\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\"}', 'test-taker', NULL, 'Active', 'Active', NULL, 5, 29, NULL, NULL, NULL),
(39, '{\"en\":\"Education\",\"ar\":\"\\u062a\\u0639\\u0644\\u064a\\u0645\"}', 'education', NULL, 'Active', 'Active', NULL, 6, 30, NULL, NULL, NULL),
(40, '{\"en\":\"Business\",\"ar\":\"\\u0639\\u0645\\u0644\"}', 'business', NULL, 'Active', 'Active', NULL, 6, 31, NULL, NULL, NULL),
(41, '{\"en\":\"Microsoft Technology\",\"ar\":\"\\u062a\\u0643\\u0646\\u0648\\u0644\\u0648\\u062c\\u064a\\u0627 \\u0645\\u0627\\u064a\\u0643\\u0631\\u0648\\u0633\\u0648\\u0641\\u062a\"}', 'microsoft-technology', NULL, 'Active', 'Active', NULL, 7, 32, NULL, NULL, NULL),
(42, '{\"en\":\"Cloud Computing\",\"ar\":\"\\u062d\\u0648\\u0633\\u0628\\u0629 \\u0633\\u062d\\u0627\\u0628\\u064a\\u0629\"}', 'cloud-computing', NULL, 'Active', 'Active', NULL, 7, 33, NULL, NULL, NULL),
(43, '{\"en\":\"Cyber Security\",\"ar\":\"\\u0627\\u0644\\u0623\\u0645\\u0646 \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\"}', 'cyber-security', NULL, 'Active', 'Active', NULL, 7, 34, NULL, NULL, NULL),
(44, '{\"en\":\"Smart Systems\",\"ar\":\"\\u0627\\u0644\\u0623\\u0646\\u0638\\u0645\\u0629 \\u0627\\u0644\\u0630\\u0643\\u064a\\u0629\"}', 'smart-systems', NULL, 'Active', 'Active', NULL, 7, 35, NULL, NULL, NULL),
(45, '{\"en\":\"Software Development\",\"ar\":\"\\u062a\\u0637\\u0648\\u064a\\u0631 \\u0627\\u0644\\u0628\\u0631\\u0645\\u062c\\u064a\\u0627\\u062a\"}', 'software-development', NULL, 'Active', 'Active', NULL, 7, 36, NULL, NULL, NULL),
(46, '{\"en\":\"Digital Marketing\",\"ar\":\"\\u0627\\u0644\\u062a\\u0633\\u0648\\u064a\\u0642 \\u0627\\u0644\\u0631\\u0642\\u0645\\u064a\"}', 'digital-marketing', NULL, 'Active', 'Active', NULL, 7, 37, NULL, NULL, NULL),
(47, '{\"en\":\"Our Network\",\"ar\":\"\\u0634\\u0628\\u0643\\u062a\\u0646\\u0627\"}', 'our-network', NULL, 'Active', 'Active', NULL, 8, 38, NULL, NULL, NULL),
(48, '{\"en\":\"Our Services\",\"ar\":\"\\u062e\\u062f\\u0645\\u0627\\u062a\\u0646\\u0627\"}', 'our-services', NULL, 'Active', 'Active', NULL, 8, 39, NULL, NULL, NULL),
(49, '{\"en\":\"Distinguee Features\",\"ar\":\"\\u0627\\u0644\\u0645\\u064a\\u0632\\u0627\\u062a \\u0627\\u0644\\u0645\\u0645\\u064a\\u0632\\u0629\"}', 'distinguee-features', NULL, 'Active', 'Active', NULL, 8, 40, NULL, NULL, NULL),
(50, '{\"en\":\"How Do We Work?\",\"ar\":\"\\u0643\\u064a\\u0641 \\u0646\\u0639\\u0645\\u0644\\u061f\"}', 'how-do-we-work', NULL, 'Active', 'Active', NULL, 8, 41, NULL, NULL, NULL),
(51, '{\"en\":\"Why Had To Trust?\",\"ar\":\"\\u0644\\u0645\\u0627\\u0630\\u0627 \\u0643\\u0627\\u0646 \\u064a\\u062c\\u0628 \\u0627\\u0644\\u062b\\u0642\\u0629\\u061f\"}', 'why-had-to-trust', NULL, 'Active', 'Active', NULL, 8, 42, NULL, NULL, NULL),
(52, '{\"en\":\"Academic\",\"ar\":\"\\u0623\\u0643\\u0627\\u062f\\u064a\\u0645\\u064a\"}', 'academic', NULL, 'Active', 'Active', NULL, 9, 43, NULL, NULL, NULL),
(53, '{\"en\":\"Professional\",\"ar\":\"\\u0627\\u062d\\u062a\\u0631\\u0627\\u0641\\u064a\"}', 'professional', NULL, 'Active', 'Active', NULL, 9, 44, NULL, NULL, NULL),
(54, '{\"en\":\"Centers\",\"ar\":\"\\u0627\\u0644\\u0645\\u0631\\u0627\\u0643\\u0632\"}', 'centers', NULL, 'Active', 'Active', NULL, 9, 45, NULL, NULL, NULL),
(55, '{\"en\":\"Agents\",\"ar\":\"\\u0639\\u0645\\u0644\\u0627\\u0621\"}', 'agents', NULL, 'Active', 'Active', NULL, 9, 46, NULL, NULL, NULL),
(56, '{\"en\":\"International Cards\",\"ar\":\"\\u0627\\u0644\\u0628\\u0637\\u0627\\u0642\\u0627\\u062a \\u0627\\u0644\\u062f\\u0648\\u0644\\u064a\\u0629\"}', 'international-cards', NULL, 'Active', 'Active', NULL, 9, 47, NULL, NULL, NULL),
(57, '{\"en\":\"ELITE Membership\",\"ar\":\"\\u0639\\u0636\\u0648\\u064a\\u0629 \\u0627\\u0644\\u0646\\u062e\\u0628\\u0629\"}', 'elite-membership', NULL, 'Active', 'Active', NULL, 9, 48, NULL, NULL, NULL),
(58, '{\"en\":\"Certified Trainers\",\"ar\":\"\\u0627\\u0644\\u0645\\u062f\\u0631\\u0628\\u064a\\u0646 \\u0627\\u0644\\u0645\\u0639\\u062a\\u0645\\u062f\\u064a\\u0646\"}', 'certified-trainers', NULL, 'Active', 'Active', NULL, 10, 49, NULL, NULL, NULL),
(59, '{\"en\":\"Training Centers\",\"ar\":\"\\u0645\\u0631\\u0627\\u0643\\u0632 \\u0627\\u0644\\u062a\\u062f\\u0631\\u064a\\u0628\"}', 'training-centers', NULL, 'Active', 'Active', NULL, 10, 50, NULL, NULL, NULL),
(60, '{\"en\":\"Testing Centers\",\"ar\":\"\\u0645\\u0631\\u0627\\u0643\\u0632 \\u0627\\u0644\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\"}', 'testing-centers', NULL, 'Active', 'Active', NULL, 10, 51, NULL, NULL, NULL),
(61, '{\"en\":\"Recruitment Centers\",\"ar\":\"\\u0645\\u0631\\u0627\\u0643\\u0632 \\u0627\\u0644\\u062a\\u0648\\u0638\\u064a\\u0641\"}', 'recruitment-centers', NULL, 'Active', 'Active', NULL, 10, 52, NULL, NULL, NULL),
(62, '{\"en\":\"strategic\",\"ar\":\"\\u0627\\u0633\\u062a\\u0631\\u0627\\u062a\\u064a\\u062c\\u064a\"}', 'strategic', NULL, 'Active', 'Active', NULL, 16, 52, NULL, NULL, NULL),
(63, '{\"en\":\"technology\",\"ar\":\"\\u062a\\u0643\\u0646\\u0648\\u0644\\u0648\\u062c\\u064a\\u0627\"}', 'technology', NULL, 'Active', 'Active', NULL, 16, 52, NULL, NULL, NULL),
(64, '{\"en\":\"education\",\"ar\":\"\\u062a\\u0639\\u0644\\u064a\\u0645\"}', 'education', NULL, 'Active', 'Active', NULL, 16, 52, NULL, NULL, NULL),
(65, '{\"en\":\"testing\",\"ar\":\"\\u0627\\u062e\\u062a\\u0628\\u0627\\u0631\\u0627\\u062a\"}', 'testing', NULL, 'Active', 'Active', NULL, 16, 52, NULL, NULL, NULL),
(66, '{\"en\":\"business\",\"ar\":\"\\u0639\\u0645\\u0644\"}', 'business', NULL, 'Active', 'Active', NULL, 16, 52, NULL, NULL, NULL),
(67, '{\"en\":\"technology\",\"ar\":\"\\u062a\\u0643\\u0646\\u0648\\u0644\\u0648\\u062c\\u064a\\u0627\"}', 'technology', NULL, 'Active', 'Active', NULL, 17, 52, NULL, NULL, NULL),
(68, '{\"en\":\"education\",\"ar\":\"\\u062a\\u0639\\u0644\\u064a\\u0645\"}', 'education', NULL, 'Active', 'Active', NULL, 17, 52, NULL, NULL, NULL),
(69, '{\"en\":\"learning academy\",\"ar\":\"\\u0623\\u0643\\u0627\\u062f\\u064a\\u0645\\u064a\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645\"}', 'learning-academy', NULL, 'Active', 'Active', NULL, 20, 52, NULL, NULL, NULL),
(70, '{\"en\":\"UTEST\",\"ar\":\"\\u064a\\u0648\\u062a\\u064a\\u0633\\u062a\"}', 'utest', NULL, 'Active', 'Active', NULL, 20, 52, NULL, NULL, NULL),
(71, '{\"en\":\"Edu 4 Me\",\"ar\":\"\\u064a\\u0648\\u062a\\u064a\\u0633\\u062a\\u062f\\u0648 4 \\u0645\\u064a\"}', 'edu-4-me', NULL, 'Active', 'Active', NULL, 20, 52, NULL, NULL, NULL),
(72, '{\"en\":\"Elite Membership Program\",\"ar\":\"\\u0628\\u0631\\u0646\\u0627\\u0645\\u062c \\u0639\\u0636\\u0648\\u064a\\u0629 \\u0627\\u0644\\u0646\\u062e\\u0628\\u0629\"}', 'elite-membership-program', NULL, 'Active', 'Active', NULL, 20, 52, NULL, NULL, NULL),
(73, '{\"en\":\"Certified Trainer\",\"ar\":\"\\u0645\\u062f\\u0631\\u0628 \\u0645\\u0639\\u062a\\u0645\\u062f\"}', 'certified-trainer', NULL, 'Active', 'Active', NULL, 20, 52, NULL, NULL, NULL),
(74, '{\"en\":\"Edu Me Free\",\"ar\":\"\\u0627\\u064a\\u062f\\u0648 \\u0644\\u064a \\u0627\\u0644\\u062d\\u0631\\u0629\"}', 'edu-me-free', NULL, 'Active', 'Active', NULL, 20, 52, NULL, NULL, NULL),
(75, '{\"en\":\"Masr Online\",\"ar\":\"\\u0645\\u0635\\u0631 \\u0627\\u0648\\u0646 \\u0644\\u0627\\u064a\\u0646\"}', 'masr-online', NULL, 'Active', 'Active', NULL, 20, 52, NULL, NULL, NULL),
(76, '{\"en\":\"International Certificate of Banking Services\",\"ar\":\"\\u0627\\u0644\\u0634\\u0647\\u0627\\u062f\\u0629 \\u0627\\u0644\\u062f\\u0648\\u0644\\u064a\\u0629 \\u0644\\u0644\\u062e\\u062f\\u0645\\u0627\\u062a \\u0627\\u0644\\u0645\\u0635\\u0631\\u0641\\u064a\\u0629\"}', 'international-certificate-of-banking-services', NULL, 'Active', 'Active', NULL, 20, 52, NULL, NULL, NULL),
(77, '{\"en\":\"The Egyptian Initiative for Mastering Computer Skills\",\"ar\":\"\\u0627\\u0644\\u0645\\u0628\\u0627\\u062f\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0635\\u0631\\u064a\\u0629 \\u0644\\u0625\\u062a\\u0642\\u0627\\u0646 \\u0645\\u0647\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u062d\\u0627\\u0633\\u0628 \\u0627\\u0644\\u0622\\u0644\\u064a\"}', 'the-egyptian-initiative-for-mastering-computer-skills', NULL, 'Active', 'Active', NULL, 20, 52, NULL, NULL, NULL),
(78, '{\"en\":\"IPSD\",\"ar\":\"\\u0627\\u064a \\u0628\\u064a \\u0627\\u0633 \\u062f\\u064a\"}', 'ipsd', NULL, 'Active', 'Active', NULL, 20, 52, NULL, NULL, NULL),
(79, '{\"en\":\"BSkills\",\"ar\":\"\\u0628\\u0643\\u0627\\u0644\\u0648\\u0631\\u064a\\u0648\\u0633 \\u0627\\u0644\\u0645\\u0647\\u0627\\u0631\\u0627\\u062a\"}', 'bskills', NULL, 'Active', 'Active', NULL, 20, 52, NULL, NULL, NULL),
(80, '{\"en\":\"ICPU\",\"ar\":\"\\u0627\\u0644\\u0627\\u062a\\u062d\\u0627\\u062f \\u0627\\u0644\\u0628\\u0631\\u0644\\u0645\\u0627\\u0646\\u064a \\u0627\\u0644\\u062f\\u0648\\u0644\\u064a\"}', 'icpu', NULL, 'Active', 'Active', NULL, 20, 52, NULL, NULL, NULL),
(81, '{\"en\":\"Professional Trainers Academy\",\"ar\":\"\\u0623\\u0643\\u0627\\u062f\\u064a\\u0645\\u064a\\u0629 \\u0627\\u0644\\u0645\\u062f\\u0631\\u0628\\u064a\\u0646 \\u0627\\u0644\\u0645\\u062d\\u062a\\u0631\\u0641\\u064a\\u0646\"}', 'professional-trainers-academy', NULL, 'Active', 'Active', NULL, 20, 52, NULL, NULL, NULL),
(82, '{\"en\":\"MTA\",\"ar\":\"\"}', 'mta', NULL, 'Active', 'Active', NULL, 20, 52, NULL, NULL, NULL),
(83, '{\"en\":\"IESL\",\"ar\":\"\"}', 'iesl', NULL, 'Active', 'Active', NULL, 20, 52, NULL, NULL, NULL),
(84, '{\"en\":\"ITL\",\"ar\":\"\"}', 'itl', NULL, 'Active', 'Active', NULL, 20, 52, NULL, NULL, NULL),
(85, '{\"en\":\"Upgrade for You\",\"ar\":\"\"}', 'upgrade-for-you', NULL, 'Active', 'Active', NULL, 20, 52, NULL, NULL, NULL),
(86, '{\"en\":\"Air Hospitality and Aviation Services Program\",\"ar\":\"\"}', 'air-hospitality-and-aviation-services-program', NULL, 'Active', 'Active', NULL, 20, 52, NULL, NULL, NULL),
(87, '{\"en\":\"International Scholarship for English Language Proficiency \",\"ar\":\"\"}', 'international-scholarship-for-english-language-proficiency', NULL, 'Active', 'Active', NULL, 20, 52, NULL, NULL, NULL),
(88, '{\"en\":\"Industrial Training in Cooperation \",\"ar\":\"\"}', 'industrial-training-in-cooperation', NULL, 'Active', 'Active', NULL, 20, 52, NULL, NULL, NULL),
(89, '{\"en\":\"Tasaheel \",\"ar\":\"\"}', 'tasaheel', NULL, 'Active', 'Active', NULL, 21, 52, NULL, NULL, NULL),
(90, '{\"en\":\"Job 4 me \",\"ar\":\"\"}', 'job-4-me', NULL, 'Active', 'Active', NULL, 21, 52, NULL, NULL, NULL),
(91, '{\"en\":\"Data Quest \",\"ar\":\"\"}', 'data-quest', NULL, 'Active', 'Active', NULL, 21, 52, NULL, NULL, NULL),
(92, '{\"en\":\"Haya Karima \",\"ar\":\"\"}', 'haya-karima', NULL, 'Active', 'Active', NULL, 22, 52, NULL, NULL, NULL),
(93, '{\"en\":\"Future Vision Pioneers Initiative\",\"ar\":\"\"}', 'future-vision-pioneers-initiative', NULL, 'Active', 'Active', NULL, 22, 52, NULL, NULL, NULL),
(94, '{\"en\":\"Specialization Tests on the Online Portal\",\"ar\":\"\"}', 'specialization-tests-on-the-online-portal', NULL, 'Active', 'Active', NULL, 22, 52, NULL, NULL, NULL),
(95, '{\"en\":\"Specialization Tests in The Temporary Teacher Competition\",\"ar\":\"\"}', 'specialization-tests-in-the-temporary-teacher-competition', NULL, 'Active', 'Active', NULL, 22, 52, NULL, NULL, NULL),
(96, '{\"en\":\"Global Dev Gate\",\"ar\":\"\"}', 'global-dev-gate', NULL, 'Active', 'Active', NULL, 23, 52, NULL, NULL, NULL),
(97, '{\"en\":\"Egypt - UAE Project (Training for Employment)\",\"ar\":\"\"}', 'egypt-uae-project-training-for-employment', NULL, 'Active', 'Active', NULL, 23, 52, NULL, NULL, NULL),
(98, '{\"en\":\"Training for Job\",\"ar\":\"\"}', 'training-for-job', NULL, 'Active', 'Active', NULL, 23, 52, NULL, NULL, NULL),
(99, '{\"en\":\"Project Name\",\"ar\":\"\"}', 'project-name', NULL, 'Active', 'Active', NULL, 24, 52, NULL, NULL, NULL),
(100, '{\"en\":\"Project Name\",\"ar\":\"\"}', 'project-name', NULL, 'Active', 'Active', NULL, 24, 52, NULL, NULL, NULL),
(101, '{\"en\":\"Microsoft\",\"ar\":\"\"}', 'microsoft', NULL, 'Active', 'Active', NULL, 25, 52, NULL, NULL, NULL),
(102, '{\"en\":\"Cisco\",\"ar\":\"\"}', 'cisco', NULL, 'Active', 'Active', NULL, 25, 52, NULL, NULL, NULL),
(103, '{\"en\":\"Oracle\",\"ar\":\"\"}', 'oracle', NULL, 'Active', 'Active', NULL, 25, 52, NULL, NULL, NULL),
(104, '{\"en\":\"EC-Council\",\"ar\":\"\"}', 'ec-council', NULL, 'Active', 'Active', NULL, 25, 52, NULL, NULL, NULL),
(105, '{\"en\":\"Languages\",\"ar\":\"\"}', 'languages', NULL, 'Active', 'Active', NULL, 25, 52, NULL, NULL, NULL),
(106, '{\"en\":\"Business Administration\",\"ar\":\"\"}', 'business-administration', NULL, 'Active', 'Active', NULL, 25, 52, NULL, NULL, NULL),
(107, '{\"en\":\"Computer Users\",\"ar\":\"\"}', 'computer-users', NULL, 'Active', 'Active', NULL, 25, 52, NULL, NULL, NULL),
(108, '{\"en\":\"Overview\",\"ar\":\"\"}', 'overview', NULL, 'Active', 'Active', NULL, 26, 52, NULL, NULL, NULL),
(109, '{\"en\":\"VUE\",\"ar\":\"\"}', 'vue', NULL, 'Active', 'Active', NULL, 26, 52, NULL, NULL, NULL),
(110, '{\"en\":\"PROMETRIC\",\"ar\":\"\"}', 'prometric', NULL, 'Active', 'Active', NULL, 26, 52, NULL, NULL, NULL),
(111, '{\"en\":\"iTEP\",\"ar\":\"\"}', 'itep', NULL, 'Active', 'Active', NULL, 26, 52, NULL, NULL, NULL),
(112, '{\"en\":\"ETS\",\"ar\":\"\"}', 'ets', NULL, 'Active', 'Active', NULL, 26, 52, NULL, NULL, NULL),
(113, '{\"en\":\"KRYTERION\",\"ar\":\"\"}', 'kryterion', NULL, 'Active', 'Active', NULL, 26, 52, NULL, NULL, NULL),
(114, '{\"en\":\"GES\",\"ar\":\"\"}', 'ges', NULL, 'Active', 'Active', NULL, 26, 52, NULL, NULL, NULL),
(115, '{\"en\":\"PTE\",\"ar\":\"\"}', 'pte', NULL, 'Active', 'Active', NULL, 26, 52, NULL, NULL, NULL),
(116, '{\"en\":\"GMAT\",\"ar\":\"\"}', 'gmat', NULL, 'Active', 'Active', NULL, 26, 52, NULL, NULL, NULL),
(117, '{\"en\":\"ECC\",\"ar\":\"\"}', 'ecc', NULL, 'Active', 'Active', NULL, 26, 52, NULL, NULL, NULL),
(118, '{\"en\":\"CertiPort\",\"ar\":\"\"}', 'certiport', NULL, 'Active', 'Active', NULL, 26, 52, NULL, NULL, NULL),
(119, '{\"en\":\"ICDL\",\"ar\":\"\"}', 'icdl', NULL, 'Active', 'Active', NULL, 26, 52, NULL, NULL, NULL),
(120, '{\"en\":\"Schedule Test\",\"ar\":\"\"}', 'schedule-test', NULL, 'Active', 'Active', NULL, 26, 52, NULL, NULL, NULL),
(121, '{\"en\":\"MBA\",\"ar\":\"\"}', 'mba', NULL, 'Active', 'Active', NULL, 27, 52, NULL, NULL, NULL),
(122, '{\"en\":\"Cyber Security Master\",\"ar\":\"\"}', 'cyber-security-master', NULL, 'Active', 'Active', NULL, 27, 52, NULL, NULL, NULL),
(123, '{\"en\":\"USA\",\"ar\":\"\"}', 'usa', NULL, 'Active', 'Active', NULL, 28, 52, NULL, NULL, NULL),
(124, '{\"en\":\"UK\",\"ar\":\"\"}', 'uk', NULL, 'Active', 'Active', NULL, 28, 52, NULL, NULL, NULL),
(125, '{\"en\":\"Germany\",\"ar\":\"\"}', 'germany', NULL, 'Active', 'Active', NULL, 28, 52, NULL, NULL, NULL),
(126, '{\"en\":\"Turkey\",\"ar\":\"\"}', 'turkey', NULL, 'Active', 'Active', NULL, 28, 52, NULL, NULL, NULL),
(127, '{\"en\":\"Egypt\",\"ar\":\"\"}', 'egypt', NULL, 'Active', 'Active', NULL, 28, 52, NULL, NULL, NULL),
(128, '{\"en\":\"NEN CT\",\"ar\":\"\"}', 'nen-ct', NULL, 'Active', 'Active', NULL, 29, 52, NULL, NULL, NULL),
(129, '{\"en\":\"MCE\",\"ar\":\"\"}', 'mce', NULL, 'Active', 'Active', NULL, 29, 52, NULL, NULL, NULL),
(130, '{\"en\":\"MCT\",\"ar\":\"\"}', 'mct', NULL, 'Active', 'Active', NULL, 29, 52, NULL, NULL, NULL),
(131, '{\"en\":\"CCSI\",\"ar\":\"\"}', 'ccsi', NULL, 'Active', 'Active', NULL, 29, 52, NULL, NULL, NULL),
(132, '{\"en\":\"IEEE\",\"ar\":\"\"}', 'ieee', NULL, 'Active', 'Active', NULL, 29, 52, NULL, NULL, NULL),
(133, '{\"en\":\"Edu Name\",\"ar\":\"\"}', 'edu-name', NULL, 'Active', 'Active', NULL, 30, 52, NULL, NULL, NULL),
(134, '{\"en\":\"Edu Name\",\"ar\":\"\"}', 'edu-name', NULL, 'Active', 'Active', NULL, 30, 52, NULL, NULL, NULL),
(135, '{\"en\":\"Edu Name\",\"ar\":\"\"}', 'edu-name', NULL, 'Active', 'Active', NULL, 31, 52, NULL, NULL, NULL),
(136, '{\"en\":\"Edu Name\",\"ar\":\"\"}', 'edu-name', NULL, 'Active', 'Active', NULL, 31, 52, NULL, NULL, NULL),
(137, '{\"en\":\"Microsoft Learning\",\"ar\":\"\"}', 'microsoft-learning', NULL, 'Active', 'Active', NULL, 32, 52, NULL, NULL, NULL),
(138, '{\"en\":\"Networking Academy\",\"ar\":\"\"}', 'networking-academy', NULL, 'Active', 'Active', NULL, 32, 52, NULL, NULL, NULL),
(139, '{\"en\":\"CompTIA Learning Center\",\"ar\":\"\"}', 'comptia-learning-center', NULL, 'Active', 'Active', NULL, 32, 52, NULL, NULL, NULL),
(140, '{\"en\":\"Microsoft Imagine Academy\",\"ar\":\"\"}', 'microsoft-imagine-academy', NULL, 'Active', 'Active', NULL, 32, 52, NULL, NULL, NULL),
(141, '{\"en\":\"Edu Me Free\",\"ar\":\"\"}', 'edu-me-free', NULL, 'Active', 'Active', NULL, 32, 52, NULL, NULL, NULL),
(142, '{\"en\":\"EEXAM\",\"ar\":\"\"}', 'eexam', NULL, 'Active', 'Active', NULL, 39, 52, NULL, NULL, NULL),
(143, '{\"en\":\"VACAD\",\"ar\":\"\"}', 'vacad', NULL, 'Active', 'Active', NULL, 39, 52, NULL, NULL, NULL),
(144, '{\"en\":\"Interactive Books\",\"ar\":\"\"}', 'interactive-books', NULL, 'Active', 'Active', NULL, 39, 52, NULL, NULL, NULL),
(145, '{\"en\":\"Cloud Teacher\",\"ar\":\"\"}', 'cloud-teacher', NULL, 'Active', 'Active', NULL, 39, 52, NULL, NULL, NULL),
(146, '{\"en\":\"Global Training System\",\"ar\":\"\"}', 'global-training-system', NULL, 'Active', 'Active', NULL, 39, 52, NULL, NULL, NULL),
(147, '{\"en\":\"School Management System\",\"ar\":\"\"}', 'school-management-system', NULL, 'Active', 'Active', NULL, 39, 52, NULL, NULL, NULL),
(148, '{\"en\":\"Erada\",\"ar\":\"\"}', 'erada', NULL, 'Active', 'Active', NULL, 39, 52, NULL, NULL, NULL),
(149, '{\"en\":\"Taqyeem\",\"ar\":\"\"}', 'taqyeem', NULL, 'Active', 'Active', NULL, 39, 52, NULL, NULL, NULL),
(150, '{\"en\":\"Qiyas\",\"ar\":\"\"}', 'qiyas', NULL, 'Active', 'Active', NULL, 39, 52, NULL, NULL, NULL),
(151, '{\"en\":\"Sadeeqy\",\"ar\":\"\"}', 'sadeeqy', NULL, 'Active', 'Active', NULL, 39, 52, NULL, NULL, NULL),
(152, '{\"en\":\"Smart School Bus\",\"ar\":\"\"}', 'smart-school-bus', NULL, 'Active', 'Active', NULL, 39, 52, NULL, NULL, NULL),
(153, '{\"en\":\"Microsoft Dynamics 365\",\"ar\":\"\"}', 'microsoft-dynamics-365', NULL, 'Active', 'Active', NULL, 40, 52, NULL, NULL, NULL),
(154, '{\"en\":\"Help 4 Me\",\"ar\":\"\"}', 'help-4-me', NULL, 'Active', 'Active', NULL, 40, 52, NULL, NULL, NULL),
(155, '{\"en\":\"Odoo ERP\",\"ar\":\"\"}', 'odoo-erp', NULL, 'Active', 'Active', NULL, 40, 52, NULL, NULL, NULL),
(156, '{\"en\":\"Follow Metric\",\"ar\":\"\"}', 'follow-metric', NULL, 'Active', 'Active', NULL, 40, 52, NULL, NULL, NULL),
(157, '{\"en\":\"YALLASHOP\",\"ar\":\"\"}', 'yallashop', NULL, 'Active', 'Active', NULL, 40, 52, NULL, NULL, NULL),
(158, '{\"en\":\"Government Universities\",\"ar\":\"\"}', 'government-universities', NULL, 'Active', 'Active', NULL, 47, 52, NULL, NULL, NULL),
(159, '{\"en\":\"Private Universities\",\"ar\":\"\"}', 'private-universities', NULL, 'Active', 'Active', NULL, 47, 52, NULL, NULL, NULL),
(160, '{\"en\":\"Technological Universities\",\"ar\":\"\"}', 'technological-universities', NULL, 'Active', 'Active', NULL, 47, 52, NULL, NULL, NULL),
(161, '{\"en\":\"International Universities\",\"ar\":\"\"}', 'international-universities', NULL, 'Active', 'Active', NULL, 47, 52, NULL, NULL, NULL),
(162, '{\"en\":\"Private Higher Institutes\",\"ar\":\"\"}', 'private-higher-institutes', NULL, 'Active', 'Active', NULL, 47, 52, NULL, NULL, NULL),
(163, '{\"en\":\"Intermediate Technical Institutes\",\"ar\":\"\"}', 'intermediate-technical-institutes', NULL, 'Active', 'Active', NULL, 47, 52, NULL, NULL, NULL),
(164, '{\"en\":\"Vocational Training Institutes\",\"ar\":\"\"}', 'vocational-training-institutes', NULL, 'Active', 'Active', NULL, 47, 52, NULL, NULL, NULL),
(165, '{\"en\":\"Technical Education Schools\",\"ar\":\"\"}', 'technical-education-schools', NULL, 'Active', 'Active', NULL, 47, 52, NULL, NULL, NULL),
(166, '{\"en\":\"Ministries & Government Agencies\",\"ar\":\"\"}', 'ministries-government-agencies', NULL, 'Active', 'Active', NULL, 47, 52, NULL, NULL, NULL),
(167, '{\"en\":\"Professional Union & Syndicates\",\"ar\":\"\"}', 'professional-union-syndicates', NULL, 'Active', 'Active', NULL, 47, 52, NULL, NULL, NULL),
(168, '{\"en\":\"Government Training Centers\",\"ar\":\"\"}', 'government-training-centers', NULL, 'Active', 'Active', NULL, 47, 52, NULL, NULL, NULL),
(169, '{\"en\":\"Companies & Institution\",\"ar\":\"\"}', 'companies-institution', NULL, 'Active', 'Active', NULL, 47, 52, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'admin', '2024-01-26 16:29:25', '2024-01-26 16:29:25'),
(2, 'role-create', 'admin', '2024-01-26 16:29:25', '2024-01-26 16:29:25'),
(3, 'role-edit', 'admin', '2024-01-26 16:29:25', '2024-01-26 16:29:25'),
(4, 'role-delete', 'admin', '2024-01-26 16:29:25', '2024-01-26 16:29:25');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` enum('Active','Not Active') NOT NULL DEFAULT 'Active',
  `pages_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tabs_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '2024-01-26 16:29:26', '2024-01-26 16:29:26');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `solutions`
--

CREATE TABLE `solutions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` enum('Active','Not Active') NOT NULL DEFAULT 'Active',
  `pages_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tabs_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `solutions`
--

INSERT INTO `solutions` (`id`, `title`, `description`, `status`, `pages_id`, `tabs_id`, `sort`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"uyigyi\",\"ar\":\"dskldnskl22\"}', '{\"en\":\"<p>2132123231<\\/p>\",\"ar\":\"<p>2132123231<\\/p>\"}', 'Active', 39, 3, NULL, '2024-01-26 16:29:27', '2024-01-26 16:33:12'),
(2, '{\"en\":\"sdas\"}', '{\"en\":\"<p>saidhdsiao<\\/p>\"}', 'Active', 40, 1, NULL, '2024-01-26 16:29:49', '2024-01-26 16:29:49');

-- --------------------------------------------------------

--
-- Table structure for table `static_tables`
--

CREATE TABLE `static_tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `subsubtitle` varchar(255) DEFAULT NULL,
  `years` int(11) DEFAULT NULL,
  `years_text` varchar(255) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `button` varchar(255) DEFAULT NULL,
  `button_two` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `url_two` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` enum('Active','Not Active') NOT NULL DEFAULT 'Active',
  `pages_id` bigint(20) UNSIGNED NOT NULL,
  `childe_pages_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item` varchar(255) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tabs`
--

CREATE TABLE `tabs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tabs`
--

INSERT INTO `tabs` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '{\"en\":\"about\",\"ar\":\"about\"}', NULL, NULL),
(2, '{\"en\":\"contactus\",\"ar\":\"contactus\"}', NULL, NULL),
(3, '{\"en\":\"about2\",\"ar\":\"about2\"}', NULL, NULL),
(4, '{\"en\":\"contactus2\",\"ar\":\"contactus2\"}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `translation_keys`
--

CREATE TABLE `translation_keys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translation_keys`
--

INSERT INTO `translation_keys` (`id`, `key`, `name`, `created_at`, `updated_at`) VALUES
(1, 'en', 'english', '2024-01-26 16:29:26', NULL),
(2, 'ar', 'arabic', '2024-01-26 16:29:26', NULL);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `education_pages_id_foreign` (`pages_id`),
  ADD KEY `education_childe_pages_id_foreign` (`childe_pages_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_pages_id_foreign` (`pages_id`);

--
-- Indexes for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `many_tables`
--
ALTER TABLE `many_tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `many_tables_pages_id_foreign` (`pages_id`),
  ADD KEY `many_tables_static_tables_id_foreign` (`static_tables_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `our_teams`
--
ALTER TABLE `our_teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `our_teams_pages_id_foreign` (`pages_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_pages_id_foreign` (`pages_id`),
  ADD KEY `projects_tabs_id_foreign` (`tabs_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `solutions`
--
ALTER TABLE `solutions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `solutions_pages_id_foreign` (`pages_id`),
  ADD KEY `solutions_tabs_id_foreign` (`tabs_id`);

--
-- Indexes for table `static_tables`
--
ALTER TABLE `static_tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `static_tables_pages_id_foreign` (`pages_id`),
  ADD KEY `static_tables_childe_pages_id_foreign` (`childe_pages_id`);

--
-- Indexes for table `tabs`
--
ALTER TABLE `tabs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translation_keys`
--
ALTER TABLE `translation_keys`
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
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `many_tables`
--
ALTER TABLE `many_tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `our_teams`
--
ALTER TABLE `our_teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `solutions`
--
ALTER TABLE `solutions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `static_tables`
--
ALTER TABLE `static_tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tabs`
--
ALTER TABLE `tabs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `translation_keys`
--
ALTER TABLE `translation_keys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_childe_pages_id_foreign` FOREIGN KEY (`childe_pages_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `education_pages_id_foreign` FOREIGN KEY (`pages_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_pages_id_foreign` FOREIGN KEY (`pages_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `many_tables`
--
ALTER TABLE `many_tables`
  ADD CONSTRAINT `many_tables_pages_id_foreign` FOREIGN KEY (`pages_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `many_tables_static_tables_id_foreign` FOREIGN KEY (`static_tables_id`) REFERENCES `static_tables` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `our_teams`
--
ALTER TABLE `our_teams`
  ADD CONSTRAINT `our_teams_pages_id_foreign` FOREIGN KEY (`pages_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_pages_id_foreign` FOREIGN KEY (`pages_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `projects_tabs_id_foreign` FOREIGN KEY (`tabs_id`) REFERENCES `tabs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `solutions`
--
ALTER TABLE `solutions`
  ADD CONSTRAINT `solutions_pages_id_foreign` FOREIGN KEY (`pages_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `solutions_tabs_id_foreign` FOREIGN KEY (`tabs_id`) REFERENCES `tabs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `static_tables`
--
ALTER TABLE `static_tables`
  ADD CONSTRAINT `static_tables_childe_pages_id_foreign` FOREIGN KEY (`childe_pages_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `static_tables_pages_id_foreign` FOREIGN KEY (`pages_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
