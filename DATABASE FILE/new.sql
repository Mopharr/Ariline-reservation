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
(10, 1, '2023-05-06 13:10:00', '2023-05-06 11:05:00', 'Warri', 'Uyo', 'Core Airways', '165', '2', 200, '', '', '', 20, '');



INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'christine', 'christine@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(2, 'henry', 'henry@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(3, 'andre', 'andre@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW'),
(4, 'james', 'james@mail.com', '$2y$10$KRXGkY.dxYjD8FLZclW/Tu04wl76lD7IA4Z3nAsxtpdZxHNbYo4ZW');


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

