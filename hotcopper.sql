-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2019 at 04:53 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotcopper`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(128) NOT NULL,
  `asx_code` varchar(16) NOT NULL,
  `GICS_industry_group` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `postlist`
--

CREATE TABLE `postlist` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  `post_count` int(11) NOT NULL DEFAULT '0',
  `ga_count` varchar(32) NOT NULL,
  `post_date` varchar(64) NOT NULL,
  `post_no` varchar(64) NOT NULL,
  `commentary` text NOT NULL,
  `images_commentary` text NOT NULL,
  `ticker` varchar(64) NOT NULL,
  `post_price` varchar(64) NOT NULL,
  `post_sentiment` varchar(64) NOT NULL,
  `disclosure` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `post_company`
--

CREATE TABLE `post_company` (
  `id` int(11) NOT NULL,
  `tag` varchar(8) NOT NULL,
  `post_no` varchar(32) NOT NULL,
  `subject` varchar(128) NOT NULL,
  `replies` varchar(32) DEFAULT NULL,
  `link` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `postlist`
--
ALTER TABLE `postlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_company`
--
ALTER TABLE `post_company`
  ADD PRIMARY KEY (`id`);


--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `postlist`
--
ALTER TABLE `postlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
--
-- AUTO_INCREMENT for table `post_company`
--
ALTER TABLE `post_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
