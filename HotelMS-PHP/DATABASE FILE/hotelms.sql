-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 02, 2023 at 10:49 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelms`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `room_id` int(10) NOT NULL,
  `booking_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `check_in` varchar(100) DEFAULT NULL,
  `check_out` varchar(100) NOT NULL,
  `total_price` int(10) NOT NULL,
  `remaining_price` int(10) NOT NULL,
  `payment_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `customer_id`, `room_id`, `booking_date`, `check_in`, `check_out`, `total_price`, `remaining_price`, `payment_status`) VALUES
(1, 1, 5, '2017-11-13 05:45:17', '13-11-2017', '15-11-2017', 3000, 3000, 0),
(2, 2, 2, '2017-11-13 05:46:04', '13-11-2017', '16-11-2017', 6000, 0, 1),
(3, 3, 2, '2017-11-11 06:49:19', '11-11-2017', '14-11-2017', 6000, 0, 1),
(4, 4, 7, '2017-11-09 06:50:24', '11-11-2017', '15-11-2017', 10000, 5000, 0),
(5, 5, 4, '2017-11-17 06:59:10', '17-11-2017', '20-11-2017', 12000, 0, 1),
(6, 6, 9, '2021-04-08 09:45:56', '08-04-2021', '10-04-2021', 3000, 3000, 0),
(7, 7, 6, '2021-04-08 17:56:41', '08-04-2021', '10-04-2021', 16500, 11500, 0),
(8, 8, 3, '2021-04-09 08:32:57', '09-04-2021', '13-04-2021', 34500, 0, 1),
(9, 9, 2, '2023-03-01 19:52:19', '02-03-2023', '07-03-2023', 9000, 5000, 0),
(10, 10, 27, '2023-03-02 09:48:57', '21-03-2023', '30-03-2023', 15000, 15000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `contact_no` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_card_type_id` int(10) NOT NULL,
  `id_card_no` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `contact_no`, `email`, `id_card_type_id`, `id_card_no`, `address`) VALUES
(1, 'Billy S. Burke', 7540001240, 'billyb9@gmail.com', 1, '422510099122', '3166 Rockford Road'),
(2, 'John Mitchell', 2870214970, 'johnm@gmail.com', 2, '422510099122', '1954 Armory Road'),
(3, 'Beatriz M. Matthews', 1247778460, 'matthews@gmail.com', 1, '422510099122', '4879 Shearwood Forest Drive'),
(4, 'Kevin Johnson', 1478546500, 'kevin@gmail.com', 3, '0', '926 Richland Avenue\n'),
(5, 'Dwayne Scott', 2671249780, 'scottdway@gmail.com', 1, '422510099122', '4698 Columbia Road\n'),
(6, 'Bruno Denn', 1245554780, 'denbru@gmail.com', 4, 'AASS 12454784541', '4764 Warner Street\n'),
(7, 'Ric Austin', 2450006974, 'austinric@gmail.com', 1, '457896000002', '1680  Brownton Road'),
(8, 'Andrew Stuartt', 2457778450, 'andrew@gmail.com', 1, '147000245810', '766  Lodgeville Road'),
(9, 'Lovedeep Singh', 9876543210, 'love123@gmail.com', 3, '1234567890', 'INDIA'),
(10, 'kfdsjfk dsfkfj', 234567890, 'DCV@HKGCGJ', 3, 'SXCVHBJ543', 'SHS2WDFB2@FGH');

-- --------------------------------------------------------

--
-- Table structure for table `id_card_type`
--

CREATE TABLE `id_card_type` (
  `id_card_type_id` int(10) NOT NULL,
  `id_card_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `id_card_type`
--

INSERT INTO `id_card_type` (`id_card_type_id`, `id_card_type`) VALUES
(1, 'National Identity Card'),
(2, 'Voter Id Card'),
(3, 'Pan Card'),
(4, 'Driving License');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(10) NOT NULL,
  `room_type_id` int(10) NOT NULL,
  `room_no` varchar(10) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `check_in_status` tinyint(1) NOT NULL,
  `check_out_status` tinyint(1) NOT NULL,
  `deleteStatus` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_type_id`, `room_no`, `status`, `check_in_status`, `check_out_status`, `deleteStatus`) VALUES
(2, 2, 'A-2', 1, 1, 1, 0),
(3, 3, 'B-1', NULL, 0, 0, 0),
(4, 1, 'B-2', NULL, 0, 0, 0),
(5, 1, 'B-3', 1, 0, 0, 0),
(6, 2, 'C-1', NULL, 0, 0, 1),
(7, 3, 'C-2', 1, 1, 0, 0),
(8, 2, 'C-3', NULL, 0, 0, 1),
(9, 1, 'C-4', 1, 0, 0, 0),
(27, 2, 'C-5', 1, 0, 0, 0),
(28, 3, 'C-6', NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `room_type_id` int(10) NOT NULL,
  `room_type` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `max_person` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`room_type_id`, `room_type`, `price`, `max_person`) VALUES
(1, 'Single', 1000, 1),
(2, 'Double', 1500, 2),
(3, 'Family', 2000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `password`, `created_at`) VALUES
(2, 'Lovedeep', 'lovedeep', '123@gmail.com', '1234', '2015-11-12 12:49:22'),
(3, 'Deep', 'deep', '123@gmail.com', '1234', '2016-04-01 12:49:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `customer_id_type` (`id_card_type_id`);

--
-- Indexes for table `id_card_type`
--
ALTER TABLE `id_card_type`
  ADD PRIMARY KEY (`id_card_type_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `room_type_id` (`room_type_id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`room_type_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `id_card_type`
--
ALTER TABLE `id_card_type`
  MODIFY `id_card_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `room_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`id_card_type_id`) REFERENCES `id_card_type` (`id_card_type_id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
