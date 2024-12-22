-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 22, 2024 at 04:02 AM
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
  `id` int NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
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
  `ClassId` int DEFAULT NULL,
  `Password` varchar(180) DEFAULT NULL,
  `Gender` varchar(100) DEFAULT NULL,
  `Dob` varchar(100) DEFAULT NULL,
  `Subjects` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(200) DEFAULT NULL,
  `Country` varchar(150) DEFAULT NULL,
  `Phonenumber` char(11) DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `LastName`, `EmailId`, `ClassId`, `Password`, `Gender`, `Dob`, `Subjects`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`) VALUES
(1, '10805121', 'Rahul', 'Kumar', 'rk1995@test.com', 1, 'f925916e2754e5e03f75dd58a5733251', 'Male', '3 August, 1995', 'Science', 'ewfr', 'refcy6', 'rdfcuj', '12121212', 1, '2023-08-31 21:56:23'),
(2, '10235612', 'Garima', 'Yadav', 'grama123@gmail.com', 3, 'f925916e2754e5e03f75dd58a5733251', 'Female', '2 January, 1997', 'English', 'ewr', 'wedr', 'wdrx5t', '7485963210', 1, '2023-08-31 22:02:47'),
(5, '7856214', 'John', 'Doe', 'jhn12@gmail.com', 3, 'f925916e2754e5e03f75dd58a5733251', 'Male', '3 January, 1995', 'Social Science', '3ewrt', 'erdtxr', 'exdtg', '23232323', 1, '2023-09-01 18:38:23');

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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`) VALUES
(1, 'Casual Leaves', '17/09/2023', '10/09/2023', 'I need leave to visit my home town. ', '2023-08-31 09:36:21', 'Approved', '2023-08-31 20:39:40 ', 1, 1, 1),
(2, 'Casual Leaves', '15/09/2023', '09/09/2023', 'Need casual leaves for some personal work.', '2023-09-01 06:12:40', 'Leave approved', '2023-09-01 17:13:20 ', 1, 1, 5),
(11, 'Casual Leaves', '17/09/2023', '10/09/2023', 'I need leave to visit my home town. ', '2023-08-31 09:36:21', 'Approved', '2023-08-31 20:39:40 ', 1, 1, 1),
(12, 'Casual Leaves', '15/09/2023', '09/09/2023', 'Need casual leaves for some personal work.', '2023-09-01 06:12:40', 'Leave approved', '2023-09-01 17:13:20 ', 1, 1, 5),
(14, 'Sick Leaves', '26/02/2022', '22/02/2022', 'werdtcyfjhrf', '2024-12-14 20:04:29', NULL, NULL, 0, 1, 1),
(16, 'Sick Leaves', '24/04/2014', '23/04/2014', '43rx', '2024-12-14 21:29:44', NULL, NULL, 0, 1, 5),
(39, 'Earned Leaves', '12/11/2011', '11/11/2011', 'df', '2024-12-16 00:51:32', NULL, NULL, 0, 0, 5),
(40, 'Sick Leaves', '12/11/2011', '11/11/2011', 'manikansagh', '2024-12-16 02:45:20', NULL, NULL, 0, 1, 2),
(43, 'Sick Leaves', '11/02/2022', '11/11/2011', 'fe h', '2024-12-19 01:43:24', 'yes', '2024-12-22 8:52:35 ', 2, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavess`
--

DROP TABLE IF EXISTS `tblleavess`;
CREATE TABLE IF NOT EXISTS `tblleavess` (
  `id` int NOT NULL AUTO_INCREMENT,
  `LeaveType` varchar(110) DEFAULT NULL,
  `ToDate` varchar(120) DEFAULT NULL,
  `FromDate` varchar(120) DEFAULT NULL,
  `Description` mediumtext,
  `ClassId` int NOT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `IsRead` int DEFAULT NULL,
  `stuid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stuid` (`stuid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblleavess`
--

INSERT INTO `tblleavess` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `ClassId`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `stuid`) VALUES
(1, 'Casual Leaves', '17/09/2023', '10/09/2023', 'I need leave to visit my home town. ', 0, '2023-08-31 09:36:21', 'Approved', '2023-08-31 20:39:40 ', 1, 1, 1),
(2, 'Casual Leaves', '15/09/2023', '09/09/2023', 'Need casual leaves for some personal work.', 0, '2023-09-01 06:12:40', 'Leave approved', '2023-09-01 17:13:20 ', 1, 1, 5),
(3, 'Casual Leaves', '54', '23', 'dfgcg', 0, '2024-12-20 05:09:52', NULL, NULL, 0, 0, 1),
(4, 'Casual Leaves', '213', '111', 'sd', 0, '2024-12-21 02:39:08', NULL, NULL, 0, 1, 1),
(5, 'Casual Leaves', '332', '112', 'fgtrg', 1, '2024-12-21 02:58:45', 'yes', '2024-12-21 9:03:07 ', 1, 1, 1),
(6, 'Casual Leaves', '332', '112', 'fgtrg', 1, '2024-12-21 03:18:21', NULL, NULL, 0, 0, 1),
(7, 'Casual Leaves', '332', '112', 'fgtrg', 1, '2024-12-21 03:18:24', 'ewf', '2024-12-22 8:28:09 ', 2, 1, 1),
(8, 'Casual Leaves', '332', '112', 'fgtrg', 0, '2024-12-21 03:19:44', NULL, NULL, 0, 1, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

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
  `id` int NOT NULL AUTO_INCREMENT,
  `NoticeTitle` mediumtext,
  `ClassId` int DEFAULT NULL,
  `NoticeMsg` mediumtext,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblnotice`
--

INSERT INTO `tblnotice` (`id`, `NoticeTitle`, `ClassId`, `NoticeMsg`, `CreationDate`) VALUES
(2, 'Marks of Unit Test.', 3, 'Meet your class teacher for seeing copies of unit test', '2022-01-19 06:35:58'),
(3, 'Marks of Unit Test.', 2, 'Meet your class teacher for seeing copies of unit test', '2022-01-19 06:35:58'),
(4, 'Test', 2, 'This is for testing.', '2022-02-02 18:17:03'),
(5, 'Test Notice', 1, 'This is for Testing.', '2022-02-02 19:03:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

DROP TABLE IF EXISTS `tblpage`;
CREATE TABLE IF NOT EXISTS `tblpage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `PageDescription` mediumtext,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`id`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', 'A School Management System (SMS) is a comprehensive software solution designed to streamline and automate various administrative tasks within educational institutions. It serves as a central hub for managing student information, academic records, attendance, grades, timetables, and communication between teachers, students, and parents. This system simplifies the workflow by reducing manual tasks such as attendance tracking, report card generation, and scheduling, enabling more efficient and organized management. Additionally, the system often includes features like fee management, library management, and exam scheduling, ensuring that all aspects of school operations are handled seamlessly. By integrating these functions, a School Management System helps improve the overall effectiveness of the educational environment, fostering better communication and improving the learning experience for students and staff alike.', NULL, NULL, NULL),
(2, 'contactus', 'Contact Us', 'A School Management System (SMS) is a software application designed to streamline and automate various administrative and academic tasks within a school or educational institution. It provides an efficient way for school staff, teachers, students, and parents to manage and access important information such as student records, attendance, grades, timetables, and communication.&nbsp;', 'schoolmanagement@gmail.com', 1234567890, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpublicnotice`
--

DROP TABLE IF EXISTS `tblpublicnotice`;
CREATE TABLE IF NOT EXISTS `tblpublicnotice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `NoticeTitle` varchar(200) DEFAULT NULL,
  `NoticeMessage` mediumtext,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpublicnotice`
--

INSERT INTO `tblpublicnotice` (`id`, `NoticeTitle`, `NoticeMessage`, `CreationDate`) VALUES
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(2, 1, 1, 1, 100, '2024-05-09 23:30:57', NULL),
(3, 1, 1, 2, 80, '2024-05-09 23:30:57', NULL),
(4, 1, 1, 3, 78, '2024-05-09 23:30:57', NULL),
(5, 1, 1, 4, 60, '2024-05-09 23:30:57', NULL),
(6, 1, 1, 5, 90, '2024-05-09 23:30:57', NULL),
(7, 2, 2, 1, 75, '2024-05-09 23:30:57', NULL),
(8, 2, 2, 2, 65, '2024-05-09 23:30:57', NULL),
(9, 2, 2, 3, 80, '2024-05-09 23:30:57', NULL),
(10, 2, 2, 4, 54, '2024-05-09 23:30:57', NULL),
(11, 2, 2, 5, 85, '2024-05-09 23:30:57', NULL),
(12, 3, 4, 1, 55, '2024-05-09 23:30:57', NULL),
(13, 3, 4, 2, 65, '2024-05-09 23:30:57', NULL),
(14, 3, 4, 3, 75, '2024-05-09 23:30:57', NULL),
(15, 3, 4, 6, 56, '2024-05-09 23:30:57', NULL),
(16, 3, 4, 7, 52, '2024-05-09 23:30:57', NULL),
(17, 3, 4, 8, 80, '2024-05-09 23:30:57', NULL),
(18, 4, 6, 1, 80, '2024-05-20 04:20:18', NULL),
(19, 4, 6, 2, 70, '2024-05-20 04:20:18', NULL),
(20, 4, 6, 3, 90, '2024-05-20 04:20:18', NULL),
(21, 4, 6, 6, 60, '2024-05-20 04:20:18', NULL),
(22, 4, 6, 7, 67, '2024-12-14 02:41:54', NULL),
(23, 4, 6, 10, 98, '2024-12-14 02:41:54', NULL),
(24, 5, 5, 1, 67, '2024-12-14 02:41:54', NULL),
(25, 5, 5, 2, 78, '2024-12-14 02:41:54', NULL),
(26, 5, 5, 3, 79, '2024-12-14 02:41:54', NULL),
(27, 5, 5, 6, 78, '2024-12-14 02:41:54', NULL),
(28, 5, 5, 10, 89, '2024-12-14 02:41:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

DROP TABLE IF EXISTS `tblstudent`;
CREATE TABLE IF NOT EXISTS `tblstudent` (
  `StudentId` int NOT NULL AUTO_INCREMENT,
  `StudentName` varchar(200) DEFAULT NULL,
  `StudentEmail` varchar(200) DEFAULT NULL,
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

INSERT INTO `tblstudent` (`StudentId`, `StudentName`, `StudentEmail`, `RollId`, `ClassId`, `Gender`, `DOB`, `StuID`, `FatherName`, `MotherName`, `ContactNumber`, `AltenateNumber`, `Address`, `UserName`, `Password`, `Image`, `RegDate`, `DateofAdmission`, `Status`) VALUES
(1, 'sarita', 'sarita@gmail.com', '46456', 1, 'female', '2004-12-08', '1', 'dexfgt', 'cgthd', 4567889002, 234345546, 'dfgcg,\r\nredtt5g,ghjke', 'sarita', 'f925916e2754e5e03f75dd58a5733251', 'ebcd036a0db50db993ae98ce380f64191642082944.png', '2024-09-17 13:22:18', '2022-01-13 14:09:04', 1),
(2, 'Anuj kumar', 'anujkumar@gmail.com', '10861', 2, 'Male', '2019-01-05', '2', 'Janak Sharma', 'Indra Devi', 7879879879, 7987979879, 'kjhkhjkhdkshfiludzshfiu\r\nfjedh\r\nk;jk', 'anujkumar', 'f925916e2754e5e03f75dd58a5733251', '5bede9f47102611b4df6241c718af7fc1642314213.jpg', '2024-09-17 13:22:18', '2022-01-16 06:23:33', 0),
(3, 'Amit kumar', 'amit kumar@gmali.com', '2626', 4, 'Male', '1986-01-05', '3', 'Kailesg', 'jakinnm', 4646546546, 6546598798, 'jlkjkljoiujiouoil', 'amitkumar', 'f925916e2754e5e03f75dd58a5733251', '4f0691cfe48c8f74fe413c7b92391ff41642605892.jpg', '2024-09-17 13:22:18', '2022-01-19 15:24:52', 0),
(4, 'Rahul kumar', 'rahulkumar@gmail.com', '990', 6, 'Female', '2002-02-10', '4', 'Anuj Kumar', 'Garima Singh', 1234698741, 1234567890, 'New Delhi', 'rahul kumar', 'f925916e2754e5e03f75dd58a5733251', 'ebcd036a0db50db993ae98ce380f64191643825985.png', '2024-09-17 13:22:18', '2022-02-02 18:19:45', 1),
(5, 'Sanjeev singh', 'sanjeevsingh@gmail.com', '122', 4, 'Male', '2001-05-30', '5', 'Bijendra Singh', 'Kamlesh Devi', 1472589630, 1236987450, 'New Delhi', 'sanjeev singh', 'f925916e2754e5e03f75dd58a5733251', '2f413c4becfa2db4bc4fc2ccead84f651643828242.png', '2024-09-17 13:22:18', '2022-02-02 18:57:22', 1),
(6, 'Shiv Gupta', 'Shiv@gmail.com', '12345', 2, 'Male', '2018-09-07', '6', 'ram', 'seetha', 1234567890, 4646546565, 'J-909, Hariram Nagra New Delhi', 'shiv', 'f925916e2754e5e03f75dd58a5733251', 'ebcd036a0db50db993ae98ce380f64191642082944.png', '2024-09-17 13:22:18', '2024-09-17 06:01:03', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(3, 1, 1, 1, '2024-05-01 05:00:57', '2024-12-21 09:45:50'),
(4, 1, 2, 1, '2024-05-01 05:00:57', '2024-06-06 22:58:00'),
(5, 1, 3, 1, '2024-05-01 05:00:57', '2024-06-06 22:58:00'),
(6, 1, 4, 1, '2024-05-01 05:00:57', '2024-06-06 22:58:00'),
(8, 1, 5, 1, '2024-05-01 05:00:57', '2024-06-06 22:58:00'),
(10, 2, 1, 1, '2024-05-01 05:00:57', '2024-06-06 22:58:00'),
(12, 2, 2, 1, '2024-05-01 05:00:57', '2024-06-06 22:58:00'),
(13, 2, 3, 1, '2024-05-01 05:00:57', '2024-06-06 22:58:00'),
(14, 2, 4, 1, '2024-05-01 05:00:57', '2024-06-06 22:58:00'),
(15, 2, 5, 1, '2024-05-01 05:00:57', '2024-06-06 22:58:00'),
(16, 3, 1, 1, '2024-05-01 05:00:57', '2024-06-06 22:58:00'),
(17, 3, 2, 1, '2024-05-01 05:00:57', '2024-06-06 22:58:00'),
(18, 3, 3, 1, '2024-05-01 05:00:57', '2024-06-06 22:58:00'),
(19, 3, 4, 1, '2024-05-01 05:00:57', '2024-06-06 22:58:00'),
(20, 3, 5, 1, '2024-05-01 05:00:57', '2024-06-06 22:58:00'),
(21, 4, 1, 1, '2024-05-01 05:00:57', '2024-06-06 22:58:00'),
(22, 4, 2, 1, '2024-05-01 05:00:57', '2024-12-21 09:46:05'),
(23, 4, 3, 1, '2024-05-01 05:00:57', '2024-06-06 22:58:00'),
(24, 4, 6, 1, '2024-05-01 05:00:57', '2024-06-06 22:58:00'),
(25, 4, 7, 1, '2024-05-01 05:00:57', '2024-06-06 22:58:00'),
(26, 4, 8, 1, '2024-05-01 05:00:57', '2024-06-06 22:58:00'),
(27, 4, 9, 1, '2024-05-01 05:00:57', '2024-06-06 22:58:00'),
(28, 6, 1, 1, '2024-05-01 05:00:57', '2024-06-06 22:58:00'),
(29, 6, 2, 1, '2024-05-01 05:00:57', '2024-06-06 22:58:00'),
(30, 6, 10, 1, '2024-05-01 05:00:57', '2024-06-06 22:58:00'),
(31, 6, 6, 1, '2024-05-01 05:00:57', '2024-06-06 22:58:00'),
(32, 6, 7, 1, '2024-05-01 05:00:57', '2024-06-06 22:58:00'),
(33, 6, 3, 1, '2024-05-01 05:00:57', '2024-06-06 22:58:00'),
(34, 5, 1, 1, '2024-12-21 09:38:29', NULL),
(35, 5, 2, 1, '2024-12-21 09:38:36', NULL),
(36, 5, 3, 1, '2024-12-21 09:38:46', NULL),
(37, 5, 10, 1, '2024-12-21 09:38:53', NULL),
(38, 5, 7, 1, '2024-12-21 09:39:02', NULL),
(39, 5, 6, 1, '2024-12-21 09:39:31', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Tamil', 'TA13', '2024-04-25 17:30:57', NULL),
(2, 'English', 'ENG12', '2024-04-25 17:30:57', NULL),
(3, 'Maths', 'MA12', '2024-04-25 17:30:57', NULL),
(4, 'Science', 'SC12', '2024-04-25 17:30:57', NULL),
(5, 'Social Science', 'SS12', '2024-04-25 17:30:57', NULL),
(6, 'Physics', 'PH32', '2024-12-21 09:25:54', NULL),
(7, 'Chemistry', 'CH13', '2024-12-21 09:27:08', NULL),
(8, 'Computer science', 'CS12', '2024-12-21 09:27:42', NULL),
(10, 'Acconuts', 'AC12', '2024-12-21 09:36:07', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
