-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2026 at 04:05 PM
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
-- Database: `zomatodb`
--

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `cuisine` varchar(50) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `average_rating` decimal(2,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`id`, `name`, `cuisine`, `location`, `average_rating`) VALUES
(1, 'Dominos', 'Italian', 'Ahmedabad', 4.2),
(2, 'Honest', 'Fast Food', 'Ahmedabad', 4.0),
(3, 'La Pinoz', 'Italian', 'Ahmedabad', 4.3),
(4, 'Punjabi Tadka', 'North Indian', 'Ahmedabad', 4.1),
(5, 'McDonalds', 'Fast Food', 'Ahmedabad', 3.9);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `review_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `restaurant_id`, `user_name`, `rating`, `review_date`) VALUES
(1, 1, 'Rahul', 4.0, '2026-10-01'),
(2, 1, 'Priya', 4.5, '2026-10-02'),
(3, 2, 'Amit', 3.5, '2026-10-03'),
(4, 2, 'Neha', 4.0, '2026-10-04'),
(5, 3, 'Karan', 4.5, '2026-10-05'),
(6, 3, 'Riya', 5.0, '2026-10-06'),
(7, 4, 'Jay', 4.0, '2026-10-07'),
(8, 4, 'Meera', 4.5, '2026-10-08'),
(9, 5, 'Dev', 3.0, '2026-10-09'),
(10, 5, 'Pooja', 4.0, '2026-10-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurant_id` (`restaurant_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
