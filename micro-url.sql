-- Adminer 4.7.6 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

CREATE DATABASE `micro-url` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `micro-url`;

CREATE TABLE `assoc_url_mot-cle` (
  `id_assoc` int NOT NULL AUTO_INCREMENT,
  `id_url` int NOT NULL,
  `id_mot-cle` int NOT NULL,
  PRIMARY KEY (`id_assoc`),
  KEY `id_url` (`id_url`),
  KEY `id_mot-cle` (`id_mot-cle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `assoc_url_mot-cle` (`id_assoc`, `id_url`, `id_mot-cle`) VALUES
(1,	1,	1),
(2,	2,	2),
(3,	3,	3),
(4,	3,	4);

CREATE TABLE `mot-cle` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mot_cle` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `mot-cle_ibfk_2` FOREIGN KEY (`id`) REFERENCES `assoc_url_mot-cle` (`id_mot-cle`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `mot-cle` (`id`, `mot_cle`) VALUES
(1,	'Premier mot cle'),
(2,	'Deusieme mot clef'),
(3,	'Troiseme mot cle'),
(4,	'Dernier mot cle');

CREATE TABLE `url` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL,
  `shortcut` varchar(255) NOT NULL,
  `datetime` datetime NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `url_ibfk_2` FOREIGN KEY (`id`) REFERENCES `assoc_url_mot-cle` (`id_url`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `url` (`id`, `url`, `shortcut`, `datetime`, `description`) VALUES
(1,	'url.exemple1.xyz',	'url1.xyz',	'2021-01-06 15:25:03',	'Exemple 1'),
(2,	'url.exemple2.xyz',	'url2.xyz',	'2021-01-06 15:30:02',	'Exemple 2\r\n'),
(3,	'url.exemple3.xyz',	'url3.xyz',	'2021-01-06 15:31:00',	'Exemple 3');

-- 2021-01-07 08:04:22
