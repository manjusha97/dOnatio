-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2019 at 07:15 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donatio`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `emailid` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adid`, `name`, `emailid`, `password`) VALUES
(1, 'Ishwarya', 'ishwarya@gmail.com', 'f76811dd850047e10cdd8c4f3e749fe8'),
(2, 'Manjusha', 'manjusha@gmail.com', '86f9ab6653b3b0151eef76b46ba2f9a5'),
(3, 'Vaishali', 'vaishali@gmail.com', '2826b23445395f64617605885202a8f0');

-- --------------------------------------------------------

--
-- Table structure for table `dataset`
--

CREATE TABLE `dataset` (
  `id` int(11) NOT NULL,
  `dist` int(11) NOT NULL,
  `pred` int(11) NOT NULL,
  `oquant` int(11) NOT NULL,
  `dquant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `dmid` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `phoneno` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`dmid`, `name`, `phoneno`) VALUES
(1, 'Ganesh', 986532147),
(2, 'Suresh', 987456324),
(3, 'Mahesh', 896574123),
(4, 'Dinesh', 658974523);

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `did` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `nod` int(11) NOT NULL,
  `dmid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`did`, `oid`, `type`, `nod`, `dmid`) VALUES
(7, 3, 'Books', 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `did` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `emailid` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phoneno` int(15) NOT NULL,
  `no` int(11) NOT NULL,
  `street` varchar(20) NOT NULL,
  `area` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `pcode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`did`, `name`, `emailid`, `password`, `phoneno`, `no`, `street`, `area`, `city`, `pcode`) VALUES
(1, 'Jyoti', 'jyoti@gmail.com', '1411a3e2bd0e7c77fd51adc1e17a834e', 986574231, 207, 'Sarjapur bus station', 'Sarjapur', 'Bangalore', 562125),
(2, 'Vinod', 'vinod@gmail.com', 'd2c51c9cde1f15b718296c99ae362fb1', 968574123, 34, 'GRS residency', 'Gadaranahalli', 'Bangalore', 560073),
(3, 'Bhavana', 'bhavana@gmail.com', '046fc462f4fb1e51fc14993cf126fabc', 945671234, 54, '1st Main Road', 'Govardhan', 'Bangalore', 560034),
(4, 'Saanvi', 'saanvi@gmail.com', 'c19d9abb0fe6bb116e5aa57963259b93', 789564123, 441, 'Platinum City', 'Yeshwanthpur', 'Bangalore', 560022),
(5, 'Mukesh', 'mukesh@gmail.com', 'a883bde368145d717b99c70594fd6069', 986574123, 567, '2nd main road', 'Rajajinagar', 'Bangalore', 560010),
(6, 'Dhanush', 'dhanu@gmail.com', '04a17a7617eefaa232c6aa8a0092fe81', 854632179, 117, 'Margosa Road', 'Malleshwaram', 'Bangalore', 560003),
(7, 'Riya', 'riya@gmail.com', '3153be13ca91e847668fbf430757a0b5', 967456321, 204, 'SBM Colony', 'Mathikere', 'Bangalore', 560054);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `eveid` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `evename` varchar(30) NOT NULL,
  `ticpr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`eveid`, `oid`, `date`, `evename`, `ticpr`) VALUES
(1, 2, '2019-05-09 00:00:00', 'Inauguration', 30);

-- --------------------------------------------------------

--
-- Table structure for table `org`
--

CREATE TABLE `org` (
  `oid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cno` varchar(30) NOT NULL,
  `emailid` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `hoo` varchar(25) NOT NULL,
  `phoneno` int(15) NOT NULL,
  `no` int(15) NOT NULL,
  `street` varchar(25) NOT NULL,
  `area` varchar(25) NOT NULL,
  `city` varchar(20) NOT NULL,
  `pcode` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org`
--

INSERT INTO `org` (`oid`, `name`, `cno`, `emailid`, `password`, `hoo`, `phoneno`, `no`, `street`, `area`, `city`, `pcode`) VALUES
(1, 'Kalpavruksha Charitable Trust', 'KA/2009/0014980', 'kalpavruksha@gmail.com', 'cb0fa609383235d6bdb40d38ae0a31c2', 'N Rangaraju', 789652365, 336, 'WCC Road', 'Mahalakshmi Layout', 'Bangalore', 560086),
(2, 'Sukrupa', 'KA/2010/0034583', 'sukrupa@gmail.com', 'cd77b1ef28c925e68fda6a5cba3314eb', 'Aashu Calapa', 984526189, 9, 'Amarjyoti Colony', 'Hebbal', 'Bangalore', 560032),
(3, 'Sparsha Trust', 'KA/2009/0042116', 'sparshamarg2020@gmail.com', '5139a38d4b21218921930fded068e13c', 'Anirudh', 785694123, 64, '9th Main', 'Mathikere', 'Bangalore', 560054);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adid`);

--
-- Indexes for table `dataset`
--
ALTER TABLE `dataset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`dmid`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`did`,`oid`,`type`),
  ADD KEY `oid` (`oid`),
  ADD KEY `dmid` (`dmid`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`eveid`),
  ADD KEY `oid` (`oid`);

--
-- Indexes for table `org`
--
ALTER TABLE `org`
  ADD PRIMARY KEY (`oid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `dmid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `eveid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `org`
--
ALTER TABLE `org`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `donations`
--
ALTER TABLE `donations`
  ADD CONSTRAINT `donations_ibfk_1` FOREIGN KEY (`did`) REFERENCES `donor` (`did`),
  ADD CONSTRAINT `donations_ibfk_2` FOREIGN KEY (`oid`) REFERENCES `org` (`oid`),
  ADD CONSTRAINT `donations_ibfk_3` FOREIGN KEY (`dmid`) REFERENCES `delivery` (`dmid`);

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`oid`) REFERENCES `org` (`oid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
