CREATE DATABASE  IF NOT EXISTS `user_tracker`;
USE `user_tracker`;

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

INSERT INTO `users` VALUES 
	(1, 'John', 'Smith', 'USA', '+1 5417543010'),
    (2, 'Alex', 'Niman', 'Australia', '+61 298765432'),
    (3, 'Ivan', 'Petrov', 'Russia', '+7 9814732568'),
    (4, 'Thomas', 'Berger', 'France', '+33 686579014');
