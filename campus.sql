-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 03 Décembre 2015 à 22:51
-- Version du serveur :  5.6.24
-- Version de PHP :  5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `supinfo`
--

-- --------------------------------------------------------

--
-- Structure de la table `campus`
--

CREATE TABLE IF NOT EXISTS `campus` (
  `ID` int(11) NOT NULL,
  `CountryCode` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` text COLLATE utf8mb4_unicode_ci,
  `Longitude` float DEFAULT NULL,
  `Latitude` float DEFAULT NULL,
  `GoogleLink` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `campus`
--

INSERT INTO `campus` (`ID`, `CountryCode`, `Name`, `Address`, `Longitude`, `Latitude`, `GoogleLink`) VALUES
(1, 'FR', 'SUPINFO Paris', '33 Avenue du Maine, Tour Montparnasse, 40e étage, 75015 Paris', 48.8419, 2.32167, 'https://goo.gl/maps/shZRh5mEk4m'),
(2, 'FR', 'SUPINFO Bordeaux', '14 Cours Saint-Louis, 33300 Bordeaux', 44.8563, -0.573098, 'https://goo.gl/maps/MNebWD7hFPs'),
(3, 'FR', 'SUPINFO Caen', ' 10 Rue Alfred Kastler, 14000 Caen', 49.2021, -0.392815, 'https://goo.gl/maps/msxA92gU9vS2'),
(4, 'FR', 'SUPINFO Clermond-Ferrand', '9 Rue de Cataroux, 63100 Clermont-Ferrand', 45.7889, 3.10195, 'https://goo.gl/maps/eUoSYxrPsRQ2'),
(5, 'FR', 'SUPINFO Grenoble', '16 Rue Henri Barbusse, 38100 Grenoble', 45.1571, 5.73641, 'https://goo.gl/maps/mYaxzcmq3iS2'),
(6, 'FR', 'SUPINFO Nice', 'Immeuble Arenice, 455 Promenade des Anglais, 06299 Nice', 43.6675, 7.21409, 'https://goo.gl/maps/wG9oPdc8uYp'),
(7, 'FR', 'SUPINFO Lyon', '16 Rue Jean Desparmet, 69008 Lyon', 45.7358, 4.87549, 'https://goo.gl/maps/g2gUeFymRV22'),
(7, 'FR', 'SUPINFO Marseille', '15 Rue Marc Donadille, 13013 Marseille', 43.3455, 5.42909, 'https://goo.gl/maps/5VsLZqbvC3s'),
(8, 'FR', 'SUPINFO Metz', '7 Rue Thomas Edison, 57070 Metz', 49.1033, 6.22404, 'https://goo.gl/maps/dcM6PF6yXt72'),
(9, 'FR', 'SUPINFO Montpellier', 'Immeuble Archimède, bâtiment B, étage 1, 396 Rue du Mas de Verchant, 34000 Montpellier', 43.6204, 3.90984, 'https://goo.gl/maps/zeDnYktxoaN2'),
(10, 'FR', 'SUPINFO Nantes', '1 Rue du Charron, 44800 Saint-Herblain', 47.2223, -1.64263, 'https://goo.gl/maps/441LRGYykKM2'),
(11, 'FR', 'SUPINFO Orléans', '122 - 124 Rue du Faubourg Bannier, 45000 Orléans', 47.9153, 1.8973, 'https://goo.gl/maps/4Ncmoko2yd72'),
(12, 'FR', 'SUPINFO Reims', '10 Rue Edouard Mignot, 51100 Reims', 49.2602, 4.01978, 'https://goo.gl/maps/uDkwnNNJ5ex'),
(13, 'FR', 'SUPINFO Rennes', '1 Av. de Belle Fontaine, 35510 Cesson-Sévigné', 48.128, -1.63026, 'https://goo.gl/maps/NHToxfj3vW62'),
(14, 'FR', 'SUPINFO Starsbourg', '83 Route du Rhin, 67400 Illkirch-Graffenstaden', 48.5241, 7.72951, 'https://goo.gl/maps/GE1HJ5auAUp'),
(15, 'FR', 'SUPINFO Toulouse', '7 Espl. Compans Caffarelli, 31000 Toulouse', 43.6108, 1.43292, 'https://goo.gl/maps/tEPWeQNhUE32'),
(16, 'FR', 'SUPINFO Tours', '15 Place Michelet, 37000 Tours', 47.3868, 0.689348, 'https://goo.gl/maps/7eB7xNPUM9r'),
(17, 'FR', 'SUPINFO Troyes', '1 Boulevard Charles Baltet, 10000 Troyes', 48.2905, 4.06874, 'https://goo.gl/maps/1eFe7vn8vAx'),
(18, 'FR', 'SUPINFO Valenciennes', '98 Rue du Rempart, 59300 Valenciennes', 50.3628, 3.52009, 'https://goo.gl/maps/sGbJAS4TEks'),
(19, 'FR', 'SUPINFO Martinique', 'Immeuble «Les Bosquets 1» n°26, ZI Les Mangles Acajou, FWI-97232 Le Lamentin, Martinique', 14.6181, -61.0239, 'https://goo.gl/maps/sLQtxiKqQ7S2'),
(20, 'FR', 'SUPINFO Guadeloupe', 'Lotissement Dugazon de Bourgogne, Pointe-à-Pitre, Guadeloupe', 16.258, -61.5125, 'https://goo.gl/maps/PQhSfyZ7BDm'),
(21, 'FR', 'SUPINFO Réunion', '71 Rue Jules Auber, Saint-Denis, La Réunion', -20.8763, 55.4522, 'https://goo.gl/maps/98WqFCbedMx'),
(22, 'BE', 'SUPINFO Bruxelles', 'Rue Ducale 29, 1000 Bruxelles, Belgique', 50.8449, 4.35772, 'https://goo.gl/maps/6LuEGDUFd9S2'),
(23, 'UK', 'SUPINFO Londres', 'Headington Campus, Headington Rd, Oxford OX3 0BP, Royaume-Uni', 51.7548, -1.22734, 'https://goo.gl/maps/cX6JcZbGnwk'),
(24, 'IT', 'SUPINFO Trapani', 'Via Cappuccini, 7, 91100 Trapani TP', 38.0166, 12.4987, 'https://goo.gl/maps/nSSRwTLMwkp'),
(25, 'IT', 'SUPINFO Rome', 'Piazza dei Sanniti n.9, 00185 Roma', 41.8989, 12.5145, 'https://goo.gl/maps/sVMEAoyaQuo'),
(26, 'CA', 'SUPINFO Canada', '666 Rue Sherbrooke O, Montréal, QC H3A 1G1', 45.505, -73.5753, 'https://goo.gl/maps/SHeMVjbzKdM2'),
(27, 'MA', 'SUPINFO Casablanca', '8 Ibnou Katima (Ex Bournazel), Casablanca 20000', 33.58, -7.62464, 'https://goo.gl/maps/ggygH3VmPyq'),
(28, 'MU', 'SUPINFO Île Maurice', 'Medine Education Village, Pierrefonds, Beaux Songes, Île Maurice 742CU001', -20.317, 57.4108, 'https://goo.gl/maps/UHt7phZzBCU2'),
(29, 'MA', 'SUPINFO Rabat', 'SUPINFO Rabat, 64 avenue Fad Ould Oumer, 10000 Rabat', 33.9982, -6.85123, 'https://goo.gl/maps/H2smEyLaDjn'),
(30, 'CN', 'SUPINFO Beijing', 'Foundation Building, Room 806-808, West campus-Beijing, University of Technology, Ping Le Yuan 100, Chaoyang District, 100022 BEIJING', NULL, NULL, 'https://www.google.com/maps/d/viewer?mid=zDssR5uHSEWE.kogBUxO2Zw6I'),
(31, 'CN', 'SUPINFO Tianjin', 'Room 709, No.9 Courses Building, South campus, Heibei University of Technology, Guang Rong Dao 29, HongQiao District, 300004 TIANJIN', NULL, NULL, 'https://www.google.com/maps/d/viewer?mid=zDssR5uHSEWE.knsPebcDjVxQ'),
(32, 'CN', 'SUPINFO Zhenjiang', 'East Campus JUST, MengXi Road 2, Jingkou District, ZHENJIANG', NULL, NULL, 'https://www.google.com/maps/d/viewer?mid=zDssR5uHSEWE.k5IQ0fSSspPs');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
