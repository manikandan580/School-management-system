-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 15, 2024 at 03:14 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
CREATE TABLE IF NOT EXISTS `tbladmin` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8979555558, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-10-11 04:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

DROP TABLE IF EXISTS `tblclass`;
CREATE TABLE IF NOT EXISTS `tblclass` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ClassName` varchar(50) DEFAULT NULL,
  `ClassNameNumeric` int DEFAULT NULL,
  `Section` varchar(20) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `tblclass` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`) VALUES
(1, 'Tenth', 10, 'A', '2022-01-13 10:42:14'),
(2, 'Tenth', 10, 'B', '2022-01-13 10:42:35'),
(3, 'Tenth', 10, 'C', '2022-01-13 10:42:41'),
(4, 'Eleventh', 11, 'A', '2022-01-13 10:42:47'),
(5, 'Eleventh', 11, 'B', '2022-01-13 10:42:52'),
(6, 'Eleventh', 11, 'C', '2022-01-13 10:42:57'),
(7, 'Eleventh', 11, 'D', '2022-01-13 10:43:04'),
(8, 'Twelveth', 12, 'A', '2022-01-13 10:43:10'),
(9, 'Twelveth', 12, 'C', '2022-01-13 10:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

DROP TABLE IF EXISTS `tbldepartments`;
CREATE TABLE IF NOT EXISTS `tbldepartments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) DEFAULT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(1, 'Human Resource', 'HR', 'HR01', '2023-08-31 21:50:20'),
(2, 'Information Technology', 'IT', 'IT01', '2023-08-31 21:50:56'),
(3, 'Accounts', 'Accounts', 'ACCNT01', '2023-08-31 21:51:26'),
(4, 'ADMIN', 'Admin', 'ADMN01', '2023-09-01 18:35:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

DROP TABLE IF EXISTS `tblemployees`;
CREATE TABLE IF NOT EXISTS `tblemployees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) DEFAULT NULL,
  `LastName` varchar(150) DEFAULT NULL,
  `EmailId` varchar(200) DEFAULT NULL,
  `Password` varchar(180) DEFAULT NULL,
  `Gender` varchar(100) DEFAULT NULL,
  `Dob` varchar(100) DEFAULT NULL,
  `Department` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(200) DEFAULT NULL,
  `Country` varchar(150) DEFAULT NULL,
  `Phonenumber` char(11) DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(1, '10805121', 'Rahul', 'Kumar', 'rk1995@test.com', 'f925916e2754e5e03f75dd58a5733251', 'Male', '3 August, 1995', 'Information Technology', 'A 123 XYZ Apartment ', 'New Delhi', 'India', '12121212', 1, '2023-08-31 21:56:23'),
