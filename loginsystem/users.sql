-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2021 at 02:34 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `users`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(11) NOT NULL,
  `username` varchar(11) NOT NULL,
  `password` varchar(23) NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp(),
  `Email` varchar(25) NOT NULL,
  `phone` int(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(25) NOT NULL,
  `country` varchar(25) NOT NULL,
  `zip` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `username`, `password`, `dt`, `Email`, `phone`, `address`, `city`, `state`, `country`, `zip`) VALUES
(1, 'Naveen', '1144', '2021-04-23 16:59:44', 'naveenmanral6416@gmail.co', 2147483647, '13/1 Ekta vihar Meethapur Extn. Badarpur', 'New Delhi', 'Delhi', 'India', 110044),
(10, 'Kunal', '1234', '2021-04-23 17:38:32', 'kunal@gmail.com', 2147483647, '15/2 Shayam Colony', 'Faridabad', 'Haryana', 'India', 120044),
(11, 'Aditya', '0000', '2021-04-23 17:47:21', 'adityasingh@gmail.com', 2147483647, '180-B GTB road', 'GTB', 'Delhu', 'India', 110056);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
