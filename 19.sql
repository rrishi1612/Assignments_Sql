-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2026 at 04:21 PM
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
-- Database: `bangalorezomato`
--

-- --------------------------------------------------------

--
-- Table structure for table `food_orders`
--

CREATE TABLE `food_orders` (
  `COL 1` varchar(8) DEFAULT NULL,
  `COL 2` varchar(15) DEFAULT NULL,
  `COL 3` varchar(13) DEFAULT NULL,
  `COL 4` varchar(12) DEFAULT NULL,
  `COL 5` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `food_orders`
--

INSERT INTO `food_orders` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`) VALUES
('order_id', 'restaurant_name', 'customer_name', 'order_amount', 'order_date'),
('1', 'Dominos', 'Rahul', '550.00', '2026-10-01'),
('2', 'McDonalds', 'Priya', '350.00', '2026-10-02'),
('3', 'Dominos', 'Rahul', '750.00', '2026-10-03'),
('4', 'Subway', 'Amit', '250.00', '2026-10-04'),
('5', 'McDonalds', 'Priya', '450.00', '2026-10-05'),
('6', 'Subway', 'Rahul', '300.00', '2026-10-06'),
('7', 'Dominos', 'Amit', '650.00', '2026-10-07'),
('8', 'McDonalds', 'Rahul', '400.00', '2026-10-08');

-- --------------------------------------------------------

--
-- Table structure for table `zomato`
--

CREATE TABLE `zomato` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `cuisines` varchar(255) DEFAULT NULL,
  `rate` decimal(3,1) DEFAULT NULL,
  `average_cost_for_two` decimal(10,2) DEFAULT NULL,
  `online_order` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zomato`
--

INSERT INTO `zomato` (`id`, `name`, `location`, `cuisines`, `rate`, `average_cost_for_two`, `online_order`) VALUES
(1, 'Empire Restaurant', 'Koramangala', 'North Indian, Mughlai', 4.2, 600.00, 'Yes'),
(2, 'Punjabi Rasoi', 'Koramangala', 'North Indian', 4.5, 500.00, 'Yes'),
(3, 'Tandoori Nights', 'Koramangala', 'North Indian, Chinese', 4.1, 700.00, 'No'),
(4, 'Delhi Highway', 'Koramangala', 'North Indian', 4.4, 900.00, 'Yes'),
(5, 'Spice Garden', 'Koramangala', 'North Indian', 4.0, 350.00, 'Yes'),
(6, 'Pizza Corner', 'Indiranagar', 'Italian', 4.3, 800.00, 'Yes'),
(7, 'Budget Bites', 'BTM Layout', 'South Indian', 2.8, 250.00, 'Yes'),
(8, 'Royal Feast', 'Whitefield', 'North Indian', 2.7, 1200.00, 'Yes'),
(9, 'Food Junction', 'HSR Layout', 'Chinese', 3.8, 450.00, 'No'),
(10, 'Luxury Dining', 'MG Road', 'Continental', 4.6, 1800.00, 'Yes'),
(11, 'Quick Meals', 'BTM Layout', 'Fast Food', 2.9, 300.00, 'Yes'),
(12, 'Urban Cafe', 'Indiranagar', 'Continental', 4.1, 1000.00, 'Yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `zomato`
--
ALTER TABLE `zomato`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `zomato`
--
ALTER TABLE `zomato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
