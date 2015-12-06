SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE DATABASE
IF NOT EXISTS `suptrip`
DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `suptrip`;

CREATE TABLE IF NOT EXISTS `suptrip`.`campuses` (
	`id` smallint(6) NOT NULL AUTO_INCREMENT,
	`countryCode` varchar(5) NOT NULL,
	`name` tinytext NOT NULL,
	`address` text,
	`longitude` float DEFAULT NULL,
	`latitude` float DEFAULT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `suptrip`.`trips` (
	`id` mediumint(9) NOT NULL AUTO_INCREMENT,
	`reserving_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`user_id` mediumint(9) NOT NULL,
	`price` decimal(10,2) NOT NULL,
	`departure_campus` smallint(6) NOT NULL,
	`departure_date` date NOT NULL,
	`arrival_campus` smallint(6) NOT NULL,
	`arrival_date` date NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `users` (
	`campusId` mediumint(8) unsigned NOT NULL,
	`password` char(42) NOT NULL,
	`currentYear` tinyint(4) NOT NULL,
	`email` tinytext COMMENT 'si null, utiliser id@sup.com',
	`firstName` tinytext NOT NULL,
	`lastName` tinytext NOT NULL,
	`campus` tinytext NOT NULL,
	UNIQUE KEY `campusId` (`campusId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `campuses` (`countryCode`, `name`, `address`, `longitude`, `latitude`) VALUES
('BE', 'Brussels', '29 Rue Ducale, 1000 Bruxelles, Belgique', 50.8448, 4.3659),
('FR', 'Paris', 'Tour Montparnasse - 40e étage, 33 Avenue du Maine, 75015 Paris, France', 48.8421, 2.3218),

('FR', 'Nice', 'Immeuble Bel Air Mansions, 21 boulevard Grosso, 06000 Nice', 43.6959, 7.2515),
('FR', 'Bordeaux', '14 Cours Saint-Louis, 33300 Bordeaux', 44.8563, -0.573098),
('FR', 'Caen', ' 10 Rue Alfred Kastler, 14000 Caen', 49.2021, -0.392815),
('FR', 'Clermond-Ferrand', '9 Rue de Cataroux, 63100 Clermont-Ferrand', 45.7889, 3.10195),
('FR', 'Grenoble', '16 Rue Henri Barbusse, 38100 Grenoble', 45.1571, 5.73641),
('FR', 'Lyon', '16 Rue Jean Desparmet, 69008 Lyon', 45.7358, 4.87549),
('FR', 'Marseille', '15 Rue Marc Donadille, 13013 Marseille', 43.3455, 5.42909),
('FR', 'Metz', '7 Rue Thomas Edison, 57070 Metz', 49.1033, 6.22404),
('FR', 'Montpellier', 'Immeuble Archimède, bâtiment B, étage 1, 396 Rue du Mas de Verchant, 34000 Montpellier', 43.6204, 3.90984),
('FR', 'Nantes', '1 Rue du Charron, 44800 Saint-Herblain', 47.2223, -1.64263),
('FR', 'Orléans', '122 - 124 Rue du Faubourg Bannier, 45000 Orléans', 47.9153, 1.8973),
('FR', 'Reims', '10 Rue Edouard Mignot, 51100 Reims', 49.2602, 4.01978),
('FR', 'Rennes', '1 Av. de Belle Fontaine, 35510 Cesson-Sévigné', 48.128, -1.63026),
('FR', 'Starsbourg', '83 Route du Rhin, 67400 Illkirch-Graffenstaden', 48.5241, 7.72951),
('FR', 'Toulouse', '7 Espl. Compans Caffarelli, 31000 Toulouse', 43.6108, 1.43292),
('FR', 'Tours', '15 Place Michelet, 37000 Tours', 47.3868, 0.689348),
('FR', 'Troyes', '1 Boulevard Charles Baltet, 10000 Troyes', 48.2905, 4.06874),
('FR', 'Valenciennes', '98 Rue du Rempart, 59300 Valenciennes', 50.3628, 3.52009),
('FR', 'Martinique', 'Immeuble «Les Bosquets 1» n°26, ZI Les Mangles Acajou, FWI-97232 Le Lamentin, Martinique', 14.6181, -61.0239),
('FR', 'Guadeloupe', 'Lotissement Dugazon de Bourgogne, Pointe-à-Pitre, Guadeloupe', 16.258, -61.5125),
('FR', 'Réunion', '71 Rue Jules Auber, Saint-Denis, La Réunion', -20.8763, 55.4522),
('UK', 'Londres', 'Headington Campus, Headington Rd, Oxford OX3 0BP, Royaume-Uni', 51.7548, -1.22734),
('IT', 'Trapani', 'Via Cappuccini, 7, 91100 Trapani TP', 38.0166, 12.4987),
('IT', 'Rome', 'Piazza dei Sanniti n.9, 00185 Roma', 41.8989, 12.5145),
('CA', 'Canada', '666 Rue Sherbrooke O, Montréal, QC H3A 1G1', 45.505, -73.5753),
('MA', 'Casablanca', '8 Ibnou Katima (Ex Bournazel), Casablanca 20000', 33.58, -7.62464),
('MU', 'Île Maurice', 'Medine Education Village, Pierrefonds, Beaux Songes, Île Maurice 742CU001', -20.317, 57.4108),
('MA', 'Rabat', 'Rabat, 64 avenue Fad Ould Oumer, 10000 Rabat', 33.9982, -6.85123),
('CN', 'Beijing', 'Foundation Building, Room 806-808, West campus-Beijing, University of Technology, Ping Le Yuan 10Chaoyang District, 100022 BEIJING', NULL, NULL),
('CN', 'Tianjin', 'Room 709, No.9 Courses Building, South campus, Heibei University of Technology, Guang Rong Dao 29, HongQiao District, 300004 TIANJIN', NULL, NULL),
('CN', 'Zhenjiang', 'East Campus JUST, MengXi Road 2, Jingkou District, ZHENJIANG', NULL, NULL);


-- CREATE
-- ALGORITHM = UNDEFINED
-- DEFINER=`root`@`localhost`
-- SQL SECURITY DEFINER 
-- VIEW `suptrip`.`AvailableTrips`
-- AS
	-- SELECT
		 -- @i:=@i+1 AS line,
		 -- `d`.`id`	AS `departure_id`,
		 -- `d`.`name`	AS `departure_name`,
		 -- `a`.`id`	AS `arrival_id`,
		 -- `a`.`name`	AS `arrival_name`
	-- FROM `campuses`	AS `a`
	-- JOIN `campuses` AS `d`
	-- ON	 `a`.`id`	<> `d`.`id`,
    -- (SELECT @i:=0) fuckU;

GRANT SELECT, INSERT, UPDATE, DELETE, SHOW VIEW
ON *.*
TO 'suptrip_web_user'@'localhost'
IDENTIFIED BY 'Passw0rd!'
WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;
