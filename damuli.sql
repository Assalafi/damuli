-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2022 at 02:05 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `damuli`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountant_department`
--

CREATE TABLE `accountant_department` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_department`
--

CREATE TABLE `admin_department` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_department`
--

INSERT INTO `admin_department` (`id`, `userId`, `firstName`, `lastName`, `phone`, `email`, `position`, `address`, `created_at`, `updated_at`) VALUES
(1, '9', 'Admin 1', 'Admin 1', '09000000123', 'admin1@gmail.com', 'Staff', 'Maiduguri', '2022-07-24 20:44:08', '2022-07-24 20:47:08');

-- --------------------------------------------------------

--
-- Table structure for table `admin_request`
--

CREATE TABLE `admin_request` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specification` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quanty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unitPrice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalPrice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bankName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `filling_station`
--

CREATE TABLE `filling_station` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fillingStationName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fillingStationLocation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fillingStationLitres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fillingStationBalance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fillingStationTotalLitre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fillingStationTotalBalance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `filling_station`
--

INSERT INTO `filling_station` (`id`, `fillingStationName`, `fillingStationLocation`, `fillingStationLitres`, `fillingStationBalance`, `fillingStationTotalLitre`, `fillingStationTotalBalance`, `created_at`, `updated_at`) VALUES
(1, 'Hadiza and Sadiq', 'Bama Road, Maiduguri', '0', '0', '0', '0', '2022-07-24 21:16:19', '2022-07-24 21:20:12');

-- --------------------------------------------------------

--
-- Table structure for table `finance_department`
--

CREATE TABLE `finance_department` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `finance_department`
--

INSERT INTO `finance_department` (`id`, `userId`, `firstName`, `lastName`, `phone`, `email`, `position`, `address`, `created_at`, `updated_at`) VALUES
(1, '14', 'Finance 1', 'Finance 1', '09088888888', 'finance1@gmail.com', 'Finance Department', 'Maiduguri', '2022-07-24 22:26:46', '2022-07-24 22:26:46');

-- --------------------------------------------------------

--
-- Table structure for table `fleet_officer`
--

CREATE TABLE `fleet_officer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organizationId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fleet_officer`
--

INSERT INTO `fleet_officer` (`id`, `userId`, `organizationId`, `firstName`, `lastName`, `phone`, `email`, `position`, `address`, `created_at`, `updated_at`) VALUES
(1, '6', 'Not Set', 'Fleet Officer 1', 'Fleet Officers 1', '09088888888', 'fleetofficer1@gmail.com', 'Fleet Officer', 'Maiduguri', '2022-07-23 12:35:05', '2022-07-23 13:50:41'),
(2, '7', 'Not Set', 'Fleet Officer 2', 'Fleet Officer 2', '0900000000', 'fleetofficer2@gmail.com', 'Fleet Officer', 'Maiduguri', '2022-07-23 13:40:26', '2022-07-23 13:40:26');

-- --------------------------------------------------------

--
-- Table structure for table `fleet_officer_request`
--

CREATE TABLE `fleet_officer_request` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `organizationName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicleType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicleNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activityPeriod` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initialCharges` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bankName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_department`
--

CREATE TABLE `fuel_department` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fillingStationId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fuel_department`
--

INSERT INTO `fuel_department` (`id`, `userId`, `fillingStationId`, `firstName`, `lastName`, `phone`, `email`, `position`, `created_at`, `updated_at`) VALUES
(1, '11', 'Hadiza and Sadiq', 'Fuel 1', 'Fuel 1', '0902220011', 'fuel1@gmail.com', 'Fuel Department', '2022-07-24 21:47:06', '2022-07-24 21:47:53');

-- --------------------------------------------------------

--
-- Table structure for table `fuel_request`
--

CREATE TABLE `fuel_request` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fuelLitre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fuelPrice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fuelTotalPrice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bankName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fuelComment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_department`
--

CREATE TABLE `maintenance_department` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maintenanceStationId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maintenance_department`
--

INSERT INTO `maintenance_department` (`id`, `userId`, `maintenanceStationId`, `firstName`, `lastName`, `phone`, `email`, `position`, `address`, `created_at`, `updated_at`) VALUES
(1, '13', 'Not Set', 'Mechanic 1', 'Mechanic 1', '09000000123', 'Mechanic1@gmail.com', 'Maintenance Department', 'Bama Road, Maiduguri', '2022-07-24 22:12:03', '2022-07-24 22:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_station`
--

