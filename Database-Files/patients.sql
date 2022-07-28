-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2022 at 01:15 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `patientmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(10) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Age` varchar(10) NOT NULL,
  `Gender` varchar(25) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` varchar(25) NOT NULL,
  `AadharNo` varchar(50) NOT NULL,
  `Disease` varchar(500) NOT NULL,
  `ReportId` varchar(50) NOT NULL,
  `ReportStatus` varchar(2000) NOT NULL,
  `Medicine` varchar(2000) NOT NULL,
  `Note` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `Name`, `Age`, `Gender`, `Email`, `Phone`, `AadharNo`, `Disease`, `ReportId`, `ReportStatus`, `Medicine`, `Note`) VALUES
(6, 'example5', '6', 'Female', 'example@gmail.com', '234523454', '324534523452345', 'Cough', 'ABC100', '', '', ''),
(7, 'Arjun', '10', 'Male', 'arjun@gmail.com', '9876543210', '1234 5678 9876', 'Fever', 'ABC200', 'Positive', 'Paracetamol', 'Take PCM when you feel your body is fell weak'),
(4, 'Example', '10', 'Male', 'example@gmail.com', '546346356', '32452345234523', 'fever', 'ABC456', '', '', ''),
(5, 'Example', '12', 'Female', 'example@gmail.com', '456245634', '45364543', 'COVID', 'ABC500', 'Negative', 'NA', 'NA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patients`
--

ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ReportId` (`ReportId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patients`
--

ALTER TABLE `patients`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
