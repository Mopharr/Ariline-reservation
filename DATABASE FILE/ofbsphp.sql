-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2022 at 06:36 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */

--
-- Database: `ofbsphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_uname` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_pwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_uname`, `admin_email`, `admin_pwd`) VALUES
(1, 'admin', 'admin@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW');

-- --------------------------------------------------------

--
-- Table structure for table `airline`
--

CREATE TABLE `airline` (
  `airline_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `seats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airline`
--

INSERT INTO `airline` (`airline_id`, `name`, `seats`) VALUES
(1, 'Core Airways', 165),
(2, 'Echo Airline', 220),
(3, 'Spark Airways', 125),
(4, 'Peak Airways', 210),
(5, 'Homelander Airways', 185),
(9, 'Blue Airlines', 200),
(10, 'GoldStar Airways', 205),
(11, 'Novar Airways', 158),
(12, 'Aero Airways', 210),
(13, 'Nep Airways', 215),
(14, 'Delta Airlines', 135);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

-- INSERT INTO `cities` (`city`) VALUES
-- ('San Jose'),
-- ('Chicago'),
-- ('Olisphis'),
-- ('Shiburn'),
-- ('Weling'),
-- ('Chiby'),
-- ('Odonhull'),
-- ('Hegan'),
-- ('Oriaridge'),
-- ('Flerough'),
-- ('Yleigh'),
-- ('Oyladnard'),
-- ('Trerdence'),
-- ('Zhotrora'),
-- ('Otiginia'),
-- ('Plueyby'),
-- ('Vrexledo'),
-- ('Ariosey');

INSERT INTO cities (city) VALUES
('Abuja'),
('Lagos'),
('Kano'),
('Port Harcourt'),
('Enugu'),
('Owerri'),
('Calabar'),
('Ibadan'),
('Benin City'),
('Sokoto'),
('Jos'),
('Kaduna'),
('Akure'),
('Asaba'),
('Yola'),
('Maiduguri'),
('Katsina'),
('Ilorin'),
('Warri'),
('Uyo');


