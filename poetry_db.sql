-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 28, 2024 at 12:59 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poetry_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `poetry`
--

CREATE TABLE `poetry` (
  `id` int(11) NOT NULL,
  `poetry_data` varchar(4000) NOT NULL,
  `poet_name` varchar(500) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poetry`
--

INSERT INTO `poetry` (`id`, `poetry_data`, `poet_name`, `date`) VALUES
(15, 'testing', 'Dipesh', '2024-07-28 10:30:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_email` varchar(4000) NOT NULL,
  `user_password` varchar(4000) NOT NULL,
  `user_confirm_password` varchar(4000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_email`, `user_password`, `user_confirm_password`, `date`) VALUES
(1, 'd@testing.com', '123456', '123456', '2024-07-28 10:44:03'),
(2, 'd1@testing.com', '123456', '123456', '2024-07-28 10:46:30'),
(3, 'd3@testing.com', '123456', '123456', '2024-07-28 10:50:18'),
(4, 'd2@testing.com', '123456', '123456', '2024-07-28 10:50:28'),
(5, 'd5@testing.com', '123456', '123456', '2024-07-28 10:52:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `poetry`
--
ALTER TABLE `poetry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_email` (`user_email`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `poetry`
--
ALTER TABLE `poetry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
