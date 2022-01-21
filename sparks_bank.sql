-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2021 at 07:57 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Sakshi', 'Amol', 200, '2022-01-18 10:56:07'),
(6, 'Swejal', 'Priti', 6000, '2022-1-18 10:57:37'),
(5, 'Pranjal', 'Pallavi', 2300, '2022-1-18 10:58:19'),
(1, 'Sakshi', 'Gururaj', 200, '2022-1-18 12:36:08'),
(2, 'Nandita', 'Isha', 200, '2022-1-18 12:46:58'),
(7, 'Rinkle', 'Pranjal', 2300, '2022-1-18 21:59:14'),
(1, 'Sakshi', 'Nandita', 2000, '2022-1-18 22:01:02');

-- --------------------------------------------------------


--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text(70) NOT NULL,
  `email` varchar(50) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Sakshi', 'sakshi@gmail.com', 90000),
(2, 'Nandita', 'nandita@gmail.com', 70000),
(3, 'Pallavi', 'pallavi@gmail.com', 55000),
(4, 'Isha', 'isha@gmail.com', 10000),
(5, 'Pranjal', 'pranjal@gmail.com', 36000),
(6, 'Swejal', 'swejal@gmail.com', 39000),
(7, 'Rinkle', 'rinkle@gmail.com', 48790),
(8, 'Priti', 'priti@gmail.com', 49600),
(9, 'Amol', 'amol@gmail.com', 60000),
(10, 'Gururaj', 'gururaj@gmail.com', 67000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;