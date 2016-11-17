-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2016 at 11:42 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `sl` int(40) NOT NULL,
  `Course_ID` varchar(10) NOT NULL,
  `Course_Title` varchar(40) NOT NULL,
  `Section` int(10) NOT NULL,
  `Time` varchar(50) NOT NULL,
  `Day` varchar(50) NOT NULL,
  `Dept` varchar(30) NOT NULL,
  `Instructor` varchar(30) NOT NULL,
  `Ins_ID` int(10) NOT NULL,
  `Semester` varchar(40) NOT NULL,
  `Room` varchar(30) NOT NULL,
  `Capacity` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`sl`, `Course_ID`, `Course_Title`, `Section`, `Time`, `Day`, `Dept`, `Instructor`, `Ins_ID`, `Semester`, `Room`, `Capacity`) VALUES
(2, 'CSC101', 'Introduction to Computer Science', 1, '10:00AM to 11:30AM', 'M/W', 'CSE', 'bbbb', 0, '', '', 30),
(3, 'CSC101', 'Introduction to Computer Science', 2, '10:00AM to 11:30AM', 'S/T', 'CSE', 'bbbb', 0, '', '', 30),
(4, 'CSC201', 'D Math', 2, '10:00AM to 11:30AM', 'M/W', 'CSE', 'TBA', 0, '', '', 30),
(13, 'CSC401', 'Database', 1, '08:00AM to 09:30AM', 'M/W', 'CSE', 'Dr. Mahady', 4010, 'Autumn 2016', '4200', 30),
(1, 'CSC490', 'Advance Networking', 1, '08:00AM to 09:30AM', 'M/W', 'CSE', 'Dr. Sabbir', 4502, 'Summer 2016', '5014', 30),
(17, 'ECR433', 'Engineering Economics and Fina', 1, '10:00AM to 11:30AM', 'M/W', 'EEE', 'Dr. Anwar', 4010, 'Autumn 2016', '4200', 30),
(6, 'EEE101', 'Introduction to EEE', 1, '08:00AM to 09:30AM', 'S/T', 'EEE', 'aaaa', 0, '', '', 30),
(7, 'EEE201', 'EEE Math', 1, '08:00AM to 09:30AM', 'M/W', 'EEE', 'TBA', 0, '', '', 30),
(16, 'EEE301', 'EEE Math2', 1, '10:00AM to 11:30AM', 'S/T', 'EEE', 'Dr. Anwar', 4010, 'Autumn 2016', '4200', 30),
(8, 'ETE101', 'Introduction to ETE', 1, '10:00AM to 11:30AM', 'M/W', 'ETE', 'TBA', 0, '', '', 30),
(9, 'ETE101', 'Introduction to ETE', 2, '08:00AM to 09:30AM', 'S/T', 'ETE', 'TBA', 0, '', '', 30);

-- --------------------------------------------------------

--
-- Table structure for table `course_house`
--

