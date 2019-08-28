-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 16, 2017 at 09:29 PM
-- Server version: 5.5.54-0+deb8u1
-- PHP Version: 5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gymnastics`
--

-- --------------------------------------------------------

--
-- Table structure for table `COMPETITOR`
--

CREATE TABLE IF NOT EXISTS `COMPETITOR` (
`ID` int(10) unsigned NOT NULL,
  `Level` int(11) NOT NULL,
  `Sex` enum('M','F') COLLATE utf8_unicode_ci NOT NULL,
  `Team_ID` int(10) unsigned DEFAULT NULL,
  `Deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `COMPETITOR`
--

INSERT INTO `COMPETITOR` (`ID`, `Level`, `Sex`, `Team_ID`, `Deleted`) VALUES
(1, 1, 'M', 1, 0),
(2, 1, 'M', 1, 0),
(4, 5, 'M', 2, 0),
(5, 4, 'F', 2, 0),
(14, 1, 'M', NULL, 0),
(15, 1, 'M', NULL, 1),
(16, 1, 'M', NULL, 0),
(21, 1, 'F', NULL, 0),
(22, 1, 'M', NULL, 0),
(23, 1, 'F', NULL, 0),
(24, 1, 'M', NULL, 0),
(25, 1, 'M', NULL, 1),
(26, 1, 'M', NULL, 0),
(27, 1, 'M', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `COMPETITOR_COMPETES_AT`
--

CREATE TABLE IF NOT EXISTS `COMPETITOR_COMPETES_AT` (
  `Meet_ID` int(10) unsigned NOT NULL,
  `Competitor_ID` int(10) unsigned NOT NULL,
  `Fee_Paid` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `COMPETITOR_COMPETES_AT`
--

INSERT INTO `COMPETITOR_COMPETES_AT` (`Meet_ID`, `Competitor_ID`, `Fee_Paid`) VALUES
(3, 15, 1),
(3, 2, 1),
(3, 4, 1),
(3, 5, 1),
(3, 14, 1),
(3, 16, 1),
(3, 21, 1),
(3, 22, 1),
(3, 23, 1),
(3, 24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `COMPETITOR_ID`
--

CREATE TABLE IF NOT EXISTS `COMPETITOR_ID` (
  `User` int(10) unsigned NOT NULL,
  `Competitor` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `COMPETITOR_ID`
--

INSERT INTO `COMPETITOR_ID` (`User`, `Competitor`) VALUES
(23, 2),
(25, 4),
(26, 5),
(34, 14),
(35, 15),
(37, 16),
(43, 22),
(46, 23),
(48, 24),
(49, 25),
(54, 26),
(55, 27);

-- --------------------------------------------------------

--
-- Table structure for table `EMERGENCY_CONTACT`
--

CREATE TABLE IF NOT EXISTS `EMERGENCY_CONTACT` (
  `Competitor_ID` int(10) unsigned NOT NULL,
  `Emergency_F_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Emergency_L_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Emergency_Phone` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `Emergency_Email` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `Emergency_Street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Emergency_City` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Emergency_State` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `Emergency_ZIP` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `Emergency_Relationship` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `EMERGENCY_CONTACT`
--

INSERT INTO `EMERGENCY_CONTACT` (`Competitor_ID`, `Emergency_F_Name`, `Emergency_L_Name`, `Emergency_Phone`, `Emergency_Email`, `Emergency_Street`, `Emergency_City`, `Emergency_State`, `Emergency_ZIP`, `Emergency_Relationship`) VALUES
(21, 'Emergency', 'Contact', '2122122121', 'emergency.contact@email.com', '1 Address St.', 'New York', 'NY', '10000', 'Mother'),
(22, 'Houston', 'Police', '911', 'popo@houstonpolice.org', '1200 Travis St.', 'Houston', 'TX', '77020', 'Boss'),
(23, 'Pat', 'Smith', '3893913911', 'pat.smith@example.com', '654 Grand Ave', 'Houston', 'TX', '77050', 'Father'),
(24, 'Test', 'Name', '911', 'really', '123 ', 'H tine', 'TX', '6969', 'dude'),
(25, 'sfsdf', 'dfs', '911', 'sdfsf', '123 fake st ', 'Houston', 'TX', '7070', 'sdfsdf'),
(26, 'Jorge', 'Kettle', '6667778888', 'kettle@aol.com', '55 Blue St. ', 'Houston', 'TX', '77008', 'Father'),
(27, 'Carol', 'Green', '6667778888', 'carol@yahoo.com', '600 Doggo Lane ', 'Houston', 'TX', '77007', 'Mother');

-- --------------------------------------------------------

--
-- Table structure for table `EVENT`
--

CREATE TABLE IF NOT EXISTS `EVENT` (
`Event_ID` int(11) NOT NULL,
  `Meet_ID` int(10) unsigned NOT NULL,
  `Competitor_ID` int(10) unsigned NOT NULL,
  `Event_Type` enum('vault','uneven bars','balance beam','floor','pommel horse','still rings','parallel bars','horizontal bar') COLLATE utf8_unicode_ci NOT NULL,
  `Time` time NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `EVENT`
--

INSERT INTO `EVENT` (`Event_ID`, `Meet_ID`, `Competitor_ID`, `Event_Type`, `Time`, `Date`) VALUES
(1, 1, 1, 'vault', '18:30:00', '2017-04-20'),
(8, 1, 1, 'uneven bars', '18:40:06', '2017-09-25'),
(17, 1, 4, 'pommel horse', '18:00:00', '2017-04-05'),
(18, 1, 2, 'pommel horse', '18:30:00', '2017-04-05'),
(23, 6, 2, 'pommel horse', '05:50:00', '2020-10-08'),
(25, 3, 15, 'balance beam', '19:20:00', '2017-04-15'),
(26, 3, 2, 'balance beam', '23:04:00', '2017-04-15'),
(27, 3, 4, 'pommel horse', '23:05:00', '2017-04-15'),
(28, 3, 4, 'balance beam', '20:30:00', '2017-04-15'),
(29, 3, 5, 'horizontal bar', '21:00:00', '2017-04-15'),
(30, 3, 22, 'parallel bars', '20:00:00', '2017-04-15');

-- --------------------------------------------------------

--
-- Table structure for table `FEE`
--

CREATE TABLE IF NOT EXISTS `FEE` (
  `level` int(11) NOT NULL,
  `cost` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `FEE`
--

INSERT INTO `FEE` (`level`, `cost`) VALUES
(0, 5),
(1, 5),
(2, 10),
(3, 52),
(4, 20),
(5, 25);

-- --------------------------------------------------------

--
-- Table structure for table `LOGIN`
--

CREATE TABLE IF NOT EXISTS `LOGIN` (
`ID_Login` int(10) unsigned NOT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Password` char(40) COLLATE utf8_unicode_ci NOT NULL,
  `First_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Last_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Date_Of_Birth` date NOT NULL,
  `Phone` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `Street` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `City` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `State` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `ZIP` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `Registration_Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `LOGIN`
--

INSERT INTO `LOGIN` (`ID_Login`, `Email`, `Password`, `First_Name`, `Last_Name`, `Date_Of_Birth`, `Phone`, `Street`, `City`, `State`, `ZIP`, `Registration_Date`, `Deleted`) VALUES
(23, 'cheryl@gmail.com', '162d15a0c695fc8cf15dc1993a627e676194f59e', 'Cheryl', 'Macbeths', '1980-09-05', '7131237890', '1234 Houston Park', 'Houston', 'TX', '77017', '2017-03-31 05:00:00', 0),
(25, 'someEmail@att.com', 'b5688dd3ea591885147de8a26205d463b6a9f22f', 'John', 'Doe', '1990-04-01', '8321237841', '1234 Rei Street', 'Houston', 'TX', '77001', '2017-04-02 16:30:26', 0),
(26, 'ghost@whaddup.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Ayy', 'LMAO', '1997-09-28', '832768123', '789 Kop Street', 'Houston', 'TX', '77090', '2017-04-04 17:44:09', 0),
(34, 'pres1@whitehouse.gov', '61f920d817d077e169e6522f05a1e7477cb04ee9', 'George', 'Washington', '1732-02-22', '571123456', '1 President Rd', 'Alexandria', 'VA', '12345', '2017-04-09 05:36:35', 0),
(35, 'test@test.com', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3', 'John', 'Test', '2000-01-01', '111222333', '1234 Test St.', 'Test', 'AL', '54321', '2017-04-09 20:14:11', 1),
(36, 'admin@cooggym.com', 'f8eca2a003a66d0d612f2838a29e181b7905e927', 'Admin', 'McAdministrator', '1996-04-03', '7131231235', '1337 Admin Blvd.', 'Houston', 'TX', '77889', '2017-04-09 21:20:21', 0),
(37, 'dead@email.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Mike', 'Jones', '2004-11-15', '281330800', '123 Fake st', 'Houston', 'TX', '77070', '2017-04-10 13:55:48', 0),
(43, 'pimp69@hotmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'David', 'Nuno', '2001-09-09', '281330800', '123 Fake Ave', 'Houston', 'TX', '77050', '2017-04-10 22:34:19', 0),
(46, 'steph.smith@example.com', 'e87cd7a481a2d0093b3eb5c07693f6e328984fc6', 'Stephanie', 'Smith', '1997-10-20', '3893893893', '654 Grand Ave', 'Houston', 'TX', '77050', '2017-04-11 02:07:23', 0),
(47, 'sven@example.com', 'd11f1228ca1608b1fbd7410d29cf6a59c11b6c15', 'Sven', 'Bjornsson', '1993-01-02', '7134445555', '753 Test Ter', 'Houston', 'TX', '77020', '2017-04-11 02:31:26', 0),
(48, 'test@email.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'John', 'Doe', '2005-01-24', '2813308004', '123 Fake st ', 'H Town', 'TX', '77060', '2017-04-11 22:40:49', 0),
(49, 'competitor@email.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Competitor', 'Test', '1010-10-10', '1231212331', '123 fake st ', 'Houston', 'TX', '7070', '2017-04-12 01:01:13', 1),
(52, 'james.judge@email.org', '13b5a2f04ab67682c8b02ff0749e0d219db591d5', 'James', 'Judge', '1980-08-13', '7137568000', '523 Grand Ave.', 'Houston', 'TX', '77050', '2017-04-16 03:56:56', 0),
(53, 'christina83194@yahoo.com', 'fb02815abc9db018b86d50ff6448fbd071be302a', 'Christins', 'Ochsner', '1994-08-31', '5555555555', '444 maple st', 'Maple', 'TX', '77006', '2017-04-16 17:04:33', 0),
(54, 'will@yahoo.com', 'dfdd7bce2ad9f89d7204dd83161d66d1e521759c', 'Chris', 'willams', '1990-09-17', '5555555555', '565 Garage Rd ', 'Houston', 'TX', '77005', '2017-04-16 17:54:24', 0),
(55, 'fred@gmail.com', '31017a722665e4afce586950f42944a6d331dabf', 'Fred', 'Green', '1990-09-30', '4446667070', '555 Frankenstein St. ', 'Austin', 'TX', '77600', '2017-04-16 21:26:35', 0),
(56, 'emily.judgeson@test.com', '23ff2556d2ed337e854416b14d63901d0e2c67cc', 'Emily', 'Judgeson', '1980-04-16', '7136326321', '486 Judge''s Ct.', 'Houston', 'TX', '77002', '2017-04-16 21:56:09', 0),
(57, 'dungo@gmail.com', '563b11878849734bd2253dd0b4fc0bd83cb6a214', 'George', 'Dung', '1990-09-17', '6667779090', '565 Garage Rd', 'Dung', 'AL', '80808', '2017-04-16 22:05:40', 0);

-- --------------------------------------------------------

--
-- Table structure for table `MEET`
--

CREATE TABLE IF NOT EXISTS `MEET` (
`ID` int(11) unsigned NOT NULL,
  `Location_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `City` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `State` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `ZIP` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Competition_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MEET`
--

INSERT INTO `MEET` (`ID`, `Location_Name`, `Street`, `City`, `State`, `ZIP`, `Date`, `Time`, `Competition_Name`, `Deleted`) VALUES
(1, 'University Of Houston Rec. Center', '4500 University Dr.', 'Houston', 'TX', '77050', '2017-04-05', '17:30:00', 'Progress Competitio', 0),
(2, 'LOBA Gymnastics', '123 Fakes St.', 'Houston', 'TX', '77004', '2017-03-22', '17:30:00', 'Lazy Competition', 0),
(3, 'Flippin'' Awesome Gymnastics', '6673 Gymnastics Blvd.', 'Houston', 'TX', '77020', '2017-04-15', '10:00:00', 'Houston Bimonthly', 0),
(4, 'Locs', '123 Fake', 'Houston', 'TX', '6969', '2005-10-05', '01:50:00', 'Compeman', 0),
(6, 'White House 2', '1600 Pennsylvania Ave', 'Washington', 'DC', '69696', '2017-01-20', '11:00:00', 'Clown Competitions', 0),
(7, 'Coog House', '1234 Cal Hawk', 'Houston', 'TX', '77092', '2020-08-01', '15:00:00', 'Water', 0),
(8, 'Killer Gyms', '4444 Pear St', 'Houston', 'TX', '77008', '1980-09-18', '08:19:00', 'FTW', 0);

-- --------------------------------------------------------

--
-- Table structure for table `SCORES`
--

CREATE TABLE IF NOT EXISTS `SCORES` (
  `Event_ID` int(10) unsigned NOT NULL,
  `Judge_ID` int(10) unsigned NOT NULL,
  `Exec_Score` smallint(5) unsigned NOT NULL,
  `Diff_Score` smallint(5) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SCORES`
--

INSERT INTO `SCORES` (`Event_ID`, `Judge_ID`, `Exec_Score`, `Diff_Score`) VALUES
(25, 2, 8, 8),
(25, 9, 7, 9),
(26, 2, 7, 8),
(26, 9, 9, 5),
(27, 2, 9, 3),
(27, 9, 4, 8),
(28, 2, 7, 7),
(28, 9, 7, 6),
(29, 2, 8, 7),
(29, 9, 9, 7),
(30, 2, 10, 10),
(30, 9, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `STAFF`
--

CREATE TABLE IF NOT EXISTS `STAFF` (
  `SSN` char(9) COLLATE utf8_unicode_ci NOT NULL,
  `Job_Title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Hourly_Wage` float NOT NULL,
`Staff_ID` int(11) unsigned NOT NULL,
  `Is_Admin` tinyint(1) NOT NULL DEFAULT '0',
  `Is_Judge` tinyint(1) NOT NULL DEFAULT '0',
  `Deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `STAFF`
--

INSERT INTO `STAFF` (`SSN`, `Job_Title`, `Hourly_Wage`, `Staff_ID`, `Is_Admin`, `Is_Judge`, `Deleted`) VALUES
('101222339', 'Entrance Stopper', 15, 1, 0, 0, 0),
('111223333', 'Tester', 10, 8, 0, 0, 0),
('123121234', 'Database Administrator', 40, 2, 1, 1, 0),
('147857412', 'Judge', 15, 9, 0, 1, 0),
('555555555', 'janitor', 5, 10, 1, 0, 0),
('666778888', 'Handyman', 12, 12, 0, 0, 0),
('789456123', 'Judge', 15, 11, 0, 0, 0);

--
-- Triggers `STAFF`
--
DELIMITER //
CREATE TRIGGER `JUDGE_CHECK` BEFORE UPDATE ON `STAFF`
 FOR EACH ROW IF NEW.Is_Admin THEN
    	SET NEW.Is_Judge = 1;
    END IF
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `STAFF_ID`
--

CREATE TABLE IF NOT EXISTS `STAFF_ID` (
  `User` int(10) unsigned NOT NULL,
  `Staff` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `STAFF_ID`
--

INSERT INTO `STAFF_ID` (`User`, `Staff`) VALUES
(36, 2),
(47, 8),
(52, 9),
(53, 10),
(56, 11),
(57, 12);

-- --------------------------------------------------------

--
-- Table structure for table `TEAM`
--

CREATE TABLE IF NOT EXISTS `TEAM` (
`Team_ID` int(10) unsigned NOT NULL,
  `Team_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `City` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `State` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `ZIP` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `Deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `TEAM`
--

INSERT INTO `TEAM` (`Team_ID`, `Team_Name`, `Street`, `City`, `State`, `ZIP`, `Deleted`) VALUES
(1, 'Team Coogs', '1111 Some Dr.', 'Houston', 'TX', '18888', 0),
(2, 'Team Test', '1234 Test Blvd.', 'Houston', 'TX', '77204', 0),
(3, 'The 13th Team', '1333 SEC102', 'Houston', 'TX', '13333', 0),
(4, 'Coogs', '333 coogs Ln', 'Houston', 'TX', '77007', 0);

-- --------------------------------------------------------

--
-- Table structure for table `TEAM_COMPETES_AT`
--

CREATE TABLE IF NOT EXISTS `TEAM_COMPETES_AT` (
  `Meet_ID` int(10) unsigned NOT NULL,
  `Team_ID` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `TEAM_COMPETES_AT`
--

INSERT INTO `TEAM_COMPETES_AT` (`Meet_ID`, `Team_ID`) VALUES
(1, 1),
(7, 1),
(7, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `COMPETITOR`
--
ALTER TABLE `COMPETITOR`
 ADD PRIMARY KEY (`ID`), ADD KEY `TeamName` (`Team_ID`), ADD KEY `TeamID` (`Team_ID`), ADD KEY `ID` (`ID`);

--
-- Indexes for table `COMPETITOR_COMPETES_AT`
--
ALTER TABLE `COMPETITOR_COMPETES_AT`
 ADD KEY `COMPETITOR_ID_FK` (`Competitor_ID`), ADD KEY `Meet_ID` (`Meet_ID`);

--
-- Indexes for table `COMPETITOR_ID`
--
ALTER TABLE `COMPETITOR_ID`
 ADD UNIQUE KEY `User` (`User`,`Competitor`), ADD KEY `COMPETITOR_ID_COMPETITOR_FK` (`Competitor`);

--
-- Indexes for table `EMERGENCY_CONTACT`
--
ALTER TABLE `EMERGENCY_CONTACT`
 ADD UNIQUE KEY `Competitor_ID_2` (`Competitor_ID`), ADD KEY `Competitor_ID` (`Competitor_ID`);

--
-- Indexes for table `EVENT`
--
ALTER TABLE `EVENT`
 ADD PRIMARY KEY (`Event_ID`), ADD KEY `Meet_ID` (`Meet_ID`), ADD KEY `Competitor_ID` (`Competitor_ID`);

--
-- Indexes for table `FEE`
--
ALTER TABLE `FEE`
 ADD PRIMARY KEY (`level`);

--
-- Indexes for table `LOGIN`
--
ALTER TABLE `LOGIN`
 ADD PRIMARY KEY (`ID_Login`), ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `MEET`
--
ALTER TABLE `MEET`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `SCORES`
--
ALTER TABLE `SCORES`
 ADD UNIQUE KEY `EVENT_JUDGE` (`Event_ID`,`Judge_ID`);

--
-- Indexes for table `STAFF`
--
ALTER TABLE `STAFF`
 ADD PRIMARY KEY (`SSN`), ADD UNIQUE KEY `Staff_ID` (`Staff_ID`);

--
-- Indexes for table `STAFF_ID`
--
ALTER TABLE `STAFF_ID`
 ADD UNIQUE KEY `User` (`User`,`Staff`), ADD KEY `STAFF_ID_STAFF_FK` (`Staff`);

--
-- Indexes for table `TEAM`
--
ALTER TABLE `TEAM`
 ADD PRIMARY KEY (`Team_ID`);

--
-- Indexes for table `TEAM_COMPETES_AT`
--
ALTER TABLE `TEAM_COMPETES_AT`
 ADD KEY `MEET_ID` (`Meet_ID`), ADD KEY `TEAM_ID` (`Team_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `COMPETITOR`
--
ALTER TABLE `COMPETITOR`
MODIFY `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `EVENT`
--
ALTER TABLE `EVENT`
MODIFY `Event_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `LOGIN`
--
ALTER TABLE `LOGIN`
MODIFY `ID_Login` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `MEET`
--
ALTER TABLE `MEET`
MODIFY `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `STAFF`
--
ALTER TABLE `STAFF`
MODIFY `Staff_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `TEAM`
--
ALTER TABLE `TEAM`
MODIFY `Team_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `COMPETITOR`
--
ALTER TABLE `COMPETITOR`
ADD CONSTRAINT `COMPETITOR_TEAM_ID_FK` FOREIGN KEY (`Team_ID`) REFERENCES `TEAM` (`Team_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `COMPETITOR_COMPETES_AT`
--
ALTER TABLE `COMPETITOR_COMPETES_AT`
ADD CONSTRAINT `COMPETES_AT_COMPETITOR_ID_FK` FOREIGN KEY (`Competitor_ID`) REFERENCES `COMPETITOR` (`ID`) ON DELETE NO ACTION ON UPDATE CASCADE,
ADD CONSTRAINT `COMPETES_AT_MEET_ID_FK` FOREIGN KEY (`Meet_ID`) REFERENCES `MEET` (`ID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `COMPETITOR_ID`
--
ALTER TABLE `COMPETITOR_ID`
ADD CONSTRAINT `COMPETITOR_ID_COMPETITOR_FK` FOREIGN KEY (`Competitor`) REFERENCES `COMPETITOR` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `COMPETITOR_ID_USER_FK` FOREIGN KEY (`User`) REFERENCES `LOGIN` (`ID_Login`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `EMERGENCY_CONTACT`
--
ALTER TABLE `EMERGENCY_CONTACT`
ADD CONSTRAINT `EMERGENCY_CONTACT_COMPETITOR_ID_KF` FOREIGN KEY (`Competitor_ID`) REFERENCES `COMPETITOR` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `EVENT`
--
ALTER TABLE `EVENT`
ADD CONSTRAINT `EVENT_COMPETITOR_ID_FK` FOREIGN KEY (`Competitor_ID`) REFERENCES `COMPETITOR` (`ID`) ON UPDATE CASCADE,
ADD CONSTRAINT `EVENT_MEET_ID_FK` FOREIGN KEY (`Meet_ID`) REFERENCES `MEET` (`ID`) ON UPDATE CASCADE;

--
-- Constraints for table `STAFF_ID`
--
ALTER TABLE `STAFF_ID`
ADD CONSTRAINT `STAFF_ID_STAFF_FK` FOREIGN KEY (`Staff`) REFERENCES `STAFF` (`Staff_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `STAFF_ID_USER_FK` FOREIGN KEY (`User`) REFERENCES `LOGIN` (`ID_Login`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `TEAM_COMPETES_AT`
--
ALTER TABLE `TEAM_COMPETES_AT`
ADD CONSTRAINT `TEAM_COMPETES_TEAM_ID_FK` FOREIGN KEY (`Team_ID`) REFERENCES `TEAM` (`Team_ID`) ON DELETE NO ACTION ON UPDATE CASCADE,
ADD CONSTRAINT `TEAM_COMPETES_MEET_ID_FK` FOREIGN KEY (`Meet_ID`) REFERENCES `MEET` (`ID`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
