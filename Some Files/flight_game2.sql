-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.9.2-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para flight_game
CREATE DATABASE IF NOT EXISTS `flight_game` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `flight_game`;

-- Volcando estructura para tabla flight_game.airport
CREATE TABLE IF NOT EXISTS `airport` (
  `id` int(20) NOT NULL,
  `ident` varchar(40) NOT NULL,
  `type` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `latitude_deg` double DEFAULT NULL,
  `longitude_deg` double DEFAULT NULL,
  `continent` varchar(40) DEFAULT NULL,
  `iso_country` varchar(40) DEFAULT NULL,
  `municipality` varchar(40) DEFAULT NULL,
  `gps_code` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ident`),
  KEY `iso_country` (`iso_country`),
  CONSTRAINT `airport_ibfk_1` FOREIGN KEY (`iso_country`) REFERENCES `country` (`iso_country`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla flight_game.airport: ~117 rows (aproximadamente)
/*!40000 ALTER TABLE `airport` DISABLE KEYS */;
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFAA', 'small_airport', 'Aavahelukka Airport', 67.60359954833984, 23.97170066833496, 'EU', 'FI', '', 'EFAA');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFAH', 'small_airport', 'Ahmosuo Airport', 64.895302, 25.752199, 'EU', 'FI', 'Oulu', 'EFAH');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFAL', 'small_airport', 'Alavus Airfield', 62.554699, 23.573299, 'EU', 'FI', 'Alavus', 'EFAL');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFEJ', 'heliport', 'Jorvin Hospital Heliport', 60.220833, 24.68639, 'EU', 'FI', 'Helsinki', 'EFEJ');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFEK', 'heliport', 'Kilpisjärvi Heliport', 69.0022201538086, 20.89638900756836, 'EU', 'FI', '', 'EFEK');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFET', 'medium_airport', 'Enontekio Airport', 68.362602233887, 23.424299240112, 'EU', 'FI', 'Enontekio', 'EFET');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFEU', 'small_airport', 'Eura Airport', 61.1161, 22.201401, 'EU', 'FI', 'Eura', 'EFEU');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFFO', 'small_airport', 'Forssa Airfield', 60.803683, 23.650802, 'EU', 'FI', 'Forssa', 'EFFO');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFGE', 'small_airport', 'Genböle Airport', 60.086899, 22.5219, 'EU', 'FI', 'Genböle', 'EFGE');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFHA', 'medium_airport', 'Halli Airport', 61.856039, 24.786686, 'EU', 'FI', 'Jämsä', 'EFHA');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFHE', 'heliport', 'Hernesaari Heliport', 60.147778, 24.924444, 'EU', 'FI', 'Helsinki', 'EFHE');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFHF', 'closed', 'Helsinki Malmi Airport', 60.254601, 25.042801, 'EU', 'FI', 'Helsinki', 'EFHF');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFHH', 'heliport', 'Kanta-Hämeen Central Hospital Heliport', 60.991112, 24.415277, 'EU', 'FI', 'Hämeenlinna', 'EFHH');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFHI', 'closed', 'Haapamäki Airfield', 62.255204, 24.349478, 'EU', 'FI', 'Haapamäki', 'EFHI');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFHJ', 'closed', 'Haapajärvi Airport', 63.7122, 25.395, 'EU', 'FI', 'Haapajärvi', 'EFHJ');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFHK', 'large_airport', 'Helsinki Vantaa Airport', 60.3172, 24.963301, 'EU', 'FI', 'Helsinki', 'EFHK');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFHL', 'small_airport', 'Hailuoto Airfield', 64.969553, 24.704218, 'EU', 'FI', 'Hailuoto', 'EFHL');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFHM', 'small_airport', 'Hämeenkyrö Airfield', 61.689701, 23.0737, 'EU', 'FI', 'Hämeenkyrö', 'EFHM');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFHN', 'small_airport', 'Hanko Airport', 59.8489, 23.083599, 'EU', 'FI', 'Hanko', 'EFHN');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFHO', 'heliport', 'Oulun University Hospital Heliport', 65.003609, 25.520279, 'EU', 'FI', 'Oulu', 'EFHO');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFHP', 'small_airport', 'Haapavesi Airfield', 64.113098, 25.5042, 'EU', 'FI', 'Haapavesi', 'EFHP');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFHS', 'heliport', 'Seinäjoen Central Hospital Heliport', 62.769919, 22.822402, 'EU', 'FI', 'Seinäjoen', 'EFHS');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFHV', 'small_airport', 'Hyvinkää Airfield', 60.6544, 24.8811, 'EU', 'FI', 'Hyvinkää', 'EFHV');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFHY', 'heliport', 'Meilahti Hospital Helipad', 60.188909, 24.907276, 'EU', 'FI', 'Helsinki', 'EFHY');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFII', 'small_airport', 'Iisalmi Airport', 63.631901, 27.1222, 'EU', 'FI', 'Iisalmi', 'EFII');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFIK', 'small_airport', 'Kiikala Airport', 60.462502, 23.6525, 'EU', 'FI', 'Kikala', 'EFIK');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFIM', 'small_airport', 'Immola Airport', 61.249199, 28.9037, 'EU', 'FI', 'Imatra', 'EFIM');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFIT', 'medium_airport', 'Kitee Airport', 62.1661, 30.073601, 'EU', 'FI', 'Kitee', 'EFIT');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFIV', 'medium_airport', 'Ivalo Airport', 68.607299804688, 27.405300140381, 'EU', 'FI', 'Ivalo', 'EFIV');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFJE', 'heliport', 'North Karelia Central Hospital Heliport', 62.590832, 29.777779, 'EU', 'FI', 'Joensuu', 'EFJE');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFJI', 'small_airport', 'Ilvesjoki UL', 62.324167, 22.694167, 'EU', 'FI', '', 'EFIJ');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFJM', 'small_airport', 'Jämijärvi Airfield', 61.778599, 22.716101, 'EU', 'FI', 'Jämijärvi', 'EFJM');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFJO', 'medium_airport', 'Joensuu Airport', 62.662899, 29.6075, 'EU', 'FI', 'Joensuu / Liperi', 'EFJO');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFJP', 'small_airport', 'Jäkäläpää Airfield', 68.711403, 25.7528, 'EU', 'FI', '', 'EFJP');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFJV', 'heliport', 'Central Finland Central Hospital Helipor', 62.230361, 25.71154, 'EU', 'FI', 'Jyväskylä', 'EFJV');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFJY', 'medium_airport', 'Jyväskylä Airport', 62.399502, 25.678301, 'EU', 'FI', 'Jyväskylän Maalaiskunta', 'EFJY');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFKA', 'medium_airport', 'Kauhava Airfield', 63.127102, 23.051399, 'EU', 'FI', 'Kauhava', 'EFKA');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFKE', 'medium_airport', 'Kemi-Tornio Airport', 65.778701782227, 24.582099914551, 'EU', 'FI', 'Kemi / Tornio', 'EFKE');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFKG', 'small_airport', 'Kumlinge Airport', 60.24689865112305, 20.80470085144043, 'EU', 'FI', '', 'EFKG');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFKH', 'small_airport', 'Kuhmo Airfield', 64.112503, 29.438601, 'EU', 'FI', 'Kuhmo', 'EFKH');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFKI', 'medium_airport', 'Kajaani Airport', 64.2855, 27.6924, 'EU', 'FI', 'Kajaani', 'EFKI');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFKJ', 'medium_airport', 'Kauhajoki Airfield', 62.462502, 22.393101, 'EU', 'FI', '', 'EFKJ');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFKK', 'medium_airport', 'Kokkola-Pietarsaari Airport', 63.721199, 23.143101, 'EU', 'FI', 'Kokkola / Kruunupyy', 'EFKK');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFKM', 'small_airport', 'Kemijarvi Airport', 66.712898, 27.156799, 'EU', 'FI', '', 'EFKM');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFKN', 'small_airport', 'Kannus Airfield', 63.920601, 24.0867, 'EU', 'FI', 'Kannus', 'EFKN');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFKO', 'small_airport', 'Kalajoki Airfield', 64.2286, 23.826401, 'EU', 'FI', 'Kalajoki', 'EFKO');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFKR', 'small_airport', 'Kärsämäki Airport', 63.989201, 25.743601, 'EU', 'FI', 'Kärsämäki', 'EFKR');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFKS', 'medium_airport', 'Kuusamo Airport', 65.987602, 29.239401, 'EU', 'FI', 'Kuusamo', 'EFKS');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFKT', 'medium_airport', 'Kittilä Airport', 67.700996398926, 24.846799850464, 'EU', 'FI', 'Kittilä', 'EFKT');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFKU', 'medium_airport', 'Kuopio Airport', 63.007099, 27.7978, 'EU', 'FI', 'Kuopio / Siilinjärvi', 'EFKU');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFKV', 'small_airport', 'Kivijärvi Airfield', 63.125301, 25.124201, 'EU', 'FI', '', 'EFKV');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFKY', 'small_airport', 'Kymi Airfield', 60.5714, 26.896099, 'EU', 'FI', 'Peippola', 'EFKY');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFLA', 'small_airport', 'Lahti Vesivehmaa Airport', 61.144199, 25.693501, 'EU', 'FI', 'Lahti', 'EFLA');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFLL', 'small_airport', 'Lapinlahti Airfield', 63.399399, 27.478901, 'EU', 'FI', 'Lapinlahti', 'EFLL');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFLN', 'small_airport', 'Lieksa Nurmes Airfield', 63.511902, 29.6292, 'EU', 'FI', 'Nurmes', 'EFLN');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFLP', 'medium_airport', 'Lappeenranta Airport', 61.044601, 28.144743, 'EU', 'FI', 'Lappeenranta', 'EFLP');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFLR', 'heliport', 'Lapland Central Hospital Heliport', 66.491914, 25.778312, 'EU', 'FI', 'Rovaniemi', 'EFLR');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFMA', 'medium_airport', 'Mariehamn Airport', 60.1222, 19.898199, 'EU', 'FI', 'Mariehamn', 'EFMA');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFME', 'small_airport', 'Menkijärvi Airfield', 62.946701, 23.5189, 'EU', 'FI', 'Alajärvi', 'EFME');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFMI', 'medium_airport', 'Mikkeli Airport', 61.6866, 27.201799, 'EU', 'FI', 'Mikkeli', 'EFMI');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFML', 'small_airport', 'Ii Airfield', 65.301144, 25.416226, 'EU', 'FI', 'Ii', 'EFML');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFMN', 'small_airport', 'Mäntsälä Airport', 60.572498, 25.5089, 'EU', 'FI', 'Mäntsälä', 'EFMN');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFMP', 'small_airport', 'Martiniiskonpalo Airport', 68.6603012084961, 25.702899932861328, 'EU', 'FI', '', 'EFMP');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFNS', 'small_airport', 'Savikko Airfield', 60.52, 24.831699, 'EU', 'FI', 'Nurmijärvi', 'EFNS');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFNU', 'small_airport', 'Nummela Airport', 60.3339, 24.2964, 'EU', 'FI', 'Vihti / Nummela', 'EFNU');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFOP', 'small_airport', 'Oripää Airfield', 60.8764, 22.744699, 'EU', 'FI', 'Oripää', 'EFOP');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFOU', 'medium_airport', 'Oulu Airport', 64.930099, 25.354601, 'EU', 'FI', 'Oulu / Oulunsalo', 'EFOU');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFPA', 'small_airport', 'Pokka Airport', 68.15022277832031, 25.82937240600586, 'EU', 'FI', '', 'EFPA');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFPE', 'heliport', 'Peijaksen Hospital Heliport', 60.331112, 25.060833, 'EU', 'FI', 'Helsinki', 'EFPE');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFPH', 'small_airport', 'Pyhäselkä Airport', 62.464699, 30.035299, 'EU', 'FI', 'Joensuu', 'EFPH');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFPI', 'small_airport', 'Piikajarvi Airport', 61.245602, 22.193399, 'EU', 'FI', 'Kokemäki', 'EFPI');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFPJ', 'heliport', 'Kuopio University Hospital Heliport', 62.897499, 27.648333, 'EU', 'FI', 'Kuopio', 'EFPJ');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFPK', 'small_airport', 'Pieksämäki Airfield', 62.264702, 27.0028, 'EU', 'FI', 'Pieksämäki', 'EFPK');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFPL', 'heliport', 'Päijät-Hämeen Central Hospital Heliport', 60.99177, 25.569456, 'EU', 'FI', 'Lahti', 'EFPL');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFPN', 'small_airport', 'Punkaharju Airfield', 61.728901, 29.3936, 'EU', 'FI', 'Savonlinna', 'EFPN');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFPO', 'medium_airport', 'Pori Airport', 61.4617, 21.799999, 'EU', 'FI', 'Pori', 'EFPO');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFPR', 'medium_airport', 'Helsinki East-Redstone Airport', 60.479167, 26.593889, 'EU', 'FI', 'Helsinki (Pyhtää)', 'EFPR');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFPT', 'heliport', 'Tampere University Hospital Heliport', 61.50639, 23.8125, 'EU', 'FI', 'Tampere', 'EFPT');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFPU', 'small_airport', 'Pudasjärvi Airfield', 65.402199, 26.946899, 'EU', 'FI', 'Pudasjärvi', 'EFPU');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFPY', 'small_airport', 'Pyhäsalmi Airfield', 63.731899, 25.9263, 'EU', 'FI', 'Pyhäjärvi', 'EFPY');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFRA', 'small_airport', 'Rautavaara Airfield', 63.424198, 28.124201, 'EU', 'FI', 'Rautavaara', 'EFRA');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFRH', 'small_airport', 'Raahe Pattijoki Airfield', 64.688103, 24.695801, 'EU', 'FI', 'Raahe', 'EFRH');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFRN', 'small_airport', 'Rantasalmi Airfield', 62.065498, 28.356501, 'EU', 'FI', 'Rantasalmi', 'EFRN');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFRO', 'medium_airport', 'Rovaniemi Airport', 66.564796447754, 25.830400466919, 'EU', 'FI', 'Rovaniemi', 'EFRO');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFRU', 'small_airport', 'Ranua Airfield', 65.973099, 26.365299, 'EU', 'FI', '', 'EFRU');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFRV', 'small_airport', 'Kiuruvesi Airfield', 63.705601, 26.6164, 'EU', 'FI', 'Kiuruvesi', 'EFRV');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFRY', 'small_airport', 'Räyskälä Airfield', 60.744701, 24.1078, 'EU', 'FI', 'Loppi', 'EFRY');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFSA', 'medium_airport', 'Savonlinna Airport', 61.9431, 28.945101, 'EU', 'FI', 'Savonlinna', 'EFSA');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFSE', 'small_airport', 'Selanpaa Airfield', 61.062401, 26.798901, 'EU', 'FI', 'Kouvola', 'EFSE');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFSI', 'medium_airport', 'Seinäjoki Airport', 62.692101, 22.8323, 'EU', 'FI', 'Seinäjoki / Ilmajoki', 'EFSI');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFSJ', 'closed', 'Sonkajärvi-Jyrkkä Airfield', 63.819401, 27.7694, 'EU', 'FI', 'Sonkajärvi', 'EFSJ');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFSO', 'medium_airport', 'Sodankyla Airport', 67.3949966431, 26.6191005707, 'EU', 'FI', 'Sodankyla', 'EFSO');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFSU', 'small_airport', 'Suomussalmi Airfield', 64.821899, 28.7103, 'EU', 'FI', 'Suomussalmi', 'EFSU');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFTO', 'small_airport', 'Torbacka Airfield', 60.079201, 24.172199, 'EU', 'FI', 'Ingå', 'EFTO');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFTP', 'medium_airport', 'Tampere-Pirkkala Airport', 61.414101, 23.604401, 'EU', 'FI', 'Tampere / Pirkkala', 'EFTP');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFTS', 'closed', 'Teisko Airfield', 61.7733, 24.027, 'EU', 'FI', 'Tampere', 'EFTS');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFTU', 'medium_airport', 'Turku Airport', 60.514099, 22.2628, 'EU', 'FI', 'Turku', 'EFTU');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFTV', 'heliport', 'Turku University Central Hospital Helipo', 60.451111, 22.290277, 'EU', 'FI', 'Turku', 'EFTV');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFUT', 'medium_airport', 'Utti Air Base', 60.8964, 26.9384, 'EU', 'FI', 'Utti / Valkeala', 'EFUT');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFVA', 'medium_airport', 'Vaasa Airport', 63.050701, 21.762199, 'EU', 'FI', 'Vaasa', 'EFVA');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFVI', 'small_airport', 'Viitasaari Airfield', 63.122501, 25.816099, 'EU', 'FI', 'Viitasaari', 'EFVI');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFVL', 'small_airport', 'Vaala Airfield', 64.5019, 26.76, 'EU', 'FI', 'Vaala', 'EFVL');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFVP', 'small_airport', 'Vampula Airfield', 61.0397, 22.5917, 'EU', 'FI', 'Huittinen', 'EFVP');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFVR', 'medium_airport', 'Varkaus Airport', 62.171101, 27.868601, 'EU', 'FI', 'Varkaus / Joroinen', 'EFVR');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFVT', 'small_airport', 'Sulkaharju Airfield', 63.3978, 24.0306, 'EU', 'FI', 'Veteli', 'EFVT');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFVU', 'small_airport', 'Vuotso Airfield', 68.087196, 27.123899, 'EU', 'FI', 'Vuotso', 'EFVU');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFWB', 'small_airport', 'Wredeby Airfield', 60.663601, 26.7458, 'EU', 'FI', 'Anjalankoski', 'EFWB');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'EFYL', 'medium_airport', 'Ylivieska Airfield', 64.054722, 24.725278, 'EU', 'FI', '', 'EFYL');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'FI-0001', 'small_airport', 'Pistohiekan Glider Field', 61.567659, 28.01329, 'EU', 'FI', 'Hirvensalo', '');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'FI-0002', 'small_airport', 'Ummeljoki KW Ultralight Airfield', 60.75732, 26.734313, 'EU', 'FI', 'Myllykoski', '');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'FI-0003', 'small_airport', 'Nummijärvi Airfield', 62.308695, 22.518812, 'EU', 'FI', 'Nummijärvi', '');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'FI-0004', 'small_airport', 'Ähtäri Airfield', 62.513442, 24.068282, 'EU', 'FI', 'Ähtäri', '');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'FI-0005', 'small_airport', 'Mänttä - Sassi Airfield', 62.028, 24.664, 'EU', 'FI', 'Mänttä', '');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'FI-0006', 'small_airport', 'Taivalkoski', 65.34774, 28.34182, 'EU', 'FI', '', '');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'FI-0007', 'small_airport', 'Parkano Airfield', 62.01534, 23.05801, 'EU', 'FI', '', '');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'FI-0008', 'small_airport', 'Soini Airfield', 62.861405, 24.165115, 'EU', 'FI', '', '');
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `continent`, `iso_country`, `municipality`, `gps_code`) VALUES
	(117, 'FI-0009', 'closed', 'Hangasjärvi Airstrip', 66.75258, 28.71291, 'EU', 'FI', '', '');
/*!40000 ALTER TABLE `airport` ENABLE KEYS */;

-- Volcando estructura para tabla flight_game.country
CREATE TABLE IF NOT EXISTS `country` (
  `iso_country` varchar(40) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `continent` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`iso_country`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla flight_game.country: ~248 rows (aproximadamente)
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('AD', 'Andorra', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('AE', 'United Arab Emirates', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('AF', 'Afghanistan', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('AG', 'Antigua and Barbuda', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('AI', 'Anguilla', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('AL', 'Albania', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('AM', 'Armenia', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('AO', 'Angola', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('AQ', 'Antarctica', 'AN');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('AR', 'Argentina', 'SA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('AS', 'American Samoa', 'OC');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('AT', 'Austria', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('AU', 'Australia', 'OC');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('AW', 'Aruba', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('AZ', 'Azerbaijan', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('BA', 'Bosnia and Herzegovina', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('BB', 'Barbados', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('BD', 'Bangladesh', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('BE', 'Belgium', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('BF', 'Burkina Faso', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('BG', 'Bulgaria', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('BH', 'Bahrain', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('BI', 'Burundi', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('BJ', 'Benin', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('BL', 'Saint Barthélemy', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('BM', 'Bermuda', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('BN', 'Brunei', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('BO', 'Bolivia', 'SA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('BQ', 'Caribbean Netherlands', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('BR', 'Brazil', 'SA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('BS', 'Bahamas', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('BT', 'Bhutan', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('BW', 'Botswana', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('BY', 'Belarus', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('BZ', 'Belize', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('CA', 'Canada', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('CC', 'Cocos (Keeling) Islands', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('CD', 'Congo (Kinshasa)', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('CF', 'Central African Republic', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('CG', 'Congo (Brazzaville)', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('CH', 'Switzerland', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('CI', 'Côte d\'Ivoire', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('CK', 'Cook Islands', 'OC');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('CL', 'Chile', 'SA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('CM', 'Cameroon', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('CN', 'China', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('CO', 'Colombia', 'SA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('CR', 'Costa Rica', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('CU', 'Cuba', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('CV', 'Cape Verde', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('CW', 'Curaçao', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('CX', 'Christmas Island', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('CY', 'Cyprus', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('CZ', 'Czech Republic', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('DE', 'Germany', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('DJ', 'Djibouti', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('DK', 'Denmark', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('DM', 'Dominica', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('DO', 'Dominican Republic', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('DZ', 'Algeria', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('EC', 'Ecuador', 'SA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('EE', 'Estonia', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('EG', 'Egypt', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('EH', 'Western Sahara', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('ER', 'Eritrea', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('ES', 'Spain', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('ET', 'Ethiopia', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('FI', 'Finland', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('FJ', 'Fiji', 'OC');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('FK', 'Falkland Islands', 'SA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('FM', 'Micronesia', 'OC');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('FO', 'Faroe Islands', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('FR', 'France', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('GA', 'Gabon', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('GB', 'United Kingdom', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('GD', 'Grenada', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('GE', 'Georgia', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('GF', 'French Guiana', 'SA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('GG', 'Guernsey', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('GH', 'Ghana', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('GI', 'Gibraltar', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('GL', 'Greenland', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('GM', 'Gambia', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('GN', 'Guinea', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('GP', 'Guadeloupe', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('GQ', 'Equatorial Guinea', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('GR', 'Greece', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('GS', 'South Georgia and the South Sandwich Isl', 'AN');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('GT', 'Guatemala', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('GU', 'Guam', 'OC');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('GW', 'Guinea-Bissau', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('GY', 'Guyana', 'SA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('HK', 'Hong Kong', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('HM', 'Heard and McDonald Islands', 'OC');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('HN', 'Honduras', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('HR', 'Croatia', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('HT', 'Haiti', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('HU', 'Hungary', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('ID', 'Indonesia', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('IE', 'Ireland', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('IL', 'Israel', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('IM', 'Isle of Man', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('IN', 'India', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('IO', 'British Indian Ocean Territory', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('IQ', 'Iraq', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('IR', 'Iran', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('IS', 'Iceland', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('IT', 'Italy', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('JE', 'Jersey', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('JM', 'Jamaica', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('JO', 'Jordan', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('JP', 'Japan', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('KE', 'Kenya', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('KG', 'Kyrgyzstan', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('KH', 'Cambodia', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('KI', 'Kiribati', 'OC');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('KM', 'Comoros', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('KN', 'Saint Kitts and Nevis', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('KP', 'North Korea', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('KR', 'South Korea', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('KW', 'Kuwait', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('KY', 'Cayman Islands', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('KZ', 'Kazakhstan', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('LA', 'Laos', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('LB', 'Lebanon', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('LC', 'Saint Lucia', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('LI', 'Liechtenstein', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('LK', 'Sri Lanka', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('LR', 'Liberia', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('LS', 'Lesotho', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('LT', 'Lithuania', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('LU', 'Luxembourg', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('LV', 'Latvia', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('LY', 'Libya', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('MA', 'Morocco', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('MC', 'Monaco', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('MD', 'Moldova', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('ME', 'Montenegro', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('MF', 'Saint Martin', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('MG', 'Madagascar', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('MH', 'Marshall Islands', 'OC');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('MK', 'North Macedonia', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('ML', 'Mali', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('MM', 'Burma', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('MN', 'Mongolia', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('MO', 'Macau', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('MP', 'Northern Mariana Islands', 'OC');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('MQ', 'Martinique', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('MR', 'Mauritania', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('MS', 'Montserrat', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('MT', 'Malta', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('MU', 'Mauritius', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('MV', 'Maldives', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('MW', 'Malawi', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('MX', 'Mexico', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('MY', 'Malaysia', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('MZ', 'Mozambique', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('NA', 'Namibia', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('NC', 'New Caledonia', 'OC');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('NE', 'Niger', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('NF', 'Norfolk Island', 'OC');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('NG', 'Nigeria', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('NI', 'Nicaragua', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('NL', 'Netherlands', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('NO', 'Norway', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('NP', 'Nepal', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('NR', 'Nauru', 'OC');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('NU', 'Niue', 'OC');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('NZ', 'New Zealand', 'OC');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('OM', 'Oman', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('PA', 'Panama', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('PE', 'Perú', 'SA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('PF', 'French Polynesia', 'OC');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('PG', 'Papua New Guinea', 'OC');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('PH', 'Philippines', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('PK', 'Pakistan', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('PL', 'Poland', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('PM', 'Saint Pierre and Miquelon', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('PN', 'Pitcairn', 'OC');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('PR', 'Puerto Rico', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('PS', 'Palestinian Territory', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('PT', 'Portugal', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('PW', 'Palau', 'OC');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('PY', 'Paraguay', 'SA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('QA', 'Qatar', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('RE', 'Réunion', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('RO', 'Romania', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('RS', 'Serbia', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('RU', 'Russia', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('RW', 'Rwanda', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('SA', 'Saudi Arabia', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('SB', 'Solomon Islands', 'OC');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('SC', 'Seychelles', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('SD', 'Sudan', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('SE', 'Sweden', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('SG', 'Singapore', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('SH', 'Saint Helena', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('SI', 'Slovenia', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('SK', 'Slovakia', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('SL', 'Sierra Leone', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('SM', 'San Marino', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('SN', 'Senegal', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('SO', 'Somalia', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('SR', 'Suriname', 'SA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('SS', 'South Sudan', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('ST', 'São Tomé and Principe', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('SV', 'El Salvador', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('SX', 'Sint Maarten', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('SY', 'Syria', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('SZ', 'Eswatini', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('TC', 'Turks and Caicos Islands', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('TD', 'Chad', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('TF', 'French Southern Territories', 'AN');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('TG', 'Togo', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('TH', 'Thailand', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('TJ', 'Tajikistan', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('TK', 'Tokelau', 'OC');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('TL', 'Timor-Leste', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('TM', 'Turkmenistan', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('TN', 'Tunisia', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('TO', 'Tonga', 'OC');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('TR', 'Turkey', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('TT', 'Trinidad and Tobago', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('TV', 'Tuvalu', 'OC');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('TW', 'Taiwan', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('TZ', 'Tanzania', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('UA', 'Ukraine', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('UG', 'Uganda', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('UM', 'United States Minor Outlying Islands', 'OC');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('US', 'United States', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('UY', 'Uruguay', 'SA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('UZ', 'Uzbekistan', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('VA', 'Vatican City', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('VC', 'Saint Vincent and the Grenadines', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('VE', 'Venezuela', 'SA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('VG', 'British Virgin Islands', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('VI', 'U.S. Virgin Islands', 'NA');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('VN', 'Vietnam', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('VU', 'Vanuatu', 'OC');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('WF', 'Wallis and Futuna', 'OC');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('WS', 'Samoa', 'OC');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('XK', 'Kosovo', 'EU');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('YE', 'Yemen', 'AS');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('YT', 'Mayotte', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('ZA', 'South Africa', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('ZM', 'Zambia', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('ZW', 'Zimbabwe', 'AF');
INSERT INTO `country` (`iso_country`, `name`, `continent`) VALUES
	('ZZ', 'Unknown or unassigned country', 'AF');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;

-- Volcando estructura para tabla flight_game.game
CREATE TABLE IF NOT EXISTS `game` (
  `id` int(40) NOT NULL,
  `co2_consumed` int(20) NOT NULL,
  `co2_budget` int(20) NOT NULL,
  `screen_name` varchar(40) NOT NULL,
  `location` varchar(40) NOT NULL,
  `Highscore` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla flight_game.game: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` (`id`, `co2_consumed`, `co2_budget`, `screen_name`, `location`, `Highscore`) VALUES
	(1, 0, 10000, 'Juanito', 'EFHK', NULL);
INSERT INTO `game` (`id`, `co2_consumed`, `co2_budget`, `screen_name`, `location`, `Highscore`) VALUES
	(2, 0, 0, 'NULL', 'NULL', NULL);
/*!40000 ALTER TABLE `game` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
