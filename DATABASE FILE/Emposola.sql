-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2023 at 04:37 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `etmsh`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_info`
--

CREATE TABLE `attendance_info` (
  `aten_id` int(20) NOT NULL,
  `atn_user_id` int(20) NOT NULL,
  `in_time` varchar(200) DEFAULT NULL,
  `out_time` varchar(150) DEFAULT NULL,
  `total_duration` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `attendance_info`
--

INSERT INTO `attendance_info` (`aten_id`, `atn_user_id`, `in_time`, `out_time`, `total_duration`) VALUES
(35, 17, '22-03-2021 11:37:44', '19-01-2023 20:43:02', '09:05:18'),
(37, 21, '22-03-2021 13:49:26', '19-01-2023 20:42:55', '06:53:29'),
(39, 23, '22-03-2021 13:51:51', '19-01-2023 20:43:00', '06:51:09'),
(40, 20, '22-03-2021 13:52:24', '19-01-2023 20:43:01', '06:50:37'),
(41, 25, '22-03-2021 15:09:00', '19-01-2023 20:43:02', '05:34:02'),
(42, 1, '22-03-2021 22:01:43', '19-01-2023 20:42:36', '22:40:53'),
(43, 1, '19-01-2023 20:45:04', NULL, NULL),
(44, 18, '19-01-2023 20:46:01', '19-01-2023 20:48:54', '00:02:53'),
(45, 18, '19-01-2023 21:34:06', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `task_info`
--

CREATE TABLE `task_info` (
  `task_id` int(50) NOT NULL,
  `t_title` varchar(120) NOT NULL,
  `t_description` text DEFAULT NULL,
  `t_start_time` varchar(100) DEFAULT NULL,
  `t_end_time` varchar(100) DEFAULT NULL,
  `t_user_id` int(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = incomplete, 1 = In progress, 2 = complete'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `task_info`
--

INSERT INTO `task_info` (`task_id`, `t_title`, `t_description`, `t_start_time`, `t_end_time`, `t_user_id`, `status`) VALUES
(20, 'Communications', 'You\'re assigned to handle incoming calls and other communications within the office.', '2021-03-22 12:00', '2021-03-22 13:00', 17, 2),
(21, 'Filing', 'You\'re assigned to management of filing system.', '2021-03-22 10:00', '2021-03-22 15:10', 22, 0),
(22, 'Virtual Meeting', 'Please join the virtual meeting with your senior manager regarding your works on this placement.', '2021-03-22 15:00', '2021-03-22 15:20', 24, 0),
(23, 'Data Entry', 'Go through some data!', '2021-03-22 14:00', '2021-03-22 17:00', 25, 1),
(25, 'ABC', 'Abc', '2023-01-19 15:00', '2023-01-26 13:00', 17, 0),
(26, 'AAAA', 'bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb', '2023-01-19 18:00', '2023-01-26 12:20', 18, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `user_id` int(20) NOT NULL,
  `fullname` varchar(120) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `temp_password` varchar(100) DEFAULT NULL,
  `user_role` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`user_id`, `fullname`, `username`, `email`, `password`, `temp_password`, `user_role`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', '892020bd58a342096f7699d16a5d9f90', NULL, 1),
(17, 'Henry Gonzalez', 'henry', 'henry@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', 2),
(18, 'Christine Randolph', 'christine', 'christine0@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', 2),
(19, 'Thomas Yorke', 'thomas', 'thomasrh@gmail.com', 'd19cbde3f7ae39d1ac027dd5319ff687', '7301941', 2),
(20, 'Elijah Jones', 'elijah', 'elijah.jns@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', 2),
(21, 'Jacob Miller', 'jacob', 'miller.jacob96@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', 2),
(22, 'Isabella Moore', 'isabella', 'mooreisa@gmail.com', 'd03b2612e88338d193a0ff05c3216053', '7329407', 2),
(23, 'Harry Denn', 'harryden', 'harryden@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', 2),
(24, 'Ava Anderson', 'ava', 'avason@gmail.com', '789395abc72a025db1604582f52af520', '5876160', 2),
(25, 'Logan Smith', 'logan', 'logansmith@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', 2),
(27, 'MH RONY', 'mhrony', 'mh.rony.dhanvi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_info`
--
ALTER TABLE `attendance_info`
  ADD PRIMARY KEY (`aten_id`);

--
-- Indexes for table `task_info`
--
ALTER TABLE `task_info`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance_info`
--
ALTER TABLE `attendance_info`
  MODIFY `aten_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `task_info`
--
ALTER TABLE `task_info`
  MODIFY `task_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
