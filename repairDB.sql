-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 03, 2013 at 09:03 PM
-- Server version: 5.5.25
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Repair Service DB 2`
--
CREATE DATABASE `Repair Service DB 2` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `Repair Service DB 2`;

-- --------------------------------------------------------

--
-- Table structure for table `Certification`
--

CREATE TABLE `Certification` (
  `certname` varchar(100) NOT NULL DEFAULT '',
  `expiry` date DEFAULT NULL,
  `techid` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`certname`,`techid`),
  KEY `techid` (`techid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Certification`
--

INSERT INTO `Certification` (`certname`, `expiry`, `techid`) VALUES('iOS Devices', '2013-06-21', 458468);
INSERT INTO `Certification` (`certname`, `expiry`, `techid`) VALUES('iOS Devices', '2013-04-26', 617575);
INSERT INTO `Certification` (`certname`, `expiry`, `techid`) VALUES('iOS Devices', '2013-07-22', 783783);
INSERT INTO `Certification` (`certname`, `expiry`, `techid`) VALUES('Mac OS X Server', '2013-09-25', 458468);
INSERT INTO `Certification` (`certname`, `expiry`, `techid`) VALUES('Mac Technician', '2013-08-22', 458468);
INSERT INTO `Certification` (`certname`, `expiry`, `techid`) VALUES('Mac Technician', '2013-11-11', 617575);
INSERT INTO `Certification` (`certname`, `expiry`, `techid`) VALUES('Mac Technician', '2013-06-05', 783783);

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE `Customer` (
  `customerid` int(10) NOT NULL AUTO_INCREMENT,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `phoneno` varchar(10) NOT NULL,
  `postalcode` varchar(6) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`customerid`, `fname`, `lname`, `phoneno`, `postalcode`, `email`) VALUES(1, 'Andy', 'Warhol', '5963905533', 'L2N1S8', 'warhola@gmail.com');
INSERT INTO `Customer` (`customerid`, `fname`, `lname`, `phoneno`, `postalcode`, `email`) VALUES(2, 'Diane', 'Donnelly', '9820732278', 'T2V2W2', 'dd@gmail.com');
INSERT INTO `Customer` (`customerid`, `fname`, `lname`, `phoneno`, `postalcode`, `email`) VALUES(3, 'Doyle', 'Wallace', '8138975189', 'V6M1Y8', 'wallacedoy@gmail.com');
INSERT INTO `Customer` (`customerid`, `fname`, `lname`, `phoneno`, `postalcode`, `email`) VALUES(4, 'Jeffery', 'Bronner', '4565021754', 'V9T5H3', 'jeffbro@yahoo.ca');
INSERT INTO `Customer` (`customerid`, `fname`, `lname`, `phoneno`, `postalcode`, `email`) VALUES(5, 'Charley', 'Rix', '7277975341', 'M4P1A6', 'rixychar@live.com');
INSERT INTO `Customer` (`customerid`, `fname`, `lname`, `phoneno`, `postalcode`, `email`) VALUES(6, 'Mary', 'Irving', '6382228041', 'H3C5K4', 'imary@rogers.com');
INSERT INTO `Customer` (`customerid`, `fname`, `lname`, `phoneno`, `postalcode`, `email`) VALUES(7, 'Jackie', 'Beavers', '5169386261', 'T0C2S0', 'jbeaves@gmail.com');
INSERT INTO `Customer` (`customerid`, `fname`, `lname`, `phoneno`, `postalcode`, `email`) VALUES(8, 'Beverly', 'Thacker', '2539931995', 'P3E5K3', 'thackattack@icloud.com');
INSERT INTO `Customer` (`customerid`, `fname`, `lname`, `phoneno`, `postalcode`, `email`) VALUES(9, 'Jeffrey', 'Boulay', '3365088456', 'H3B4W8', 'jboulay@hotmail.com');
INSERT INTO `Customer` (`customerid`, `fname`, `lname`, `phoneno`, `postalcode`, `email`) VALUES(10, 'James', 'Force', '2883999624', 'T5C2L2', 'jamestheforce@ymail.co.uk');

-- --------------------------------------------------------

--
-- Table structure for table `Employee`
--

CREATE TABLE `Employee` (
  `techid` int(6) NOT NULL AUTO_INCREMENT,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `ssn` varchar(9) NOT NULL,
  `address` varchar(200) NOT NULL,
  `storeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`techid`),
  UNIQUE KEY `ssn` (`ssn`),
  KEY `storeid` (`storeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=987655 ;

--
-- Dumping data for table `Employee`
--

INSERT INTO `Employee` (`techid`, `fname`, `lname`, `ssn`, `address`, `storeid`) VALUES(458468, 'Sam', 'Novak', '123456789', '10 Langdon Dr. King City, Ontario, Canada', 1);
INSERT INTO `Employee` (`techid`, `fname`, `lname`, `ssn`, `address`, `storeid`) VALUES(617575, 'Jordan', 'Rae', '123498765', '1600 Pennsylvania Ave, Washington, DC US', 3);
INSERT INTO `Employee` (`techid`, `fname`, `lname`, `ssn`, `address`, `storeid`) VALUES(783783, 'Mike', 'Suderman', '987654321', '742 Evergreen Terrace, Springfield USA', 7);
INSERT INTO `Employee` (`techid`, `fname`, `lname`, `ssn`, `address`, `storeid`) VALUES(987654, 'John', 'Smith', '666777888', '400 University Ave, Toronto, Ontario Canada', 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Part_Count`
--
CREATE TABLE `Part_Count` (
`pcount` bigint(21)
);
-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE `Product` (
  `pname` varchar(50) DEFAULT NULL,
  `serialno` varchar(12) NOT NULL DEFAULT '',
  `warexpiry` date DEFAULT NULL,
  `customerid` int(10) DEFAULT NULL,
  PRIMARY KEY (`serialno`),
  KEY `customerid` (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`pname`, `serialno`, `warexpiry`, `customerid`) VALUES('Macbook Air 13', 'C02143658798', '2013-06-29', 1);
INSERT INTO `Product` (`pname`, `serialno`, `warexpiry`, `customerid`) VALUES('iPhone 5', 'C47888968450', '2013-08-01', 3);
INSERT INTO `Product` (`pname`, `serialno`, `warexpiry`, `customerid`) VALUES('iPod Touch', 'G01249247795', '2012-09-19', 1);
INSERT INTO `Product` (`pname`, `serialno`, `warexpiry`, `customerid`) VALUES('Macbook Air 13', 'G15953031792', '2013-12-28', 6);
INSERT INTO `Product` (`pname`, `serialno`, `warexpiry`, `customerid`) VALUES('iPad Mini', 'G92263851570', '2012-02-02', 8);
INSERT INTO `Product` (`pname`, `serialno`, `warexpiry`, `customerid`) VALUES('Macbook Pro 13', 'Q36605343347', '2012-10-11', 10);
INSERT INTO `Product` (`pname`, `serialno`, `warexpiry`, `customerid`) VALUES('iPhone 4', 'R03095211190', '2011-07-06', 2);
INSERT INTO `Product` (`pname`, `serialno`, `warexpiry`, `customerid`) VALUES('Mac Mini', 'R09243686371', '2011-10-19', 7);
INSERT INTO `Product` (`pname`, `serialno`, `warexpiry`, `customerid`) VALUES('Macbook Air 11', 'W13032390061', '2013-03-11', 9);
INSERT INTO `Product` (`pname`, `serialno`, `warexpiry`, `customerid`) VALUES('Macbook Pro 13', 'W33857026373', '2013-08-30', 8);
INSERT INTO `Product` (`pname`, `serialno`, `warexpiry`, `customerid`) VALUES('iPad 2', 'W39482582022', '2011-04-12', 1);
INSERT INTO `Product` (`pname`, `serialno`, `warexpiry`, `customerid`) VALUES('iPhone 3GS', 'W57565592497', '2008-05-02', 4);
INSERT INTO `Product` (`pname`, `serialno`, `warexpiry`, `customerid`) VALUES('iMac 27', 'W77135846011', '2013-03-28', 4);
INSERT INTO `Product` (`pname`, `serialno`, `warexpiry`, `customerid`) VALUES('Mac Pro', 'X93929253079', '2011-01-24', 3);
INSERT INTO `Product` (`pname`, `serialno`, `warexpiry`, `customerid`) VALUES('iMac 21', 'Y40117229179', '2013-10-30', 5);
INSERT INTO `Product` (`pname`, `serialno`, `warexpiry`, `customerid`) VALUES('iMac 21', 'Z38884476481', '2010-08-04', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Repair Notes`
--

CREATE TABLE `Repair Notes` (
  `title` varchar(100) NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `body` text,
  `techid` int(6) DEFAULT NULL,
  `repairid` int(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`title`,`created`,`repairid`),
  KEY `techid` (`techid`),
  KEY `repairid` (`repairid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Repair Notes`
--

INSERT INTO `Repair Notes` (`title`, `created`, `body`, `techid`, `repairid`) VALUES('Check in for repair', '2013-04-01 17:25:51', 'Unit will not power on. Customer states that Mac would not turn on after shutdown. ', 458468, 1);
INSERT INTO `Repair Notes` (`title`, `created`, `body`, `techid`, `repairid`) VALUES('Initial Assessment', '2013-04-05 03:39:19', 'Screen is cracked and non-functional', 783783, 14);
INSERT INTO `Repair Notes` (`title`, `created`, `body`, `techid`, `repairid`) VALUES('Repair status update', '2013-04-01 17:27:13', 'Disassembled Mac. Visual inspection.\n\nBeginning repair.\n\n', 617575, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `Repair_Count`
--
CREATE TABLE `Repair_Count` (
`rcount` bigint(21)
);
-- --------------------------------------------------------

--
-- Table structure for table `Repairs`
--

CREATE TABLE `Repairs` (
  `repairid` int(7) NOT NULL AUTO_INCREMENT,
  `serialno` varchar(12) NOT NULL,
  `created` date NOT NULL,
  `completed` date DEFAULT NULL,
  `storeid` int(3) NOT NULL,
  `signature` tinyint(4) NOT NULL DEFAULT '0',
  `safety` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`repairid`),
  KEY `storeid` (`storeid`),
  KEY `serialno` (`serialno`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `Repairs`
--

INSERT INTO `Repairs` (`repairid`, `serialno`, `created`, `completed`, `storeid`, `signature`, `safety`) VALUES(1, 'C02143658798', '2013-03-04', NULL, 1, 0, 0);
INSERT INTO `Repairs` (`repairid`, `serialno`, `created`, `completed`, `storeid`, `signature`, `safety`) VALUES(2, 'C47888968450', '2013-03-19', '2013-03-21', 2, 1, 0);
INSERT INTO `Repairs` (`repairid`, `serialno`, `created`, `completed`, `storeid`, `signature`, `safety`) VALUES(3, 'R09243686371', '2013-03-31', NULL, 6, 0, 0);
INSERT INTO `Repairs` (`repairid`, `serialno`, `created`, `completed`, `storeid`, `signature`, `safety`) VALUES(4, 'G15953031792', '2013-03-28', NULL, 3, 0, 0);
INSERT INTO `Repairs` (`repairid`, `serialno`, `created`, `completed`, `storeid`, `signature`, `safety`) VALUES(5, 'G92263851570', '2013-03-27', '2013-03-29', 4, 1, 0);
INSERT INTO `Repairs` (`repairid`, `serialno`, `created`, `completed`, `storeid`, `signature`, `safety`) VALUES(6, 'Z38884476481', '2013-03-07', '2013-03-09', 5, 1, 1);
INSERT INTO `Repairs` (`repairid`, `serialno`, `created`, `completed`, `storeid`, `signature`, `safety`) VALUES(7, 'W33857026373', '2013-02-11', '2013-02-28', 7, 1, 0);
INSERT INTO `Repairs` (`repairid`, `serialno`, `created`, `completed`, `storeid`, `signature`, `safety`) VALUES(8, 'W13032390061', '2013-02-11', '2013-02-13', 1, 1, 0);
INSERT INTO `Repairs` (`repairid`, `serialno`, `created`, `completed`, `storeid`, `signature`, `safety`) VALUES(9, 'Y40117229179', '2012-07-13', '2012-07-18', 2, 1, 1);
INSERT INTO `Repairs` (`repairid`, `serialno`, `created`, `completed`, `storeid`, `signature`, `safety`) VALUES(10, 'W77135846011', '2012-05-19', '2012-05-22', 3, 1, 0);
INSERT INTO `Repairs` (`repairid`, `serialno`, `created`, `completed`, `storeid`, `signature`, `safety`) VALUES(11, 'W57565592497', '2013-03-11', NULL, 4, 0, 0);
INSERT INTO `Repairs` (`repairid`, `serialno`, `created`, `completed`, `storeid`, `signature`, `safety`) VALUES(12, 'W39482582022', '2013-03-29', NULL, 5, 0, 0);
INSERT INTO `Repairs` (`repairid`, `serialno`, `created`, `completed`, `storeid`, `signature`, `safety`) VALUES(13, 'Q36605343347', '2013-03-30', NULL, 6, 0, 0);
INSERT INTO `Repairs` (`repairid`, `serialno`, `created`, `completed`, `storeid`, `signature`, `safety`) VALUES(14, 'X93929253079', '2013-03-30', NULL, 7, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Service Parts`
--

CREATE TABLE `Service Parts` (
  `partno` int(7) NOT NULL,
  `description` varchar(200) NOT NULL,
  `partserial` int(12) NOT NULL DEFAULT '0',
  `price` float NOT NULL,
  `storeid` int(3) NOT NULL,
  `repairid` int(7) DEFAULT NULL,
  PRIMARY KEY (`partno`,`partserial`),
  KEY `storeid` (`storeid`),
  KEY `repairid` (`repairid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Service Parts`
--

INSERT INTO `Service Parts` (`partno`, `description`, `partserial`, `price`, `storeid`, `repairid`) VALUES(6612290, 'Display iPhone 5', 1, 132.35, 6, NULL);
INSERT INTO `Service Parts` (`partno`, `description`, `partserial`, `price`, `storeid`, `repairid`) VALUES(6612290, 'Display iPhone 5', 2, 132.35, 2, 2);
INSERT INTO `Service Parts` (`partno`, `description`, `partserial`, `price`, `storeid`, `repairid`) VALUES(6612321, 'Optical Drive Macbook Pro ', 1, 86.21, 5, NULL);
INSERT INTO `Service Parts` (`partno`, `description`, `partserial`, `price`, `storeid`, `repairid`) VALUES(6612321, 'Optical Drive Macbook Pro ', 2, 86.21, 2, NULL);
INSERT INTO `Service Parts` (`partno`, `description`, `partserial`, `price`, `storeid`, `repairid`) VALUES(6612321, 'Optical Drive Mac Mini ', 3, 86.21, 6, 3);
INSERT INTO `Service Parts` (`partno`, `description`, `partserial`, `price`, `storeid`, `repairid`) VALUES(6612323, 'Display Clamshell 13" Macbook Pro ', 1, 556.7, 7, 7);
INSERT INTO `Service Parts` (`partno`, `description`, `partserial`, `price`, `storeid`, `repairid`) VALUES(6612323, 'Display Clamshell 13" Macbook Pro ', 2, 556.7, 6, 13);
INSERT INTO `Service Parts` (`partno`, `description`, `partserial`, `price`, `storeid`, `repairid`) VALUES(6614545, 'Top Case with Trackpad Macbook Pro 13"', 1, 123.23, 6, NULL);
INSERT INTO `Service Parts` (`partno`, `description`, `partserial`, `price`, `storeid`, `repairid`) VALUES(6614545, 'Top Case with Trackpad Macbook Pro 13"', 2, 123.23, 7, 7);
INSERT INTO `Service Parts` (`partno`, `description`, `partserial`, `price`, `storeid`, `repairid`) VALUES(6614546, 'Top Case with Trackpad Macbook Pro 15"', 1, 212.12, 1, NULL);
INSERT INTO `Service Parts` (`partno`, `description`, `partserial`, `price`, `storeid`, `repairid`) VALUES(6614546, 'Top Case with Trackpad Macbook Pro 15"', 2, 212.12, 3, NULL);
INSERT INTO `Service Parts` (`partno`, `description`, `partserial`, `price`, `storeid`, `repairid`) VALUES(6615258, 'Hard Drive 500 GB SATA', 1, 69.89, 7, 14);
INSERT INTO `Service Parts` (`partno`, `description`, `partserial`, `price`, `storeid`, `repairid`) VALUES(6615565, 'Main Logic Board 1.8Ghz MBA', 1, 289.69, 1, 1);
INSERT INTO `Service Parts` (`partno`, `description`, `partserial`, `price`, `storeid`, `repairid`) VALUES(6615565, 'Main Logic Board 1.8Ghz MBA', 2, 289.69, 2, NULL);
INSERT INTO `Service Parts` (`partno`, `description`, `partserial`, `price`, `storeid`, `repairid`) VALUES(6615565, 'Main Logic Board 1.8Ghz MBA', 3, 289.69, 7, NULL);
INSERT INTO `Service Parts` (`partno`, `description`, `partserial`, `price`, `storeid`, `repairid`) VALUES(6615565, 'Main Logic Board 1.8Ghz MBA', 4, 289.69, 3, 4);
INSERT INTO `Service Parts` (`partno`, `description`, `partserial`, `price`, `storeid`, `repairid`) VALUES(6615565, 'Main Logic Board 1.8Ghz MBA', 5, 289.69, 4, NULL);
INSERT INTO `Service Parts` (`partno`, `description`, `partserial`, `price`, `storeid`, `repairid`) VALUES(6617675, '27" LCD Panel', 1, 545.78, 2, NULL);
INSERT INTO `Service Parts` (`partno`, `description`, `partserial`, `price`, `storeid`, `repairid`) VALUES(6617675, '21" LCD Panel', 2, 545.78, 5, 6);
INSERT INTO `Service Parts` (`partno`, `description`, `partserial`, `price`, `storeid`, `repairid`) VALUES(6617675, '27" LCD Panel', 3, 545.78, 1, 9);
INSERT INTO `Service Parts` (`partno`, `description`, `partserial`, `price`, `storeid`, `repairid`) VALUES(6619090, 'Display iPhone 3GS', 1, 129.3, 4, 11);

-- --------------------------------------------------------

--
-- Table structure for table `Store`
--

CREATE TABLE `Store` (
  `storeid` int(3) NOT NULL AUTO_INCREMENT,
  `phoneno` varchar(10) NOT NULL,
  `addstrt` varchar(20) NOT NULL,
  `addcity` varchar(20) NOT NULL,
  `addctry` varchar(20) NOT NULL,
  PRIMARY KEY (`storeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `Store`
--

INSERT INTO `Store` (`storeid`, `phoneno`, `addstrt`, `addcity`, `addctry`) VALUES(1, '4165555555', '1 Yonge Street', 'Toronto', 'Canada');
INSERT INTO `Store` (`storeid`, `phoneno`, `addstrt`, `addcity`, `addctry`) VALUES(2, '9055555555', '1600 Bathurst Street', 'Richmond Hill', 'Canada');
INSERT INTO `Store` (`storeid`, `phoneno`, `addstrt`, `addcity`, `addctry`) VALUES(3, '9051570647', '1846 Queen St W', 'Toronto', 'Canada');
INSERT INTO `Store` (`storeid`, `phoneno`, `addstrt`, `addcity`, `addctry`) VALUES(4, '5122836906', '1252 5th Avenue', 'New York', 'USA');
INSERT INTO `Store` (`storeid`, `phoneno`, `addstrt`, `addcity`, `addctry`) VALUES(5, '6473278852', '753 Congress Ave', 'Austin', 'USA');
INSERT INTO `Store` (`storeid`, `phoneno`, `addstrt`, `addcity`, `addctry`) VALUES(6, '5198261010', '22 Ashbury Street', 'San Francisco ', 'USA');
INSERT INTO `Store` (`storeid`, `phoneno`, `addstrt`, `addcity`, `addctry`) VALUES(7, '8129089855', 'Rue Charles du Gaull', 'Paris', 'France');

-- --------------------------------------------------------

--
-- Structure for view `Part_Count`
--
DROP TABLE IF EXISTS `Part_Count`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Part_Count` AS select count(`P`.`partno`) AS `pcount` from `Service Parts` `P` where (`P`.`repairid` is not null);

-- --------------------------------------------------------

--
-- Structure for view `Repair_Count`
--
DROP TABLE IF EXISTS `Repair_Count`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Repair_Count` AS select count(`R`.`repairid`) AS `rcount` from `Repairs` `R`;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Certification`
--
ALTER TABLE `Certification`
  ADD CONSTRAINT `Certification_ibfk_1` FOREIGN KEY (`techid`) REFERENCES `Employee` (`techid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `Employee`
--
ALTER TABLE `Employee`
  ADD CONSTRAINT `Employee_ibfk_1` FOREIGN KEY (`storeid`) REFERENCES `Store` (`storeid`);

--
-- Constraints for table `Product`
--
ALTER TABLE `Product`
  ADD CONSTRAINT `Product_ibfk_1` FOREIGN KEY (`customerid`) REFERENCES `Customer` (`customerid`);

--
-- Constraints for table `Repair Notes`
--
ALTER TABLE `Repair Notes`
  ADD CONSTRAINT `Repair@0020Notes_ibfk_1` FOREIGN KEY (`techid`) REFERENCES `Employee` (`techid`),
  ADD CONSTRAINT `Repair@0020Notes_ibfk_2` FOREIGN KEY (`repairid`) REFERENCES `Repairs` (`repairid`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `Repairs`
--
ALTER TABLE `Repairs`
  ADD CONSTRAINT `Repairs_ibfk_1` FOREIGN KEY (`storeid`) REFERENCES `Store` (`storeid`),
  ADD CONSTRAINT `Repairs_ibfk_2` FOREIGN KEY (`serialno`) REFERENCES `Product` (`serialno`);

--
-- Constraints for table `Service Parts`
--
ALTER TABLE `Service Parts`
  ADD CONSTRAINT `Service@0020Parts_ibfk_1` FOREIGN KEY (`storeid`) REFERENCES `Store` (`storeid`),
  ADD CONSTRAINT `Service@0020Parts_ibfk_2` FOREIGN KEY (`repairid`) REFERENCES `Repairs` (`repairid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
