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
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `idGallery` int(11) NOT NULL,
  `titleGallery` longtext NOT NULL,
  `descGallery` longtext NOT NULL,
  `imgFullNameGallery` longtext NOT NULL,
  `orderGallery` int(11) NOT NULL,
  `proID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`idGallery`, `titleGallery`, `descGallery`, `imgFullNameGallery`, `orderGallery`, `proID`) VALUES
(51, 'a', 'a', 'a.5f0eae7b720d17.39609466.jpg', 1, 58),
(52, 'a', 'aa', 'a.5f0f17583cefb7.36811026.jpg', 2, 59);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`idGallery`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `idGallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