CREATE TABLE `maintenance_station` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `maintenanceStationName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maintenanceStationLocation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maintenanceStationTotalBalance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2022_07_22_080910_create_vehicles_table', 1),
(5, '2022_07_22_081006_create_vehicles_activity_table', 1),
(6, '2022_07_22_081030_create_vehicles_fuel_table', 1),
(7, '2022_07_22_081148_create_vehicles_maintenance_table', 1),
(8, '2022_07_22_081308_create_organization_table', 1),
(9, '2022_07_22_081511_create_fleet_officer_table', 1),
(10, '2022_07_22_082042_create_fuel_department_table', 1),
(11, '2022_07_22_082111_create_fuel_request_table', 1),
(12, '2022_07_22_082310_create_maintenance_department_table', 1),
(13, '2022_07_22_082912_create_super_admin_table', 1),
(14, '2022_07_22_083048_create_users_table', 1),
(15, '2022_07_22_083336_create_admin_department_table', 1),
(16, '2022_07_22_083356_create_admin_request_table', 1),
(17, '2022_07_22_095640_create_fleet_officer_request_table', 1),
(18, '2022_07_22_095814_create_storekeeper_table', 1),
(19, '2022_07_22_095842_create_storekeeper_request_table', 1),
(20, '2022_07_22_100138_create_finance_department_table', 1),
(21, '2022_07_22_100313_create_accountant_department_table', 1),
(22, '2022_07_22_100722_create_products_table', 1),
(23, '2022_07_22_102854_create_filling_station_table', 1),
(24, '2022_07_22_102917_create_maintenance_station_table', 1),
(25, '2022_07_22_141857_create_warehouse_activity_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicleId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '[]',
  `fleetId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Not Set',
  `organizationName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activityType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicleType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activityLocation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organizationPrice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organizationPriceUnit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organizationTotalPrice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organizationContractStart` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organizationContractEnd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organizationContractDays` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organizationStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`id`, `vehicleId`, `fleetId`, `organizationName`, `activityType`, `vehicleType`, `activityLocation`, `organizationPrice`, `organizationPriceUnit`, `organizationTotalPrice`, `organizationContractStart`, `organizationContractEnd`, `organizationContractDays`, `organizationStatus`, `created_at`, `updated_at`) VALUES
(1, '[]', 'Not Set', 'HIT', 'Day', 'SUV', 'Maiduguri', '2500', 'Daily', '17500', '2022-07-23', '2022-07-30', '7', 'Active', '2022-07-23 10:38:38', '2022-07-23 10:38:38');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specification` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quanty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `storekeeper`
--

CREATE TABLE `storekeeper` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `storekeeper`
--

INSERT INTO `storekeeper` (`id`, `userId`, `firstName`, `lastName`, `phone`, `email`, `position`, `address`, `created_at`, `updated_at`) VALUES
(1, '15', 'Storekeeper 1', 'Storekeeper 1', '0900000000', 'storekeeper1@gmail.com', 'Storekeeper', 'Maiduguri1', '2022-07-24 22:38:04', '2022-07-24 22:38:16');

-- --------------------------------------------------------

--
-- Table structure for table `storekeeper_request`
--

CREATE TABLE `storekeeper_request` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specification` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quanty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unitPrice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalPrice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bankName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `super_admin`
--

CREATE TABLE `super_admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `super_admin`
--

INSERT INTO `super_admin` (`id`, `userId`, `firstName`, `lastName`, `phone`, `email`, `position`, `address`, `created_at`, `updated_at`) VALUES
(1, '3', 'MdDamuli', 'MdDamuli', '0900000000', 'mddamuli@gmail.com', 'Managing Director', 'Not Set', '2022-07-22 16:32:50', '2022-07-22 16:32:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `accType`, `position`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'mddamuli@gmail.com', '$2y$10$Ki3SNTT.bNM5aBf8B8OqU.BzIyo0Ir/bYaEFNxEoh8/MHfg.78DRS', 'Super Admin', 'Managing Director', '1', NULL, '2022-07-22 16:32:50', '2022-07-22 16:32:50'),
(6, 'fleetofficer1@gmail.com', '$2y$10$7/Vsp.rVaXf2hjT.eLT9.OrIkTItuAFDMJ3nGD.ZyzqqvfrFR3dFG', 'Fleet Officer', 'Fleet Officer', '1', NULL, '2022-07-23 12:35:05', '2022-07-23 12:35:05'),
(7, 'fleetofficer2@gmail.com', '$2y$10$tip9KJUzcSWaPsUm.8lcou37ZRlqCCM3gxp8kZQh981dkcma4M1Ou', 'Fleet Officer', 'Fleet Officer', '1', NULL, '2022-07-23 13:40:26', '2022-07-23 13:40:26'),
(9, 'admin1@gmail.com', '$2y$10$7KqDb/aDurPBY7vwmc3Yiu5t0XHsImQDG.54w/vtfYoUWxI7Qs4GC', 'Amin Department', 'Staff', '1', NULL, '2022-07-24 20:44:08', '2022-07-24 20:44:08'),
(11, 'fuel1@gmail.com', '$2y$10$N889auzVPWT0fq3iYfCnI..U/5tCjbfKlukylIapJYbxWRmxOrSB.', 'Fuel Department', 'Fuel Department', '1', NULL, '2022-07-24 21:47:05', '2022-07-24 21:47:05'),
(13, 'Mechanic1@gmail.com', '$2y$10$XjKobE6MyyxFsWyZMs7cROoRs0IvajT0C6bJrshL1Zruhns9X85lO', 'Maintenance Department', 'Maintenance Department', '1', NULL, '2022-07-24 22:12:03', '2022-07-24 22:12:03'),
(14, 'finance1@gmail.com', '$2y$10$OZmyk0xhC.gVmglQfPuM2O/4S.v7KLc2P44dTJ8iBw9PsDVbcZ5AO', 'Finance Department', 'Finance Department', '1', NULL, '2022-07-24 22:26:46', '2022-07-24 22:26:46'),
(15, 'storekeeper1@gmail.com', '$2y$10$Iyn7C3vYbJrtWVgcelRD9.o8QpAr4/g8ivY/.QCAz1mlKyxLyemvC', 'Storekeeper', 'Storekeeper', '1', NULL, '2022-07-24 22:38:04', '2022-07-24 22:38:04');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fleetId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organizationId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicleName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicleType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicleColor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehiclePlateNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicleOwnerName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Not Set',
  `vehicleOwnerPhone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Not Set',
  `vehicleStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `fleetId`, `organizationId`, `vehicleName`, `vehicleType`, `vehicleColor`, `vehiclePlateNumber`, `vehicleOwnerName`, `vehicleOwnerPhone`, `vehicleStatus`, `created_at`, `updated_at`) VALUES