-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feed_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `q1` varchar(250) NOT NULL,
  `q2` varchar(20) NOT NULL,
  `q3` varchar(250) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `flight_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `arrivale` datetime NOT NULL,
  `departure` datetime NOT NULL,
  `Destination` varchar(20) NOT NULL,
  `source` varchar(20) NOT NULL,
  `airline` varchar(20) NOT NULL,
  `Seats` varchar(110) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `Price` int(11) NOT NULL,
  `status` varchar(6) DEFAULT NULL,
  `issue` varchar(50) DEFAULT NULL,
  `last_seat` varchar(5) DEFAULT '',
  `bus_seats` int(11) DEFAULT '20',
  `last_bus_seat` varchar(5) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

-- INSERT INTO `Flight` (`flight_id`, `admin_id`, `arrivale`, `departure`, `Destination`, `source`, `airline`, `Seats`, `duration`, `Price`, `status`, `issue`, `last_seat`, `bus_seats`, `last_bus_seat`) VALUES
-- (1, 1, '2022-06-30 10:03:00', '2022-06-30 09:01:00', 'Chicago', 'San', 'Core Airways', '63', '1', 175, '', '', '21B', 20, ''),
-- (2, 1, '2022-07-05 11:15:00', '2022-07-05 10:05:00', 'Shiburn', 'Olisphis', 'Core Airways', '61', '1', 185, 'arr', '', '21D', 20, ''),
-- (3, 1, '2022-07-05 12:13:00', '2022-07-05 10:13:00', 'Weling', 'Olisphis', 'Spark Airways', '123', '2', 205, 'arr', '', '21B', 20, ''),
-- (4, 1, '2022-07-05 16:30:00', '2022-07-05 15:26:00', 'Weling', 'Shiburn', 'Echo Airline', '220', '1', 155, 'issue', '120', '', 20, ''),
-- (5, 1, '2022-07-05 15:30:00', '2022-07-05 12:30:00', 'Chiby', 'Shiburn', 'Spark Airways', '125', '3', 326, '', '', '', 20, ''),
-- (6, 1, '2022-07-05 17:55:00', '2022-07-05 15:30:00', 'Chiby', 'Weling', 'Spark Airways', '125', '2', 285, '', '', '', 20, ''),
-- (7, 1, '2022-07-05 20:50:00', '2022-07-05 18:50:00', 'Odonhull', 'Chiby', 'Spark Airways', '125', '2', 265, '', '', '', 20, ''),
-- (8, 1, '2022-07-06 00:55:00', '2022-07-05 17:00:00', 'Oyladnard', 'Odonhull', 'Homelander Airways', '183', '7', 615, 'arr', '', '21B', 20, ''),
-- (9, 1, '2022-07-05 17:09:00', '2022-07-05 16:05:00', 'Chiby', 'Olisphis', 'Peak Airways', '210', '1', 155, '', '', '', 20, ''),
-- (10, 1, '2022-07-06 13:10:00', '2022-07-06 11:05:00', 'Hegan', 'Shiburn', 'Core Airways', '165', '2', 200, '', '', '', 20, ''),
-- (11, 1, '2022-07-05 19:10:00', '2022-07-05 18:05:00', 'Oriaridge', 'Flerough', 'Echo Airline', '220', '1', 165, '', '', '', 20, ''),
-- (12, 1, '2022-07-05 21:10:00', '2022-07-05 19:05:00', 'Chicago', 'Yleigh', 'Peak Airways', '210', '2', 320, '', '', '', 20, ''),
-- (13, 1, '2022-07-05 13:50:00', '2022-07-05 12:56:00', 'Olisphis', 'Chicago', 'Core Airways', '165', '1', 110, 'issue', '110', '', 20, ''),
-- (14, 1, '2022-07-05 11:08:00', '2022-07-05 09:07:00', 'Oyladnard', 'San', 'Spark Airways', '125', '2', 195, 'issue', '120', '', 20, ''),
-- (15, 1, '2022-07-05 10:10:00', '2022-07-05 08:10:00', 'Weling', 'Chicago', 'Peak Airways', '210', '2', 125, 'issue', '120', '', 20, ''),
-- (16, 1, '2022-07-05 18:10:00', '2022-07-05 16:09:00', 'Flerough', 'San', 'Homelander Airways', '185', '2', 220, 'dep', '', '', 20, ''),
-- (17, 1, '2022-07-05 17:10:00', '2022-07-05 16:10:00', 'San', 'Chiby', 'Echo Airline', '220', '1', 125, 'arr', '', '', 20, ''),
-- (18, 1, '2022-07-05 19:15:00', '2022-07-05 16:12:00', 'San', 'Flerough', 'Core Airways', '165', '3', 275, 'dep', '', '', 20, ''),
-- (19, 1, '2022-07-05 23:40:00', '2022-07-05 20:31:00', 'Shiburn', 'Oyladnard', 'Aero Airways', '210', '3', 295, '', '', '', 20, ''),
-- (20, 1, '2022-07-05 23:58:00', '2022-07-05 22:14:00', 'Zhotrora', 'Trerdence', 'Aero Airways', '208', '1', 185, 'dep', '', '21B', 20, ''),
-- (21, 1, '2022-07-06 10:14:00', '2022-07-05 23:15:00', 'Odonhull', 'Otiginia', 'Blue Airlines', '200', '11', 965, '', '', '', 20, '');


INSERT INTO `Flight` (`flight_id`, `admin_id`, `arrivale`, `departure`, `Destination`, `source`, `airline`, `Seats`, `duration`, `Price`, `status`, `issue`, `last_seat`, `bus_seats`, `last_bus_seat`) VALUES
(1, 1, '2023-05-01 10:03:00', '2023-05-01 09:01:00', 'Lagos', 'Abuja', 'Core Airways', '63', '1', 175, '', '', '21B', 20, ''),
(2, 1, '2023-05-01 11:15:00', '2023-05-01 10:05:00', 'Kano', 'Port Harcourt', 'Core Airways', '61', '1', 185, 'arr', '', '21D', 20, ''),
(3, 1, '2023-05-02 12:13:00', '2023-05-02 10:13:00', 'Enugu', 'Owerri', 'Spark Airways', '123', '2', 205, 'arr', '', '21B', 20, ''),
(4, 1, '2023-05-02 16:30:00', '2023-05-02 15:26:00', 'Calabar', 'Ibadan', 'Echo Airline', '220', '1', 155, 'issue', '120', '', 20, ''),
(5, 1, '2023-05-03 15:30:00', '2023-05-03 12:30:00', 'Benin City', 'Sokoto', 'Spark Airways', '125', '3', 326, '', '', '', 20, ''),
(6, 1, '2023-05-03 17:55:00', '2023-05-03 15:30:00', 'Jos', 'Kaduna', 'Spark Airways', '125', '2', 285, '', '', '', 20, ''),
(7, 1, '2023-05-04 20:50:00', '2023-05-04 18:50:00', 'Akure', 'Asaba', 'Spark Airways', '125', '2', 265, '', '', '', 20, ''),
(8, 1, '2023-05-05 00:55:00', '2023-05-04 17:00:00', 'Yola', 'Maiduguri', 'Homelander Airways', '183', '7', 615, 'arr', '', '21B', 20, ''),
(9, 1, '2023-05-05 17:09:00', '2023-05-05 16:05:00', 'Katsina', 'Ilorin', 'Peak Airways', '210', '1', 155, '', '', '', 20, ''),
(10, 1, '2023-05-06 13:10:00', '2023-05-06 11:05:00', 'Warri', 'Uyo', 'Core Airways', '165', '2', 200, '', '', '', 20, ''),
(11, 1, '2023-05-07 19:10:00', '2023-05-07 18:05:00', 'Abuja', 'Benin City', 'Echo Airline', '220', '1', 165, '', '', '', 20, ''),
(12, 1, '2023-05-08 21:10:00', '2023-05-08 19:05:00', 'Lagos', 'Jos', 'Peak Airways', '210', '2', 320, '', '', '', 20, ''),
(13, 1, '2023-05-09 13:50:00', '2023-05-09 12:56:00', 'Port Harcourt', 'Lagos', 'Core Airways', '165', '1', 110, 'issue', '110', '', 20, ''),
(14, 1, '2023-05-10 11:08:00', '2023-05-10 09:07:00', 'Yola', 'Abuja', 'Spark Airways', '125', '2', 195, 'issue', '120', '', 20, ''),
(15, 1, '2023-05-11 10:10:00', '2023-05-11 08:10:00', 'Enugu', 'Lagos', 'Peak Airways', '210', '2', 125, 'issue', '120', '', 20, ''),
(16, 1, '2023-05-12 18:10:00', '2023-05-12 16:09:00', 'Ibadan', 'Yola', 'Homelander Airways', '185', '2', 220, 'dep', '', '', 20, ''),
(17, 1, '2023-05-13 17:10:00', '2023-05-13 16:10:00', 'Lagos', 'Benin City', 'Echo Airline', '220', '1', 125, 'arr', '', '', 20, ''),
(18, 1, '2023-05-14 19:15:00', '2023-05-14 16:12:00', 'Lagos', 'Ibadan', 'Core Airways', '165', '3', 275, 'dep', '', '', 20, ''),
(19, 1, '2023-05-15 23:40:00', '2023-05-15 20:31:00', 'Port Harcourt', 'Yola', 'Aero Airways', '210', '3', 295, '', '', '', 20, ''),
(20, 1, '2023-05-16 23:58:00', '2023-05-16 22:14:00', 'Jos', 'Kano', 'Aero Airways', '208', '1', 185, 'dep', '', '21B', 20, ''),
(21, 1, '2023-05-17 10:14:00', '2023-05-17 23:15:00', 'Akure', 'Owerri', 'Blue Airlines', '200', '11', 965, '', '', '', 20, ''),
(22, 1, '2023-05-18 10:03:00', '2023-05-18 09:01:00', 'Lagos', 'Abuja', 'Core Airways', '63', '1', 175, '', '', '21B', 20, ''),
(23, 1, '2023-05-18 11:15:00', '2023-05-18 10:05:00', 'Kano', 'Port Harcourt', 'Core Airways', '61', '1', 185, 'arr', '', '21D', 20, ''),
(24, 1, '2023-05-19 12:13:00', '2023-05-19 10:13:00', 'Enugu', 'Owerri', 'Spark Airways', '123', '2', 205, 'arr', '', '21B', 20, ''),
(25, 1, '2023-05-19 16:30:00', '2023-05-19 15:26:00', 'Calabar', 'Ibadan', 'Echo Airline', '220', '1', 155, 'issue', '120', '', 20, ''),
(26, 1, '2023-05-20 15:30:00', '2023-05-20 12:30:00', 'Benin City', 'Sokoto', 'Spark Airways', '125', '3', 326, '', '', '', 20, ''),
(27, 1, '2023-05-20 17:55:00', '2023-05-20 15:30:00', 'Jos', 'Kaduna', 'Spark Airways', '125', '2', 285, '', '', '', 20, ''),
(28, 1, '2023-05-21 20:50:00', '2023-05-21 18:50:00', 'Akure', 'Asaba', 'Spark Airways', '125', '2', 265, '', '', '', 20, ''),
(29, 1, '2023-05-22 00:55:00', '2023-05-21 17:00:00', 'Yola', 'Maiduguri', 'Homelander Airways', '183', '7', 615, 'arr', '', '21B', 20, ''),
(30, 1, '2023-05-22 17:09:00', '2023-05-22 16:05:00', 'Abuja', 'Kano', 'Peak Airways', '210', '1', 155, '', '', '', 20, ''),
(31, 1, '2023-05-23 13:10:00', '2023-05-23 11:05:00', 'Lagos', 'Port Harcourt', 'Core Airways', '165', '2', 200, '', '', '', 20, ''),
(32, 1, '2023-05-23 19:10:00', '2023-05-23 18:05:00', 'Enugu', 'Warri', 'Echo Airline', '220', '1', 165, '', '', '', 20, ''),
(33, 1, '2023-05-24 21:10:00', '2023-05-24 19:05:00', 'Kaduna', 'Sokoto', 'Peak Airways', '210', '2', 320, '', '', '', 20, ''),
(34, 1, '2023-05-25 13:50:00', '2023-05-25 12:56:00', 'Calabar', 'Lagos', 'Core Airways', '165', '1', 110, 'issue', '110', '', 20, ''),
(35, 1, '2023-05-26 11:08:00', '2023-05-26 09:07:00', 'Ibadan', 'Enugu', 'Spark Airways', '125', '2', 195, 'issue', '120', '', 20, ''),
(36, 1, '2023-05-27 10:10:00', '2023-05-27 08:10:00', 'Kano', 'Lagos', 'Peak Airways', '210', '2', 125, 'issue', '120', '', 20, ''),
(37, 1, '2023-05-28 18:10:00', '2023-05-28 16:09:00', 'Jos', 'Kaduna', 'Homelander Airways', '185', '2', 220, 'dep', '', '', 20, ''),
(38, 1, '2023-05-29 17:10:00', '2023-05-29 16:10:00', 'Lagos', 'Calabar', 'Echo Airline', '220', '1', 125, 'arr', '', '', 20, ''),
(39, 1, '2023-05-30 19:15:00', '2023-05-30 16:12:00', 'Lagos', 'Ibadan', 'Core Airways', '165', '3', 275, 'dep', '', '', 20, ''),
(40, 1, '2023-05-31 23:40:00', '2023-05-31 20:31:00', 'Port Harcourt', 'Yola', 'Aero Airways', '210', '3', 295, '', '', '', 20, ''),
(41, 1, '2023-06-01 23:58:00', '2023-06-01 22:14:00', 'Kaduna', 'Maiduguri', 'Aero Airways', '208', '1', 185, 'dep', '', '21B', 20, ''),
(42, 1, '2023-06-02 10:14:00', '2023-06-02 23:15:00', 'Owerri', 'Jos', 'Blue Airlines', '200', '11', 965, '', '', '', 20, ''),
(43, 1, '2023-06-03 10:03:00', '2023-06-03 09:01:00', 'Abuja', 'Enugu', 'Core Airways', '63', '1', 175, '', '', '21B', 20, ''),
(44, 1, '2023-06-03 11:15:00', '2023-06-03 10:05:00', 'Port Harcourt', 'Calabar', 'Core Airways', '61', '1', 185, 'arr', '', '21D', 20, ''),
(45, 1, '2023-06-04 12:13:00', '2023-06-04 10:13:00', 'Lagos', 'Ibadan', 'Spark Airways', '123', '2', 205, 'arr', '', '21B', 20, ''),
(46, 1, '2023-06-04 16:30:00', '2023-06-04 15:26:00', 'Kano', 'Abuja', 'Echo Airline', '220', '1', 155, 'issue', '120', '', 20, ''),
(47, 1, '2023-06-05 15:30:00', '2023-06-05 12:30:00', 'Enugu', 'Port Harcourt', 'Spark Airways', '125', '3', 326, '', '', '', 20, ''),
(48, 1, '2023-06-05 17:55:00', '2023-06-05 15:30:00', 'Jos', 'Kaduna', 'Spark Airways', '125', '2', 285, '', '', '', 20, ''),
(49, 1, '2023-06-06 20:50:00', '2023-06-06 18:50:00', 'Akure', 'Owerri', 'Spark Airways', '125', '2', 265, '', '', '', 20, ''),
(51, 1, '2023-06-06 17:09:00', '2023-06-06 16:05:00', 'Lagos', 'Abuja', 'Peak Airways', '210', '1', 155, '', '', '', 20, ''),
(52, 1, '2023-06-07 13:10:00', '2023-06-07 11:05:00', 'Kano', 'Lagos', 'Core Airways', '165', '2', 200, '', '', '', 20, ''),
(53, 1, '2023-06-07 19:10:00', '2023-06-07 18:05:00', 'Enugu', 'Calabar', 'Echo Airline', '220', '1', 165, '', '', '', 20, ''),
(54, 1, '2023-06-08 21:10:00', '2023-06-08 19:05:00', 'Port Harcourt', 'Sokoto', 'Peak Airways', '210', '2', 320, '', '', '', 20, ''),
(55, 1, '2023-06-09 13:50:00', '2023-06-09 12:56:00', 'Abuja', 'Lagos', 'Core Airways', '165', '1', 110, 'issue', '110', '', 20, ''),
(56, 1, '2023-06-10 11:08:00', '2023-06-10 09:07:00', 'Ibadan', 'Enugu', 'Spark Airways', '125', '2', 195, 'issue', '120', '', 20, ''),
(57, 1, '2023-06-11 10:10:00', '2023-06-11 08:10:00', 'Lagos', 'Kano', 'Peak Airways', '210', '2', 125, 'issue', '120', '', 20, ''),
(58, 1, '2023-06-12 18:10:00', '2023-06-12 16:09:00', 'Jos', 'Kaduna', 'Homelander Airways', '185', '2', 220, 'dep', '', '', 20, ''),
(59, 1, '2023-06-13 17:10:00', '2023-06-13 16:10:00', 'Lagos', 'Calabar', 'Echo Airline', '220', '1', 125, 'arr', '', '', 20, ''),
(60, 1, '2023-06-14 19:15:00', '2023-06-14 16:12:00', 'Lagos', 'Ibadan', 'Core Airways', '165', '3', 275, 'dep', '', '', 20, ''),
(62, 1, '2023-06-15 23:40:00', '2023-06-15 20:31:00', 'Kaduna', 'Maiduguri', 'Aero Airways', '210', '3', 295, '', '', '', 20, ''),
(63, 1, '2023-06-16 23:58:00', '2023-06-16 22:14:00', 'Owerri', 'Jos', 'Blue Airlines', '200', '1', 185, 'dep', '', '21B', 20, ''),
(64, 1, '2023-06-17 10:14:00', '2023-06-17 23:15:00', 'Enugu', 'Port Harcourt', 'Core Airways', '63', '11', 965, '', '', '', 20, ''),
(65, 1, '2023-06-18 10:03:00', '2023-06-18 09:01:00', 'Abuja', 'Enugu', 'Spark Airways', '123', '1', 175, '', '', '21B', 20, ''),
(66, 1, '2023-06-18 11:15:00', '2023-06-18 10:05:00', 'Port Harcourt', 'Calabar', 'Spark Airways', '61', '1', 185, 'arr', '', '21D', 20, ''),
(67, 1, '2023-06-19 12:13:00', '2023-06-19 10:13:00', 'Lagos', 'Ibadan', 'Core Airways', '123', '2', 205, 'arr', '', '21B', 20, ''),
(68, 1, '2023-06-19 16:30:00', '2023-06-19 15:26:00', 'Kano', 'Abuja', 'Echo Airline', '220', '1', 155, 'issue', '120', '', 20, ''),
(69, 1, '2023-06-20 15:30:00', '2023-06-20 12:30:00', 'Enugu', 'Port Harcourt', 'Spark Airways', '125', '3', 326, '', '', '', 20, ''),
(70, 1, '2023-06-20 17:55:00', '2023-06-20 15:30:00', 'Jos', 'Kaduna', 'Spark Airways', '125', '2', 285, '', '', '', 20, ''),
(71, 1, '2023-06-21 20:50:00', '2023-06-21 18:50:00', 'Akure', 'Owerri', 'Spark Airways', '125', '2', 265, '', '', '', 20, ''),
(73, 1, '2023-06-22 00:55:00', '2023-06-22 17:00:00', 'Yola', 'Maiduguri', 'Homelander Airways', '183', '7', 615, 'arr', '', '21B', 20, ''),
(74, 1, '2023-06-22 17:09:00', '2023-06-22 16:05:00', 'Lagos', 'Enugu', 'Peak Airways', '210', '1', 155, '', '', '', 20, ''),
(75, 1, '2023-06-23 13:10:00', '2023-06-23 11:05:00', 'Kano', 'Lagos', 'Core Airways', '165', '2', 200, '', '', '', 20, ''),
(76, 1, '2023-06-23 19:10:00', '2023-06-23 18:05:00', 'Enugu', 'Calabar', 'Echo Airline', '220', '1', 165, '', '', '', 20, ''),
(77, 1, '2023-06-24 21:10:00', '2023-06-24 19:05:00', 'Port Harcourt', 'Sokoto', 'Peak Airways', '210', '2', 320, '', '', '', 20, ''),
(78, 1, '2023-06-25 13:50:00', '2023-06-25 12:56:00', 'Abuja', 'Lagos', 'Core Airways', '165', '1', 110, 'issue', '110', '', 20, ''),
(79, 1, '2023-06-26 11:08:00', '2023-06-26 09:07:00', 'Ibadan', 'Enugu', 'Spark Airways', '125', '2', 195, 'issue', '120', '', 20, ''),
(80, 1, '2023-06-27 10:10:00', '2023-06-27 08:10:00', 'Lagos', 'Kano', 'Peak Airways', '210', '2', 125, 'issue', '120', '', 20, ''),
(81, 1, '2023-06-28 18:10:00', '2023-06-28 16:09:00', 'Jos', 'Kaduna', 'Homelander Airways', '185', '2', 220, 'dep', '', '', 20, ''),
(82, 1, '2023-06-29 17:10:00', '2023-06-29 16:10:00', 'Lagos', 'Calabar', 'Echo Airline', '220', '1', 125, 'arr', '', '', 20, ''),
(40, 1, '2023-05-31 23:40:00', '2023-05-31 20:31:00', 'Port Harcourt', 'Yola', 'Aero Airways', '210', '3', 295, '', '', '', 20, ''),
(41, 1, '2023-06-01 08:00:00', '2023-06-01 06:00:00', 'Enugu', 'Jos', 'Core Airways', '63', '1', 175, '', '', '21B', 20, ''),
(42, 1, '2023-06-01 09:30:00', '2023-06-01 08:15:00', 'Lagos', 'Kano', 'Core Airways', '61', '1', 185, 'arr', '', '21D', 20, ''),
(43, 1, '2023-06-02 11:45:00', '2023-06-02 10:30:00', 'Abuja', 'Port Harcourt', 'Spark Airways', '123', '2', 205, 'arr', '', '21B', 20, ''),
(44, 1, '2023-06-02 14:30:00', '2023-06-02 13:15:00', 'Kano', 'Sokoto', 'Echo Airline', '220', '1', 155, 'issue', '120', '', 20, ''),
(45, 1, '2023-06-03 12:30:00', '2023-06-03 09:45:00', 'Enugu', 'Calabar', 'Spark Airways', '125', '3', 326, '', '', '', 20, ''),
(46, 1, '2023-06-03 15:45:00', '2023-06-03 13:30:00', 'Jos', 'Kaduna', 'Spark Airways', '125', '2', 285, '', '', '', 20, ''),
(47, 1, '2023-06-04 18:30:00', '2023-06-04 16:45:00', 'Akure', 'Asaba', 'Spark Airways', '125', '2', 265, '', '', '', 20, ''),
(48, 1, '2023-06-05 00:15:00', '2023-06-04 17:30:00', 'Yola', 'Maiduguri', 'Homelander Airways', '183', '7', 615, 'arr', '', '21B', 20, ''),
(49, 1, '2023-06-05 17:45:00', '2023-06-05 16:30:00', 'Kano', 'Lagos', 'Peak Airways', '210', '1', 155, '', '', '', 20, ''),
(50, 1, '2023-06-06 13:30:00', '2023-06-06 11:45:00', 'Jos', 'Kaduna', 'Peak Airways', '165', '2', 200, '', '', '', 20, ''),
(51, 1, '2023-06-06 16:30:00', '2023-06-06 15:15:00', 'Lagos', 'Calabar', 'Echo Airline', '220', '1', 165, '', '', '', 20, ''),
(52, 1, '2023-06-07 18:30:00', '2023-06-07 16:45:00', 'Abuja', 'Kano', 'Spark Airways', '210', '2', 320, '', '', '', 20, ''),
(53, 1, '2023-06-07 14:45:00', '2023-06-07 13:30:00', 'Port Harcourt', 'Yola', 'Core Airways', '165', '1', 110, 'issue', '110', '', 20, ''),
(54, 1, '2023-06-08 12:45:00', '2023-06-08 10:30:00', 'Lagos', 'Kano', 'Spark Airways', '125', '2', 195, 'issue', '120', '', 20, ''),
(55, 1, '2023-06-09 11:00:00', '2023-06-09 08:45:00', 'Abuja', 'Lagos', 'Peak Airways', '210', '2', 125, 'issue', '120', '', 20, ''),
(56, 1, '2023-06-09 19:45:00', '2023-06-09 17:30:00', 'Jos', 'Kaduna', 'Homelander Airways', '185', '2', 220, 'dep', '', '', 20, ''),
(57, 1, '2023-06-10 17:30:00', '2023-06-10 16:15:00', 'Lagos', 'Calabar', 'Echo Airline', '220', '1', 125, 'arr', '', '', 20, ''),
(58, 1, '2023-06-10 19:45:00', '2023-06-10 16:30:00', 'Kano', 'Lagos', 'Core Airways', '165', '3', 275, 'dep', '', '', 20, ''),
(59, 1, '2023-06-11 23:30:00', '2023-06-11 20:15:00', 'Enugu', 'Port Harcourt', 'Aero Airways', '210', '3', 295, '', '', '', 20, ''),
(60, 1, '2023-06-12 23:58:00', '2023-06-12 22:14:00', 'Lagos', 'Abuja', 'Aero Airways', '208', '1', 185, 'dep', '', '21B', 20, ''),
(61, 1, '2023-06-13 10:14:00', '2023-06-13 09:15:00', 'Port Harcourt', 'Owerri', 'Blue Airlines', '200', '11', 965, '', '', '', 20, ''),
(62, 1, '2023-06-13 08:30:00', '2023-06-13 07:15:00', 'Lagos', 'Kano', 'Core Airways', '63', '1', 175, '', '', '21B', 20, ''),
(63, 1, '2023-06-14 09:45:00', '2023-06-14 08:30:00', 'Enugu', 'Jos', 'Core Airways', '61', '1', 185, 'arr', '', '21D', 20, ''),
(64, 1, '2023-06-14 12:30:00', '2023-06-14 11:15:00', 'Abuja', 'Port Harcourt', 'Spark Airways', '123', '2', 205, 'arr', '', '21B', 20, ''),
(65, 1, '2023-06-15 14:45:00', '2023-06-15 13:30:00', 'Kano', 'Sokoto', 'Echo Airline', '220', '1', 155, 'issue', '120', '', 20, ''),
(66, 1, '2023-06-15 12:30:00', '2023-06-15 09:45:00', 'Enugu', 'Calabar', 'Spark Airways', '125', '3', 326, '', '', '', 20, ''),
(67, 1, '2023-06-16 15:45:00', '2023-06-16 13:30:00', 'Jos', 'Kaduna', 'Spark Airways', '125', '2', 285, '', '', '', 20, ''),
(68, 1, '2023-06-17 18:30:00', '2023-06-17 16:45:00', 'Akure', 'Asaba', 'Spark Airways', '125', '2', 265, '', '', '', 20, ''),
(69, 1, '2023-06-18 00:15:00', '2023-06-17 17:30:00', 'Yola', 'Maiduguri', 'Homelander Airways', '183', '7', 615, 'arr', '', '21B', 20, ''),
(70, 1, '2023-06-18 17:45:00', '2023-06-18 16:30:00', 'Kano', 'Kaduna', 'Peak Airways', '210', '1', 155, '', '', '', 20, ''),
(71, 1, '2023-06-19 13:10:00', '2023-06-19 11:05:00', 'Lagos', 'Calabar', 'Core Airways', '165', '2', 200, '', '', '', 20, ''),
(72, 1, '2023-06-19 19:10:00', '2023-06-19 18:05:00', 'Abuja', 'Owerri', 'Echo Airline', '220', '1', 165, '', '', '', 20, ''),
(73, 1, '2023-06-20 21:10:00', '2023-06-20 19:05:00', 'Enugu', 'Kano', 'Peak Airways', '210', '2', 320, '', '', '', 20, ''),
(74, 1, '2023-06-20 13:50:00', '2023-06-20 12:56:00', 'Port Harcourt', 'Lagos', 'Core Airways', '165', '1', 110, 'issue', '110', '', 20, ''),
(75, 1, '2023-06-21 11:08:00', '2023-06-21 09:07:00', 'Lagos', 'Abuja', 'Spark Airways', '125', '2', 195, 'issue', '120', '', 20, ''),
(76, 1, '2023-06-21 10:10:00', '2023-06-21 08:10:00', 'Kano', 'Jos', 'Peak Airways', '210', '2', 125, 'issue', '120', '', 20, ''),
(77, 1, '2023-06-22 18:10:00', '2023-06-22 16:09:00', 'Enugu', 'Calabar', 'Homelander Airways', '185', '2', 220, 'dep', '', '', 20, ''),
(78, 1, '2023-06-22 17:10:00', '2023-06-22 16:10:00', 'Lagos', 'Port Harcourt', 'Echo Airline', '220', '1', 125, 'arr', '', '', 20, ''),
(79, 1, '2023-06-23 19:15:00', '2023-06-23 16:12:00', 'Abuja', 'Jos', 'Core Airways', '165', '3', 275, 'dep', '', '', 20, ''),
(80, 1, '2023-06-23 23:40:00', '2023-06-23 20:31:00', 'Kano', 'Lagos', 'Aero Airways', '210', '3', 295, '', '', '', 20, ''),
(81, 1, '2023-06-23 23:58:00', '2023-06-23 22:14:00', 'Abuja', 'Kaduna', 'Aero Airways', '208', '1', 185, 'dep', '', '21B', 20, ''),
(82, 1, '2023-06-24 10:14:00', '2023-06-24 09:15:00', 'Port Harcourt', 'Enugu', 'Blue Airlines', '200', '11', 965, '', '', '', 20, ''),
(83, 1, '2023-06-24 08:30:00', '2023-06-24 07:15:00', 'Lagos', 'Owerri', 'Core Airways', '63', '1', 175, '', '', '21B', 20, ''),
(84, 1, '2023-06-25 09:45:00', '2023-06-25 08:30:00', 'Kano', 'Jos', 'Core Airways', '61', '1', 185, 'arr', '', '21D', 20, ''),
(85, 1, '2023-06-25 12:30:00', '2023-06-25 11:15:00', 'Abuja', 'Port Harcourt', 'Spark Airways', '123', '2', 205, 'arr', '', '21B', 20, ''),
(86, 1, '2023-06-26 14:45:00', '2023-06-26 13:30:00', 'Enugu', 'Kano', 'Echo Airline', '220', '1', 155, 'issue', '120', '', 20, ''),
(87, 1, '2023-06-26 12:30:00', '2023-06-26 09:45:00', 'Port Harcourt', 'Calabar', 'Spark Airways', '125', '3', 326, '', '', '', 20, ''),
(88, 1, '2023-06-27 15:45:00', '2023-06-27 13:30:00', 'Lagos', 'Kaduna', 'Spark Airways', '125', '2', 285, '', '', '', 20, ''),
(89, 1, '2023-06-28 18:30:00', '2023-06-28 16:45:00', 'Abuja', 'Calabar', 'Spark Airways', '125', '2', 265, '', '', '', 20, ''),
(90, 1, '2023-06-29 00:15:00', '2023-06-28 17:30:00', 'Kano', 'Maiduguri', 'Homelander Airways', '183', '7', 615, 'arr', '', '21B', 20, ''),
(91, 1, '2023-06-28 17:09:00', '2023-06-28 16:05:00', 'Port Harcourt', 'Owerri', 'Peak Airways', '210', '1', 155, '', '', '', 20, ''),
(92, 1, '2023-06-29 13:10:00', '2023-06-29 11:05:00', 'Lagos', 'Calabar', 'Core Airways', '165', '2', 200, '', '', '', 20, ''),
(93, 1, '2023-06-29 19:10:00', '2023-06-29 18:05:00', 'Abuja', 'Owerri', 'Echo Airline', '220', '1', 165, '', '', '', 20, ''),
(94, 1, '2023-06-30 21:10:00', '2023-06-30 19:05:00', 'Enugu', 'Kano', 'Peak Airways', '210', '2', 320, '', '', '', 20, ''),
(95, 1, '2023-06-30 13:50:00', '2023-06-30 12:56:00', 'Port Harcourt', 'Lagos', 'Core Airways', '165', '1', 110, 'issue', '110', '', 20, ''),
(96, 1, '2023-06-30 11:08:00', '2023-06-30 09:07:00', 'Lagos', 'Abuja', 'Spark Airways', '125', '2', 195, 'issue', '120', '', 20, ''),
(97, 1, '2023-06-30 10:10:00', '2023-06-30 08:10:00', 'Kano', 'Jos', 'Peak Airways', '210', '2', 125, 'issue', '120', '', 20, ''),
(98, 1, '2023-06-30 18:10:00', '2023-06-30 16:09:00', 'Enugu', 'Calabar', 'Homelander Airways', '185', '2', 220, 'dep', '', '', 20, ''),
(99, 1, '2023-06-30 17:10:00', '2023-06-30 16:10:00', 'Lagos', 'Port Harcourt', 'Echo Airline', '220', '1', 125, 'arr', '', '', 20, ''),
(100, 1, '2023-06-30 19:15:00', '2023-06-30 16:12:00', 'Abuja', 'Jos', 'Core Airways', '165', '3', 275, 'dep', '', '', 20, ''),
(101, 1, '2023-06-30 23:40:00', '2023-06-30 20:31:00', 'Kano', 'Lagos', 'Aero Airways', '210', '3', 295, '', '', '', 20, ''),
(102, 1, '2023-06-30 23:58:00', '2023-06-30 22:14:00', 'Abuja', 'Kaduna', 'Aero Airways', '208', '1', 185, 'dep', '', '21B', 20, ''),
(103, 1, '2023-07-01 10:14:00', '2023-07-01 09:15:00', 'Port Harcourt', 'Enugu', 'Blue Airlines', '200', '11', 965, '', '', '', 20, ''),
(104, 1, '2023-07-01 08:30:00', '2023-07-01 07:15:00', 'Lagos', 'Owerri', 'Core Airways', '63', '1', 175, '', '', '21B', 20, ''),
(105, 1, '2023-07-02 09:45:00', '2023-07-02 08:30:00', 'Kano', 'Jos', 'Core Airways', '61', '1', 185, 'arr', '', '21D', 20, ''),
(106, 1, '2023-07-02 12:30:00', '2023-07-02 11:15:00', 'Abuja', 'Port Harcourt', 'Spark Airways', '123', '2', 205, 'arr', '', '21B', 20, ''),
(107, 1, '2023-07-03 14:45:00', '2023-07-03 13:30:00', 'Enugu', 'Kano', 'Echo Airline', '220', '1', 155, 'issue', '120', '', 20, ''),
(108, 1, '2023-07-03 12:30:00', '2023-07-03 09:45:00', 'Port Harcourt', 'Calabar', 'Spark Airways', '125', '3', 326, '', '', '', 20, ''),
(109, 1, '2023-07-04 15:45:00', '2023-07-04 13:30:00', 'Lagos', 'Kaduna', 'Spark Airways', '125', '2', 285, '', '', '', 20, ''),
(110, 1, '2023-07-05 18:30:00', '2023-07-05 16:45:00', 'Abuja', 'Calabar', 'Spark Airways', '125', '2', 265, '', '', '', 20, ''),
(111, 1, '2023-07-05 22:30:00', '2023-07-05 20:45:00', 'Kano', 'Lagos', 'Homelander Airways', '183', '7', 615, 'arr', '', '21B', 20, ''),
(112, 1, '2023-07-06 13:45:00', '2023-07-06 12:30:00', 'Port Harcourt', 'Enugu', 'Peak Airways', '210', '1', 155, '', '', '', 20, ''),
(113, 1, '2023-07-07 10:30:00', '2023-07-07 09:15:00', 'Lagos', 'Jos', 'Core Airways', '165', '2', 200, '', '', '', 20, ''),
(114, 1, '2023-07-08 14:15:00', '2023-07-08 13:00:00', 'Abuja', 'Owerri', 'Echo Airline', '220', '1', 165, '', '', '', 20, ''),
(115, 1, '2023-07-09 20:30:00', '2023-07-09 18:45:00', 'Enugu', 'Kano', 'Peak Airways', '210', '2', 320, '', '', '', 20, ''),
(116, 1, '2023-07-10 16:45:00', '2023-07-10 15:30:00', 'Port Harcourt', 'Lagos', 'Core Airways', '165', '1', 110, 'issue', '110', '', 20, ''),
(117, 1, '2023-07-11 08:30:00', '2023-07-11 07:15:00', 'Lagos', 'Abuja', 'Spark Airways', '125', '2', 195, 'issue', '120', '', 20, ''),
(118, 1, '2023-07-12 13:45:00', '2023-07-12 12:30:00', 'Kano', 'Jos', 'Peak Airways', '210', '2', 125, 'issue', '120', '', 20, ''),
(119, 1, '2023-07-13 16:30:00', '2023-07-13 14:45:00', 'Port Harcourt', 'Enugu', 'Homelander Airways', '185', '2', 220, 'dep', '', '', 20, ''),
(120, 1, '2023-07-14 11:15:00', '2023-07-14 10:00:00', 'Lagos', 'Port Harcourt', 'Echo Airline', '220', '1', 125, 'arr', '', '', 20, ''),
(121, 1, '2023-07-15 09:30:00', '2023-07-15 08:15:00', 'Kano', 'Enugu', 'Core Airways', '165', '3', 275, 'dep', '', '', 20, ''),
(122, 1, '2023-07-16 12:45:00', '2023-07-16 11:30:00', 'Abuja', 'Jos', 'Aero Airways', '210', '3', 295, '', '', '', 20, ''),
(123, 1, '2023-07-17 14:00:00', '2023-07-17 12:45:00', 'Port Harcourt', 'Lagos', 'Aero Airways', '208', '1', 185, 'dep', '', '21B', 20, ''),
(124, 1, '2023-07-18 10:15:00', '2023-07-18 09:00:00', 'Lagos', 'Kano', 'Blue Airlines', '200', '11', 965, '', '', '', 20, ''),
(125, 1, '2023-07-19 16:30:00', '2023-07-19 15:15:00', 'Abuja', 'Enugu', 'Core Airways', '63', '1', 175, '', '', '21B', 20, ''),
(126, 1, '2023-07-20 13:45:00', '2023-07-20 12:30:00', 'Port Harcourt', 'Jos', 'Core Airways', '61', '1', 185, 'arr', '', '21D', 20, ''),
(127, 1, '2023-07-21 10:30:00', '2023-07-21 09:15:00', 'Lagos', 'Abuja', 'Spark Airways', '123', '2', 205, 'arr', '', '21B', 20, ''),
(128, 1, '2023-07-22 12:45:00', '2023-07-22 11:30:00', 'Kano', 'Enugu', 'Echo Airline', '220', '1', 155, 'issue', '120', '', 20, ''),
(129, 1, '2023-07-23 14:30:00', '2023-07-23 13:15:00', 'Port Harcourt', 'Lagos', 'Spark Airways', '125', '3', 326, '', '', '', 20, ''),


-- --------------------------------------------------------

--
-- Table structure for table `passenger_profile`
--

CREATE TABLE `passenger_profile` (
  `passenger_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `mobile` varchar(110) NOT NULL,
  `dob` datetime NOT NULL,
  `f_name` varchar(20) DEFAULT NULL,
  `m_name` varchar(20) DEFAULT NULL,
  `l_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passenger_profile`
