-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2024 at 08:29 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '30-10-2022 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(4, 'Pediatrics', 4, 4, 20, '2023-12-30', '6:30 PM', '2023-12-19 11:21:05', 1, 0, '2023-12-19 11:24:19'),
(5, 'Radiology', 6, 4, 40, '2023-12-23', '10:45 PM', '2023-12-19 15:40:10', 1, 1, NULL),
(6, 'Anesthesia', 8, 5, 70, '2023-12-26', '11:00 PM', '2023-12-19 15:59:05', 1, 1, NULL),
(10, 'General Surgery', 5, 4, 80, '2023-12-30', '11:30 PM', '2023-12-19 16:20:15', 1, 1, NULL),
(11, 'General Surgery', 5, 4, 80, '2023-12-30', '12:15 AM', '2023-12-19 16:20:29', 1, 1, NULL),
(12, 'General Surgery', 5, 4, 80, '2023-12-29', '9:00 AM', '2023-12-20 01:48:33', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` int(11) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(4, 'Pediatrics', 'Alya ', 'Jl. Panataran No 1A', 20, 899911123, 'alya@gmail.com', 'd592dcf42786e319d4b851f333ee478b', '2023-12-19 10:58:11', NULL),
(5, 'General Surgery', 'Joanne', 'Cluster Harmony PIK', 80, 8777111483, 'joanne@gmail.com', '64190075eef0c6802844f0c1b17ba405', '2023-12-19 11:02:45', NULL),
(6, 'Radiology', 'Ivan', 'Nusa Loka BSD', 40, 8629372837, 'ivan@gmail.com', '0339df446b5ab1307d178b3f87a3d0fd', '2023-12-19 11:04:37', NULL),
(7, 'Dermatology', 'Anne', 'Jl. hehe 123456', 90, 98329408903, 'anne@gmail.com', 'dd7f84c0fe48965d37aadef3c815137c', '2023-12-19 13:53:36', NULL),
(8, 'Anesthesia', 'Elijah', 'jl. hahahaha 678', 70, 8793498274, 'elijah@gmail.com', '7b8138b60764ef7957e6a9f288dd4258', '2023-12-19 15:57:24', NULL),
(11, 'General Surgery', 'Davin', 'hsvdbhjasdbvh', 90, 9273091238912, 'davin@gmail.com', '7b8b0fecd2d1191c23986ef651b5e203', '2023-12-19 16:13:27', NULL),
(12, 'Dermatology', 'Sir Bahana', 'Jakarta', 60, 78623798132, 'bahana@gmail.com', 'd63ef954a6582bfc48acfb45f8ac0a1e', '2023-12-20 01:36:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(29, 4, 'alya@gmail.com', 0x3a3a3100000000000000000000000000, '2023-12-19 11:22:15', '19-12-2023 04:54:47 PM', 1),
(30, 5, 'joanne@gmail.com', 0x3a3a3100000000000000000000000000, '2023-12-19 11:34:11', NULL, 1),
(31, 4, 'alya@gmail.com', 0x3a3a3100000000000000000000000000, '2023-12-19 13:59:59', '19-12-2023 07:30:05 PM', 1),
(32, 8, 'elijah@gmail.com', 0x3a3a3100000000000000000000000000, '2023-12-19 15:58:15', '19-12-2023 09:28:33 PM', 1),
(33, 8, 'elijah@gmail.com', 0x3a3a3100000000000000000000000000, '2023-12-19 15:59:34', '19-12-2023 09:34:33 PM', 1),
(34, 4, 'alya@gmail.com', 0x3a3a3100000000000000000000000000, '2023-12-19 16:05:27', NULL, 1),
(35, 4, 'alya@gmail.com', 0x3a3a3100000000000000000000000000, '2023-12-19 16:21:23', '19-12-2023 09:53:27 PM', 1),
(36, 4, 'alya@gmail.com', 0x3a3a3100000000000000000000000000, '2023-12-20 01:11:29', '20-12-2023 06:41:36 AM', 1),
(37, 4, 'alya@gmail.com', 0x3a3a3100000000000000000000000000, '2023-12-20 01:49:39', '20-12-2023 07:24:18 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Orthopedics', '2022-10-30 18:09:46', NULL),
(2, 'Internal Medicine', '2022-10-30 18:09:57', NULL),
(3, 'Obstetrics and Gynecology', '2022-10-30 18:10:18', NULL),
(4, 'Dermatology', '2022-10-30 18:10:28', NULL),
(5, 'Pediatrics', '2022-10-30 18:10:37', NULL),
(6, 'Radiology', '2022-10-30 18:10:46', NULL),
(7, 'General Surgery', '2022-10-30 18:10:56', NULL),
(8, 'Ophthalmology', '2022-10-30 18:11:03', NULL),
(9, 'Anesthesia', '2022-10-30 18:11:15', NULL),
(10, 'Pathology', '2022-10-30 18:11:22', NULL),
(11, 'ENT', '2022-10-30 18:11:30', NULL),
(12, 'Dental Care', '2022-10-30 18:11:39', NULL),
(13, 'Dermatologists', '2022-10-30 18:12:02', NULL),
(14, 'Endocrinologists', '2022-10-30 18:12:10', NULL),
(15, 'Neurologists', '2022-10-30 18:12:30', NULL),
(19, 'hehe', '2023-12-19 15:53:19', NULL),
(20, 'waw', '2023-12-19 16:09:56', NULL),
(21, 'dentist', '2023-12-20 01:35:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'Alya Ridwan', 'alya@test.com', 1425362514, 'This is for testing purposes.   ', '2022-10-30 16:52:03', 'klnfdjfnidfniokenfi', '2023-12-19 11:16:03', 1),
(2, 'Joanne', 'jo@test.com', 1111122233, 'This is for testing', '2022-11-06 13:13:41', 'Contact the patient', '2023-12-19 11:12:35', 1),
(3, 'jovan', 'jov@test.com', 89238092, 'this is for testing hehehehehehehe', '2023-12-19 11:15:12', 'try hahahah', '2023-12-19 16:14:49', 1),
(4, 'abbas', 'abbas@gmail.com', 83924789234, 'the doctor was mean', '2023-12-20 01:41:18', 'sorry', '2023-12-20 01:41:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(2, 13, '90', '400', '80', '36', 'ibuprofen', '2023-12-19 16:23:01'),
(3, 2, '90', '400', '80', '36', 'werwerew', '2023-12-20 01:54:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp(),
  `OpenningTime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `OpenningTime`) VALUES