(1, 'Not Set', 'Not Set', 'car 1', 'SUV', 'black', 'aa11bb', 'Not Set', 'Not Set', 'On Hold', '2022-07-23 16:05:54', '2022-07-23 16:05:54'),
(2, 'Not Set', 'Not Set', 'car 2', 'SUV', 'black', 'aa22bb', 'Aaa Bbb', '090909090', 'On Hold', '2022-07-23 16:09:01', '2022-07-23 16:09:01');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles_activity`
--

CREATE TABLE `vehicles_activity` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicleId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fleetId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organizationId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activityType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activityLocation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles_fuel`
--

CREATE TABLE `vehicles_fuel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicleId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fleetId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fillingStationId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fuelLitre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fuelPrice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fuelTotalPrice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles_maintenance`
--

CREATE TABLE `vehicles_maintenance` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicleId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fleetId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maintenanceStationId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maintenanceType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maintenanceTotalPrice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accountName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bankName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maintenanceStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maintenanceComment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_activity`
--

CREATE TABLE `warehouse_activity` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `productId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicleId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storekeeperId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiverName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiverPhone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountant_department`
--
ALTER TABLE `accountant_department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accountant_department_email_unique` (`email`);

--
-- Indexes for table `admin_department`
--
ALTER TABLE `admin_department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_department_email_unique` (`email`);

--
-- Indexes for table `admin_request`
--
ALTER TABLE `admin_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `filling_station`
--
ALTER TABLE `filling_station`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finance_department`
--
ALTER TABLE `finance_department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `finance_department_email_unique` (`email`);

--
-- Indexes for table `fleet_officer`
--
ALTER TABLE `fleet_officer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fleet_officer_email_unique` (`email`);

--
-- Indexes for table `fleet_officer_request`
--
ALTER TABLE `fleet_officer_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fuel_department`
--
ALTER TABLE `fuel_department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fuel_department_email_unique` (`email`);

--
-- Indexes for table `fuel_request`
--
ALTER TABLE `fuel_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintenance_department`
--
ALTER TABLE `maintenance_department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `maintenance_department_email_unique` (`email`);

--
-- Indexes for table `maintenance_station`
--
ALTER TABLE `maintenance_station`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storekeeper`
--
ALTER TABLE `storekeeper`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `storekeeper_email_unique` (`email`);

--
-- Indexes for table `storekeeper_request`
--
ALTER TABLE `storekeeper_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `super_admin`
--
ALTER TABLE `super_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `super_admin_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vehicles_vehicleplatenumber_unique` (`vehiclePlateNumber`);

--
-- Indexes for table `vehicles_activity`
--
ALTER TABLE `vehicles_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles_fuel`
--
ALTER TABLE `vehicles_fuel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles_maintenance`
--
ALTER TABLE `vehicles_maintenance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouse_activity`
--
ALTER TABLE `warehouse_activity`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountant_department`
--
ALTER TABLE `accountant_department`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_department`
--
ALTER TABLE `admin_department`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_request`
--
ALTER TABLE `admin_request`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filling_station`
--
ALTER TABLE `filling_station`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `finance_department`
--
ALTER TABLE `finance_department`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fleet_officer`
--
ALTER TABLE `fleet_officer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fleet_officer_request`
--
ALTER TABLE `fleet_officer_request`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fuel_department`
--
ALTER TABLE `fuel_department`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fuel_request`
--
ALTER TABLE `fuel_request`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maintenance_department`
--
ALTER TABLE `maintenance_department`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `maintenance_station`
--
ALTER TABLE `maintenance_station`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `organization`
--
ALTER TABLE `organization`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `storekeeper`
--
ALTER TABLE `storekeeper`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `storekeeper_request`
--
ALTER TABLE `storekeeper_request`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `super_admin`
--
ALTER TABLE `super_admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vehicles_activity`
--
ALTER TABLE `vehicles_activity`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicles_fuel`
--
ALTER TABLE `vehicles_fuel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicles_maintenance`
--
ALTER TABLE `vehicles_maintenance`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warehouse_activity`
--
ALTER TABLE `warehouse_activity`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
