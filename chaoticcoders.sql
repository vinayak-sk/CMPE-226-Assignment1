-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 14, 2016 at 04:49 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chaoticcoders`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment1`
--

CREATE TABLE `assignment1` (
  `studentid` int(10) NOT NULL,
  `name` varchar(40) NOT NULL,
  `major` varchar(30) NOT NULL,
  `specialization` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `emailid` varchar(30) NOT NULL,
  `subjects` varchar(50) NOT NULL,
  `phoneno` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment1`
--

INSERT INTO `assignment1` (`studentid`, `name`, `major`, `specialization`, `address`, `emailid`, `subjects`, `phoneno`) VALUES
(1, 'Vinayak Kalaskar', 'se', 'est', '101 san fernando', 'vinayak@gmail.com', '281', 1234567890),
(2, 'Rugved Dighe', 'se', 'Cloud Computing', '101 San Fernando', 'rugveddighe@gmail.com', '281,283', 669231234),
(3, 'Vedang Jadhav', 'SE', 'EST', 'Avalon San Jose', 'vedang.jadhav@google.com', '273', 234512134),
(4, 'Vipul Kanade', 'SE', 'EST', 'Legacy Plaza', 'vipul@airbnb.com', '275', 543623112),
(5, 'Prakash Kurup', 'CE', 'Embedded', 'Fruitdale', 'prakash@gmail.com', '283', 87279128),
(6, 'Srininvasa Maringanti', 'CE', 'Networking', '33 South', 'srinivasa@gmail.com', '275', 3241239);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment1`
--
ALTER TABLE `assignment1`
  ADD PRIMARY KEY (`studentid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignment1`
--
ALTER TABLE `assignment1`
  MODIFY `studentid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
