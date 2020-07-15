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
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `proID` int(10) NOT NULL,
  `proName` varchar(100) NOT NULL,
  `proDesc` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`proID`, `proName`, `proDesc`, `price`, `amount`) VALUES
(8, '1', 'b', 100, 10),
(9, '2', 'b', 100, 10),
(10, '3', 'b', 100, 10),
(11, '9', 'b', 100, 10),
(58, 'a', 'b', 100, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`proID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `proID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
