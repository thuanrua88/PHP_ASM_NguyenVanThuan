-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2020 at 04:57 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(128) NOT NULL,
  `is_admin` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `name`, `password`, `email`, `is_admin`) VALUES
(9, 'nguyễn văn thuận', '$2y$10$o79gFcKKnBZ0nuYub9plF.CuDdrmNJogUyt.eqSZcGBiEF91X.pt.', 'thuanrua881@gmail.com', 1),
(10, 'Student1234235', '$2y$10$Uma4tr1KYr9qTIncO4iVe.LUgO2KCvHPyA2dMm51cG0IJo/xXstzC', 'thuannvth1909002@fpt.edu.vn', 0),
(11, 'nhom5', '$2y$10$t1HsoyYuE1gl3Qr8w4.BDuB32N8N/fMc6YLpbm9V9El8msc8oSZ9O', 'thuanrua88@gmail.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