CREATE TABLE `course_house` (
  `sl` int(10) NOT NULL,
  `Course_ID` varchar(10) NOT NULL,
  `Course_Title` varchar(30) NOT NULL,
  `Section` int(10) NOT NULL,
  `Time` varchar(50) NOT NULL,
  `Day` varchar(30) NOT NULL,
  `Dept` varchar(30) NOT NULL,
  `Capacity` int(30) NOT NULL,
  `Semester` varchar(40) NOT NULL,
  `Flag` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_house`
--

INSERT INTO `course_house` (`sl`, `Course_ID`, `Course_Title`, `Section`, `Time`, `Day`, `Dept`, `Capacity`, `Semester`, `Flag`) VALUES
(23, 'BUS201', 'Introduction to Business', 1, '08:00AM to 09:30AM', 'M/W', 'BBA', 35, 'Summer 2016', 0),
(2, 'CSC201', 'D Math', 2, '10:00AM to 11:30AM', 'S/T', 'CSE', 30, 'Autumn 2016', 1),
(10, 'CSC301', 'Automata', 1, '08:00AM to 09:30AM', 'M/W', 'CSE', 30, 'Autumn 2016', 0),
(9, 'CSC401', 'Database', 1, '08:00AM to 09:30AM', 'M/W', 'CSE', 30, 'Autumn 2016', 1),
(20, 'CSE211', 'Algorithms', 1, '10:00AM to 11:30AM', 'M/W', 'CSE', 30, 'Autumn 2016', 0),
(16, 'CSE213', 'Object Oriented Programming', 2, '10:00AM to 11:30AM', 'M/W', 'CSE', 30, 'Autumn 2016', 0),
(17, 'CSE214', 'Computer Organization & Archit', 1, '08:00AM to 09:30AM', 'M/W', 'CSE', 30, 'Autumn 2016', 0),
(18, 'CSE307', 'System Analysis and Design', 1, '01:40PM to 03:10PM', 'S/T', 'CSE', 30, 'Autumn 2016', 0),
(19, 'CSE313', 'Compiler Construction', 1, '08:00AM to 09:30AM', 'M/W', 'CSE', 30, 'Autumn 2016', 0),
(14, 'ECR433', 'Engineering Economics and Fina', 1, '10:00AM to 11:30AM', 'M/W', 'EEE', 30, 'Autumn 2016', 1),
(8, 'EEE102', 'EEE Math', 1, '08:00AM to 09:30AM', 'M/W', 'EEE', 30, 'Autumn 2016', 0),
(11, 'EEE301', 'EEE Math2', 1, '10:00AM to 11:30AM', 'S/T', 'EEE', 30, 'Autumn 2016', 1),
(15, 'EEE406', 'Telecomm. Systems II', 1, '08:00AM to 09:30AM', 'M/W', 'EEE', 30, 'Autumn 2016', 0),
(12, 'EEE413', 'Solid State Electronics', 1, '01:40PM to 03:10PM', 'M/W', 'EEE', 30, 'Autumn 2016', 0),
(13, 'EEE417', 'Switchgear and Protection', 1, '08:00AM to 09:30AM', 'S/T', 'EEE', 30, 'Autumn 2016', 0),
(3, 'ETE101', 'Introduction to ETE', 1, '08:00AM to 09:30AM', 'M/W', 'EEE', 30, 'Autumn 2016', 1),
(4, 'ETE101', 'Introduction to ETE', 2, '10:00AM to 11:30AM', 'S/T', 'EEE', 30, 'Autumn 2016', 0),
(6, 'ETE102', 'Introduction to ETE', 1, '08:00AM to 09:30AM', 'M/W', 'ETE', 30, 'Autumn 2016', 0);

-- --------------------------------------------------------

--
-- Table structure for table `crud`
--

CREATE TABLE `crud` (
  `sl` int(10) NOT NULL,
  `Id` int(10) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crud`
--

INSERT INTO `crud` (`sl`, `Id`, `pass`, `name`) VALUES
(0, 1000, '1000', 'asdf'),
(1, 1234, '1234', 'abcd');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `sl` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`sl`, `name`, `email`) VALUES
(1, 'cc', 'dd'),
(1, 'mithun', '1234'),
(2, 'ddd', 'rrtrrr'),
(3, 'ewww', 'rttt');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_11_11_190942_create_tasks_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE `reg` (
  `sl` int(10) NOT NULL,
  `ID` int(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Type` varchar(15) NOT NULL,
  `Dept` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`sl`, `ID`, `Name`, `Password`, `Email`, `Type`, `Dept`) VALUES
(3, 1111, 'Dr. Mahady', '1111', 'aaaa@gmail.com', 'Head', 'CSE'),
(7, 1212, 'Mithun', '1212', 'mdmithun250@gmail.co', 'Student', 'CSE'),
(2, 1222, 'Dr. Abdur Razzak', '1222', 'head@gmail.com', 'Head', 'EEE'),
(1, 1234, 'Register', '1234', 'register@gmail.com', 'Register', 'ALL'),
(4, 2222, 'Dr. Ashraful Amin', '2222', 'bbbb@gmail.com', 'Head', 'CSE'),
(10, 2250, 'Dr. Arif Hasan', '2250', 'arif@gmail.com', 'Head', 'BBA'),
(11, 2524, 'Dr. Shafiq', '2524', 'shafiq@gmail.com', 'Faculty', 'BBA'),
(12, 2555, 'Dr. Alam', '2555', 'alom@gmail.com', 'Faculty', 'BBA'),
(13, 2560, 'Dr. Akash Ahamed', '2560', 'akash@gmail.com', 'Faculty', 'BBA'),
(5, 3333, 'Dr. Feroz Ahmed', '3333', 'cccc@gmail.com', 'Faculty', 'EEE'),
(20, 4010, 'Dr. Anwar', '4010', 'anwar@gmail.com', 'Faculty', 'EEE'),
(6, 4444, 'Anik', '4444', 'anik@gmail.com', 'Student', 'EEE'),
(8, 4500, 'Dr. Ferdouse Zahid', '4500', 'ferdouse@gmail.com', 'Faculty', 'CSE'),
(9, 4502, 'Dr. Sabbir', '4502', 'sabbir@gmail.com', 'Faculty', 'CSE'),
(18, 4570, 'Dr. Khosrue', '4570', 'khosrue@gmail.com', 'Faculty', 'EEE'),
(19, 4575, 'Dr. Sahriar Khan', '4575', 'sahriar@gmail.com', 'Faculty', 'EEE'),
(14, 5002, 'Asif Hasan', '5002', 'asif@gmail.com', 'Student', 'BBA'),
(15, 5012, 'Nishat', '5012', 'nishat@gmail.com', 'Student', 'EEE'),
(16, 5022, 'Mazhar', '5022', 'mazhar@gmail.com', 'Student', 'CSE'),
(17, 5034, 'Newaz Sharif', '5034', 'newaz@gmail.com', 'Student', 'EEE');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`Course_ID`,`Section`),
  ADD KEY `sl` (`sl`);

--
-- Indexes for table `course_house`
--
ALTER TABLE `course_house`
  ADD PRIMARY KEY (`Course_ID`,`Section`),
  ADD KEY `sl` (`sl`);

--
-- Indexes for table `crud`
--
ALTER TABLE `crud`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `sl` (`sl`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD KEY `sl` (`sl`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `reg`
--
ALTER TABLE `reg`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `sl` (`sl`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `sl` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `course_house`
--
ALTER TABLE `course_house`
  MODIFY `sl` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `sl` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `reg`
--
ALTER TABLE `reg`
  MODIFY `sl` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
