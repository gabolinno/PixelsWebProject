-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2019 at 02:08 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onemilionpixels`
--

-- --------------------------------------------------------

--
-- Table structure for table `grid`
--

CREATE TABLE `grid` (
  `id` int(11) NOT NULL,
  `empty` tinyint(1) NOT NULL DEFAULT '1',
  `img` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `grid`
--

INSERT INTO `grid` (`id`, `empty`, `img`, `link`, `owner`, `text`) VALUES
(1, 0, 'download.jpg', 'https://www.fmi.uni-sofia.bg/', 'Admin', 'FMI is the best'),
(2, 1, 'NULL', 'NULL', 'NULL', 'NULL'),
(3, 1, 'NULL', 'NULL', 'NULL', 'NULL'),
(4, 1, 'NULL', 'NULL', 'NULL', 'NULL'),
(5, 1, 'NULL', 'NULL', 'NULL', 'NULL'),
(6, 1, NULL, NULL, NULL, ''),
(7, 1, NULL, NULL, NULL, ''),
(8, 1, NULL, '', NULL, ''),
(9, 1, NULL, NULL, NULL, ''),
(10, 1, NULL, NULL, NULL, ''),
(11, 1, NULL, NULL, NULL, ''),
(12, 1, NULL, NULL, NULL, ''),
(13, 1, NULL, NULL, NULL, ''),
(14, 1, NULL, NULL, NULL, ''),
(15, 1, NULL, NULL, NULL, ''),
(16, 1, NULL, NULL, NULL, ''),
(17, 1, NULL, NULL, NULL, ''),
(18, 1, NULL, NULL, NULL, ''),
(19, 1, NULL, NULL, NULL, ''),
(20, 1, NULL, NULL, NULL, ''),
(21, 1, NULL, NULL, NULL, ''),
(22, 1, NULL, NULL, NULL, ''),
(23, 1, NULL, NULL, NULL, ''),
(24, 1, NULL, NULL, NULL, ''),
(25, 1, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `pass` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `img`, `pass`, `first_name`, `last_name`) VALUES
(1, 'Admin', 'admin@abv.bg', 'admin.png', '$2y$10$e1pAq2GHrEeXhxgs34Djg.894HqFDFtwnw7CguAaKL1I6ofDPasx6', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grid`
--
ALTER TABLE `grid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grid`
--
ALTER TABLE `grid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
