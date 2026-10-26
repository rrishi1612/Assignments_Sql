-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2026 at 10:18 AM
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
-- Database: `foodie_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `MusicPlaylist`
--

CREATE TABLE `musicplaylist` (
  `id` int(11) NOT NULL,
  `song_name` varchar(100) DEFAULT NULL,
  `artist` varchar(100) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `MusicPlaylist`
--

INSERT INTO `MusicPlaylist` (`id`, `song_name`, `artist`, `genre`, `duration`) VALUES
(1, 'Shape of You', 'Ed Sheeran', 'Pop', 234),
(2, 'Blinding Lights', 'The Weeknd', 'Synth-pop', 200),
(3, 'Perfect', 'Ed Sheeran', 'Romance', 263),
(4, 'Levitating', 'Dua Lipa', 'Pop', 203),
(5, 'Believer', 'Imagine Dragons', 'Rock', 204);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `MusicPlaylist`
--
ALTER TABLE `MusicPlaylist`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
