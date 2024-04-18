-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2022 at 08:17 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resultgrading`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `Id` int(20) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `otherName` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `phoneNo` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `staffId` varchar(255) NOT NULL,
  `adminTypeId` int(20) NOT NULL,
  `isAssigned` int(10) NOT NULL,
  `isPasswordChanged` int(10) NOT NULL,
  `dateCreated` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`Id`, `firstName`, `lastName`, `otherName`, `emailAddress`, `phoneNo`, `password`, `staffId`, `adminTypeId`, `isAssigned`, `isPasswordChanged`, `dateCreated`) VALUES
(1, 'Liam', 'Moore', 'Admin', 'admin@mail.com', '7777777777', 'f2d0ff370380124029c2b807a924156c', 'AD123', 1, 1, 0, ''),
(2, 'asd', 'asd', 'asd', 'asd@mail.com', '8885554447', 'f2d0ff370380124029c2b807a924156c', '1121', 1, 1, 0, '2022-06-13'),
(3, 'Test', 'Admin', 'ta', 'test@mail.com', '4587458888', 'f2d0ff370380124029c2b807a924156c', 'TEST10', 1, 1, 0, '2022-06-13');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmintype`
--

CREATE TABLE `tbladmintype` (
  `Id` int(20) NOT NULL,
  `adminTypeName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmintype`
--

INSERT INTO `tbladmintype` (`Id`, `adminTypeName`) VALUES
(1, 'Super Administrator'),
(2, 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tblassignedadmin`
--

CREATE TABLE `tblassignedadmin` (
  `id` int(11) NOT NULL,
  `dateAssigned` varchar(200) NOT NULL,
  `staffId` int(11) NOT NULL,
  `facultyId` int(11) NOT NULL,
  `departmentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblassignedadmin`
--

INSERT INTO `tblassignedadmin` (`id`, `dateAssigned`, `staffId`, `facultyId`, `departmentId`) VALUES
(1, '2022-06-13', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcgparesult`
--

CREATE TABLE `tblcgparesult` (
  `Id` int(11) NOT NULL,
  `matricNo` varchar(50) NOT NULL,
  `cgpa` varchar(50) NOT NULL,
  `classOfDiploma` varchar(50) NOT NULL,
  `dateAdded` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcgparesult`
--

INSERT INTO `tblcgparesult` (`Id`, `matricNo`, `cgpa`, `classOfDiploma`, `dateAdded`) VALUES
(1, 'SGS100', '1.38', 'Fail', '2022-06-13'),
(2, '10101', '3.38', 'Upper Credit', '2022-06-15'),
(3, '14750', '3.35', 'Upper Credit', '2022-06-15'),
(4, 'SGS123', '3.49', 'Upper Credit', '2022-06-16');

-- --------------------------------------------------------

--
-- Table structure for table `tblcourse`
--

CREATE TABLE `tblcourse` (
  `Id` int(11) NOT NULL,
  `courseTitle` varchar(255) NOT NULL,
  `courseCode` varchar(255) NOT NULL,
  `courseUnit` int(10) NOT NULL,
  `facultyId` varchar(255) NOT NULL,
  `departmentId` varchar(255) NOT NULL,
  `levelId` varchar(10) NOT NULL,
  `semesterId` varchar(20) NOT NULL,
  `dateAdded` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcourse`
--

INSERT INTO `tblcourse` (`Id`, `courseTitle`, `courseCode`, `courseUnit`, `facultyId`, `departmentId`, `levelId`, `semesterId`, `dateAdded`) VALUES
(1, 'Programming Intro', 'PI01', 5, '1', '1', '1', '1', '2022-06-13'),
(2, 'Networking', 'NT100', 5, '1', '1', '1', '2', '2022-06-13'),
(3, 'Law of Contract', 'LC1', 6, '3', '3', '1', '1', '2022-06-15'),
(4, 'Administrative Law', 'AL2', 6, '3', '3', '1', '2', '2022-06-15'),
(5, 'Constitutional Law', 'CL12', 6, '3', '3', '1', '1', '2022-06-15'),
(6, 'Law of Crimes', 'LC8', 5, '3', '3', '1', '2', '2022-06-15'),
(7, 'Labour and Industrial Law', 'LII8', 6, '3', '3', '1', '2', '2022-06-15'),
(8, 'Property Law', 'PLi5', 6, '3', '3', '1', '1', '2022-06-15'),
(9, 'Electrical Machines', 'EM12', 5, '4', '5', '1', '1', '2022-06-16'),
(10, 'Power Systems', 'PS77', 4, '4', '5', '1', '1', '2022-06-16'),
(11, 'Control Systems', 'CS69', 5, '4', '5', '1', '1', '2022-06-16'),
(12, 'Signals and Systems', 'SS88', 5, '4', '5', '1', '1', '2022-06-16'),
(13, 'Microprocessors', 'MCP8', 3, '4', '5', '1', '1', '2022-06-16'),
(14, 'Fundamentals of Computing', 'FC25', 5, '4', '5', '1', '2', '2022-06-16'),
(15, 'Mathematics II', 'MM895', 6, '4', '5', '1', '2', '2022-06-16'),
(16, 'Physics Laboratory', 'PL08', 3, '4', '5', '1', '2', '2022-06-16'),
(17, 'Physics II', 'P225', 5, '4', '5', '1', '2', '2022-06-16');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartment`
--

CREATE TABLE `tbldepartment` (
  `Id` int(20) NOT NULL,
  `departmentName` varchar(255) NOT NULL,
  `facultyId` int(20) NOT NULL,
  `dateCreated` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbldepartment`
--

INSERT INTO `tbldepartment` (`Id`, `departmentName`, `facultyId`, `dateCreated`) VALUES
(1, 'IT Dept', 1, '2022-06-13'),
(2, 'Accounting', 2, '2022-06-15'),
(3, 'Law Science', 3, '2022-06-15'),
(4, 'Industrial Engineering', 4, '2022-06-15'),
(5, 'Electrical Engineering', 4, '2022-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `tblfaculty`
--

CREATE TABLE `tblfaculty` (
  `Id` int(20) NOT NULL,
  `facultyName` varchar(255) NOT NULL,
  `dateCreated` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblfaculty`
--

INSERT INTO `tblfaculty` (`Id`, `facultyName`, `dateCreated`) VALUES
(1, 'Faculty 1', '2022-06-13'),
(2, 'Faculty 2', '2022-06-15'),
(3, 'Faculty 3', '2022-06-15'),
(4, 'Faculty 4', '2022-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `tblfinalresult`
--

-- CREATE TABLE `tblfinalresult` (
--   `Id` int(10) NOT NULL,
--   `matricNo` varchar(50) NOT NULL,
--   `levelId` varchar(10) NOT NULL,
--   `semesterId` varchar(10) NOT NULL,
--   `sessionId` varchar(10) NOT NULL,
--   `totalCourseUnit` varchar(10) NOT NULL,
--   `totalScoreGradePoint` varchar(10) NOT NULL,
--   `gpa` varchar(255) NOT NULL,
--   `classOfDiploma` varchar(50) NOT NULL,
--   `dateAdded` varchar(25) NOT NULL
-- ) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfinalresult`
--

-- INSERT INTO `tblfinalresult` (`Id`, `matricNo`, `levelId`, `semesterId`, `sessionId`, `totalCourseUnit`, `totalScoreGradePoint`, `gpa`, `classOfDiploma`, `dateAdded`) VALUES
-- (1, 'SGS100', '1', '1', '1', '5', '0', '0', 'Fail', '2022-06-13'),
-- (2, 'SGS100', '1', '2', '1', '5', '13.75', '2.75', 'Lower Credit', '2022-06-13'),
-- (3, '10101', '1', '1', '1', '5', '17.5', '3.5', 'Distinction', '2022-06-15'),
-- (4, '10101', '1', '2', '1', '5', '16.25', '3.25', 'Upper Credit', '2022-06-15'),
-- (5, '14750', '1', '1', '1', '18', '63', '3.5', 'Distinction', '2022-06-15'),
-- (6, '14750', '1', '2', '1', '17', '54.25', '3.19', 'Upper Credit', '2022-06-15'),
-- (7, 'SGS123', '1', '1', '1', '22', '81', '3.68', 'Distinction', '2022-06-16'),
-- (8, 'SGS123', '1', '2', '1', '19', '62.25', '3.28', 'Upper Credit', '2022-06-16');

-- --------------------------------------------------------

--
-- Table structure for table `tbllevel`
--

CREATE TABLE `tbllevel` (
  `Id` int(20) NOT NULL,
  `levelName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbllevel`
--

INSERT INTO `tbllevel` (`Id`, `levelName`) VALUES
(1, 'Kindergaten'),
(2, 'Level One'),
(3, 'Level One'),
(4, 'Level Two');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `Id` int(10) NOT NULL,
  `matricNo` varchar(50) NOT NULL,
  `levelId` varchar(10) NOT NULL,
  `semesterId` varchar(10) NOT NULL,
  `sessionId` varchar(10) NOT NULL,
  `courseCode` varchar(50) NOT NULL,
  `courseUnit` varchar(50) NOT NULL,
  `score` varchar(50) NOT NULL,
  `scoreGradePoint` varchar(50) NOT NULL,
  `scoreLetterGrade` varchar(10) NOT NULL,
  `totalScoreGradePoint` varchar(50) NOT NULL,
  `dateAdded` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`Id`, `matricNo`, `levelId`, `semesterId`, `sessionId`, `courseCode`, `courseUnit`, `score`, `scoreGradePoint`, `scoreLetterGrade`, `totalScoreGradePoint`, `dateAdded`) VALUES
(1, 'SGS100', '1', '1', '1', 'PI01', '5', '30', '0', 'F', '0', '2022-06-13'),
(2, 'SGS100', '1', '2', '1', 'NT100', '5', '55', '2.75', 'BC', '13.75', '2022-06-13'),
(3, '10101', '1', '1', '1', 'PI01', '5', '72', '3.5', 'A', '17.5', '2022-06-15'),
(4, '10101', '1', '2', '1', 'NT100', '5', '68', '3.25', 'AB', '16.25', '2022-06-15'),
(5, '14750', '1', '1', '1', 'LC1', '6', '60', '3', 'B', '18', '2022-06-15'),
(6, '14750', '1', '1', '1', 'CL12', '6', '79', '4', 'AA', '24', '2022-06-15'),
(7, '14750', '1', '1', '1', 'PLi5', '6', '72', '3.5', 'A', '21', '2022-06-15'),
(8, '14750', '1', '2', '1', 'AL2', '6', '68', '3.25', 'AB', '19.5', '2022-06-15'),
(9, '14750', '1', '2', '1', 'LC8', '5', '57', '2.75', 'BC', '13.75', '2022-06-15'),
(10, '14750', '1', '2', '1', 'LII8', '6', '73', '3.5', 'A', '21', '2022-06-15'),
(11, 'SGS123', '1', '1', '1', 'EM12', '5', '63', '3', 'B', '15', '2022-06-16'),
(12, 'SGS123', '1', '1', '1', 'PS77', '4', '73', '3.5', 'A', '14', '2022-06-16'),
(13, 'SGS123', '1', '1', '1', 'CS69', '5', '80', '4', 'AA', '20', '2022-06-16'),
(14, 'SGS123', '1', '1', '1', 'SS88', '5', '82', '4', 'AA', '20', '2022-06-16'),
(15, 'SGS123', '1', '1', '1', 'MCP8', '3', '79', '4', 'AA', '12', '2022-06-16'),
(16, 'SGS123', '1', '2', '1', 'FC25', '5', '65', '3.25', 'AB', '16.25', '2022-06-16'),
(17, 'SGS123', '1', '2', '1', 'MM895', '6', '60', '3', 'B', '18', '2022-06-16'),
(18, 'SGS123', '1', '2', '1', 'PL08', '3', '72', '3.5', 'A', '10.5', '2022-06-16'),
(19, 'SGS123', '1', '2', '1', 'P225', '5', '74', '3.5', 'A', '17.5', '2022-06-16');

-- --------------------------------------------------------

--
-- Table structure for table `tblsemester`
--

CREATE TABLE `tblsemester` (
  `Id` int(20) NOT NULL,
  `semesterName` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsemester`
--

INSERT INTO `tblsemester` (`Id`, `semesterName`) VALUES
(1, 'First Sem'),
(2, 'Second Sem');

-- --------------------------------------------------------

--
-- Table structure for table `tblsession`
--

CREATE TABLE `tblsession` (
  `Id` int(20) NOT NULL,
  `sessionName` varchar(30) NOT NULL,
  `isActive` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsession`
--

INSERT INTO `tblsession` (`Id`, `sessionName`, `isActive`) VALUES
(1, '2022/2023', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff`
--

CREATE TABLE `tblstaff` (
  `Id` int(20) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `otherName` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `phoneNo` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `staffId` varchar(255) NOT NULL,
  `isAssigned` int(10) NOT NULL,
  `isPasswordChanged` int(10) NOT NULL,
  `dateCreated` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` (`Id`, `firstName`, `lastName`, `otherName`, `emailAddress`, `phoneNo`, `password`, `staffId`, `isAssigned`, `isPasswordChanged`, `dateCreated`) VALUES
(3, 'Bamidele', 'Bayo', 'olakunle', 'Bamidele@gmail.com', '07065903222', '12345', 'STF001111', 1, 0, '2020-06-21'),
(4, 'busola', 'keji', 'busayo', 'KemisolAde@gmail.com', '09073930022', '12345', 'STF002', 1, 0, '2020-06-21'),
(14, 'Samuel', 'Samuel', 'John', 'SamuelJohn@yahoo.com', '09087654321', '12345', 'STF0032', 1, 0, '2020-09-14'),
(15, 'asd', 'asd', 'asd', 'asd@asd.ccc', '5555666654', '12345', '444', 0, 0, '2022-06-15');

-- --------------------------------------------------------

-- table structure for table `tblmanresults`
CREATE TABLE `tblmanresults` (
  `Id` int(20) NOT NULL,
  `headRemarks` varchar(255) NOT NULL,
  `masRemarks` varchar(255) NOT NULL,
  `onRoll` int(10) NOT NULL,
  `termEnds` varchar(255) NOT NULL,
  `termBegins` varchar(20) NOT NULL,
  `daysPresent` varchar(255) NOT NULL,
  `totalAttendance` varchar(255) NOT NULL,
  `dateCreated` varchar(255) NOT NULL,
  `matricNo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for `tblmanresults`


INSERT INTO `tblmanresults` (`Id`, `headRemarks`, `masRemarks`, `onRoll`, `termEnds`, `termBegins`, `daysPresent`, `totalAttendance`, `dateCreated` , `matricNo`) VALUES
                              (3,  'Very Good', 'More ', 20, '20/06/2023', '20/06/2023', 100, 200, '2020-06-21', 'd0'),
                              (4, 'Very Good', 'Excellent', 23, '20/06/2023', '20/06/2023', 100, 200,  '2020-06-21', 'd122'),
                              (14,  'Very Good', 'Distinction', 12, '20/06/2023', '20/06/2023', 20, 200,  '2020-09-14', '22'),
                              (15,  'Very Good', 'Better',  13, '20/06/2023', '20/06/2023', 36, 200,  '2022-06-15', 'd33');


--

-- table structure for table `tblfinalresults`
CREATE TABLE tblfinalresults (
  `Id` int(11) NOT NULL PRIMARY KEY,
  `studentId` int(10) NOT NULL,
  `facultyId` int(10) NOT NULL,
  `departmentId` int(10) NOT NULL,
  `sessionId` int(10) NOT NULL,
  `courseId` int(10) NOT NULL,
  `midTerm` int(10) NOT NULL,
  `classT1` int(10) NOT NULL,
  `classT2` int(10) NOT NULL,
  `exx1` int(10) NOT NULL,
  `exx2` int(10) NOT NULL,
  `exx3` int(10) NOT NULL,
  `exx4` int(10) NOT NULL,
  `hw1` int(10) NOT NULL,
  `hw2` int(10) NOT NULL,
  `hw3` int(10) NOT NULL,
  `hw4`int(10) NOT NULL,
  `exam` int(10) NOT NULL,
 `dateCreated` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for `tblmanresults`


INSERT INTO `tblfinalresults` (`Id`, `studentId`, `facultyId`, `departmentId`, `sessionId`, `courseId`, `midTerm`, `classT1`, `classT2`, `exx1`, `exx2`, `exx3`, `exx4`, `hw1`, `hw2`, `hw3`, `hw4`,  `exam`, `dateCreated` ) VALUES
                              (1,  1,  1,   1,  1,  1,   20,  18,  18,  7,  7,   7,  7,  9,  9,  9,  9,  70, '2020-06-21');



--



-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `Id` int(20) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `otherName` varchar(255) NOT NULL,
  `matricNo` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `levelId` int(10) NOT NULL,
  `facultyId` int(10) NOT NULL,
  `departmentId` int(10) NOT NULL,
  `sessionId` int(10) NOT NULL,
  `dateCreated` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`Id`, `firstName`, `lastName`, `otherName`, `matricNo`, `password`, `levelId`, `facultyId`, `departmentId`, `sessionId`, `dateCreated`) VALUES
(17, 'Craig', 'Rodriguez', 'cr', 'SGS100', 'codeastro', 1, 1, 1, 1, '2022-06-13'),
(18, 'Edith', 'Beck', 'el', '10101', 'codeastro', 1, 1, 1, 1, '2022-06-15'),
(19, 'Chasity', 'Wilson', 'cw', '14750', 'codeastro', 1, 3, 3, 1, '2022-06-15'),
(20, 'Noel', 'Jacobs', 'nj', 'SGS123', 'codeastro', 1, 4, 5, 1, '2022-06-16'),
(21, 'Janet', 'Reyes', 'jjr', 'SGS124', 'codeastro', 1, 4, 5, 1, '2022-06-16'),
(22, 'Travis', 'Parton', 'ttp', 'SGS125', 'codeastro', 1, 4, 5, 1, '2022-06-16'),
(23, 'Colin', 'Farell', 'cff', 'SGS126', 'codeastro', 1, 4, 5, 1, '2022-06-16'),
(24, 'Peter', 'Falcone', 'pfr', 'SGS127', 'codeastro', 1, 4, 5, 1, '2022-06-16'),
(25, 'Zayn', 'Roberts', 'Zr', 'SGS128', 'codeastro', 1, 4, 5, 1, '2022-06-16'),
(26, 'Norman', 'Parbon', 'Nr', 'SGS129', 'codeastro', 1, 4, 4, 1, '2022-06-16'),
(27, 'Timothy', 'Herera', 'Th', 'SGS131', 'codeastro', 1, 2, 2, 1, '2022-06-16'),
(28, 'Nicholas', 'Ducc', 'Nd', 'SGS132', 'codeastro', 1, 3, 3, 1, '2022-06-16'),
(29, 'Joan', 'Havens', 'Jh', 'SGS133', 'codeastro', 1, 2, 2, 1, '2022-06-16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbladmintype`
--
ALTER TABLE `tbladmintype`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblassignedadmin`
--
ALTER TABLE `tblassignedadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcgparesult`
--
ALTER TABLE `tblcgparesult`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblcourse`
--
ALTER TABLE `tblcourse`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbldepartment`
--
ALTER TABLE `tbldepartment`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblfaculty`
--
ALTER TABLE `tblfaculty`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblfinalresult`
--
ALTER TABLE `tblfinalresults`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbllevel`
--
ALTER TABLE `tbllevel`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblsemester`
--
ALTER TABLE `tblsemester`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblsession`
--
ALTER TABLE `tblsession`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`Id`);

ALTER TABLE `tblmanresults`
  ADD PRIMARY KEY (`Id`);


--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbladmintype`
--
ALTER TABLE `tbladmintype`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblassignedadmin`
--
ALTER TABLE `tblassignedadmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblcgparesult`
--
ALTER TABLE `tblcgparesult`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tblcourse`
--
ALTER TABLE `tblcourse`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tbldepartment`
--
ALTER TABLE `tbldepartment`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tblfaculty`
--
ALTER TABLE `tblfaculty`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tblfinalresult`
--
ALTER TABLE `tblfinalresults`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbllevel`
--
ALTER TABLE `tbllevel`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tblsemester`
--
ALTER TABLE `tblsemester`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblsession`
--
ALTER TABLE `tblsession`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblstaff`
--
ALTER TABLE `tblstaff`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;



  ALTER TABLE `tblmanresults`
  MODIFY `Id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
