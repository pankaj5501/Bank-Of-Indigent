-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2021 at 03:52 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank-of-indigent`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `account_num` varchar(20) NOT NULL,
  `IFSC_Code` varchar(10) NOT NULL,
  `email` varchar(40) NOT NULL,
  `contact_num` varchar(15) NOT NULL,
  `location` varchar(30) NOT NULL,
  `State` varchar(20) NOT NULL,
  `current_balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `account_num`, `IFSC_Code`, `email`, `contact_num`, `location`, `State`, `current_balance`) VALUES
(1, 'Rhythm Sharma', '601004183', 'BOI100401', 'srhythm2020@gmail.com', '8708537023', 'Kurukshetra', 'Haryana', 345676.07),
(3, 'Ishwar Baisla', '601003097', 'BOI100301', 'ishwar2303@gmail.com', '9821671707', 'Delhi', 'New Delhi', 355456.69),
(4, 'Tapas Baranwal', '601004204', 'BOI100402', 'tapasbaranal@gmail.com', '9017527234', 'Gurgaon', 'Haryana', 80167.76),
(5, 'Pankaj Gautam', '601001169', 'BOI100101', 'pankajg@gmail.com', '7088360659', 'Ghaziabad', 'Uttar Pradesh', 130894.65),
(11, 'Swati Bharadwaj', '601001193', 'BOI100102', 'swati@gmail.com', '9084812963', 'Agra', 'Uttar Pradesh', 100006.01),
(13, 'Marut Nandan', '601005131', 'BOI100501', 'marutnandan@gmail.com', '9128386811', 'Patna', 'Bihar', 55000.54),
(14, 'Akshay Mathur', '601006011', 'BOI100601', 'akshay@gmail.com', '9588265971', 'Jodhpur', 'Rajasthan', 83000),
(15, 'Anjali Joseph', '601007300', 'BOI10073', 'anjalij@orkut.com', '7985327643', 'Chennai', 'Tamil Nadu', 1287689),
(16, 'Pragati Rathor', '601008001', 'BOI10082', 'rathor12@gmail.com', '7088360601', 'Pune', 'Maharashtra', 845642.34),
(17, 'Kishan Khatri', '601009005', 'BOI10096', 'khkishan@gmail.com', '9876543676', 'Chandigarh', 'Punjab', 98567.09);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `sender_acc_num` varchar(20) NOT NULL,
  `recipient_acc_num` varchar(20) NOT NULL,
  `amount` double NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `sender_acc_num`, `recipient_acc_num`, `amount`, `timestamp`) VALUES
(39, '601004183', '601003097', 2, '2021-04-15 04:37:08'),
(40, '601004204', '601003097', 1000000, '2021-04-15 04:49:07'),
(41, '601004183', '601003097', 500000.547, '2021-04-15 15:01:01'),
(42, '601004183', '601003097', 500000.547, '2021-04-15 15:02:28'),
(43, '601003097', '601001169', 500000.654, '2021-04-15 15:08:11'),
(44, '601008001', '601003097', 1530900.657, '2021-04-15 15:53:05'),
(45, '601004183', '601003097', 1000, '2021-04-15 15:55:30'),
(46, '601003097', '601004204', 10000, '2021-04-15 16:04:37'),
(47, '601003097', '601004183', 1000, '2021-04-15 20:33:54'),
(48, '601004204', '601004183', 2, '2021-04-15 20:54:12'),
(49, '601003097', '601004204', 80000, '2021-04-15 20:58:21'),
(50, '601003097', '601004204', 2, '2021-04-15 21:01:18'),
(51, '601004183', '601003097', 2, '2021-04-15 21:07:58'),
(52, '601001169', '601001193', 3, '2021-04-16 13:54:38'),
(53, '601001169', '601001193', 3, '2021-04-16 14:03:51'),
(54, '601004183', '601003097', 3, '2021-04-16 14:58:41'),
(55, '601004183', '601003097', 3, '2021-04-16 18:37:28'),
(56, '601004183', '601004204', 32, '2021-04-16 18:55:03'),
(57, '601003097', '601004183', 2, '2021-04-16 19:22:15'),
(58, '601004183', '601003097', 0.1, '2021-04-17 16:51:13'),
(59, '601004183', '601003097', 20000, '2021-04-18 12:44:51'),
(60, '601004183', '601003097', 20000, '2021-04-18 12:45:27'),
(61, '601004183', '601003097', 20000, '2021-04-18 12:46:10'),
(62, '601004183', '601003097', 4704.8, '2021-04-18 12:51:50'),
(63, '601004183', '601003097', 90000, '2021-04-18 12:52:40'),
(64, '601004183', '601003097', 90000, '2021-04-18 12:53:20'),
(65, '601004183', '601003097', 5000, '2021-04-18 12:55:46'),
(66, '601004183', '601003097', 1e57, '2021-04-18 13:10:44'),
(67, '601004183', '601003097', 0.6, '2021-04-18 13:49:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
