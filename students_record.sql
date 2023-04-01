-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 01, 2023 at 12:34 PM
-- Server version: 8.0.27
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `students_record`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(64) NOT NULL,
  `LastName` varchar(64) NOT NULL,
  `RollNo` int NOT NULL,
  `Email` varchar(64) NOT NULL,
  `Gender` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id` (`Id`,`RollNo`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Id`, `FirstName`, `LastName`, `RollNo`, `Email`, `Gender`) VALUES
(1, 'Apurv ', 'Roy', 1928794, 'apurvroy2310@gmail.com', 'Male'),
(2, 'Abhishek', 'Mehar', 1927282, 'abhishek56@gmail.com', 'Male'),
(3, 'Virat ', 'Kohli', 1928793, 'virathyu@gmail.com', 'Male'),
(4, 'kshitij', 'gupta', 2147483647, 'kshitij123@gmail.com', 'Male'),
(6, 'smr', 'gupta', 1548576, 'khitij123@gmail.com', 'Male'),
(7, 'smriti', 'mandhana', 8, 'mandhana354@gmail.com', 'Male'),
(8, 'Jemmimah', 'Rodriges', 2147483647, 'jemmimah78@gmai.com', ''),
(9, 'Aakanksha ', 'Gupta', 2000, 'aakanksha24@gmail.com', ''),
(10, 'Kanta ', 'Gupta', 1982, 'kanta56@gmaik.com', 'f'),
(11, 'Harllen ', 'deol', 897654, 'deol678@gmail.com', 'Female'),
(12, 'Shikhar', 'Dhawan', 5623148, 'dhawan56@gmail.com', 'Male');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