(2, '10235612', 'Garima', 'Yadav', 'grama123@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 'Female', '2 January, 1997', 'Accounts', 'Hno 123 ABC Colony', 'New Delhi', 'India', '7485963210', 1, '2023-08-31 22:02:47'),
(5, '7856214', 'John', 'Doe', 'jhn12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 'Male', '3 January, 1995', 'Accounts', 'H no 1', 'Ghaziabad ', 'India', '23232323', 1, '2023-09-01 18:38:23'),
(6, 'wqe', 'weqr', 'wer', 'wert@gmail.com', 'b59c67bf196a4758191e42f76670ceba', 'Male', '0023-03-12', 'Accounts', 'ewdwd', 'ewds', 'sdf', '21343657', 1, '2024-12-14 08:54:01'),
(7, 'e3rt', '346', 'ert', 'e45yt@gmail.com', 'feced7b1f89a6746d54050521fdaee0d', 'Male', '1997-02-20', 'Information Technology', 'qwr5467yu', 'rtuj', 'erwy78', '231456', 1, '2024-12-15 01:28:29'),
(8, 'wetr56', 'eru5', 'w4euy76u', 'rgytryh@gmail.com', '15a3e6391f6d57b4f8aabe9bc57787ca', 'Male', '1996-02-15', 'Human Resource', 'wertyui', 'ewrghuyj', 'eetysbhs', '123456678', 1, '2024-12-15 01:30:35');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

DROP TABLE IF EXISTS `tblleaves`;
CREATE TABLE IF NOT EXISTS `tblleaves` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LeaveType` varchar(110) DEFAULT NULL,
  `ToDate` varchar(120) DEFAULT NULL,
  `FromDate` varchar(120) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `IsRead` int DEFAULT NULL,
  `empid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empid` (`empid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`) VALUES
(11, 'Casual Leaves', '17/09/2023', '10/09/2023', 'I need leave to visit my home town. ', '2023-08-31 09:36:21', 'Approved', '2023-08-31 20:39:40 ', 1, 1, 1),
(12, 'Casual Leaves', '15/09/2023', '09/09/2023', 'Need casual leaves for some personal work.', '2023-09-01 06:12:40', 'Leave approved', '2023-09-01 17:13:20 ', 1, 1, 5),
(13, 'Earned Leaves', '12/11/2011', '11/11/2011', 'sadscx', '2024-12-06 04:26:55', NULL, NULL, 0, 1, 1),
(14, 'Sick Leaves', '26/02/2022', '22/02/2022', 'werdtcyfjhrf', '2024-12-14 20:04:29', NULL, NULL, 0, 1, 1),
(15, 'Casual Leaves', '14/02/2012', '12/02/2012', 'rcrcqe', '2024-12-14 20:13:05', NULL, NULL, 0, 0, 1),
(16, 'Earned Leaves', '12/11/2011', '11/11/2011', 'ercv ref rt r54rt5  frf', '2024-12-15 03:07:14', NULL, NULL, 0, 1, 5),
(17, 'Sick Leaves', '12/11/2011', '11/11/2011', 'manikandan', '2024-12-15 03:11:28', NULL, NULL, 0, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

DROP TABLE IF EXISTS `tblleavetype`;
CREATE TABLE IF NOT EXISTS `tblleavetype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(1, 'Casual Leaves', 'Casual Leaves', '2023-08-31 21:52:22'),
(2, 'Earned Leaves', 'Earned Leaves', '2023-08-31 21:52:49'),
(3, 'Sick Leaves', 'Sick Leaves', '2023-08-31 21:53:15'),
(4, 'RH (Restricted Leaves)', 'Restricted Leaves', '2023-09-01 18:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

DROP TABLE IF EXISTS `tblnotice`;
CREATE TABLE IF NOT EXISTS `tblnotice` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NoticeTitle` mediumtext,
  `ClassId` int DEFAULT NULL,
  `NoticeMsg` mediumtext,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblnotice`
--

INSERT INTO `tblnotice` (`ID`, `NoticeTitle`, `ClassId`, `NoticeMsg`, `CreationDate`) VALUES
(2, 'Marks of Unit Test.', 3, 'Meet your class teacher for seeing copies of unit test', '2022-01-19 06:35:58'),
(3, 'Marks of Unit Test.', 2, 'Meet your class teacher for seeing copies of unit test', '2022-01-19 06:35:58'),
(4, 'Test', 3, 'This is for testing.', '2022-02-02 18:17:03'),
(5, 'Test Notice', 8, 'This is for Testing.', '2022-02-02 19:03:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

DROP TABLE IF EXISTS `tblpage`;
CREATE TABLE IF NOT EXISTS `tblpage` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `PageDescription` mediumtext,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<div style=\"text-align: start;\"><font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, ????, ??, SimSun, STXihei, ????, serif\"><span style=\"font-size: 26px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></font><br></div>', NULL, NULL, NULL),
(2, 'contactus', 'Contact Us', '890,Sector 62, Gyan Sarovar, GAIL Noida(Delhi/NCR)', 'infodata@gmail.com', 7896541236, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpublicnotice`
--

DROP TABLE IF EXISTS `tblpublicnotice`;
CREATE TABLE IF NOT EXISTS `tblpublicnotice` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NoticeTitle` varchar(200) DEFAULT NULL,
  `NoticeMessage` mediumtext,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpublicnotice`
--

INSERT INTO `tblpublicnotice` (`ID`, `NoticeTitle`, `NoticeMessage`, `CreationDate`) VALUES
(1, 'School will re-open', 'Consult your class teacher.', '2022-01-20 09:11:57'),
(2, 'Test Public Notice', 'This is for Testing\r\n', '2022-02-02 19:04:10');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

DROP TABLE IF EXISTS `tblresult`;
CREATE TABLE IF NOT EXISTS `tblresult` (
  `id` int NOT NULL AUTO_INCREMENT,
  `StudentId` int DEFAULT NULL,
  `ClassId` int DEFAULT NULL,
  `SubjectId` int DEFAULT NULL,
  `marks` int DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(2, 1, 1, 2, 100, '2024-05-10 05:00:57', NULL),
(3, 1, 1, 1, 80, '2024-05-10 05:00:57', NULL),
(4, 1, 1, 5, 78, '2024-05-10 05:00:57', NULL),
(5, 1, 1, 4, 60, '2024-05-10 05:00:57', NULL),
(6, 2, 4, 2, 90, '2024-05-10 05:00:57', NULL),
(7, 2, 4, 1, 75, '2024-05-10 05:00:57', NULL),
(8, 2, 4, 5, 56, '2024-05-10 05:00:57', NULL),
(9, 2, 4, 4, 80, '2024-05-10 05:00:57', NULL),
(10, 4, 7, 2, 54, '2024-05-10 05:00:57', NULL),
(11, 4, 7, 1, 85, '2024-05-10 05:00:57', NULL),
(12, 4, 7, 5, 55, '2024-05-10 05:00:57', NULL),
(13, 4, 7, 7, 65, '2024-05-10 05:00:57', NULL),
(14, 5, 8, 2, 75, '2024-05-10 05:00:57', NULL),
(15, 5, 8, 1, 56, '2024-05-10 05:00:57', NULL),
(16, 5, 8, 5, 52, '2024-05-10 05:00:57', NULL),
(17, 5, 8, 4, 80, '2024-05-10 05:00:57', NULL),
(18, 6, 9, 8, 80, '2024-05-20 09:50:18', NULL),
(19, 6, 9, 8, 70, '2024-05-20 09:50:18', NULL),
(20, 6, 9, 2, 90, '2024-05-20 09:50:18', NULL),
(21, 6, 9, 1, 60, '2024-05-20 09:50:18', NULL),
(22, 7, 1, 2, 67, '2024-12-14 08:11:54', NULL),
(23, 7, 1, 5, 98, '2024-12-14 08:11:54', NULL),
(24, 7, 1, 4, 67, '2024-12-14 08:11:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

DROP TABLE IF EXISTS `tblstudent`;
CREATE TABLE IF NOT EXISTS `tblstudent` (
  `StudentId` int NOT NULL AUTO_INCREMENT,
  `StudentName` varchar(200) DEFAULT NULL,
  `StudentEmail` varchar(200) DEFAULT NULL,
  `StudentClass` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `ClassId` int NOT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `StuID` varchar(200) DEFAULT NULL,
  `FatherName` mediumtext,
  `MotherName` mediumtext,
  `ContactNumber` bigint DEFAULT NULL,
  `AltenateNumber` bigint DEFAULT NULL,
  `Address` mediumtext,
  `UserName` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DateofAdmission` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int DEFAULT NULL,
  PRIMARY KEY (`StudentId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`StudentId`, `StudentName`, `StudentEmail`, `StudentClass`, `RollId`, `ClassId`, `Gender`, `DOB`, `StuID`, `FatherName`, `MotherName`, `ContactNumber`, `AltenateNumber`, `Address`, `UserName`, `Password`, `Image`, `RegDate`, `DateofAdmission`, `Status`) VALUES
(1, 'Sarita', 'sarita@gmail.com', '1', '46456', 1, 'Female', '2022-01-13', '1\r\n', 'bbmnb', 'mnbmb', 5465454645, 4646546565, 'J-908, Hariram Nagra New Delhi', 'sarita', 'f925916e2754e5e03f75dd58a5733251', 'ebcd036a0db50db993ae98ce380f64191642082944.png', '2024-09-17 13:22:18', '2022-01-13 14:09:04', 1),
(2, 'Anuj kumar', 'anujkumar@gmail.com', '4', '10861', 4, 'Male', '2019-01-05', '2', 'Janak Sharma', 'Indra Devi', 7879879879, 7987979879, 'kjhkhjkhdkshfiludzshfiu\r\nfjedh\r\nk;jk', 'anujkumar', 'f925916e2754e5e03f75dd58a5733251', '5bede9f47102611b4df6241c718af7fc1642314213.jpg', '2024-09-17 13:22:18', '2022-01-16 06:23:33', 0),
(3, 'Amit kumar', 'amit kumar@gmali.com', '2', '2626', 6, 'Male', '1986-01-05', '3', 'Kailesg', 'jakinnm', 4646546546, 6546598798, 'jlkjkljoiujiouoil', 'amitkumar', 'f925916e2754e5e03f75dd58a5733251', '4f0691cfe48c8f74fe413c7b92391ff41642605892.jpg', '2024-09-17 13:22:18', '2022-01-19 15:24:52', 0),
(4, 'Rahul kumar', 'rahulkumar@gmail.com', '7', '990', 7, 'Female', '2002-02-10', '4', 'Anuj Kumar', 'Garima Singh', 1234698741, 1234567890, 'New Delhi', 'rahul kumar', 'f925916e2754e5e03f75dd58a5733251', 'ebcd036a0db50db993ae98ce380f64191643825985.png', '2024-09-17 13:22:18', '2022-02-02 18:19:45', 1),
(5, 'Sanjeev singh', 'sanjeevsingh@gmail.com', '8', '122', 8, 'Male', '2001-05-30', '5', 'Bijendra Singh', 'Kamlesh Devi', 1472589630, 1236987450, 'New Delhi', 'sanjeev singh', 'f925916e2754e5e03f75dd58a5733251', '2f413c4becfa2db4bc4fc2ccead84f651643828242.png', '2024-09-17 13:22:18', '2022-02-02 18:57:22', 1),
(6, 'Shiv Gupta', 'Shiv@gmail.com', '9', '12345', 9, 'Male', '2018-09-07', '6', 'ram', 'seetha', 1234567890, 4646546565, 'J-909, Hariram Nagra New Delhi', 'shiv', 'f925916e2754e5e03f75dd58a5733251', 'ebcd036a0db50db993ae98ce380f64191642082944.png', '2024-09-17 13:22:18', '2024-09-17 06:01:03', 1),
(7, 'gkbi', 'efs', NULL, '1243', 1, 'Male', '0000-00-00', '344', 'werf', 'edr', 234358989, 654658789, 'rtdbs', 'fgh', 'a363e54c35340a7e8715c7957313c6b8', 'd68b92b252063dbb703519c3a60aecf31734163207.png', '2024-12-14 08:00:07', '2024-12-14 08:00:07', NULL),
(8, 'qwex', 'cxr', NULL, 'exar', 4, 'Male', '4234-03-21', '1432', 'w2fr', 'wd4r', 134322467, 46547546, 'bfderssereb', 'fdtgse', '9edbcd0783b24d58387f0db59bf1f0d3', 'f5c4c353f65bdf3900c6cafcfefe3f8f1734164291.png', '2024-12-14 08:18:11', '2024-12-14 08:18:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

DROP TABLE IF EXISTS `tblsubjectcombination`;
CREATE TABLE IF NOT EXISTS `tblsubjectcombination` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ClassId` int DEFAULT NULL,
  `SubjectId` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updationdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(3, 2, 5, 0, '2024-05-01 17:30:57', '2024-06-07 12:25:49'),
(4, 1, 2, 1, '2024-05-01 17:30:57', '2024-06-07 11:28:00'),
(5, 1, 4, 1, '2024-05-01 17:30:57', '2024-06-07 11:28:00'),
(6, 1, 5, 1, '2024-05-01 17:30:57', '2024-06-07 11:28:00'),
(8, 4, 4, 1, '2024-05-01 17:30:57', '2024-06-07 11:28:00'),
(10, 4, 1, 1, '2024-05-01 17:30:57', '2024-06-07 11:28:00'),
(12, 4, 2, 1, '2024-05-01 17:30:57', '2024-06-07 11:28:00'),
(13, 4, 5, 1, '2024-05-01 17:30:57', '2024-06-07 11:28:00'),
(14, 6, 1, 1, '2024-05-01 17:30:57', '2024-06-07 11:28:00'),
(15, 6, 2, 1, '2024-05-01 17:30:57', '2024-06-07 11:28:00'),
(16, 6, 4, 1, '2024-05-01 17:30:57', '2024-06-07 11:28:00'),
(17, 6, 6, 1, '2024-05-01 17:30:57', '2024-06-07 11:28:00'),
(18, 7, 1, 1, '2024-05-01 17:30:57', '2024-06-07 11:28:00'),
(19, 7, 7, 1, '2024-05-01 17:30:57', '2024-06-07 11:28:00'),
(20, 7, 2, 1, '2024-05-01 17:30:57', '2024-06-07 11:28:00'),
(21, 7, 6, 1, '2024-05-01 17:30:57', '2024-06-07 11:28:00'),
(22, 7, 5, 0, '2024-05-01 17:30:57', '2024-06-07 11:28:00'),
(23, 8, 1, 1, '2024-05-01 17:30:57', '2024-06-07 11:28:00'),
(24, 8, 2, 1, '2024-05-01 17:30:57', '2024-06-07 11:28:00'),
(25, 8, 4, 1, '2024-05-01 17:30:57', '2024-06-07 11:28:00'),
(26, 8, 6, 1, '2024-05-01 17:30:57', '2024-06-07 11:28:00'),
(27, 8, 5, 0, '2024-05-01 17:30:57', '2024-06-07 11:28:00'),
(28, 9, 1, 1, '2024-05-01 17:30:57', '2024-06-07 11:28:00'),
(29, 9, 2, 1, '2024-05-01 17:30:57', '2024-06-07 11:28:00'),
(30, 9, 8, 1, '2024-05-01 17:30:57', '2024-06-07 11:28:00'),
(31, 9, 8, 1, '2024-05-01 17:30:57', '2024-06-07 11:28:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

DROP TABLE IF EXISTS `tblsubjects`;
CREATE TABLE IF NOT EXISTS `tblsubjects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Maths', 'MTH01', '2024-04-25 17:30:57', NULL),
(2, 'English', 'ENG11', '2024-04-25 17:30:57', NULL),
(4, 'Science', 'SC1', '2024-04-25 17:30:57', NULL),
(5, 'Music', 'MS', '2024-04-25 17:30:57', NULL),
(6, 'Social Studies', 'SS08', '2024-04-25 17:30:57', NULL),
(7, 'Physics', 'PH03', '2024-04-25 17:30:57', NULL),
(8, 'Chemistry', 'CH65', '2024-04-25 17:30:57', NULL),
(9, 'rw', 'wert', '2024-12-14 08:12:28', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