(1, 'aboutus', 'About Us', '<ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.313em; margin-left: 1.655em;\" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;=\"\" background-color:=\"\" rgb(255,=\"\" 246,=\"\" 246);\"=\"\"><li style=\"text-align: left;\"><font color=\"#000000\">The Hospital Management System (HMS) is designed for Any Hospital to replace their existing manual, paper based system. The new system is to control the following information; patient information, room availability, staff and operating room schedules, and patient invoices. These services are to be provided in an efficient, cost effective manner, with the goal of reducing the time and resources currently required for such tasks.</font></li><li style=\"text-align: left;\"><font color=\"#000000\">A significant part of the operation of any hospital involves the acquisition, management and timely retrieval of great volumes of information. This information typically involves; patient personal information and medical history, staff information, room and ward scheduling, staff scheduling, operating theater scheduling and various facilities waiting lists. All of this information must be managed in an efficient and cost wise fashion so that an institution\'s resources may be effectively utilized HMS will automate the management of the hospital making it more efficient and error free. It aims at standardizing data, consolidating data ensuring data integrity and reducing inconsistencies.&nbsp;</font></li></ul>', NULL, NULL, '2020-05-20 07:21:52', NULL),
(2, 'contactus', 'Contact Details', 'Jl. Jenderal Sudirman, Gelora, Kecamatan Tanah Abang, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10270', 'info@gmail.com', 1122334455, '2020-05-20 07:24:07', '9 am To 8 Pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(255) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(2, 4, 'Sammy Axel', 82739182, 'sammy@gmail.com', 'Male', 'Cibinong 1234', 19, 'asthma', '2023-12-19 11:23:47', '2023-12-20 01:53:45'),
(3, 5, 'Jovan', 8789237928, 'jovan@gmail.com', 'male', 'Bintaro 1234', 19, 'none', '2023-12-19 11:35:03', NULL),
(12, 4, 'Brandon', 2392139, 'brandon@gmail.com', 'male', 'eafsdfsddsf', 19, 'fefsfsdfdsf', '2023-12-19 16:07:22', NULL),
(13, 4, 'Raja', 9872392813, 'raja@gmail.com', 'male', 'cawang', 19, 'cough', '2023-12-19 16:22:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(5, NULL, 'hehe@gmail.com', 0x3a3a3100000000000000000000000000, '2023-12-03 08:22:34', NULL, 0),
(6, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2023-12-03 08:23:25', '03-12-2023 01:54:22 PM', 1),
(7, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2023-12-03 08:25:38', '03-12-2023 01:56:11 PM', 1),
(8, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2023-12-19 10:53:34', NULL, 0),
(9, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2023-12-19 10:53:52', NULL, 0),
(10, 4, 'sammy@gmail.com', 0x3a3a3100000000000000000000000000, '2023-12-19 11:19:58', '19-12-2023 04:51:50 PM', 1),
(11, 5, 'jovan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-12-19 11:33:28', '19-12-2023 05:03:41 PM', 1),
(12, 4, 'sammy@gmail.com', 0x3a3a3100000000000000000000000000, '2023-12-19 13:59:09', NULL, 1),
(13, 4, 'sammy@gmail.com', 0x3a3a3100000000000000000000000000, '2023-12-19 15:39:32', '19-12-2023 09:20:16 PM', 1),
(14, 5, 'jovan@gmail.com', 0x3a3a3100000000000000000000000000, '2023-12-19 15:58:46', '19-12-2023 09:29:15 PM', 1),
(15, 4, 'sammy@gmail.com', 0x3a3a3100000000000000000000000000, '2023-12-19 16:16:17', '19-12-2023 09:51:12 PM', 1),
(16, 4, 'sammy@gmail.com', 0x3a3a3100000000000000000000000000, '2023-12-20 01:46:08', '20-12-2023 07:19:21 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(3, 'alya', 'jl. jendral sudirman', 'jakarta', 'female', 'hehe@gmailcom', '6d2f2d182c03040daeddbd634291813b', '2023-12-03 08:22:17', NULL),
(4, 'Sammy Axel', 'Cibinong 1234', 'Bogor', 'male', 'sammy@gmail.com', '6132a0be89e2fe074e19f9dacf487412', '2023-12-19 11:19:38', NULL),
(5, 'Jovan', 'Bintaro 1234', 'Tangerang', 'male', 'jovan@gmail.com', 'f3c1dd7c0d8b0d160be05c5df693ef2e', '2023-12-19 11:32:35', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `doctorId` (`doctorId`),
  ADD KEY `doctorSpecialization` (`doctorSpecialization`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `specilization` (`specilization`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `specilization` (`specilization`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PatientID` (`PatientID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Docid` (`Docid`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `uid_2` (`uid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`doctorSpecialization`) REFERENCES `doctors` (`specilization`),
  ADD CONSTRAINT `doctorId` FOREIGN KEY (`doctorId`) REFERENCES `doctors` (`id`),
  ADD CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_ibfk_1` FOREIGN KEY (`specilization`) REFERENCES `doctorspecilization` (`specilization`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD CONSTRAINT `doctorslog_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD CONSTRAINT `tblmedicalhistory_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `tblpatient` (`ID`);

--
-- Constraints for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD CONSTRAINT `tblpatient_ibfk_1` FOREIGN KEY (`Docid`) REFERENCES `doctors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
