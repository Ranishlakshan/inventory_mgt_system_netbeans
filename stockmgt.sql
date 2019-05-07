-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2019 at 09:29 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stockmgt`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(10) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(60) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `username`, `password`, `email`, `createtime`, `last_login`) VALUES
(4, 'admin', '21232f297a57a5a743894a0e4a801fc3', '077', '2019-03-30 05:26:49', '2019-03-30 05:26:49'),
(6, 'pine', '15dc8bed4e380a261b7794769b97a74d', '45454', '2019-03-30 05:45:13', '2019-03-30 05:45:13'),
(7, 'nimasha', '0b344334d0fa3d9f86492f5ea462fc8c', '0555', '2019-03-30 11:25:51', '2019-03-30 11:25:51');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(10) NOT NULL,
  `total` int(10) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `total`, `createtime`, `updatetime`) VALUES
(1, 0, '2019-03-03 19:30:06', '2019-03-03 19:30:06'),
(2, 0, '2019-03-03 20:26:47', '2019-03-03 20:26:47'),
(3, 0, '2019-03-03 20:27:03', '2019-03-03 20:27:03'),
(4, 0, '2019-03-03 20:30:11', '2019-03-03 20:30:11'),
(5, 0, '2019-03-03 20:35:47', '2019-03-03 20:35:47'),
(6, 0, '2019-03-03 20:41:55', '2019-03-03 20:41:55'),
(7, 390, '2019-03-03 20:45:42', '2019-03-03 20:45:42'),
(8, 310, '2019-03-03 20:47:30', '2019-03-03 20:47:30'),
(9, 0, '2019-03-03 20:51:35', '2019-03-03 20:51:35'),
(10, 370, '2019-03-04 04:23:46', '2019-03-04 04:23:46'),
(11, 0, '2019-03-19 09:24:25', '2019-03-19 09:24:25'),
(12, 0, '2019-03-29 15:45:43', '2019-03-29 15:45:43'),
(13, 0, '2019-03-29 15:46:29', '2019-03-29 15:46:29'),
(14, 0, '2019-03-29 17:00:49', '2019-03-29 17:00:49'),
(15, 0, '2019-03-29 17:03:44', '2019-03-29 17:03:44'),
(16, 1991, '2019-03-29 17:16:57', '2019-03-29 17:16:57'),
(17, 122000, '2019-03-29 17:24:35', '2019-03-29 17:24:35'),
(18, 186, '2019-03-29 17:45:35', '2019-03-29 17:45:35'),
(19, 140, '2019-03-29 17:49:19', '2019-03-29 17:49:19'),
(20, 0, '2019-03-29 17:53:10', '2019-03-29 17:53:10'),
(21, 0, '2019-03-29 17:59:14', '2019-03-29 17:59:14'),
(22, 570, '2019-03-29 18:02:14', '2019-03-29 18:02:14'),
(23, 0, '2019-03-29 18:07:45', '2019-03-29 18:07:45'),
(24, 2150, '2019-03-30 05:57:10', '2019-03-30 05:57:10'),
(25, 290, '2019-03-30 06:05:09', '2019-03-30 06:05:09'),
(26, 70, '2019-03-30 06:05:43', '2019-03-30 06:05:43'),
(27, 450, '2019-03-30 06:57:49', '2019-03-30 06:57:49'),
(28, 0, '2019-03-30 06:58:40', '2019-03-30 06:58:40'),
(29, 350, '2019-03-30 07:17:22', '2019-03-30 07:17:22'),
(30, 700, '2019-03-30 07:37:57', '2019-03-30 07:37:57'),
(31, 700, '2019-03-30 07:41:23', '2019-03-30 07:41:23'),
(32, 15625, '2019-03-30 11:27:30', '2019-03-30 11:27:30'),
(33, 0, '2019-03-30 11:28:06', '2019-03-30 11:28:06'),
(34, 0, '2019-03-30 14:34:58', '2019-03-30 14:34:58'),
(35, 140, '2019-03-31 05:10:24', '2019-03-31 05:10:24'),
(36, 0, '2019-03-31 05:11:12', '2019-03-31 05:11:12'),
(37, 1300, '2019-03-31 05:12:55', '2019-03-31 05:12:55'),
(38, 1620, '2019-03-31 05:34:50', '2019-03-31 05:34:50'),
(39, 490, '2019-03-31 05:39:05', '2019-03-31 05:39:05'),
(40, 0, '2019-03-31 05:43:36', '2019-03-31 05:43:36'),
(41, 8505, '2019-03-31 05:44:07', '2019-03-31 05:44:07'),
(42, 330, '2019-03-31 05:45:31', '2019-03-31 05:45:31'),
(43, 140, '2019-03-31 05:55:40', '2019-03-31 05:55:40'),
(44, 19200, '2019-03-31 06:42:23', '2019-03-31 06:42:23');

-- --------------------------------------------------------

--
-- Table structure for table `bill_details`
--

CREATE TABLE `bill_details` (
  `id` int(10) NOT NULL,
  `bill_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `items` int(10) NOT NULL,
  `subtotal` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_details`
--

INSERT INTO `bill_details` (`id`, `bill_id`, `product_id`, `items`, `subtotal`) VALUES
(1, 1, 23, 2, 60),
(2, 4, 23, 4, 120),
(3, 4, 21, 2, 300),
(4, 4, 13, 2, 200),
(5, 5, 23, 2, 60),
(6, 6, 2, 2, 784),
(7, 6, 4, 2, 106),
(8, 7, 23, 3, 90),
(9, 7, 21, 2, 300),
(10, 8, 23, 2, 60),
(11, 8, 35, 5, 250),
(12, 10, 23, 2, 60),
(13, 10, 35, 3, 150),
(14, 10, 38, 1, 160),
(15, 16, 3, 3, 351),
(16, 16, 45, 2, 1640),
(17, 17, 47, 1, 85000),
(18, 18, 25, 2, 100),
(19, 18, 30, 2, 86),
(20, 19, 26, 2, 140),
(21, 22, 26, 2, 140),
(22, 22, 31, 1, 430),
(23, 24, 26, 10, 650),
(24, 24, 27, 5, 1500),
(25, 25, 26, 2, 140),
(26, 25, 23, 5, 150),
(27, 26, 26, 1, 70),
(28, 27, 4, 2, 100),
(29, 27, 26, 5, 350),
(30, 29, 26, 2, 140),
(31, 29, 26, 3, 210),
(32, 30, 26, 5, 350),
(33, 30, 26, 5, 350),
(34, 31, 27, 2, 700),
(35, 32, 55, 42, 13860),
(36, 32, 26, 2, 140),
(37, 32, 26, 25, 1625),
(38, 35, 26, 2, 140),
(39, 37, 26, 20, 1300),
(40, 38, 57, 18, 1620),
(41, 39, 56, 7, 490),
(42, 41, 50, 25, 3375),
(43, 41, 50, 23, 3105),
(44, 41, 50, 12, 1620),
(45, 41, 50, 1, 135),
(46, 41, 50, 1, 135),
(47, 41, 50, 1, 135),
(48, 42, 55, 1, 330),
(49, 43, 56, 2, 140),
(50, 44, 48, 1, 2300),
(51, 44, 48, 1, 2300),
(52, 44, 48, 1, 2300),
(53, 44, 48, 1, 2300),
(54, 44, 48, 5, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(10) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(60) NOT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `email`, `createtime`, `last_login`) VALUES
(6, 'encript', '65f5f7ef2352ae2ee840588aad707236', '1995', '2019-03-29 20:38:59', '2019-03-29 20:38:59'),
(7, 'nima', 'db088d7fd61422d0dd9f2152fd550127', '0717500457', '2019-03-30 04:50:48', '2019-03-30 04:50:48'),
(8, 'orange', 'fe01d67a002dfa0f3ac084298142eccd', '111', '2019-03-30 05:44:49', '2019-03-30 05:44:49');

-- --------------------------------------------------------

--
-- Table structure for table `new_stock`
--

CREATE TABLE `new_stock` (
  `id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `stock` int(10) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new_stock`
--

INSERT INTO `new_stock` (`id`, `product_id`, `stock`, `added_date`) VALUES
(1, 15, 10, '2019-02-19 18:47:12'),
(2, 5, 10, '2019-02-19 18:48:41'),
(3, 15, 50, '2019-02-19 18:49:23'),
(4, 27, 15, '2019-02-27 11:54:10'),
(5, 24, 25, '2019-02-28 15:48:49'),
(6, 12, 7, '2019-03-01 09:05:12'),
(7, 1, 20, '2019-03-01 09:49:50'),
(8, 18, 2, '2019-03-01 09:52:29'),
(9, 5, 50, '2019-03-01 16:48:09'),
(10, 35, 50, '2019-03-01 16:52:00'),
(11, 35, 250, '2019-03-01 16:52:40'),
(12, 35, 100, '2019-03-01 16:53:00'),
(13, 36, 100, '2019-03-01 16:55:59'),
(14, 42, 2, '2019-03-19 09:19:59'),
(15, 43, 5, '2019-03-19 09:22:44'),
(16, 44, 10, '2019-03-29 15:40:49'),
(17, 45, 5, '2019-03-29 15:44:40'),
(18, 50, 10, '2019-03-30 07:52:49');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `price` int(10) NOT NULL,
  `discount` int(10) NOT NULL DEFAULT '0',
  `stock` int(10) NOT NULL,
  `warranty` varchar(40) NOT NULL DEFAULT '0',
  `low_level` int(10) NOT NULL DEFAULT '5',
  `details` varchar(90) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `price`, `discount`, `stock`, `warranty`, `low_level`, `details`, `added_date`) VALUES
(1, 'lux', 61, 0, 76, '0', 5, '', '2019-02-12 18:34:01'),
(2, 'cream-cracker', 392, 0, 98, '0', 5, '', '2019-02-12 18:34:01'),
(3, 'wonderlight', 117, 0, 52, '0', 5, '', '2019-02-12 18:34:01'),
(4, 'fan', 53, 0, 3243, '0', 5, '', '2019-02-12 18:34:01'),
(5, 'ddd', 220, 0, 270, '0', 5, '', '2019-02-12 18:36:04'),
(6, 'disney', 450, 0, 130, '0', 5, '', '2019-02-12 19:05:28'),
(7, 'ritzburry', 475, 0, 50, '0', 5, '', '2019-02-12 19:07:20'),
(8, 'candoz', 250, 0, 57, '0', 5, '', '2019-02-12 19:09:19'),
(9, 'choco', 55, 0, 408, '0', 5, '', '2019-02-12 19:10:23'),
(10, 'puzzle', 150, 0, 591, '0', 5, '', '2019-02-12 19:11:15'),
(11, 'ranmal', 5, 0, 750, '0', 5, '', '2019-02-12 19:13:48'),
(12, 'butter', 13, 0, 16, '0', 5, '', '2019-02-12 19:14:08'),
(13, 'munchee', 100, 0, 357, '0', 5, '', '2019-02-12 19:15:15'),
(14, 'samon', 305, 0, 30, '0', 5, '', '2019-02-12 19:26:18'),
(15, 'cheese', 4, 0, 54, '0', 5, '', '2019-02-12 19:30:04'),
(16, 'pencil 5mm', 15, 0, 195, '0', 5, '', '2019-02-12 19:52:55'),
(17, 'pendrive', 1650, 0, 1645, '0', 5, '', '2019-02-12 19:56:59'),
(18, 'pendrive16', 1200, 0, 1202, '0', 5, '', '2019-02-12 19:59:48'),
(19, 'butterfly', 50, 0, 100, '0', 5, '', '2019-02-12 20:07:21'),
(20, 'hghjh', 45, 0, 250, '0', 5, '', '2019-02-13 06:43:54'),
(21, 'mug', 150, 0, 56, '0', 5, '', '2019-02-13 13:18:26'),
(22, 'cups', 90, 0, 150, '0', 5, '', '2019-02-13 13:18:39'),
(23, 'nescafe', 30, 0, 476, '0', 5, '', '2019-02-13 17:51:25'),
(24, 'potelo', 45, 5, 75, '1 year', 5, 'next stock next sunday', '2019-02-25 20:34:48'),
(25, 'coca-cola', 55, 5, 273, '3 months', 5, '', '2019-02-25 21:13:44'),
(26, 'orange-juice', 80, 10, 355, '2 months', 5, 'new stock next week', '2019-02-25 21:17:42'),
(27, 'mouse', 350, 0, 3, '2 months', 5, 'new tec', '2019-02-25 21:20:50'),
(28, 'sdfd', 45, 1, 45, '2', 5, 'sdcs', '2019-02-25 21:22:23'),
(29, 'dder', 12, 2, 451, '0', 5, '556', '2019-02-25 21:23:23'),
(30, 'sdfkj', 45, 2, 74, '3', 5, 'sdlj', '2019-02-25 21:31:10'),
(31, 'purse', 450, 20, 49, '3 months', 5, '', '2019-02-25 21:33:15'),
(32, 'beclomin', 150, 3, 160, '1 month', 5, 'new stock next week', '2019-02-27 18:40:58'),
(33, 'bec', 150, 5, 37, '1 month', 5, 'new', '2019-02-27 18:45:24'),
(34, 'penred', 10, 0, 150, '0', 5, '', '2019-03-01 09:16:22'),
(35, 'ranishlk', 50, 15, 142, '1 month', 5, '', '2019-03-01 16:51:26'),
(36, 'nimalk', 50, 0, 280, '0', 5, '', '2019-03-01 16:53:44'),
(37, 'cottonbuds', 50, 0, 120, '0', 5, '', '2019-03-03 18:33:56'),
(38, 'cheese bits', 160, 10, 199, '0', 5, '', '2019-03-03 18:34:29'),
(39, 'denim1', 1450, 100, 23, '1 month', 5, '', '2019-03-03 18:35:20'),
(40, 'trouser', 1200, 0, 50, '0', 5, '', '2019-03-03 18:35:58'),
(41, 'trouser1', 1250, 220, 25, '0', 5, '', '2019-03-03 18:36:30'),
(42, 'iphone 6s plus', 45000, 1500, 25, '1 year', 5, '', '2019-03-19 09:19:30'),
(43, 'deeed', 500, 0, 25, '0', 5, '', '2019-03-19 09:22:30'),
(44, 'cottonbuds', 75, 0, 160, '0', 5, '', '2019-03-29 15:40:16'),
(45, 'aqua soft', 820, 0, 28, '0', 5, '', '2019-03-29 15:44:29'),
(46, 'm10', 20000, 1500, 23, '1 year', 5, '', '2019-03-29 17:23:15'),
(47, 'note 8', 87500, 2500, 49, '1 year', 5, '', '2019-03-29 17:23:46'),
(48, 'specs', 2500, 200, 3, '1 year', 10, '', '2019-03-30 07:49:36'),
(49, 'raigam', 65, 0, 200, '0', 20, '', '2019-03-30 07:50:46'),
(50, 'sprite large', 150, 15, 7, '6 months', 10, '', '2019-03-30 07:52:33'),
(51, 'barley', 220, 15, 50, '6 months', 5, '', '2019-03-30 07:56:22'),
(52, 'classic', 210, 15, 75, '6 months', 5, '', '2019-03-30 07:58:36'),
(53, 'classic2', 250, 20, 45, '1 month', 5, '', '2019-03-30 07:59:35'),
(54, 'quality product', 250, 15, 50, ' 1 month', 5, '', '2019-03-30 08:01:00'),
(55, 'beer', 350, 20, 2, '1 month', 12, '', '2019-03-30 08:04:02'),
(56, 'rrrr', 80, 10, 6, '1 month', 10, '', '2019-03-31 05:09:22'),
(57, 'gggg', 100, 10, 2, '1 month', 5, '', '2019-03-31 05:19:21');

-- --------------------------------------------------------

--
-- Table structure for table `selling_details`
--

CREATE TABLE `selling_details` (
  `bill_id` int(10) NOT NULL,
  `seller` varchar(25) NOT NULL,
  `total` int(10) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill_details`
--
ALTER TABLE `bill_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_stock`
--
ALTER TABLE `new_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `bill_details`
--
ALTER TABLE `bill_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `new_stock`
--
ALTER TABLE `new_stock`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