--

INSERT INTO `passenger_profile` (`passenger_id`, `user_id`, `flight_id`, `mobile`, `dob`, `f_name`, `m_name`, `l_name`) VALUES
(1, 1, 1, '2147483647', '1995-01-01 00:00:00', 'Christine', 'M', 'Moore'),
(2, 2, 3, '2147483647', '1995-02-13 00:00:00', 'Henry', 'l', 'Stuart'),
(3, 3, 2, '2147483647', '1994-06-21 00:00:00', 'Andre', 'J', 'Atkins'),
(4, 4, 2, '2147483647', '1995-05-16 00:00:00', 'James', 'K', 'Harbuck'),
(5, 2, 8, '7854444411', '1995-02-13 00:00:00', 'Henry', 'l', 'Stuart'),
(6, 2, 20, '7412585555', '1995-02-13 00:00:00', 'Henry', 'l', 'Stuart');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `card_no` varchar(16) NOT NULL,
  `user_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `expire_date` varchar(5) DEFAULT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`card_no`, `user_id`, `flight_id`, `expire_date`, `amount`) VALUES
('1010555677851111', 4, 2, '10/26', 370),
('1020445869651011', 2, 20, '12/25', 370),
('1111888889897778', 2, 3, '12/25', 205),
('1400565800004478', 2, 8, '12/25', 1230),
('1458799990001450', 3, 2, '12/25', 185),
('4204558500014587', 1, 1, '02/25', 350);

-- --------------------------------------------------------

--
-- Table structure for table `pwdreset`
--

CREATE TABLE `pwdreset` (
  `pwd_reset_id` int(11) NOT NULL,
  `pwd_reset_email` varchar(50) NOT NULL,
  `pwd_reset_selector` varchar(80) NOT NULL,
  `pwd_reset_token` varchar(120) NOT NULL,
  `pwd_reset_expires` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seat_no` varchar(10) NOT NULL,
  `cost` int(11) NOT NULL,
  `class` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `passenger_id`, `flight_id`, `user_id`, `seat_no`, `cost`, `class`) VALUES
