-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2020 at 01:05 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `milkdairy`
--

-- --------------------------------------------------------

--
-- Table structure for table `closingstock`
--

CREATE TABLE `closingstock` (
  `stockID` int(6) NOT NULL,
  `stdSNF` float NOT NULL,
  `stdFAT` float NOT NULL,
  `stdRATE` float NOT NULL,
  `prsntStock` float NOT NULL,
  `sDate` date NOT NULL,
  `did` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `closingstock`
--

INSERT INTO `closingstock` (`stockID`, `stdSNF`, `stdFAT`, `stdRATE`, `prsntStock`, `sDate`, `did`) VALUES
(121212, 8.5, 2, 28, 50.5, '2020-01-22', 101),
(141414, 5.5, 4, 28, 45, '2020-02-24', 102),
(353535, 9, 1, 26, 120, '2020-01-21', 102);

-- --------------------------------------------------------

--
-- Table structure for table `customermaster`
--

CREATE TABLE `customermaster` (
  `fullname` varchar(50) NOT NULL,
  `cAadhar` bigint(12) NOT NULL,
  `address` varchar(300) NOT NULL,
  `phoneno` bigint(10) NOT NULL,
  `bankacc` bigint(16) NOT NULL,
  `ifsc` varchar(12) NOT NULL,
  `balAmt` double NOT NULL,
  `did` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customermaster`
--

INSERT INTO `customermaster` (`fullname`, `cAadhar`, `address`, `phoneno`, `bankacc`, `ifsc`, `balAmt`, `did`) VALUES
('Shridhar', 234512342345, 'Tyagli', 9887766558, 1231231234554, 'VIJ11009', 50, 101),
('Yatish', 723469712899, 'Hulgol', 8217846170, 121113591112326, 'KTB7029', 400, 105),
('Gayatri', 868469277021, 'Yadalli', 9980369852, 111100011104089, 'SBIN0040544', 500, 101),
('Kiran', 868469278031, 'Kangod', 8073115104, 111100011104079, 'SBIN0040544', 350, 104),
('Tejaswini', 945280602070, 'Kalagadde', 9482297233, 111100011100191, 'VIJ1101', 0, 102),
('Parikshith', 945280603080, 'Kansur', 9845839611, 111100011100678, 'VIJ1101', 150, 103);

-- --------------------------------------------------------

--
-- Table structure for table `dairydetails`
--

CREATE TABLE `dairydetails` (
  `did` int(5) NOT NULL,
  `dairyname` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `mphone` bigint(12) NOT NULL,
  `head` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dairydetails`
--

INSERT INTO `dairydetails` (`did`, `dairyname`, `address`, `mphone`, `head`) VALUES
(101, 'Yadalli Halu Okkuta', 'At:Yadalli,Po:Yadalli,Tq:Sirsi,Uttara Kannada 581540', 8384227113, 'Ganesh Bhat'),
(102, 'Tyagli Halu Okkuta', 'At:Nanikatta,Po:Nanikatta,Tq:Siddapur,Uttara Kannada 581340', 8389281530, 'Ganapati Hegde'),
(103, 'Kansur Halu Okkuta', 'At:Kansur,Po:Kansur,Tq:Siddapur, Uttara Kannada 581340', 8389254535, 'Gajanan Hegde'),
(104, 'Kangod Halu Okkuta', 'At:Kangod,Po:Kangod,Tq:Sirsi,Uttara Kannada\r\n581340', 8384224160, 'Savita Hegde'),
(105, 'Bhairumbe Halu Okkuta', 'At:Bhairumbe,Po:Bhairumbe,Tq:Sirsi,Uttara Kannada 581336', 8384272206, 'Shreepad Hegde'),
(106, 'Targod Halu Okkuta', 'At:Targod,Po:Targod,Tq:Sirsi ,Uttara Kannada', 9008877685, 'Manjunath');

-- --------------------------------------------------------

--
-- Table structure for table `fatandcost`
--

CREATE TABLE `fatandcost` (
  `fat` float NOT NULL,
  `cattle` varchar(8) NOT NULL,
  `cost` float NOT NULL,
  `snf` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fatandcost`
--

INSERT INTO `fatandcost` (`fat`, `cattle`, `cost`, `snf`) VALUES
(3.5, 'Buffallo', 34, 7),
(3.8, 'Cow', 35, 5),
(4.6, 'Cow', 34, 5),
(8, 'Cow', 28, 3.5),
(9, 'Buffalo', 28, 4);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(12) NOT NULL,
  `mypswd` varchar(100) NOT NULL,
  `email` varchar(25) NOT NULL,
  `mobileno` bigint(10) NOT NULL,
  `DairyID` int(5) NOT NULL,
  `UTy` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `mypswd`, `email`, `mobileno`, `DairyID`, `UTy`) VALUES
('Gajanan', 'gajanan', 'gajananhegde@gmail.com', 9980369852, 101, 2),
('Ganapati', 'ganapati', 'ganapatihegde@gmail.com', 9353931174, 102, 1),
('Ganesh', 'ganesh', 'ganeshbhat@gmail.com', 9482297233, 102, 2),
('Savita ', 'savita', 'savitahegde@gmail.com', 9113500978, 103, 3),
('shreeganesh', 'nimda', 'himitr@gmail.com', 9611778055, 103, 2),
('Shreepad ', 'shreepad', 'shreepadhegde@gmail.com', 9481494204, 104, 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_type`
--

CREATE TABLE `login_type` (
  `UType` int(1) NOT NULL,
  `UserName` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_type`
--

INSERT INTO `login_type` (`UType`, `UserName`) VALUES
(1, 'Admin'),
(2, 'Supplier'),
(3, 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `paymentdetails`
--

CREATE TABLE `paymentdetails` (
  `pTRN` int(5) NOT NULL,
  `pDate` date NOT NULL,
  `sAadhar` bigint(12) NOT NULL,
  `amtPaid` double NOT NULL,
  `paymentMode` varchar(20) NOT NULL,
  `balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentdetails`
--

INSERT INTO `paymentdetails` (`pTRN`, `pDate`, `sAadhar`, `amtPaid`, `paymentMode`, `balance`) VALUES
(1, '2020-01-30', 890265704010, 400, 'cheque', 100),
(2, '2020-01-30', 890265705010, 550, 'online', 150);

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `rTRN` int(5) NOT NULL,
  `cAadhar` bigint(12) NOT NULL,
  `rDate` date NOT NULL,
  `rAmt` double NOT NULL,
  `balAmt` double NOT NULL,
  `paymentMode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`rTRN`, `cAadhar`, `rDate`, `rAmt`, `balAmt`, `paymentMode`) VALUES
(1, 723469712899, '2020-02-01', 500, 50, 'cheque'),
(2, 868469277021, '2020-02-02', 390, 0, 'Online');

-- --------------------------------------------------------

--
-- Table structure for table `salesdetails`
--

CREATE TABLE `salesdetails` (
  `sTRN` int(8) NOT NULL,
  `cAadhar` bigint(12) NOT NULL,
  `sDate` date NOT NULL,
  `sQty` float NOT NULL,
  `stockID` int(6) NOT NULL,
  `sRate` float NOT NULL,
  `sTotal` double NOT NULL,
  `did` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesdetails`
--

INSERT INTO `salesdetails` (`sTRN`, `cAadhar`, `sDate`, `sQty`, `stockID`, `sRate`, `sTotal`, `did`) VALUES
(1, 945280602070, '2020-01-23', 2, 121212, 30, 60, 101),
(2, 945280603080, '2020-01-22', 4, 353535, 30, 120, 102),
(4, 868469278031, '2020-02-25', 4, 141414, 28, 85, 104),
(5, 868469278031, '2020-02-24', 6, 121212, 34, 130, 103);

-- --------------------------------------------------------

--
-- Table structure for table `supplierinfo`
--

CREATE TABLE `supplierinfo` (
  `fullname` varchar(50) NOT NULL,
  `sAadhar` bigint(12) NOT NULL,
  `address` varchar(300) NOT NULL,
  `phoneno` bigint(10) NOT NULL,
  `did` int(5) NOT NULL,
  `bankacc` bigint(16) NOT NULL,
  `ifsc` varchar(12) NOT NULL,
  `balAmt` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplierinfo`
--

INSERT INTO `supplierinfo` (`fullname`, `sAadhar`, `address`, `phoneno`, `did`, `bankacc`, `ifsc`, `balAmt`) VALUES
('Shridhar', 224512342345, 'Goli', 9887766554, 103, 12312312345, 'KBT1011', 55),
('Shridhar', 234512342345, 'Goli', 9887766554, 102, 12312334211, 'KBT1011', 55),
('Sumana', 324156234123, 'Aalmane', 8876567656, 101, 12312312345, 'KBT1011', 68),
('Rajendra', 890265704010, 'Kalgar', 9845839622, 102, 1211359111262, 'KTB7029', 1350),
('Narayana', 890265705010, 'Kodsara', 9845839633, 103, 1211359111344, 'VIJ1101', 800),
('Upendra', 977812344321, 'Kalkai', 9483125715, 101, 111100011100181, 'VIJ1101', 2500),
('Manjunath', 977812347889, 'Golgod', 8073115144, 104, 111100011104040, 'SBI1101', 550);

-- --------------------------------------------------------

--
-- Table structure for table `supplydetails`
--

CREATE TABLE `supplydetails` (
  `trn` int(8) NOT NULL,
  `sAadhar` bigint(12) NOT NULL,
  `supplyDate` date NOT NULL,
  `FAT` float NOT NULL,
  `SNF` float NOT NULL,
  `qty` float NOT NULL,
  `RATE` double NOT NULL,
  `totalAmt` double NOT NULL,
  `stockID` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplydetails`
--

INSERT INTO `supplydetails` (`trn`, `sAadhar`, `supplyDate`, `FAT`, `SNF`, `qty`, `RATE`, `totalAmt`, `stockID`) VALUES
(1, 890265704010, '2020-01-22', 2, 8, 2, 26, 52, 121212),
(2, 977812344321, '2020-01-19', 1, 9, 1.5, 28, 42, 353535),
(3, 890265704010, '2020-02-19', 4.9, 4, 1, 30, 138, 121212),
(4, 890265704010, '2020-02-19', 4.9, 4, 1, 30, 138, 121212);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `closingstock`
--
ALTER TABLE `closingstock`
  ADD PRIMARY KEY (`stockID`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `customermaster`
--
ALTER TABLE `customermaster`
  ADD PRIMARY KEY (`cAadhar`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `dairydetails`
--
ALTER TABLE `dairydetails`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `fatandcost`
--
ALTER TABLE `fatandcost`
  ADD PRIMARY KEY (`fat`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`),
  ADD KEY `DairyID` (`DairyID`),
  ADD KEY `ut` (`UTy`);

--
-- Indexes for table `login_type`
--
ALTER TABLE `login_type`
  ADD PRIMARY KEY (`UType`);

--
-- Indexes for table `paymentdetails`
--
ALTER TABLE `paymentdetails`
  ADD PRIMARY KEY (`pTRN`),
  ADD KEY `Aadhar` (`sAadhar`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`rTRN`),
  ADD KEY `cAadhar` (`cAadhar`);

--
-- Indexes for table `salesdetails`
--
ALTER TABLE `salesdetails`
  ADD PRIMARY KEY (`sTRN`),
  ADD KEY `cAadhar` (`cAadhar`,`stockID`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `supplierinfo`
--
ALTER TABLE `supplierinfo`
  ADD PRIMARY KEY (`sAadhar`),
  ADD KEY `did` (`did`);

--
-- Indexes for table `supplydetails`
--
ALTER TABLE `supplydetails`
  ADD PRIMARY KEY (`trn`),
  ADD KEY `sAadhar` (`sAadhar`),
  ADD KEY `stockID` (`stockID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `closingstock`
--
ALTER TABLE `closingstock`
  ADD CONSTRAINT `fkdid` FOREIGN KEY (`did`) REFERENCES `dairydetails` (`did`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customermaster`
--
ALTER TABLE `customermaster`
  ADD CONSTRAINT `customermaster_ibfk_1` FOREIGN KEY (`did`) REFERENCES `dairydetails` (`did`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `paymentdetails`
--
ALTER TABLE `paymentdetails`
  ADD CONSTRAINT `paymentdetails_ibfk_1` FOREIGN KEY (`sAadhar`) REFERENCES `supplierinfo` (`sAadhar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `receipt`
--
ALTER TABLE `receipt`
  ADD CONSTRAINT `receipt_ibfk_1` FOREIGN KEY (`cAadhar`) REFERENCES `customermaster` (`cAadhar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salesdetails`
--
ALTER TABLE `salesdetails`
  ADD CONSTRAINT `salesdetails_ibfk_1` FOREIGN KEY (`cAadhar`) REFERENCES `customermaster` (`cAadhar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `supplierinfo`
--
ALTER TABLE `supplierinfo`
  ADD CONSTRAINT `supplierinfo_ibfk_1` FOREIGN KEY (`did`) REFERENCES `dairydetails` (`did`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `supplydetails`
--
ALTER TABLE `supplydetails`
  ADD CONSTRAINT `supplydetails_ibfk_1` FOREIGN KEY (`sAadhar`) REFERENCES `supplierinfo` (`sAadhar`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `supplydetails_ibfk_2` FOREIGN KEY (`stockID`) REFERENCES `closingstock` (`stockid`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
