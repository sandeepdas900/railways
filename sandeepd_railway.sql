-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 01, 2017 at 09:25 AM
-- Server version: 5.6.37
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sandeepd_railway`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(200) NOT NULL,
  `adminuser` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `status` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `adminuser`, `password`, `status`) VALUES
(1, 'user', '123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `c_id` int(200) NOT NULL,
  `c_trainno` varchar(200) NOT NULL,
  `seatno` varchar(200) NOT NULL,
  `c_problem` varchar(200) NOT NULL,
  `c_worked` varchar(200) NOT NULL DEFAULT '0',
  `c_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`c_id`, `c_trainno`, `seatno`, `c_problem`, `c_worked`, `c_date`) VALUES
(1, '345678', 'd1 36', '1', '', '2017-11-30'),
(2, '345678', 'd1 36', '3', '', '2017-11-30'),
(3, '567890', 'd1 45', '1', '0', '2017-11-30'),
(4, '345678', 'd3 41', '2', '0', '2017-11-30'),
(5, '567890', 'D1 56', '3', '0', '2017-11-30'),
(6, '345678', '', '1', '0', '2017-11-30'),
(7, '12195', 'D1 42', '1', '0', '2017-12-01'),
(8, '12195', 'D1 42', '2', '0', '2017-12-01'),
(9, '41756', 'Do 56', '1', '0', '2017-12-01'),
(10, '41756', 'Do 56', '2', '0', '2017-12-01'),
(11, '41756', 'Do 56', '3', '0', '2017-12-01');

-- --------------------------------------------------------

--
-- Table structure for table `currentworker`
--

CREATE TABLE `currentworker` (
  `current_id` int(200) NOT NULL,
  `trainnumber` varchar(200) NOT NULL,
  `policed` varchar(200) NOT NULL,
  `policename` varchar(200) NOT NULL,
  `policenumber` varchar(200) NOT NULL,
  `tced` varchar(200) NOT NULL,
  `tcname` varchar(200) NOT NULL,
  `tcnumber` varchar(200) NOT NULL,
  `sweeped` varchar(200) NOT NULL,
  `sweepername` varchar(200) NOT NULL,
  `sweepernumber` varchar(200) NOT NULL,
  `doctorname` varchar(200) NOT NULL,
  `doctornumber` varchar(200) NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currentworker`
--

INSERT INTO `currentworker` (`current_id`, `trainnumber`, `policed`, `policename`, `policenumber`, `tced`, `tcname`, `tcnumber`, `sweeped`, `sweepername`, `sweepernumber`, `doctorname`, `doctornumber`, `Date`) VALUES
(1, '345678', 'on', 'sandeep', '9001092208', 'on', 'sandeep1', '9057660030', 'on', 'sandeep2', '9001092208', 'sandeep3', '9057660030', '2017-11-30 11:46:46'),
(2, '567890', 'on', 'sandeep', '9001092208', 'on', 'sandeep1', '9001092208', 'on', 'sandeep2', '9001092208', 'sandeep3', '9001092208', '2017-11-30 15:26:08'),
(3, '12195', 'on', 'Vansi', '9521704640', 'on', 'G', '9001092208', 'on', 'Dubey', '9057660030', 'Vanshee', '8949206650', '2017-12-01 04:20:17'),
(4, '41756', 'on', 'S', '9001092208', 'on', 'D', '8005811518', 'on', 'W', '9521704640', 'R', '9057660030', '2017-12-01 06:10:36');

-- --------------------------------------------------------

--
-- Table structure for table `trains`
--

CREATE TABLE `trains` (
  `t_id` int(200) NOT NULL,
  `train_no` varchar(200) NOT NULL,
  `train_name` varchar(200) NOT NULL,
  `t_status` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trains`
--

INSERT INTO `trains` (`t_id`, `train_no`, `train_name`, `t_status`) VALUES
(1, '345678', 'indra', 0),
(2, '567890', 'funexpress', 0),
(3, '890987', 'Train', 0),
(4, '12195', 'Agraintercity', 0),
(5, '41756', 'Sandeepy', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `currentworker`
--
ALTER TABLE `currentworker`
  ADD PRIMARY KEY (`current_id`);

--
-- Indexes for table `trains`
--
ALTER TABLE `trains`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `c_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `currentworker`
--
ALTER TABLE `currentworker`
  MODIFY `current_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `trains`
--
ALTER TABLE `trains`
  MODIFY `t_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
