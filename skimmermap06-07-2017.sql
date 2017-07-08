-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2017 at 06:49 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skimmermap`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_mst`
--

CREATE TABLE `admin_mst` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` int(1) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_mst`
--

INSERT INTO `admin_mst` (`user_id`, `user_name`, `password`, `is_active`, `created_date`) VALUES
(1, 'admin', 'admin', 1, '2017-07-04 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ci_cookies`
--

CREATE TABLE `ci_cookies` (
  `id` int(11) NOT NULL,
  `cookie_id` varchar(255) DEFAULT NULL,
  `netid` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `orig_page_requested` varchar(120) DEFAULT NULL,
  `php_session_id` varchar(40) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('2de01148275ec78a8cf58470132d2355', '::1', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.115 Safari/537.36', 1499366847, 'a:6:{s:9:"user_name";s:4:"test";s:12:"is_logged_in";b:1;s:20:"manufacture_selected";N;s:22:"search_string_selected";N;s:5:"order";N;s:10:"order_type";N;}');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `name`) VALUES
(1, 'manifacure');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email_addres` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `pass_word` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`id`, `first_name`, `last_name`, `email_addres`, `user_name`, `pass_word`) VALUES
(1, 'test', 'admin', 'test@gmail.com', 'test', 'cc03e747a6afbbcbf8be7668acfebee5');

-- --------------------------------------------------------

--
-- Table structure for table `place_mst`
--

CREATE TABLE `place_mst` (
  `place_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zipcode` varchar(12) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `skimmer_fdate` datetime DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `is_safe` int(1) NOT NULL,
  `is_gps_protected` int(1) NOT NULL,
  `place_type` int(1) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `place_mst`
--

INSERT INTO `place_mst` (`place_id`, `name`, `address`, `city`, `state`, `zipcode`, `phone`, `latitude`, `longitude`, `skimmer_fdate`, `description`, `is_safe`, `is_gps_protected`, `place_type`, `created_date`) VALUES
(1, 'Jefferson Market\r\n', '38600 US-285\r\n', NULL, NULL, '80456', '719-836-2389', 22.997059, 72.499352, NULL, NULL, 0, 1, 1, '2017-07-04 00:00:00'),
(2, 'Shell\r\n\r\n', '1210 Argentine St\r\n', NULL, NULL, '80444', NULL, 22.996309, 72.498376, NULL, NULL, 0, 1, 1, '2017-07-04 00:00:00'),
(3, 'Shell\r\n\r\n', '4560 Argentine St\r\n', NULL, NULL, '80444', NULL, 22.994482, 72.499599, NULL, NULL, 1, 1, 2, '2017-07-04 00:00:00'),
(4, 'Shell\r\n\r\n', '1110 Argentine St\r\n', NULL, NULL, '80444', NULL, 22.989929, 72.497206, NULL, NULL, 1, 0, 2, '2017-07-04 00:00:00'),
(5, 'Jefferson Market\r\n', '38600 US-285\r\n', NULL, NULL, '80456', '719-836-2389', 22.987183, 72.499244, NULL, NULL, 1, 1, 1, '2017-07-04 00:00:00'),
(6, 'Jefferson Market\r\n', '38600 US-285\r\n', NULL, NULL, '80456', '719-836-2389', 22.987618, 72.501679, NULL, NULL, 1, 1, 1, '2017-07-04 00:00:00'),
(7, 'Jefferson Market\r\n', '38600 US-285\r\n', NULL, NULL, '80456', '719-836-2389', 23.028417, 72.510529, NULL, NULL, 1, 1, 1, '2017-07-04 00:00:00'),
(8, 'Jefferson Market\r\n', '38600 US-285\r\n', NULL, NULL, '80456', '719-836-2389', 22.969635, 72.427649, NULL, NULL, 0, 1, 2, '2017-07-04 00:00:00'),
(9, 'Jefferson Market\r\n', '38600 US-285\r\n', NULL, NULL, '80456', '719-836-2389', 22.965565, 72.426222, NULL, NULL, 1, 0, 2, '2017-07-04 00:00:00'),
(10, 'Jefferson Market\r\n', '38600 US-285\r\n', NULL, NULL, '80456', '719-836-2389', 22.990102, 72.488908, NULL, NULL, 1, 1, 2, '2017-07-04 00:00:00'),
(11, 'Jefferson Market\r\n', '38600 US-285\r\n', NULL, NULL, '382355', '719-836-2389', 23.216277, 72.635085, NULL, NULL, 0, 0, 2, '2017-07-04 00:00:00'),
(12, 'Jefferson Market\r\n', '38600 US-285\r\n', NULL, NULL, '382010', '719-836-2389', 23.216297, 72.625054, NULL, NULL, 0, 1, 2, '2017-07-04 00:00:00'),
(13, 'Jefferson Market\r\n', '38600 US-285\r\n', NULL, NULL, '382860', '719-836-2389', 23.587968, 72.360661, NULL, NULL, 0, 1, 2, '2017-07-04 00:00:00'),
(14, 'Jefferson Market\r\n', '38600 US-285\r\n', NULL, NULL, '382870', '719-836-2389', 23.590129, 72.350033, NULL, NULL, 0, 1, 2, '2017-07-04 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `description` varchar(40) DEFAULT NULL,
  `stock` double DEFAULT NULL,
  `cost_price` double DEFAULT NULL,
  `sell_price` double DEFAULT NULL,
  `manufacture_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `description`, `stock`, `cost_price`, `sell_price`, `manufacture_id`) VALUES
(1, 'qsqsddasdasd', 150, 25, 30, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_mst`
--
ALTER TABLE `admin_mst`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `ci_cookies`
--
ALTER TABLE `ci_cookies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `place_mst`
--
ALTER TABLE `place_mst`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_mst`
--
ALTER TABLE `admin_mst`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ci_cookies`
--
ALTER TABLE `ci_cookies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `membership`
--
ALTER TABLE `membership`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `place_mst`
--
ALTER TABLE `place_mst`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
