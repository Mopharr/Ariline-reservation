CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_uname` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_pwd` varchar(100) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `airline` (
  `airline_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `seats` int(11) NOT NULL,
  PRIMARY KEY (`airline_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `cities` (
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `feedback` (
  `feed_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `q1` varchar(250) NOT NULL,
  `q2` varchar(20) NOT NULL,
  `q3` varchar(250) NOT NULL,
  `rate` int(11) NOT NULL,
  PRIMARY KEY (`feed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `flight` (
  `flight_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `last_bus_seat` varchar(5) DEFAULT '',
  PRIMARY KEY (`flight_id`),
  KEY `admin_id` (`admin_id`),
  KEY `destination` (`Destination`),
  KEY `source` (`source`),
  CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `passenger_profile` (
  `passenger_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `mobile` varchar(110) NOT NULL,
  `dob` datetime NOT NULL,
  `f_name` varchar(20) DEFAULT NULL,
  `m_name` varchar(20) DEFAULT NULL,
  `l_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`passenger_id`),
  KEY `user_id` (`user_id`),
  KEY `flight_id` (`flight_id`),
  CONSTRAINT `passenger_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `passenger_profile_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `payment` (
  `card_no` varchar(16) NOT NULL,
  `user_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `expire_date` varchar(5) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`card_no`),
  KEY `user_id` (`user_id`),
  KEY `flight_id` (`flight_id`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `pwdreset` (
  `pwd_reset_id` int(11) NOT NULL AUTO_INCREMENT,
  `pwd_reset_email` varchar(50) NOT NULL,
  `pwd_reset_selector` varchar(80) NOT NULL,
  `pwd_reset_token` varchar(120) NOT NULL,
  `pwd_reset_expires` varchar(20) NOT NULL,
  PRIMARY KEY (`pwd_reset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL AUTO_INCREMENT,
  `passenger_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seat_no` varchar(10) NOT NULL,
  `cost` int(11) NOT NULL,
  `class` varchar(3) NOT NULL,
  PRIMARY KEY (`ticket_id`),
  KEY `user_id` (`user_id`),
  KEY `flight_id` (`flight_id`),
  KEY `passenger_id` (`passenger_id`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`),
  CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`passenger_id`) REFERENCES `passenger_profile` (`passenger_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE cars (
  id INT PRIMARY KEY AUTO_INCREMENT,
  owner_name VARCHAR(255) NOT NULL,
  licences_number VARCHAR(50) NOT NULL,
  car_brand VARCHAR(50) NOT NULL,
  check_in_time TIME NOT NULL,
  check_out_time TIME NOT NULL,
  passengers INT NOT NULL
);


INSERT INTO `admin` (`admin_id`, `admin_uname`, `admin_email`, `admin_pwd`) VALUES
(1, 'admin', 'admin@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW');

INSERT INTO `flight` (`flight_id`, `admin_id`, `arrivale`, `departure`, `Destination`, `source`, `airline`, `Seats`, `duration`, `Price`, `status`, `issue`, `last_seat`, `bus_seats`, `last_bus_seat`) VALUES
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
(11, 1, '2023-05-30 22:30:00', '2023-05-30 21:28:00', 'Lagos', 'Kaduna', 'Core Airways', '57', '1', 140, '', '', '15B', 21, ''),
(12, 1, '2023-05-30 23:45:00', '2023-05-30 22:43:00', 'Lagos', 'Akure', 'Core Airways', '49', '1', 125, '', '', '13A', 18, ''),
(13, 1, '2023-05-31 10:03:00', '2023-05-31 09:01:00', 'Lagos', 'Asaba', 'Core Airways', '41', '1', 110, '', '', '12F', 16, ''),
(14, 1, '2023-05-31 11:15:00', '2023-05-31 10:13:00', 'Lagos', 'Yola', 'Core Airways', '88', '1', 225, '', '', '21C', 15, ''),
(15, 1, '2023-05-31 12:30:00', '2023-05-31 11:28:00', 'Lagos', 'Maiduguri', 'Core Airways', '98', '1', 250, '', '', '18D', 13, ''),
(16, 1, '2023-05-31 13:45:00', '2023-05-31 12:43:00', 'Lagos', 'Katsina', 'Core Airways', '77', '1', 185, '', '', '17A', 20, ''),
(17, 1, '2023-05-31 15:00:00', '2023-05-31 13:58:00', 'Lagos', 'Ilorin', 'Core Airways', '52', '1', 130, '', '', '15F', 18, ''),
(18, 1, '2023-05-31 16:15:00', '2023-05-31 15:13:00', 'Lagos', 'Warri', 'Core Airways', '37', '1', 95, '', '', '11C', 22, ''),
(19, 1, '2023-05-31 17:30:00', '2023-05-31 16:28:00', 'Lagos', 'Uyo', 'Core Airways', '68', '1', 165, '', '', '16B', 16, ''),
(20, 1, '2023-05-30 21:15:00', '2023-05-30 20:13:00', 'Lagos', 'Jos', 'Core Airways', '72', '1', 205, '', '', '19D', 14, ''),
(21, 1, '2023-05-30 10:03:00', '2023-05-30 09:01:00', 'Lagos', 'Abuja', 'Core Airways', '63', '1', 175, '', '', '21B', 20, ''),
(22, 1, '2023-05-30 11:15:00', '2023-05-30 10:13:00', 'Lagos', 'Kano', 'Core Airways', '78', '1', 190, '', '', '19A', 15, ''),
(23, 1, '2023-05-30 12:30:00', '2023-05-30 11:28:00', 'Lagos', 'Port Harcourt', 'Core Airways', '59', '1', 145, '', '', '16C', 22, ''),
(24, 1, '2023-05-30 13:45:00', '2023-05-30 12:43:00', 'Lagos', 'Enugu', 'Core Airways', '62', '1', 155, '', '', '22F', 18, ''),
(25, 1, '2023-05-30 15:00:00', '2023-05-30 13:58:00', 'Lagos', 'Owerri', 'Core Airways', '61', '1', 150, '', '', '20D', 17, ''),
(26, 1, '2023-05-30 16:15:00', '2023-05-30 15:13:00', 'Lagos', 'Calabar', 'Core Airways', '73', '1', 210, '', '', '18B', 15, ''),
(27, 1, '2023-05-30 17:30:00', '2023-05-30 16:28:00', 'Lagos', 'Ibadan', 'Core Airways', '45', '1', 120, '', '', '14A', 23, ''),
(28, 1, '2023-05-30 18:45:00', '2023-05-30 17:43:00', 'Lagos', 'Benin City', 'Core Airways', '54', '1', 135, '', '', '17C', 19, ''),
(29, 1, '2023-05-30 20:00:00', '2023-05-30 18:58:00', 'Lagos', 'Sokoto', 'Core Airways', '86', '1', 220, '', '', '23F', 16, ''),
(30, 1, '2023-05-30 10:03:00', '2023-05-30 09:01:00', 'Lagos', 'Abuja', 'Core Airways', '63', '1', 175, '', '', '21B', 20, ''),
(31, 1, '2023-05-30 11:15:00', '2023-05-30 10:05:00', 'Kano', 'Port Harcourt', 'Core Airways', '61', '1', 185, 'arr', '', '21D', 20, ''),
(32, 1, '2023-05-31 12:13:00', '2023-05-31 10:13:00', 'Enugu', 'Owerri', 'Spark Airways', '123', '2', 205, 'arr', '', '21B', 20, ''),
(33, 1, '2023-05-31 16:30:00', '2023-05-31 15:26:00', 'Calabar', 'Ibadan', 'Echo Airline', '220', '1', 155, 'issue', '120', '', 20, ''),
(34, 1, '2023-06-01 15:30:00', '2023-06-01 12:30:00', 'Benin City', 'Sokoto', 'Spark Airways', '125', '3', 326, '', '', '', 20, ''),
(35, 1, '2023-06-01 17:55:00', '2023-06-01 15:30:00', 'Jos', 'Kaduna', 'Spark Airways', '125', '2', 285, '', '', '', 20, ''),
(36, 1, '2023-06-02 20:50:00', '2023-06-02 18:50:00', 'Akure', 'Asaba', 'Spark Airways', '125', '2', 265, '', '', '', 20, ''),
(37, 1, '2023-06-03 00:55:00', '2023-06-02 17:00:00', 'Yola', 'Maiduguri', 'Homelander Airways', '183', '7', 615, 'arr', '', '21B', 20, ''),
(38, 1, '2023-06-03 17:09:00', '2023-06-03 16:05:00', 'Katsina', 'Ilorin', 'Peak Airways', '210', '1', 155, '', '', '', 20, ''),
(39, 1, '2023-06-04 13:10:00', '2023-06-04 11:05:00', 'Warri', 'Uyo', 'Core Airways', '165', '2', 200, '', '', '', 20, ''),
(40, 1, '2023-06-05 19:10:00', '2023-06-05 18:05:00', 'Abuja', 'Benin City', 'Echo Airline', '220', '1', 165, '', '', '', 20, ''),
(41, 1, '2023-06-06 21:10:00', '2023-06-06 19:05:00', 'Lagos', 'Kano', 'Spark Airways', '125', '3', 326, '', '', '', 20, ''),
(42, 1, '2023-06-07 09:30:00', '2023-06-07 08:25:00', 'Port Harcourt', 'Enugu', 'Homelander Airways', '183', '1', 155, '', '', '', 20, ''),
(43, 1, '2023-06-07 14:20:00', '2023-06-07 12:20:00', 'Owerri', 'Calabar', 'Spark Airways', '123', '2', 205, '', '', '', 20, ''),
(44, 1, '2023-06-08 17:30:00', '2023-06-08 16:25:00', 'Ibadan', 'Jos', 'Core Airways', '63', '2', 285, '', '', '', 20, ''),
(45, 1, '2023-06-09 11:50:00', '2023-06-09 09:50:00', 'Sokoto', 'Akure', 'Spark Airways', '125', '1', 205, '', '', '', 20, ''),
(46, 1, '2023-06-09 14:30:00', '2023-06-09 12:30:00', 'Kaduna', 'Yola', 'Peak Airways', '210', '3', 325, '', '', '', 20, ''),
(47, 1, '2023-06-10 19:40:00', '2023-06-10 18:35:00', 'Maiduguri', 'Katsina', 'Core Airways', '165', '2', 200, '', '', '', 20, ''),
(48, 1, '2023-06-11 08:20:00', '2023-06-11 07:15:00', 'Ilorin', 'Warri', 'Echo Airline', '220', '1', 165, '', '', '', 20, ''),
(49, 1, '2023-06-12 12:45:00', '2023-06-12 10:40:00', 'Uyo', 'Abuja', 'Spark Airways', '125', '2', 265, '', '', '', 20, ''),
(50, 1, '2023-06-13 15:55:00', '2023-06-13 13:55:00', 'Benin City', 'Lagos', 'Echo Airline', '220', '1', 175, '', '', '', 20, '');



INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'christine', 'christine@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(2, 'henry', 'henry@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(3, 'andre', 'andre@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(4, 'james', 'james@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(5, 'admin', 'admin@gmail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW')
;


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

INSERT INTO `feedback` (`feed_id`, `email`, `q1`, `q2`, `q3`, `rate`)
VALUES
(1, 'user1@mail.com', 'Answer 1 for user1', 'Answer 2 for user1', 'Answer 3 for user1', 4),
(2, 'user2@mail.com', 'Answer 1 for user2', 'Answer 2 for user2', 'Answer 3 for user2', 3),
(3, 'user3@mail.com', 'Answer 1 for user3', 'Answer 2 for user3', 'Answer 3 for user3', 5),
(4, 'user4@mail.com', 'Answer 1 for user4', 'Answer 2 for user4', 'Answer 3 for user4', 2);

INSERT INTO `passenger_profile` (`passenger_id`, `user_id`, `flight_id`, `mobile`, `dob`, `f_name`, `m_name`, `l_name`)
VALUES
(1, 1, 1, '1234567890', '1990-01-01', 'John', 'Doe', NULL),
(2, 2, 1, '9876543210', '1995-05-10', 'Jane', NULL, 'Smith'),
(3, 1, 2, '5555555555', '1985-12-25', 'Michael', 'A.', 'Johnson'),
(4, 3, 2, '1111111111', '1998-07-15', 'Emily', 'Grace', 'Brown');

INSERT INTO `payment` (`card_no`, `user_id`, `flight_id`, `expire_date`, `amount`)
VALUES
('1234567812345678', 1, 1, '12/25', 200),
('8765432187654321', 2, 1, '10/23', 250),
('1111222233334444', 1, 2, '06/24', 300),
('9999888877776666', 3, 2, '09/22', 275);

INSERT INTO `ticket` (`ticket_id`, `passenger_id`, `flight_id`, `user_id`, `seat_no`, `cost`, `class`)
VALUES
(1, 1, 1, 1, 'A1', 200, 'Eco'),
(2, 2, 1, 2, 'B2', 250, 'Eco'),
(3, 3, 2, 1, 'C3', 300, 'Eco'),
(4, 4, 2, 3, 'D4', 275, 'Eco');

