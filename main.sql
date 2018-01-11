-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2018 at 05:51 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sutema.db`
--

-- --------------------------------------------------------

--
-- Table structure for table `historyaddress`
--

CREATE TABLE `historyaddress` (
  `historyAddressId` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `addressLat` varchar(50) DEFAULT NULL,
  `addressLong` varchar(50) DEFAULT NULL,
  `startDate` date NOT NULL,
  `leaveDate` date DEFAULT NULL,
  `memberId` varchar(100) NOT NULL,
  `createdDate` date NOT NULL,
  `updatedDate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `historyjob`
--

CREATE TABLE `historyjob` (
  `historyJobId` varchar(100) NOT NULL,
  `jobTitle` varchar(100) NOT NULL,
  `jobDesc` text NOT NULL,
  `companyName` varchar(100) NOT NULL,
  `companyAddress` varchar(100) NOT NULL,
  `companyLat` varchar(50) DEFAULT NULL,
  `companyLong` varchar(50) DEFAULT NULL,
  `joinDate` date NOT NULL,
  `leaveDate` date DEFAULT NULL,
  `memberId` varchar(100) NOT NULL,
  `createdDate` date NOT NULL,
  `updatedDate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loker`
--

CREATE TABLE `loker` (
  `lokerId` varchar(100) NOT NULL,
  `lokerTitle` varchar(100) NOT NULL,
  `lokerDesc` text NOT NULL,
  `companyName` varchar(100) NOT NULL,
  `deadlineDate` date DEFAULT NULL,
  `submitterId` varchar(100) NOT NULL,
  `createdDate` date NOT NULL,
  `updatedDate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `memberId` varchar(100) NOT NULL,
  `memberName` varchar(100) DEFAULT NULL,
  `userName` varchar(100) NOT NULL,
  `passwd` varchar(100) NOT NULL,
  `memberType` char(1) NOT NULL,
  `memberStatus` char(1) NOT NULL,
  `createdDate` date NOT NULL,
  `updatedDate` date DEFAULT NULL,
  `birthDate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `newsId` varchar(100) NOT NULL,
  `newsTitle` varchar(100) NOT NULL,
  `newsDesc` text NOT NULL,
  `newsType` char(1) NOT NULL,
  `submitterId` varchar(100) NOT NULL,
  `createdDate` date NOT NULL,
  `updatedDate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `historyaddress`
--
ALTER TABLE `historyaddress`
  ADD PRIMARY KEY (`historyAddressId`),
  ADD KEY `user_historyaddress_fk` (`memberId`);

--
-- Indexes for table `historyjob`
--
ALTER TABLE `historyjob`
  ADD PRIMARY KEY (`historyJobId`),
  ADD KEY `user_historyjob_fk` (`memberId`);

--
-- Indexes for table `loker`
--
ALTER TABLE `loker`
  ADD PRIMARY KEY (`lokerId`),
  ADD KEY `user_loker_fk` (`submitterId`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`memberId`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`newsId`),
  ADD KEY `user_berita_fk` (`submitterId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