(1, 1, 1, 1, '21A', 350, 'E'),
(2, 2, 3, 2, '21A', 205, 'E'),
(4, 3, 2, 3, '21A', 185, 'E'),
(6, 4, 2, 4, '21C', 370, 'E'),
(8, 5, 8, 2, '21A', 1230, 'E'),
(10, 6, 20, 2, '21A', 370, 'E');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'christine', 'christine@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(2, 'henry', 'henry@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(3, 'andre', 'andre@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(4, 'james', 'james@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `airline`
--
ALTER TABLE `airline`
  ADD PRIMARY KEY (`airline_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feed_id`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flight_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `passenger_profile`
--
ALTER TABLE `passenger_profile`
  ADD PRIMARY KEY (`passenger_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`card_no`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `pwdreset`
--
ALTER TABLE `pwdreset`
  ADD PRIMARY KEY (`pwd_reset_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`),
  ADD KEY `passenger_id` (`passenger_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `airline`
--
ALTER TABLE `airline`
  MODIFY `airline_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feed_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `passenger_profile`
--
ALTER TABLE `passenger_profile`
  MODIFY `passenger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pwdreset`
--
ALTER TABLE `pwdreset`
  MODIFY `pwd_reset_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);

--
-- Constraints for table `passenger_profile`
--
ALTER TABLE `passenger_profile`
  ADD CONSTRAINT `passenger_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `passenger_profile_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`);

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`),
  ADD CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`passenger_id`) REFERENCES `passenger_profile` (`passenger_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
