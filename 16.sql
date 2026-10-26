-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2026 at 04:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fooddeliverydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `foodorders`
--

CREATE TABLE `foodorders` (
  `order_id` int(11) NOT NULL,
  `restaurant_name` varchar(100) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `order_amount` decimal(10,2) DEFAULT NULL,
  `order_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foodorders`
--

INSERT INTO `foodorders` (`order_id`, `restaurant_name`, `customer_name`, `order_amount`, `order_date`) VALUES
(0, 'restaurant_name', 'customer_name', 0.00, '0000-00-00'),
(1, 'Dominos', 'Rahul', 550.00, '2026-10-01'),
(2, 'McDonalds', 'Priya', 350.00, '2026-10-02'),
(3, 'Dominos', 'Rahul', 750.00, '2026-10-03'),
(4, 'Subway', 'Amit', 250.00, '2026-10-04'),
(5, 'McDonalds', 'Priya', 450.00, '2026-10-05'),
(6, 'Subway', 'Rahul', 300.00, '2026-10-06'),
(7, 'Dominos', 'Amit', 650.00, '2026-10-07'),
(8, 'McDonalds', 'Rahul', 400.00, '2026-10-08');

-- --------------------------------------------------------

--
-- Table structure for table `topsongs`
--

CREATE TABLE `topsongs` (
  `song_id` int(11) NOT NULL,
  `song_title` varchar(150) DEFAULT NULL,
  `artist` varchar(100) DEFAULT NULL,
  `streams` bigint(20) DEFAULT NULL,
  `release_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `topsongs`
--

INSERT INTO `topsongs` (`song_id`, `song_title`, `artist`, `streams`, `release_date`) VALUES
(1, 'Blinding Lights', 'The Weeknd', 4500000000, '2019-11-29'),
(2, 'Shape of You', 'Ed Sheeran', 4000000000, '2017-01-06'),
(3, 'Starboy', 'The Weeknd', 3500000000, '2016-09-22'),
(4, 'As It Was', 'Harry Styles', 3000000000, '2022-04-01'),
(5, 'Dance Monkey', 'Tones and I', 2800000000, '2019-05-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `foodorders`
--
ALTER TABLE `foodorders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `topsongs`
--
ALTER TABLE `topsongs`
  ADD PRIMARY KEY (`song_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
