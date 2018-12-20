-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2018 at 11:35 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pizza_delivery`
--

-- --------------------------------------------------------

--
-- Table structure for table `food_list`
--

CREATE TABLE `food_list` (
  `f_id` varchar(30) NOT NULL,
  `nm` varchar(30) NOT NULL,
  `typ` varchar(30) NOT NULL,
  `pr` varchar(30) NOT NULL,
  `sz` varchar(30) NOT NULL,
  `qty` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_list`
--

INSERT INTO `food_list` (`f_id`, `nm`, `typ`, `pr`, `sz`, `qty`) VALUES
('236651', 'CHEF\'S CHICKEN CHOICE', 'Medium', '12', 'Medium', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(8) NOT NULL,
  `fn` varchar(30) NOT NULL,
  `ln` varchar(30) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `gn` varchar(30) NOT NULL,
  `lc` varchar(30) NOT NULL,
  `st` varchar(30) NOT NULL,
  `cty` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `pin` varchar(30) NOT NULL,
  `m_no` varchar(30) NOT NULL,
  `e_id` varchar(30) NOT NULL,
  `pw` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `fn`, `ln`, `dob`, `gn`, `lc`, `st`, `cty`, `state`, `pin`, `m_no`, `e_id`, `pw`) VALUES
(16411992, 'Coral', 'Breding', '1995', 'male', 'OREGON', 'Street', 'Eugene', 'OREGON', '97401', '1234682', 'breding', 'breding'),
(46368118, 'Anass', 'Ayed', '2003', 'male', 'OREGON', 'Street', 'Eugene', 'OREGON', '97401', '54131654', 'legend', 'legend'),
(38148791, 'Anass', 'Ayed', '2010', 'male', 'OREGON', 'Street', 'Eugene', 'OREGON', '97401', '123456789', 'redcrow', 'redcrow'),
(29628498, 'Amir', 'Bech', '1998', 'male', 'California', 'Street', 'SFO', 'California', '97401', '845346', 'Striker', 'Striker');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `food_list`
--
ALTER TABLE `food_list`
  ADD PRIMARY KEY (`f_id`),
  ADD UNIQUE KEY `f_id` (`f_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD UNIQUE KEY `e_id` (`e_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
