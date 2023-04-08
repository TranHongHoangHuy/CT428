-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2023 at 05:17 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(10) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE `catalog` (
  `id_catalog` int(32) NOT NULL,
  `catalogName` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`id_catalog`, `catalogName`, `description`) VALUES
(1, 'Laptop', 'laptop'),
(2, 'Headphone', 'tai nghe');

-- --------------------------------------------------------

--
-- Table structure for table `img_info`
--

CREATE TABLE `img_info` (
  `id_info` int(32) NOT NULL,
  `id_product` int(32) NOT NULL,
  `url_info` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `img_list`
--

CREATE TABLE `img_list` (
  `id_img` int(32) NOT NULL,
  `id_product` int(32) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `img_list`
--

INSERT INTO `img_list` (`id_img`, `id_product`, `url`) VALUES
(1, 3, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/302149/s16/macbook-pro-16-inch-m2-pro-thumb-xam-650x650.png'),
(2, 3, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/302149/s16/macbook-pro-16-inch-m2-pro-1-650x650.jpg'),
(3, 3, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/302149/s16/macbook-pro-16-inch-m2-pro-2-650x650.jpg'),
(4, 3, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/302149/s16/macbook-pro-16-inch-m2-pro-3-650x650.jpg'),
(5, 3, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/302149/s16/macbook-pro-16-inch-m2-pro-4-650x650.jpg'),
(6, 3, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/302149/s16/macbook-pro-16-inch-m2-pro-5-650x650.jpg'),
(7, 3, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/302149/s16/macbook-pro-16-inch-m2-pro-6-650x650.jpg'),
(8, 3, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/302149/s16/macbook-pro-16-inch-m2-pro-7-650x650.jpg'),
(9, 4, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/302146/s16/macbook-pro-14-inch-m2-pro-thumb-xam-1-650x650.png'),
(10, 4, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/302146/s16/macbook-pro-14-inch-m2-pro-1-650x650.jpg'),
(11, 4, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/302146/s16/macbook-pro-14-inch-m2-pro-2-650x650.jpg'),
(12, 4, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/302146/s16/macbook-pro-14-inch-m2-pro-3-650x650.jpg'),
(13, 4, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/302146/s16/macbook-pro-14-inch-m2-pro-4-650x650.jpg'),
(14, 4, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/302146/s16/macbook-pro-14-inch-m2-pro-5-650x650.jpg'),
(15, 4, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/302146/s16/macbook-pro-14-inch-m2-pro-6-650x650.jpg'),
(16, 4, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/302146/s16/macbook-pro-14-inch-m2-pro-6-650x650.jpg'),
(17, 5, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-va%CC%80ng-650x650.png'),
(18, 5, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-1-650x650.jpg'),
(19, 5, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-2-650x650.jpg'),
(20, 5, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-3-650x650.jpg'),
(21, 5, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-4-650x650.jpg'),
(22, 5, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-5-650x650.jpg'),
(23, 5, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-6-650x650.jpg'),
(24, 5, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-7-650x650.jpg'),
(25, 5, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-8-650x650.jpg'),
(26, 5, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-9-650x650.jpg'),
(27, 5, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-10-650x650.jpg'),
(28, 6, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-va%CC%80ng-650x650.png'),
(29, 6, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-1-650x650.jpg'),
(30, 6, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-2-650x650.jpg'),
(31, 6, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-3-650x650.jpg'),
(32, 6, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-4-650x650.jpg'),
(33, 6, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-5-650x650.jpg'),
(34, 6, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-6-650x650.jpg'),
(35, 6, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-7-650x650.jpg'),
(36, 6, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-8-650x650.jpg'),
(37, 6, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-9-650x650.jpg'),
(38, 6, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-10-650x650.jpg'),
(39, 7, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-va%CC%80ng-650x650.png'),
(40, 7, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-1-650x650.jpg'),
(41, 7, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-2-650x650.jpg'),
(42, 7, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-3-650x650.jpg'),
(43, 7, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-4-650x650.jpg'),
(44, 7, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-5-650x650.jpg'),
(45, 7, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-6-650x650.jpg'),
(46, 7, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-7-650x650.jpg'),
(47, 7, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-8-650x650.jpg'),
(48, 7, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-9-650x650.jpg'),
(49, 7, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-vang-10-650x650.jpg'),
(50, 8, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/282828/s16/apple-pro-m2-2022-bac-650x650.png'),
(51, 8, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/282828/s16/apple-macbook-pro-13-inch-m2-2022-1-1-650x650.jpg'),
(52, 8, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/282828/s16/apple-macbook-pro-13-inch-m2-2022-2-1-650x650.jpg'),
(53, 8, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/282828/s16/apple-macbook-pro-13-inch-m2-2022-3-1-650x650.jpg'),
(54, 8, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/282828/s16/apple-macbook-pro-13-inch-m2-2022-4-1-650x650.jpg'),
(55, 8, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/282828/s16/apple-macbook-pro-13-inch-m2-2022-5-1-650x650.jpg'),
(56, 8, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/282828/s16/apple-macbook-pro-13-inch-m2-2022-6-1-650x650.jpg'),
(57, 9, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/282828/s16/apple-pro-m2-2022-bac-650x650.png'),
(58, 9, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/282828/s16/apple-macbook-pro-13-inch-m2-2022-1-1-650x650.jpg'),
(59, 9, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/282828/s16/apple-macbook-pro-13-inch-m2-2022-2-1-650x650.jpg'),
(60, 9, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/282828/s16/apple-macbook-pro-13-inch-m2-2022-3-1-650x650.jpg'),
(61, 9, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/282828/s16/apple-macbook-pro-13-inch-m2-2022-4-1-650x650.jpg'),
(62, 9, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/282828/s16/apple-macbook-pro-13-inch-m2-2022-5-1-650x650.jpg'),
(63, 9, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/282828/s16/apple-macbook-pro-13-inch-m2-2022-6-1-650x650.jpg'),
(64, 10, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/282828/s16/apple-pro-m2-2022-bac-650x650.png'),
(65, 10, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/282828/s16/apple-macbook-pro-13-inch-m2-2022-1-1-650x650.jpg'),
(66, 10, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/282828/s16/apple-macbook-pro-13-inch-m2-2022-2-1-650x650.jpg'),
(67, 10, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/282828/s16/apple-macbook-pro-13-inch-m2-2022-3-1-650x650.jpg'),
(68, 10, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/282828/s16/apple-macbook-pro-13-inch-m2-2022-4-1-650x650.jpg'),
(69, 10, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/282828/s16/apple-macbook-pro-13-inch-m2-2022-5-1-650x650.jpg'),
(70, 10, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/282828/s16/apple-macbook-pro-13-inch-m2-2022-6-1-650x650.jpg'),
(71, 11, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/264420/s16/macbook-air-m1-2020-8-core-gpu-gold-thumb-650x650.png'),
(72, 11, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/264420/s16/macbook-air-m1-2020-8-core-gpu-vang-01-650x650.jpg'),
(73, 11, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/264420/s16/macbook-air-m1-2020-8-core-gpu-vang-02-650x650.jpg'),
(74, 11, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/264420/s16/macbook-air-m1-2020-8-core-gpu-vang-03-650x650.jpg'),
(75, 11, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/264420/s16/macbook-air-m1-2020-8-core-gpu-vang-04-650x650.jpg'),
(76, 11, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/264420/s16/macbook-air-m1-2020-8-core-gpu-vang-05-650x650.jpg'),
(77, 12, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/macbook-pro-16-m1-pro-2021-bac-650x650.png'),
(78, 12, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-1-1-650x650.jpg'),
(79, 12, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-2-1-650x650.jpg'),
(80, 12, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-3-1-650x650.jpg'),
(81, 12, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-4-1-650x650.jpg'),
(82, 12, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-5-1-650x650.jpg'),
(83, 12, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-6-1-650x650.jpg'),
(84, 12, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-7-1-650x650.jpg'),
(85, 12, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-8-1-650x650.jpg'),
(86, 12, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-9-1-650x650.jpg'),
(87, 12, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-10-1-650x650.jpg'),
(88, 13, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253703/s16/apple-macbook-pro-14-m1-pro-2021-xam-thumb-650x650.png'),
(89, 13, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-1-1-650x650.jpg'),
(90, 13, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-2-1-650x650.jpg'),
(91, 13, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-3-1-650x650.jpg'),
(92, 13, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-4-1-650x650.jpg'),
(93, 13, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-5-1-650x650.jpg'),
(94, 13, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-6-1-650x650.jpg'),
(95, 13, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-7-1-650x650.jpg'),
(96, 13, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-8-1-650x650.jpg'),
(97, 13, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-9-1-650x650.jpg'),
(98, 13, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-10-1-650x650.jpg'),
(99, 14, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253703/s16/apple-macbook-pro-14-m1-pro-2021-xam-thumb-650x650.png'),
(100, 14, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-1-1-650x650.jpg'),
(101, 14, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-2-1-650x650.jpg'),
(102, 14, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-3-1-650x650.jpg'),
(103, 14, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-4-1-650x650.jpg'),
(104, 14, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-5-1-650x650.jpg'),
(105, 14, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-6-1-650x650.jpg'),
(106, 14, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-7-1-650x650.jpg'),
(107, 14, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-8-1-650x650.jpg'),
(108, 14, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-9-1-650x650.jpg'),
(109, 14, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-10-1-650x650.jpg'),
(110, 15, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253703/s16/apple-macbook-pro-14-m1-pro-2021-xam-thumb-650x650.png'),
(111, 15, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-1-1-650x650.jpg'),
(112, 15, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-2-1-650x650.jpg'),
(113, 15, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-3-1-650x650.jpg'),
(114, 15, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-4-1-650x650.jpg'),
(115, 15, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-5-1-650x650.jpg'),
(116, 15, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-6-1-650x650.jpg'),
(117, 15, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-7-1-650x650.jpg'),
(118, 15, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-8-1-650x650.jpg'),
(119, 15, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-9-1-650x650.jpg'),
(120, 15, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/apple-macbook-pro-16-m1-pro-2021-10-core-cpu-10-1-650x650.jpg'),
(121, 16, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/231255/s16/macbook-pro-13-spgry-m1-thumb-650x650.png'),
(122, 16, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/231255/s16/macbook-pro-13-xam-01-650x650.jpg'),
(123, 16, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/231255/s16/macbook-pro-13-xam-02-650x650.jpg'),
(124, 16, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/231255/s16/macbook-pro-13-xam-03-650x650.jpg'),
(125, 16, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/231255/s16/macbook-pro-13-xam-04-650x650.jpg'),
(126, 16, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/231255/s16/macbook-pro-13-xam-05-650x650.jpg'),
(127, 17, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/264420/s16/macbook-air-m1-2020-8-core-gpu-gold-thumb-650x650.png'),
(128, 17, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/264420/s16/macbook-air-m1-2020-8-core-gpu-vang-01-650x650.jpg'),
(129, 17, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/264420/s16/macbook-air-m1-2020-8-core-gpu-vang-02-650x650.jpg'),
(130, 17, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/264420/s16/macbook-air-m1-2020-8-core-gpu-vang-03-650x650.jpg'),
(131, 17, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/264420/s16/macbook-air-m1-2020-8-core-gpu-vang-04-650x650.jpg'),
(132, 17, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/264420/s16/macbook-air-m1-2020-8-core-gpu-vang-05-650x650.jpg'),
(133, 18, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/264420/s16/macbook-air-m1-2020-8-core-gpu-gold-thumb-650x650.png'),
(134, 18, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/264420/s16/macbook-air-m1-2020-8-core-gpu-vang-01-650x650.jpg'),
(135, 18, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/264420/s16/macbook-air-m1-2020-8-core-gpu-vang-02-650x650.jpg'),
(136, 18, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/264420/s16/macbook-air-m1-2020-8-core-gpu-vang-03-650x650.jpg'),
(137, 18, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/264420/s16/macbook-air-m1-2020-8-core-gpu-vang-04-650x650.jpg'),
(138, 18, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/264420/s16/macbook-air-m1-2020-8-core-gpu-vang-05-650x650.jpg'),
(139, 19, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/54/290053/s16/airpods-3-hop-sac-khong-day-thumb-650x650.png'),
(140, 19, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/54/290053/s16/airpods-3-trang-1-650x650.jpeg'),
(141, 19, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/54/290053/s16/airpods-3-trang-2-650x650.jpeg'),
(142, 19, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/54/290053/s16/airpods-3-trang-3-650x650.jpeg'),
(143, 19, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/54/290053/s16/airpods-3-trang-4-650x650.jpeg'),
(144, 19, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/54/290053/s16/airpods-3-trang-5-650x650.jpeg'),
(145, 19, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/54/290053/s16/airpods-3-trang-6-650x650.jpeg'),
(146, 20, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/54/289781/s16/airpods-pro-2-thumb-650x650.png'),
(147, 20, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/54/289781/s16/airpods-pro-2-trang-1-650x650.jpg'),
(148, 20, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/54/289781/s16/airpods-pro-2-trang-2-650x650.jpg'),
(149, 20, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/54/289781/s16/airpods-pro-2-trang-3-650x650.jpg'),
(150, 20, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/54/289781/s16/airpods-pro-2-trang-4-650x650.jpg'),
(151, 20, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/54/289781/s16/airpods-pro-2-trang-5-650x650.jpg'),
(152, 21, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/54/253802/s16/bluetooth-airpods-pro-magsafe-charge-apple-mlwk3-261121-033421-650x650.png'),
(153, 21, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/54/253802/s16/bluetooth-airpods-pro-magsafe-charge-apple-mlwk3-2-650x650.jpg'),
(154, 21, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/54/253802/s16/bluetooth-airpods-pro-magsafe-charge-apple-mlwk3-3-650x650.jpg'),
(155, 21, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/54/253802/s16/bluetooth-airpods-pro-magsafe-charge-apple-mlwk3-4-650x650.jpg'),
(156, 21, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/54/253802/s16/bluetooth-airpods-pro-magsafe-charge-apple-mlwk3-5-650x650.jpg'),
(157, 21, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/54/253802/s16/bluetooth-airpods-pro-magsafe-charge-apple-mlwk3-6-650x650.jpg'),
(158, 22, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/54/236331/s16/airpods-max-select-hong-thumb-650x650.png'),
(159, 22, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/54/236331/s16/airpods-max-pink-1-650x650.jpg'),
(160, 22, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/54/236331/s16/airpods-max-pink-2-650x650.jpg'),
(161, 22, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/54/236331/s16/airpods-max-pink-3-650x650.jpg'),
(162, 23, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/12498/304963/s16/micro-co-day-shure-mv88-video-kit-thumb-1-650x650.png'),
(163, 23, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/12498/304963/s16/micro-co-day-shure-mv88-video-kit-1-650x650.jpg'),
(164, 23, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/12498/304963/s16/micro-co-day-shure-mv88-video-kit-2-650x650.jpg'),
(165, 23, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/12498/304963/s16/micro-co-day-shure-mv88-video-kit-3-650x650.jpg'),
(166, 23, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/12498/304963/s16/micro-co-day-shure-mv88-video-kit-4-650x650.jpg'),
(167, 23, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/12498/304963/s16/micro-co-day-shure-mv88-video-kit-7-650x650.jpg'),
(168, 24, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/1882/255340/s16/magic-keyboard-with-numeric-keypad-mq052-thumb-1-650x650.png'),
(169, 24, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/1882/255340/s16/magic-keyboard-voi-phim-so-1-650x650.jpg'),
(170, 24, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/1882/255340/s16/magic-keyboard-voi-phim-so-2-650x650.jpg'),
(171, 24, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/1882/255340/s16/magic-keyboard-voi-phim-so-3-650x650.jpg'),
(172, 24, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/1882/255340/s16/magic-keyboard-voi-phim-so-4-650x650.jpg'),
(173, 25, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/1882/251881/s16/magic-keyboard-thumb-650x650.png'),
(174, 25, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/1882/251881/s16/magic-keyboard-1-4-650x650.jpg'),
(175, 25, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/1882/251881/s16/magic-keyboard-2-4-650x650.jpg'),
(176, 25, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/1882/251881/s16/magic-keyboard-3-4-650x650.jpg'),
(177, 25, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/1882/251881/s16/magic-keyboard-4-4-650x650.jpg'),
(178, 26, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/86/251787/s16/1-650x650.png'),
(179, 26, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/86/251787/s16/chuot-bluetooth-apple-mk2e3-trang-1-650x650.jpg'),
(180, 26, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/86/251787/s16/chuot-bluetooth-apple-mk2e3-trang-2-650x650.jpg'),
(181, 26, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/86/251787/s16/chuot-bluetooth-apple-mk2e3-trang-3-650x650.jpg'),
(182, 26, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/86/251787/s16/chuot-bluetooth-apple-mk2e3-trang-4-650x650.jpg'),
(183, 27, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/7923/251694/s16/bao-da-macbook-pro-13-inch-apple-mrql2-thumb-2-650x650.png'),
(184, 27, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/7923/251694/s16/4-650x650.jpeg'),
(185, 27, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/7923/251694/s16/3-650x650.jpeg'),
(186, 27, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/7923/251694/s16/2-650x650.jpeg'),
(187, 27, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/7923/251694/s16/1-650x650.jpeg'),
(188, 28, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/9499/284275/s16/adapter-sac-apple-type-c-35w-thumb-1-650x650.png'),
(189, 28, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/9499/284275/s16/adapter-sac-apple-type-c-35w-2-3-650x650.jpg'),
(190, 28, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/9499/284275/s16/adapter-sac-apple-type-c-35w-3-650x650.jpg'),
(191, 29, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/58/158724/s16/123-650x650.png'),
(192, 29, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/58/158724/s16/cap-type-c-type-c-2m-apple-mll82-trang-158724-2-650x650.jpg'),
(193, 29, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/58/158724/s16/cap-type-c-type-c-2m-apple-mll82-trang-158724-3-650x650.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `id_order` int(32) NOT NULL,
  `id_product` int(32) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `unitCost` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id_order` int(32) NOT NULL,
  `dateCreate` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `id_user` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_product` int(32) NOT NULL,
  `id_catalog` int(32) NOT NULL,
  `productName` varchar(64) NOT NULL,
  `productOption` varchar(64) NOT NULL,
  `price` decimal(15,1) NOT NULL DEFAULT 0.0,
  `discount` int(10) DEFAULT NULL,
  `image_link` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `id_catalog`, `productName`, `productOption`, `price`, `discount`, `image_link`, `content`) VALUES
(3, 1, 'MacBook Pro 16 inch M2 Pro 2023', 'RAM 16 GB - SSD 512 GB', '65990000.0', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/302149/s16/macbook-pro-16-inch-m2-pro-thumb-xam-650x650.png', 'MacBook Pro 16 inch với chip M2 Pro và M2 Max đưa sức mạnh và tốc độ lên một tầm cao mới, dù đang được cắm sạc hay chạy bằng pin. Với màn hình Liquid Retina XDR tuyệt đẹp, tất cả các cổng kết nối bạn cần và thời lượng pin dùng cả ngày, 1 chiếc máy tính xách tay chuyên nghiệp này sẽ đồng hành cùng bạn ở bất cứ nơi đâu.'),
(4, 1, 'MacBook Pro 14 inch M2 Pro 2023', 'RAM 16 GB - SSD 512 GB', '52990000.0', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/302146/s16/macbook-pro-14-inch-m2-pro-thumb-xam-1-650x650.png', 'MacBook Pro 14 inch với chip M2 Pro và M2 Max đưa sức mạnh và tốc độ lên một tầm cao mới, dù đang được cắm sạc hay chạy bằng pin. Với màn hình Liquid Retina XDR tuyệt đẹp, tất cả các cổng kết nối bạn cần và thời lượng pin dùng cả ngày, 1chiếc máy tính xách tay chuyên nghiệp này sẽ đồng hành cùng bạn ở bất cứ nơi đâu.'),
(5, 1, 'MacBook Air M2 2022 10-core GPU', 'RAM 16 GB - SSD 512 GB', '46990000.0', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-va%CC%80ng-650x650.png', 'Siêu mạnh mẽ với chip M2 thế hệ tiếp theo, MacBook Air được thiết kế mới, kết hợp giữa hiệu năng đáng kinh ngạc và thời lượng pin lên đến 18 giờ trong vỏ nhôm mỏng ấn tượng.1'),
(6, 1, 'MacBook Air M2 2022 10-core GPU', 'RAM 8 GB - SSD 512 GB', '39990000.0', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-va%CC%80ng-650x650.png', 'Siêu mạnh mẽ với chip M2 thế hệ tiếp theo, MacBook Air được thiết kế mới, kết hợp giữa hiệu năng đáng kinh ngạc và thời lượng pin lên đến 18 giờ trong vỏ nhôm mỏng ấn tượng.1'),
(7, 1, 'MacBook Air M2 2022 8-core GPU', 'RAM 8 GB - SSD 256 GB', '32990000.0', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/289441/s16/apple-macbook-air-m2-2022-16gb-va%CC%80ng-650x650.png', 'Siêu mạnh mẽ với chip M2 thế hệ tiếp theo, MacBook Air được thiết kế mới, kết hợp giữa hiệu năng đáng kinh ngạc và thời lượng pin lên đến 18 giờ trong vỏ nhôm mỏng ấn tượng'),
(8, 1, 'MacBook Pro 13 inch M2 2022', 'RAM 8 GB - SSD 256 GB', '35990000.0', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/282828/s16/apple-pro-m2-2022-bac-650x650.png', '• Chip M2 với CPU, GPU và hiệu năng máy học thế hệ tiếp theo\r\n\r\n• CPU 8 lõi và GPU 10 lõi tốc độ cao để đảm đương những luồng công việc cường độ nặng\r\n\r\n• Neural Engine 16 lõi cho các tác vụ sử dụng công nghệ máy học tiên tiến \r\n\r\n• Bộ nhớ thống nhất lên đến 24GB giúp bạn làm mọi thứ đều trôi chảy\r\n\r\n• Nhanh hơn 43 phần trăm khi hợp nhất các hình ảnh thành một bức tranh toàn cảnh2\r\n\r\n• Tốc độ chơi game nhanh hơn tới 39%2\r\n\r\n• Hệ thống tản nhiệt chủ động mang lại hiệu năng tuyệt vời\r\n\r\n• Hoạt động bền bỉ cả ngày dài với thời lượng pin lên đến 20 giờ1\r\n\r\n• Màn hình Retina 13.3 inch với độ sáng 500 nit và dải màu rộng P3, cho hình ảnh sống động và chi tiết ấn tượng3\r\n\r\n• Camera FaceTime HD với bộ xử lý tín hiệu hình ảnh tiên tiến để bạn trông đẹp hơn trong các cuộc gọi video\r\n\r\n• Ba micrô phối hợp chất lượng chuẩn studio thu giọng nói của bạn rõ hơn\r\n\r\n• Kết nối không dây nhanh với Wi-Fi 6\r\n\r\n• Hai cổng Thunderbolt để sạc và kết nối phụ kiện\r\n\r\n• Bàn phím Magic Keyboard có đèn nền với Touch Bar và Touch ID, giúp mở khóa và thanh toán an toàn hơn\r\n\r\n• Ổ lưu trữ SSD siêu nhanh giúp mở các ứng dụng và tập tin chỉ trong tích tắc \r\n\r\n• macOS Monterey cho phép bạn kết nối, chia sẻ và sáng tạo theo cách chưa từng có, giữa tất cả các thiết bị Apple của bạn\r\n\r\n• Hiện có màu xám bạc và bạc '),
(9, 1, 'MacBook Pro 13 inch M2 2022', 'RAM 8 GB - SSD 512 GB', '41990000.0', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/282885/s16/apple-pro-m2-2022-10-core-gpu-xam-650x650.png', '• Chip M2 với CPU, GPU và hiệu năng máy học thế hệ tiếp theo\r\n\r\n• CPU 8 lõi và GPU 10 lõi tốc độ cao để đảm đương những luồng công việc cường độ nặng\r\n\r\n• Neural Engine 16 lõi cho các tác vụ sử dụng công nghệ máy học tiên tiến \r\n\r\n• Bộ nhớ thống nhất lên đến 24GB giúp bạn làm mọi thứ đều trôi chảy\r\n\r\n• Nhanh hơn 43 phần trăm khi hợp nhất các hình ảnh thành một bức tranh toàn cảnh2\r\n\r\n• Tốc độ chơi game nhanh hơn tới 39%2\r\n\r\n• Hệ thống tản nhiệt chủ động mang lại hiệu năng tuyệt vời\r\n\r\n• Hoạt động bền bỉ cả ngày dài với thời lượng pin lên đến 20 giờ1\r\n\r\n• Màn hình Retina 13.3 inch với độ sáng 500 nit và dải màu rộng P3, cho hình ảnh sống động và chi tiết ấn tượng3\r\n\r\n• Camera FaceTime HD với bộ xử lý tín hiệu hình ảnh tiên tiến để bạn trông đẹp hơn trong các cuộc gọi video\r\n\r\n• Ba micrô phối hợp chất lượng chuẩn studio thu giọng nói của bạn rõ hơn\r\n\r\n• Kết nối không dây nhanh với Wi-Fi 6\r\n\r\n• Hai cổng Thunderbolt để sạc và kết nối phụ kiện\r\n\r\n• Bàn phím Magic Keyboard có đèn nền với Touch Bar và Touch ID, giúp mở khóa và thanh toán an toàn hơn\r\n\r\n• Ổ lưu trữ SSD siêu nhanh giúp mở các ứng dụng và tập tin chỉ trong tích tắc \r\n\r\n• macOS Monterey cho phép bạn kết nối, chia sẻ và sáng tạo theo cách chưa từng có, giữa tất cả các thiết bị Apple của bạn\r\n\r\n• Hiện có màu xám bạc và bạc '),
(10, 1, 'MacBook Pro 13 inch M2 2022', 'RAM 16 GB - SSD 512 GB', '38890000.0', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/283464/s16/apple-macbook-pro-m2-2022-16gb-xa%CC%81m-650x650.png', '• Chip M2 với CPU, GPU và hiệu năng máy học thế hệ tiếp theo\r\n\r\n• CPU 8 lõi và GPU 10 lõi tốc độ cao để đảm đương những luồng công việc cường độ nặng\r\n\r\n• Neural Engine 16 lõi cho các tác vụ sử dụng công nghệ máy học tiên tiến \r\n\r\n• Bộ nhớ thống nhất lên đến 24GB giúp bạn làm mọi thứ đều trôi chảy\r\n\r\n• Nhanh hơn 43 phần trăm khi hợp nhất các hình ảnh thành một bức tranh toàn cảnh2\r\n\r\n• Tốc độ chơi game nhanh hơn tới 39%2\r\n\r\n• Hệ thống tản nhiệt chủ động mang lại hiệu năng tuyệt vời\r\n\r\n• Hoạt động bền bỉ cả ngày dài với thời lượng pin lên đến 20 giờ1\r\n\r\n• Màn hình Retina 13.3 inch với độ sáng 500 nit và dải màu rộng P3, cho hình ảnh sống động và chi tiết ấn tượng3\r\n\r\n• Camera FaceTime HD với bộ xử lý tín hiệu hình ảnh tiên tiến để bạn trông đẹp hơn trong các cuộc gọi video\r\n\r\n• Ba micrô phối hợp chất lượng chuẩn studio thu giọng nói của bạn rõ hơn\r\n\r\n• Kết nối không dây nhanh với Wi-Fi 6\r\n\r\n• Hai cổng Thunderbolt để sạc và kết nối phụ kiện\r\n\r\n• Bàn phím Magic Keyboard có đèn nền với Touch Bar và Touch ID, giúp mở khóa và thanh toán an toàn hơn\r\n\r\n• Ổ lưu trữ SSD siêu nhanh giúp mở các ứng dụng và tập tin chỉ trong tích tắc \r\n\r\n• macOS Monterey cho phép bạn kết nối, chia sẻ và sáng tạo theo cách chưa từng có, giữa tất cả các thiết bị Apple của bạn\r\n\r\n• Hiện có màu xám bạc và bạc '),
(11, 1, 'MacBook Air M1 2020 8-Core GPU', 'RAM 16 GB - SSD 512 GB', '31390000.0', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/264420/s16/macbook-air-m1-2020-8-core-gpu-gold-thumb-650x650.png', 'Máy tính xách tay mỏng và nhẹ nhất của Apple, nay siêu mạnh mẽ với chip Apple M1. Xử lý công việc giúp bạn với CPU 8 lõi nhanh như chớp. Đưa các ứng dụng và game có đồ họa khủng lên một tầm cao mới với GPU 8 lõi. Đồng thời, tăng tốc các tác vụ máy học với Neural Engine 16 lõi. Tất cả gói gọn trong một thiết kế không quạt, không tiếng ồn, thời lượng pin dài nhất từ trước đến nay lên đến 18 giờ.1 MacBook Air. Vẫn cực kỳ cơ động. Mà mạnh mẽ hơn nhiều.'),
(12, 1, 'MacBook Pro 16 inch M1 Pro 2021', 'RAM 16 GB - SSD 1 TB', '53790000.0', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253706/s16/macbook-pro-16-m1-pro-2021-bac-650x650.png', '• Chip M1 Max hoặc M1 Pro do Apple thiết kế tạo ra một cú nhảy vọt về hiệu năng máy học, CPU và GPU\r\n\r\n• CPU lên đến 10 lõi cho hiệu năng nhanh hơn đến 2x, xử lý các luồng công việc chuyên nghiệp nhanh hơn bao giờ hết3\r\n\r\n• GPU lên đến 32 lõi với tốc độ xử lý đồ họa nhanh hơn đến 4x cho các ứng dụng và game có đồ họa khủng3\r\n\r\n• Neural Engine 16 lõi cho hiệu năng máy học nhanh hơn đến 5x3\r\n\r\n• Thời lượng pin lâu hơn, lên đến 21 giờ1\r\n\r\n• Bộ nhớ thống nhất lên đến 64GB giúp bạn làm việc gì cũng nhanh chóng và trôi chảy\r\n\r\n• Ổ lưu trữ SSD siêu nhanh lên đến 8TB giúp mở các ứng dụng và tập tin chỉ trong tích tắc\r\n\r\n• Màn hình Liquid Retina XDR 16 inch sắc nét với Extreme Dynamic Range và tỷ lệ tương phản cực cao2\r\n\r\n• Camera FaceTime HD 1080p với bộ xử lý tín hiệu hình ảnh tiên tiến cho các cuộc gọi video sắc nét hơn\r\n\r\n• Hệ thống âm thanh 6 loa với loa trầm khử lực\r\n\r\n• Ba micro phối hợp chuẩn studio thu giọng nói của bạn rõ hơn\r\n\r\n• Ba cổng Thunderbolt 4, cổng HDMI, khe thẻ nhớ SDXC, jack cắm tai nghe, cổng MagSafe 3\r\n\r\n• Wi-Fi 6 thế hệ mới giúp kết nối nhanh hơn\r\n\r\n• Bàn phím Magic Keyboard có đèn nền và Touch ID giúp mở khóa và thanh toán an toàn hơn macOS Monterey cho phép bạn kết nối, chia sẻ và sáng tạo hơn bao giờ hết, với các bản cập nhật FaceTime mới đầy thú vị và Safari đã được thiết kế lại\r\n\r\n• Hiện có màu xám bạc và bạc'),
(13, 1, 'MacBook Pro 14 inch M1 Pro 2021', 'RAM 16 GB - SSD 1 TB', '49790000.0', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253703/s16/apple-macbook-pro-14-m1-pro-2021-xam-thumb-650x650.png', '• Chip M1 Max hoặc M1 Pro do Apple thiết kế tạo ra một cú nhảy vọt về hiệu năng máy học, CPU và GPU\r\n\r\n• CPU lên đến 10 lõi cho hiệu năng nhanh hơn đến 3.7x, xử lý các luồng công việc chuyên nghiệp nhanh hơn bao giờ hết3\r\n\r\n• GPU lên đến 32 lõi với tốc độ xử lý đồ họa nhanh hơn đến 13x cho các ứng dụng và game có đồ họa khủng3\r\n\r\n• Neural Engine 16 lõi cho hiệu năng máy học nhanh hơn đến 11x3\r\n\r\n• Thời lượng pin lâu hơn, lên đến 17 giờ1\r\n\r\n• Bộ nhớ thống nhất lên đến 64GB giúp bạn làm việc gì cũng nhanh chóng và trôi chảy\r\n\r\n• Ổ lưu trữ SSD siêu nhanh lên đến 8TB giúp mở các ứng dụng và tập tin chỉ trong tích tắc\r\n\r\n• Màn hình Liquid Retina XDR 14 inch sắc nét với Extreme Dynamic Range và tỷ lệ tương phản cực cao2\r\n\r\n• Camera FaceTime HD 1080p với bộ xử lý tín hiệu hình ảnh tiên tiến cho các cuộc gọi video sắc nét hơn\r\n\r\n• Hệ thống âm thanh 6 loa với loa trầm khử lực\r\n\r\n• Ba micro phối hợp chuẩn studio thu giọng nói của bạn rõ hơn\r\n\r\n• Ba cổng Thunderbolt 4, cổng HDMI, khe thẻ nhớ SDXC, jack cắm tai nghe, cổng MagSafe 3\r\n\r\n• Wi-Fi 6 thế hệ mới giúp kết nối nhanh hơn\r\n\r\n• Bàn phím Magic Keyboard có đèn nền và Touch ID giúp mở khóa và thanh toán an toàn hơn macOS Monterey cho phép bạn kết nối, chia sẻ và sáng tạo hơn bao giờ hết, với các bản cập nhật FaceTime mới đầy thú vị và Safari đã được thiết kế lại\r\n\r\n• Hiện có màu xám bạc và bạc'),
(14, 1, 'MacBook Pro 16 inch M1 Pro 2021', 'RAM 16 GB - SSD 512 GB', '49790000.0', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253636/s16/macbook-pro-16-m1-pro-2021-bac-650x650.png', '• Chip M1 Max hoặc M1 Pro do Apple thiết kế tạo ra một cú nhảy vọt về hiệu năng máy học, CPU và GPU\r\n\r\n• CPU lên đến 10 lõi cho hiệu năng nhanh hơn đến 2x, xử lý các luồng công việc chuyên nghiệp nhanh hơn bao giờ hết3\r\n\r\n• GPU lên đến 32 lõi với tốc độ xử lý đồ họa nhanh hơn đến 4x cho các ứng dụng và game có đồ họa khủng3\r\n\r\n• Neural Engine 16 lõi cho hiệu năng máy học nhanh hơn đến 5x3\r\n\r\n• Thời lượng pin lâu hơn, lên đến 21 giờ1\r\n\r\n• Bộ nhớ thống nhất lên đến 64GB giúp bạn làm việc gì cũng nhanh chóng và trôi chảy\r\n\r\n• Ổ lưu trữ SSD siêu nhanh lên đến 8TB giúp mở các ứng dụng và tập tin chỉ trong tích tắc\r\n\r\n• Màn hình Liquid Retina XDR 16 inch sắc nét với Extreme Dynamic Range và tỷ lệ tương phản cực cao2\r\n\r\n• Camera FaceTime HD 1080p với bộ xử lý tín hiệu hình ảnh tiên tiến cho các cuộc gọi video sắc nét hơn\r\n\r\n• Hệ thống âm thanh 6 loa với loa trầm khử lực\r\n\r\n• Ba micro phối hợp chuẩn studio thu giọng nói của bạn rõ hơn\r\n\r\n• Ba cổng Thunderbolt 4, cổng HDMI, khe thẻ nhớ SDXC, jack cắm tai nghe, cổng MagSafe 3\r\n\r\n• Wi-Fi 6 thế hệ mới giúp kết nối nhanh hơn\r\n\r\n• Bàn phím Magic Keyboard có đèn nền và Touch ID giúp mở khóa và thanh toán an toàn hơn macOS Monterey cho phép bạn kết nối, chia sẻ và sáng tạo hơn bao giờ hết, với các bản cập nhật FaceTime mới đầy thú vị và Safari đã được thiết kế lại\r\n\r\n• Hiện có màu xám bạc và bạc'),
(15, 1, 'MacBook Pro 14 inch M1 Pro 2021 14-Core ', 'RAM 16 GB - SSD 512 GB', '42790000.0', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/253581/s16/apple-macbook-pro-14-m1-pro-2021-bac-thumb-650x650.png', '• Chip M1 Max hoặc M1 Pro do Apple thiết kế tạo ra một cú nhảy vọt về hiệu năng máy học, CPU và GPU\r\n\r\n• CPU lên đến 10 lõi cho hiệu năng nhanh hơn đến 3.7x, xử lý các luồng công việc chuyên nghiệp nhanh hơn bao giờ hết3\r\n\r\n• GPU lên đến 32 lõi với tốc độ xử lý đồ họa nhanh hơn đến 13x cho các ứng dụng và game có đồ họa khủng3\r\n\r\n• Neural Engine 16 lõi cho hiệu năng máy học nhanh hơn đến 11x3\r\n\r\n• Thời lượng pin lâu hơn, lên đến 17 giờ1\r\n\r\n• Bộ nhớ thống nhất lên đến 64GB giúp bạn làm việc gì cũng nhanh chóng và trôi chảy\r\n\r\n• Ổ lưu trữ SSD siêu nhanh lên đến 8TB giúp mở các ứng dụng và tập tin chỉ trong tích tắc\r\n\r\n• Màn hình Liquid Retina XDR 14 inch sắc nét với Extreme Dynamic Range và tỷ lệ tương phản cực cao2\r\n\r\n• Camera FaceTime HD 1080p với bộ xử lý tín hiệu hình ảnh tiên tiến cho các cuộc gọi video sắc nét hơn\r\n\r\n• Hệ thống âm thanh 6 loa với loa trầm khử lực\r\n\r\n• Ba micro phối hợp chuẩn studio thu giọng nói của bạn rõ hơn\r\n\r\n• Ba cổng Thunderbolt 4, cổng HDMI, khe thẻ nhớ SDXC, jack cắm tai nghe, cổng MagSafe 3\r\n\r\n• Wi-Fi 6 thế hệ mới giúp kết nối nhanh hơn\r\n\r\n• Bàn phím Magic Keyboard có đèn nền và Touch ID giúp mở khóa và thanh toán an toàn hơn macOS Monterey cho phép bạn kết nối, chia sẻ và sáng tạo hơn bao giờ hết, với các bản cập nhật FaceTime mới đầy thú vị và Safari đã được thiết kế lại\r\n\r\n• Hiện có màu xám bạc và bạc'),
(16, 1, 'MacBook Pro 13 inch M1 2020', 'RAM 16 GB - SSD 512 GB', '36290000.0', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/231255/s16/macbook-pro-13-spgry-m1-thumb-650x650.png', 'Chip Apple M1 định nghĩa lại MacBook Pro 13 inch. Sở hữu CPU 8 lõi xử lý siêu tốc các luồng công việc phức hợp trong lĩnh vực hình ảnh, mã hóa, biên tập video cùng nhiều việc khác. GPU 8 lõi siêu mạnh xử lý gọn các tác vụ đồ họa khủng và chạy game siêu mượt. Neural Engine 16 lõi tiên tiến tăng cường sức mạnh công nghệ máy học tích hợp trong các ứng dụng yêu thích của bạn. Bộ nhớ thống nhất siêu nhanh cho mọi hoạt động mượt mà. Và thời lượng pin dài nhất từng có trên máy Mac, lên đến 20 giờ.1 Đây chính là chiếc máy tính xách tay chuyên nghiệp thịnh hành nhất của Apple. Hiệu năng cao hơn hẳn, pro hơn hẳn.'),
(17, 1, 'MacBook Air M1 2020 7-Core GPU', 'RAM 8 GB - SSD 256 GB', '18590000.0', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/231244/s16/macbook-air-m1-2020-spacegray-thumb-650x650.png', 'Máy tính xách tay mỏng và nhẹ nhất của Apple, nay siêu mạnh mẽ với chip Apple M1. Xử lý công việc giúp bạn với CPU 8 lõi nhanh như chớp. Đưa các ứng dụng và game có đồ họa khủng lên một tầm cao mới với GPU 8 lõi. Đồng thời, tăng tốc các tác vụ máy học với Neural Engine 16 lõi. Tất cả gói gọn trong một thiết kế không quạt, không tiếng ồn, thời lượng pin dài nhất từ trước đến nay lên đến 18 giờ.1 MacBook Air. Vẫn cực kỳ cơ động. Mà mạnh mẽ hơn nhiều.'),
(18, 1, 'MacBook Air M1 2020 7-Core GPU', 'RAM 16 GB - SSD 256 GB', '25790000.0', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/44/239552/s16/macbook-air-m1-2020-gold-thumb-650x650.png', 'Máy tính xách tay mỏng và nhẹ nhất của Apple, nay siêu mạnh mẽ với chip Apple M1. Xử lý công việc giúp bạn với CPU 8 lõi nhanh như chớp. Đưa các ứng dụng và game có đồ họa khủng lên một tầm cao mới với GPU 8 lõi. Đồng thời, tăng tốc các tác vụ máy học với Neural Engine 16 lõi. Tất cả gói gọn trong một thiết kế không quạt, không tiếng ồn, thời lượng pin dài nhất từ trước đến nay lên đến 18 giờ.1 MacBook Air. Vẫn cực kỳ cơ động. Mà mạnh mẽ hơn nhiều.'),
(19, 2, 'AirPods 3 sạc Lightning', 'Màu: Trắng', '4490000.0', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/54/290053/s16/airpods-3-hop-sac-khong-day-thumb-650x650.png', '• Chế độ âm thanh không gian với tính năng theo dõi chuyển động của đầu đưa âm thanh đến quanh bạn1.\r\n\r\n• EQ thích ứng sẽ tự động điều chỉnh nhạc hướng vào tai bạn.\r\n\r\n• Thiết kế có đường viền hoàn toàn mới.\r\n\r\n• Cảm biến lực giúp bạn dễ dàng điều khiển chương trình giải trí, trả lời hoặc kết thúc cuộc gọi, và thực hiện nhiều tác vụ khác.\r\n\r\n• Chống mồ hôi và chống nước3.\r\n\r\n• Thời gian nghe lên đến 6 giờ với một lần sạc2.\r\n\r\n• Tổng thời gian nghe lên đến 30 giờ với Hộp Sạc2.\r\n\r\n• Thiết lập dễ dàng, có khả năng nhận biết khi đeo, và tự động chuyển đổi để mang lại trải nghiệm tuyệt vời4.\r\n\r\n• Dễ dàng chia sẻ âm thanh giữa hai bộ AirPods trên iPhone, iPad, iPod touch hoặc Apple TV.'),
(20, 2, 'AirPods Pro (2nd Gen)', 'Màu: Trắng', '6490000.0', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/54/289781/s16/airpods-pro-2-thumb-650x650.png', '• Tính năng Chủ Động Khử Tiếng Ồn làm giảm tiếng ồn không mong muốn xung quanh.\r\n\r\n• Xuyên Âm Thích Ứng cho phép âm thanh bên ngoài đi vào trong khi làm giảm đi những tiếng ồn lớn từ môi trường.\r\n\r\n• Chế độ Âm Thanh Không Gian Cá Nhân Hóa với tính năng theo dõi đầu chủ động đưa âm thanh đến quanh bạn2.\r\n\r\n• Nhiều kích cỡ đầu tai nghe (XS, S, M, L).\r\n\r\n• Với khả năng điều khiển bằng thao tác chạm, bạn có thể vuốt để điều chỉnh âm lượng, nhấn để ra lệnh phát nhạc, trả lời hoặc kết thúc cuộc gọi, cũng như ấn giữ để chuyển đổi giữa các chế độ nghe.\r\n\r\n• AirPods Pro và hộp sạc có khả năng chống mồ hôi và chống nước4.\r\n\r\n• Hộp Sạc MagSafe có loa và dây đeo.\r\n\r\n• Thời gian nghe lên đến 6 giờ với công nghệ Chủ Động Khử Tiếng Ồn3.\r\n\r\n• Tổng thời gian nghe lên đến 30 giờ với Hộp Sạc MagSafe và khi bật Chủ Động Khử Tiếng Ồn3.\r\n\r\n• Dễ thiết lập, phát hiện trong tai và tự động chuyển đổi giữa các thiết bị5.\r\n\r\n• Dễ dàng chia sẻ âm thanh giữa hai bộ AirPods trên iPhone, iPad, iPod touch hoặc Apple TV6.\r\n\r\n• Ứng dụng Tìm có chế độ xem lân cận cho AirPods Pro và Tìm Chính Xác cho hộp sạc7.'),
(21, 2, 'AirPods Pro Hộp sạc MagSafe', 'Màu: Trắng', '4990000.0', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/54/253802/s16/bluetooth-airpods-pro-magsafe-charge-apple-mlwk3-261121-033421-650x650.png', 'Tính năng Chủ Động Khử Tiếng Ồn giúp ngăn chặn các âm thanh bên ngoài lọt vào tai để bạn có thể đắm chìm vào âm nhạc.\r\n\r\n• Chế Độ Xuyên Âm giúp bạn nghe và tương tác với thế giới xung quanh.\r\n\r\n• Chế độ âm thanh không gian với tính năng theo dõi chuyển động của đầu đưa âm thanh đến quanh bạn2.\r\n\r\n• EQ thích ứng sẽ tự động điều chỉnh nhạc hướng vào tai bạn.\r\n\r\n• Đầu silicon mềm mại với ba kích cỡ khác nhau tạo sự thoải mái và ôm khít.\r\n\r\n• Cảm biến lực giúp bạn dễ dàng điều khiển chương trình giải trí, trả lời hoặc kết thúc cuộc gọi, và thực hiện nhiều tác vụ khác.\r\n\r\n• AirPods chống mồ hôi và chống nước1.\r\n\r\n• Tổng thời gian nghe hơn 24 giờ với Hộp Sạc MagSafe3.\r\n\r\n• Thiết lập dễ dàng, có khả năng nhận biết khi đeo, và tự động chuyển đổi để mang lại trải nghiệm tuyệt vời4.\r\n\r\n• Dễ dàng chia sẻ âm thanh giữa hai bộ AirPods trên iPhone, iPad, iPod touch hoặc Apple TV.'),
(22, 2, 'AirPods Max', 'Màu: Hồng', '12490000.0', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/54/236331/s16/airpods-max-select-hong-thumb-650x650.png', '• Driver loa điện động do Apple thiết kế cho âm thanh có độ trung thực cao.\r\n\r\n• Tính năng Chủ Động Khử Tiếng Ồn giúp ngăn chặn các âm thanh bên ngoài lọt vào tai để bạn có thể đắm chìm vào âm nhạc.\r\n\r\n• Chế Độ Xuyên Âm giúp bạn nghe và tương tác với thế giới xung quanh.\r\n\r\n• Chế độ âm thanh không gian với tính năng theo dõi chuyển động của đầu đem đến âm thanh vòm giống như bạn đang ở trong rạp hát.1\r\n\r\n• Âm thanh điện toán kết hợp thiết kế âm tùy chỉnh với phần mềm và chip Apple H1 tạo ra trải nghiệm nghe đột phá.\r\n\r\n• Gọng đeo có lưới đan thoáng khí và đệm tai bằng foam hoạt tính vừa vặn lạ thường.\r\n\r\n• Trải nghiệm tuyệt vời, thiết lập dễ dàng, tính năng nhận biết khi đeo và chuyển đổi mượt mà giữa các thiết bị.2\r\n\r\n• Dễ dàng chia sẻ âm thanh giữa hai bộ AirPods trên iPhone, iPad, iPod touch hoặc Apple TV.\r\n\r\n• Thời gian nghe nhạc, xem video hoặc đàm thoại 20 giờ khi bật tính năng Chủ Động Khử Tiếng Ồn và âm thanh không gian.3\r\n\r\n• Bảo quản thiết bị ở chế độ pin cực thấp với Smart Case mỏng nhẹ.\r\n\r\n• Hiện có màu bạc, xám bạc, xanh da trời, xanh lá và hồng.'),
(23, 2, 'Micro có dây Shure MV88+ Video Kit ', 'Kèm chân', '8450000.0', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/12498/304963/s16/micro-co-day-shure-mv88-video-kit-thumb-1-650x650.png', 'Thương hiệu Shure không làm người dùng thất vọng khi ra mắt sản phẩm micro có dây Shure MV88+ Video Kit với thiết kế khá gọn nhẹ, màu sắc sang trọng, dễ dàng lắp ghép để tạo thành bộ mic thu âm hoàn hảo, đồng thời cũng có thể nhanh chóng gấp gọn để mang theo, đồng hành cùng bạn trong mọi chuyến đi.\r\nSo với những sản phẩm tiền nhiệm thì micro Shure mang lại giải pháp âm thanh tốt hơn nhờ trang bị đầy đủ phụ kiện bao gồm: Một Video Kit, chân tripod Manfrotto Pixi, kẹp điện thoại đa năng, chân cắm Lightning & USB-C. \r\nNgoài ra, micro còn trang bị thêm mạch headphone amplifier với lỗ cắm 3.5 mm để cắm tai nghe vào, monitor và theo dõi chất lượng âm thanh tốt hơn khi quay một cách trực tiếp.'),
(24, 2, 'Magic Keyboard với phím số', 'Touch ID và Phím số', '3490000.0', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/1882/251884/s16/1-650x650.png', 'Magic Keyboard nay có Touch ID, giúp xác thực nhanh chóng, dễ dàng và bảo mật mỗi lần đăng nhập và mua hàng.\r\n\r\nMagic Keyboard với Touch ID và Numeric Keypad đem lại trải nghiệm gõ phím thoải mái và chính xác ấn tượng. Bàn phím đặc biệt có cách bố trí mở rộng, với các nút điều khiển điều hướng tài liệu để kéo nhanh và các phím mũi tên kích thước chuẩn, cực kỳ phù hợp để chơi game. Numeric Keypad cũng rất hữu dụng khi thực hiện các bảng tính và sử dụng những ứng dụng tài chính. Bàn phím còn có thể kết nối không dây và sạc lại được, với thời lượng pin dài và bàn phím hoạt động trong một tháng hoặc lâu hơn sau mỗi lần sạc.1 Bàn phím tự động kết nối với Mac, để bạn có thể làm việc ngay lập tức. Ngoài ra, bàn phím còn có cáp bện chuyển đổi từ USB-C sang Lightning để bạn kết nối với cổng USB-C trên Mac để sạc.'),
(25, 2, 'Magic Keyboard', 'Thường', '2230000.0', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/1882/251881/s16/magic-keyboard-thumb-650x650.png', 'Magic Keyboard đem lại trải nghiệm gõ phím thoải mái và chính xác ấn tượng. Bàn phím còn có thể kết nối không dây và sạc lại được, với thời lượng pin dài và bàn phím hoạt động trong một tháng hoặc lâu hơn sau mỗi lần sạc.1 Bàn phím tự động kết nối với Mac, để bạn có thể làm việc ngay lập tức. Ngoài ra, bàn phím còn có cáp bện chuyển đổi từ USB-C sang Lightning để bạn kết nối với cổng USB-C trên Mac để sạc.'),
(26, 2, 'Magic Mouse', 'Màu: Trắng', '1990000.0', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/86/251787/s16/1-650x650.png', 'Magic Mouse có thể kết nối không dây và sạc lại được, với phần đế được thiết kế tối ưu giúp di chuyển dễ dàng trên mặt bàn. Bề mặt Multi-Touch cho phép bạn thực hiện các thao tác đơn giản như vuốt giữa các trang web và cuộn qua lại giữa các tài liệu.\r\n\r\nThời lượng pin dài ấn tượng giúp Magic Mouse hoạt động trong khoảng thời gian một tháng hoặc lâu hơn sau mỗi lần sạc. Bạn có thể sử dụng ngay khi vừa khui khỏi hộp và chuột sẽ tự động kết nối với Mac. Magic Mouse có cáp bện chuyển đổi từ USB-C sang Lightning để bạn kết nối với cổng USB-C trên Mac để sạc.'),
(27, 2, 'Bao da MacBook Pro 13 inch', 'Màu: Xanh Navy', '4120000.0', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/7923/251694/s16/bao-da-macbook-pro-13-inch-apple-mrql2-thumb-2-650x650.png', 'Được sản xuất bởi Apple, bao da Macbook Pro 13 inch này được sản xuất thủ công từ chất liệu da cao cấp đến từ Châu Âu. Bao da được trang bị một lớp lót làm từ sợi siêu mỏng cực kì mềm mại giúp bảo vệ tốt cho MacBook Air hoặc MacBook Pro của bạn ở bất cứ nơi đâu.'),
(28, 2, 'Adapter sạc Apple 2 cổng USB-C 35W', 'Màu: Trắng', '1180000.0', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/9499/284275/s16/adapter-sac-apple-type-c-35w-thumb-1-650x650.png', 'Adapter sạc Apple Type C 35W cho phép bạn sạc hai thiết bị cùng một lúc, cho dù bạn đang ở nhà, ở văn phòng hay đang di chuyển. Kích thước nhỏ gọn giúp bạn dễ dàng đóng gói và cất giữ. Apple khuyên bạn nên sử dụng nó với MacBook Air. Bạn cũng có thể sử dụng nó với iPhone, iPad, Apple Watch và AirPods.'),
(29, 2, 'Cáp sạc USB-C 2m', '2m', '620000.0', 1, 'https://img.tgdd.vn/imgt/f_webp,fit_outside,quality_100/https://cdn.tgdd.vn/Products/Images/58/158724/s16/123-650x650.png', 'Cáp sạc dài 2m này với cổng kết nối USB-C ở cả hai đầu là phụ kiện lý tưởng để sạc, đồng bộ hóa và chuyển dữ liệu giữa các thiết bị USB-C. Kết nối với củ sạc USB-C với bộ sạc USB-C tương thích để sạc thiết bị từ ổ cắm điện trên tường và tận dụng tính năng sạc nhanh. Không bán kèm Bộ Sạc USB-C.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `address` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `phone`, `address`) VALUES
(1, 'Hoanghuy', '061199', '', NULL),
(11, 'b1702724', '061199', '', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id_catalog`);

--
-- Indexes for table `img_info`
--
ALTER TABLE `img_info`
  ADD PRIMARY KEY (`id_info`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `img_list`
--
ALTER TABLE `img_list`
  ADD PRIMARY KEY (`id_img`),
  ADD KEY `fk_img_list_id_product` (`id_product`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`id_order`,`id_product`),
  ADD KEY `fk_orderdetail_product` (`id_product`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_user_fk` (`id_user`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `product_catalog_fk` (`id_catalog`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id_catalog` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `img_info`
--
ALTER TABLE `img_info`
  MODIFY `id_info` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `img_list`
--
ALTER TABLE `img_list`
  MODIFY `id_img` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `img_info`
--
ALTER TABLE `img_info`
  ADD CONSTRAINT `img_info_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`);

--
-- Constraints for table `img_list`
--
ALTER TABLE `img_list`
  ADD CONSTRAINT `fk_img_list_id_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`) ON DELETE CASCADE,
  ADD CONSTRAINT `img_list_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`);

--
-- Constraints for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `fk_orderdetail_order` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id_order`),
  ADD CONSTRAINT `fk_orderdetail_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `id_user_fk` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_catalog_fk` FOREIGN KEY (`id_catalog`) REFERENCES `catalog` (`id_catalog`),
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_catalog`) REFERENCES `catalog` (`id_catalog`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
