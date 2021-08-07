-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2021 at 04:38 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mybank`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branchId` int(11) NOT NULL,
  `branchNo` varchar(111) NOT NULL,
  `branchName` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branchId`, `branchNo`, `branchName`) VALUES
(1, '100101', 'Kasba Bavada'),
(2, '100102', 'shile');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackId` int(11) NOT NULL,
  `message` text NOT NULL,
  `userId` double NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `type` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `type`, `date`) VALUES
(1, 'cashier@cashier.com', 'cashier', 'cashier', '2021-08-06 04:36:27'),
(2, 'manager@manager.com', 'manager', 'manager', '2021-08-06 04:36:27'),
(3, 'clerk@gmail.com', 'clerk', 'type', '2021-08-06 07:13:12'),
(6, 'cashier2@cashier.com', 'cashier2', 'cashier', '2021-08-06 07:14:47');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `userId` varchar(111) NOT NULL,
  `notice` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `userId`, `notice`, `date`) VALUES
(1, '1', 'Dear Customer! <br> Our privacy policy is changed for account information get new prospectus from your nearest branch', '2021-08-06 13:11:46'),
(6, '2', 'Dear Satvasheel,<br>\r\nOur privacy policy has been changed please visit nearest <kbd> Spark Bank </kbd> branch for new prospectus.', '2021-08-06 06:29:23'),
(7, '2', 'hiii', '2021-08-07 13:20:03');

-- --------------------------------------------------------

--
-- Table structure for table `otheraccounts`
--

CREATE TABLE `otheraccounts` (
  `id` int(11) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `bankName` varchar(111) NOT NULL,
  `holderName` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otheraccounts`
--

INSERT INTO `otheraccounts` (`id`, `accountNo`, `bankName`, `holderName`, `balance`, `date`) VALUES
(1, '12001122', 'IPL', 'Sham Kadam', '40800', '2021-08-07 11:55:07'),
(2, '12001123', 'BBL', 'Radha Powar', '71000', '2021-08-05 11:55:07'),
(3, '12001124', 'HBL', 'Yousaf Khan', '71000', '2021-08-05 11:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transactionId` int(11) NOT NULL,
  `action` varchar(111) NOT NULL,
  `credit` varchar(111) NOT NULL,
  `debit` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `beneId` varchar(111) NOT NULL,
  `other` varchar(111) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transactionId`, `action`, `credit`, `debit`, `balance`, `beneId`, `other`, `userId`, `date`) VALUES
(28, 'transfer', '', '1', '', '', '10054777', 1, '2021-08-06 11:44:49'),
(29, 'withdraw', '', '500', '', '', '03356910260', 2, '2021-08-07 12:29:40'),
(30, 'deposit', '500', '', '', '', '03356910260', 2, '2021-08-07 12:30:00'),
(31, 'withdraw', '', '500', '', '', '03356910260', 2, '2021-08-07 12:30:37'),
(32, 'deposit', '500', '', '', '', '03356910260', 2, '2021-08-07 12:30:54'),
(33, 'transfer', '', '500', '', '', '10054777', 2, '2021-08-07 13:14:58'),
(34, 'transfer', '', '10', '', '', '10054777', 2, '2021-08-07 13:16:56'),
(35, 'transfer', '', '20', '', '', '10054777', 1, '2021-08-07 13:18:53'),
(36, 'deposit', '20', '', '', '', '03356910260', 2, '2021-08-07 13:22:01');

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE `useraccounts` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `name` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `cnic` varchar(111) NOT NULL,
  `number` varchar(111) NOT NULL,
  `city` varchar(111) NOT NULL,
  `address` varchar(111) NOT NULL,
  `source` varchar(111) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `branch` varchar(111) NOT NULL,
  `accountType` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`id`, `email`, `password`, `name`, `balance`, `cnic`, `number`, `city`, `address`, `source`, `accountNo`, `branch`, `accountType`, `date`) VALUES
(1, 'yash@gmail.com', 'yash', 'Yash Kosamkar ', '9779', '3210375555426', '03356910260', 'Malkapur', 'Narayan Pet,Malkapur', 'Programmer', '1005469', '1', 'Current', '2021-08-07 05:50:06'),
(2, 'Satvasheel@gmail.com', 'satv', 'Satvasheel Powar', '16040', '3210375555343', '03356910260', 'Jaysingpur', 'Main Road,Jaysingpur', 'Privet Job', '10054777', '1', 'Saving', '2021-08-07 04:50:06'),
(6, 'Rushi@gmail.com', 'rushi', 'Rushi Dinde', '234234', '3240338834902', '03356910260', 'Kolhapur', 'Kasba bavada, Kolhapur', 'Govt. job', '1513410739', '1', 'saving', '2021-08-07 07:52:40'),
(7, 'Rohan@gmail.com', 'rohan', 'Rohan Mane', '12121', '3240338834902', '03356910260', 'Ganeshvadi', 'Ganeshvadi, Kolhapur', 'Govt. job', '1513410837', '1', 'current', '2021-08-07 07:54:18'),
(8, 'Ram@gmail.com', 'ram', 'Ram Patil', '100000', '3124567890134', '033569101260', 'Danoli', 'Shivaji Chowk,Danoli', 'Farmer', '234156905', '1', 'Saving', '2021-08-07 11:51:34'),
(9, 'rohit@gmail.com', 'rohit', 'Rohit Kumar', '2000', '3240654378932', '099669900330', 'Kolhapur', 'Kasba bavada', 'business', '1628338754', '1', 'saving', '2021-08-07 12:24:41'),
(14, 'vinayak@gmail.com', 'vinayak', 'Vinayak Lohar', '23450', '3340859325986', '3355679012', 'Jaysingpur', 'Maratah colone', 'Job', '132567893', '1', 'Saving', '2021-08-07 14:28:55'),
(15, 'shubham@gmail.com', 'shubham', 'Shubham Wale', '465670', '3310456789236', '345672341095', 'Danoli', 'Kumbhar Gali', 'Gov.Job', '341678', '1', 'Current', '2021-08-07 14:32:07'),
(16, 'Omkar@gmail.com', 'omkar', 'Omkar Patil', '400000', '33501348921463', '335566779104', 'Sangli', 'Main road', 'Private Job', '3457178', '1', 'Saving', '2021-08-07 14:34:54'),
(20, 'sourabh@gmail.com', 'sourabh', 'Sourabh Sankpal', '123990', '331045016487128', '125782901256', 'Kolhapur', 'Main Line', 'Job', '2401355', '1', 'Saving', '2021-08-07 14:37:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branchId`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackId`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otheraccounts`
--
ALTER TABLE `otheraccounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionId`);

--
-- Indexes for table `useraccounts`
--
ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branchId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedbackId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `otheraccounts`
--
ALTER TABLE `otheraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transactionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
