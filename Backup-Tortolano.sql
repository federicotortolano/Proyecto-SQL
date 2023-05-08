CREATE DATABASE  IF NOT EXISTS `steam` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `steam`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: steam
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `audits`
--

DROP TABLE IF EXISTS `audits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audits` (
  `audit_id` int NOT NULL AUTO_INCREMENT,
  `entity` varchar(100) DEFAULT NULL,
  `entity_id` int DEFAULT NULL,
  `insert_date` date DEFAULT NULL,
  `insert_time` time DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `last_update_date` date DEFAULT NULL,
  `last_update_time` time DEFAULT NULL,
  `last_update_user` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`audit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audits`
--

LOCK TABLES `audits` WRITE;
/*!40000 ALTER TABLE `audits` DISABLE KEYS */;
INSERT INTO `audits` VALUES (3,'user',325,'2023-03-23','23:44:45','root@localhost','2023-03-23','23:47:29','root@localhost');
/*!40000 ALTER TABLE `audits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `comment` varchar(100) DEFAULT NULL,
  `date` datetime NOT NULL,
  `user_id` int NOT NULL,
  `game_id` int NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `user_id` (`user_id`),
  KEY `game_id` (`game_id`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`game_id`) REFERENCES `game` (`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `country_id` int NOT NULL AUTO_INCREMENT,
  `country` char(30) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=258 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (7,'\"Afganistán\"'),(8,'\"Albania\"'),(9,'\"Alemania\"'),(10,'\"Algeria\"'),(11,'\"Andorra\"'),(12,'\"Angola\"'),(13,'\"Anguila\"'),(14,'\"Antártida\"'),(15,'\"Antigua y Barbuda\"'),(16,'\"Antillas Neerlandesas\"'),(17,'\"Arabia Saudita\"'),(18,'\"Argentina\"'),(19,'\"Armenia\"'),(20,'\"Aruba\"'),(21,'\"Australia\"'),(22,'\"Austria\"'),(23,'\"Azerbayán\"'),(24,'\"Bélgica\"'),(25,'\"Bahamas\"'),(26,'\"Bahrein\"'),(27,'\"Bangladesh\"'),(28,'\"Barbados\"'),(29,'\"Belice\"'),(30,'\"Benín\"'),(31,'\"Bhután\"'),(32,'\"Bielorrusia\"'),(33,'\"Birmania\"'),(34,'\"Bolivia\"'),(35,'\"Bosnia y Herzegovina\"'),(36,'\"Botsuana\"'),(37,'\"Brasil\"'),(38,'\"Brunéi\"'),(39,'\"Bulgaria\"'),(40,'\"Burkina Faso\"'),(41,'\"Burundi\"'),(42,'\"Cabo Verde\"'),(43,'\"Camboya\"'),(44,'\"Camerún\"'),(45,'\"Canadá\"'),(46,'\"Chad\"'),(47,'\"Chile\"'),(48,'\"China\"'),(49,'\"Chipre\"'),(50,'\"Ciudad del Vaticano\"'),(51,'\"Colombia\"'),(52,'\"Comoras\"'),(53,'\"Congo\"'),(54,'\"Congo\"'),(55,'\"Corea del Norte\"'),(56,'\"Corea del Sur\"'),(57,'\"Costa de Marfil\"'),(58,'\"Costa Rica\"'),(59,'\"Croacia\"'),(60,'\"Cuba\"'),(61,'\"Dinamarca\"'),(62,'\"Dominica\"'),(63,'\"Ecuador\"'),(64,'\"Egipto\"'),(65,'\"El Salvador\"'),(66,'\"Emiratos Árabes Unidos\"'),(67,'\"Eritrea\"'),(68,'\"Eslovaquia\"'),(69,'\"Eslovenia\"'),(70,'\"España\"'),(71,'\"Estados Unidos de América\"'),(72,'\"Estonia\"'),(73,'\"Etiopía\"'),(74,'\"Filipinas\"'),(75,'\"Finlandia\"'),(76,'\"Fiyi\"'),(77,'\"Francia\"'),(78,'\"Gabón\"'),(79,'\"Gambia\"'),(80,'\"Georgia\"'),(81,'\"Ghana\"'),(82,'\"Gibraltar\"'),(83,'\"Granada\"'),(84,'\"Grecia\"'),(85,'\"Groenlandia\"'),(86,'\"Guadalupe\"'),(87,'\"Guam\"'),(88,'\"Guatemala\"'),(89,'\"Guayana Francesa\"'),(90,'\"Guernsey\"'),(91,'\"Guinea\"'),(92,'\"Guinea Ecuatorial\"'),(93,'\"Guinea-Bissau\"'),(94,'\"Guyana\"'),(95,'\"Haití\"'),(96,'\"Honduras\"'),(97,'\"Hong kong\"'),(98,'\"Hungría\"'),(99,'\"India\"'),(100,'\"Indonesia\"'),(101,'\"Irán\"'),(102,'\"Irak\"'),(103,'\"Irlanda\"'),(104,'\"Isla Bouvet\"'),(105,'\"Isla de Man\"'),(106,'\"Isla de Navidad\"'),(107,'\"Isla Norfolk\"'),(108,'\"Islandia\"'),(109,'\"Islas Bermudas\"'),(110,'\"Islas Caimán\"'),(111,'\"Islas Cocos (Keeling)\"'),(112,'\"Islas Cook\"'),(113,'\"Islas de Åland\"'),(114,'\"Islas Feroe\"'),(115,'\"Islas Heard y McDonald\"'),(116,'\"Islas Maldivas\"'),(117,'\"Islas Malvinas\"'),(118,'\"Islas Marianas del Norte\"'),(119,'\"Islas Marshall\"'),(120,'\"Islas Pitcairn\"'),(121,'\"Islas Salomón\"'),(122,'\"Islas Turcas y Caicos\"'),(123,'\"Islas Vírgenes Británicas\"'),(124,'\"Israel\"'),(125,'\"Italia\"'),(126,'\"Jamaica\"'),(127,'\"Japón\"'),(128,'\"Jersey\"'),(129,'\"Jordania\"'),(130,'\"Kazajistán\"'),(131,'\"Kenia\"'),(132,'\"Kirgizstán\"'),(133,'\"Kiribati\"'),(134,'\"Kuwait\"'),(135,'\"Líbano\"'),(136,'\"Laos\"'),(137,'\"Lesoto\"'),(138,'\"Letonia\"'),(139,'\"Liberia\"'),(140,'\"Libia\"'),(141,'\"Liechtenstein\"'),(142,'\"Lituania\"'),(143,'\"Luxemburgo\"'),(144,'\"México\"'),(145,'\"Mónaco\"'),(146,'\"Macao\"'),(147,'\"Macedônia\"'),(148,'\"Madagascar\"'),(149,'\"Malasia\"'),(150,'\"Malawi\"'),(151,'\"Mali\"'),(152,'\"Malta\"'),(153,'\"Marruecos\"'),(154,'\"Martinica\"'),(155,'\"Mauricio\"'),(156,'\"Mauritania\"'),(157,'\"Mayotte\"'),(158,'\"Micronesia\"'),(159,'\"Moldavia\"'),(160,'\"Mongolia\"'),(161,'\"Montenegro\"'),(162,'\"Montserrat\"'),(163,'\"Mozambique\"'),(164,'\"Namibia\"'),(165,'\"Nauru\"'),(166,'\"Nepal\"'),(167,'\"Nicaragua\"'),(168,'\"Niger\"'),(169,'\"Nigeria\"'),(170,'\"Niue\"'),(171,'\"Noruega\"'),(172,'\"Nueva Caledonia\"'),(173,'\"Nueva Zelanda\"'),(174,'\"Omán\"'),(175,'\"Países Bajos\"'),(176,'\"Pakistán\"'),(177,'\"Palau\"'),(178,'\"Palestina\"'),(179,'\"Panamá\"'),(180,'\"Papúa Nueva Guinea\"'),(181,'\"Paraguay\"'),(182,'\"Perú\"'),(183,'\"Polinesia Francesa\"'),(184,'\"Polonia\"'),(185,'\"Portugal\"'),(186,'\"Puerto Rico\"'),(187,'\"Qatar\"'),(188,'\"Reino Unido\"'),(189,'\"República Centroafricana\"'),(190,'\"República Checa\"'),(191,'\"República Dominicana\"'),(192,'\"Reunión\"'),(193,'\"Ruanda\"'),(194,'\"Rumanía\"'),(195,'\"Rusia\"'),(196,'\"Sahara Occidental\"'),(197,'\"Samoa\"'),(198,'\"Samoa Americana\"'),(199,'\"San Bartolomé\"'),(200,'\"San Cristóbal y Nieves\"'),(201,'\"San Marino\"'),(202,'\"San Martín (Francia)\"'),(203,'\"San Pedro y Miquelón\"'),(204,'\"San Vicente y las Granadinas\"'),(205,'\"Santa Elena\"'),(206,'\"Santa Lucía\"'),(207,'\"Santo Tomé y Príncipe\"'),(208,'\"Senegal\"'),(209,'\"Serbia\"'),(210,'\"Seychelles\"'),(211,'\"Sierra Leona\"'),(212,'\"Singapur\"'),(213,'\"Siria\"'),(214,'\"Somalia\"'),(215,'\"Sri lanka\"'),(216,'\"Sudáfrica\"'),(217,'\"Sudán\"'),(218,'\"Suecia\"'),(219,'\"Suiza\"'),(220,'\"Surinám\"'),(221,'\"Svalbard y Jan Mayen\"'),(222,'\"Swazilandia\"'),(223,'\"Tadjikistán\"'),(224,'\"Tailandia\"'),(225,'\"Taiwán\"'),(226,'\"Tanzania\"'),(227,'\"Timor Oriental\"'),(228,'\"Togo\"'),(229,'\"Tokelau\"'),(230,'\"Tonga\"'),(231,'\"Trinidad y Tobago\"'),(232,'\"Tunez\"'),(233,'\"Turkmenistán\"'),(234,'\"Turquía\"'),(235,'\"Tuvalu\"'),(236,'\"Ucrania\"'),(237,'\"Uganda\"'),(238,'\"Uruguay\"'),(239,'\"Uzbekistán\"'),(240,'\"Vanuatu\"'),(241,'\"Venezuela\"'),(242,'\"Vietnam\"'),(243,'\"Wallis y Futuna\"'),(244,'\"Yemen\"'),(245,'\"Yibuti\"'),(246,'\"Zambia\"'),(247,'\"Zimbabue\"');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creator`
--

DROP TABLE IF EXISTS `creator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `creator` (
  `creator_id` int NOT NULL AUTO_INCREMENT,
  `first_name` char(20) NOT NULL,
  `last_name` char(20) NOT NULL,
  `reputation` int DEFAULT NULL,
  `country_id` int NOT NULL,
  PRIMARY KEY (`creator_id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `creator_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creator`
--

LOCK TABLES `creator` WRITE;
/*!40000 ALTER TABLE `creator` DISABLE KEYS */;
INSERT INTO `creator` VALUES (1,'Annmaria','Burbury',6,87),(2,'Hobart','Gainsford',1,65),(3,'Ralf','Grainge',2,43),(4,'Emelita','Carleton',3,18),(5,'Dyanne','Carse',4,54),(6,'Margaret','Gate',6,87),(7,'Wyatan','Hevner',6,90),(8,'Lari','Gettins',1,54),(9,'Matthaeus','Antoniazzi',2,18),(10,'Karlyn','Dhenin',3,12),(11,'Trudy','Karby',4,14),(12,'Glennis','Wixey',6,15),(13,'Efren','Wilgar',5,16),(15,'Isabella','Malley',8,54),(16,'Kassey','\"De Cruz\"',10,65),(17,'Peadar','Murphy',5,72),(18,'Aguie','Pavelin',4,54),(19,'Hortensia','Cassam',3,97),(20,'Katalin','Filipov',2,18),(21,'Bill','Itschakov',6,18),(22,'Gibb','Gluyas',1,52),(23,'Wait','Castagneri',2,123),(24,'Gus','Tarbath',3,178),(25,'Suzy','Seely',4,234),(26,'Mireielle','Faux',6,214),(27,'Tymothy','Fradson',6,167),(28,'Kim','Barke',1,98),(29,'Olympe','Franzke',2,100),(30,'Juliane','Wigfield',3,12),(31,'Raleigh','Feldberg',4,244),(32,'Cherlyn','Nichols',6,76),(33,'Hatty','Roggerone',5,83),(34,'Marley','Naul',7,95),(35,'Rosco','Brandone',8,134),(36,'Merwyn','Quarterman',10,213),(37,'Hollis','Triebner',5,21),(38,'Jeana','McKevitt',4,43),(39,'Cobby','\"De Meyer\"',3,32),(43,'Bendite','Talkington',2,87),(44,'Priscella','Ferrier',3,65),(45,'Bob','Dossantos',4,43),(46,'Ursuline','MacGilmartin',6,213),(47,'Melli','Jee',6,21),(48,'Noak','McAndrew',1,43),(49,'Nikaniki','Parradine',2,32),(53,'Geoff','Jinkin',5,87),(54,'Ara','Chafney',7,65),(55,'Celestia','Deveraux',8,43),(56,'Eleanore','Boss',10,18),(57,'Brody','Cowup',5,54),(58,'Nonah','Beverley',4,87),(59,'Cristin','Pilger',3,90),(60,'Paddie','Gaul',2,54),(61,'Wanids','Reitenbach',6,18),(63,'Horten','Dorwood',2,8),(64,'Janina','Benoit',3,9),(65,'Celestina','Tight',4,76),(67,'Lindsay','McNabb',6,54),(68,'Damian','Diggons',1,65),(69,'Farica','Minchindon',2,72),(70,'Atalanta','Frude',3,54),(71,'Udale','Garfath',4,97),(72,'Belvia','Kiffe',6,18),(73,'Kennith','Trundler',5,18),(74,'Ranique','Gipps',7,52),(75,'Fanechka','Tubritt',8,123),(76,'Livvyy','Pledge',10,178),(77,'Rheba','Shadfourth',5,234),(78,'Margalit','Hayfield',4,214),(79,'Rockwell','Pimblott',3,167),(80,'Simonette','Dmitr',2,98),(81,'Lucienne','Sallis',6,100),(82,'Marilyn','Simmonite',1,12),(83,'Corrianne','Atkyns',2,244),(84,'Kalie','Bresner',3,76),(85,'Northrop','Rebichon',4,83),(86,'Darrin','Fishly',6,95),(87,'Alano','Semrad',6,134),(88,'Alia','Michele',1,213),(89,'Rik','Endecott',2,21),(90,'Drud','Phillipson',3,43),(91,'Hughie','Geer',4,32),(95,'Fay','Abrahmovici',8,87),(96,'Maryann','Wrenn',10,65),(97,'Madelaine','Caulton',5,43),(98,'Daven','Borrows',4,18),(99,'Cornie','McKintosh',3,54),(100,'Beth','Fippe',2,87),(101,'Donalt','Gamble',6,90),(102,'Pauly','Huckel',1,54),(103,'Tova','Longhirst',2,18),(104,'Tremain','Ragborne',3,7),(105,'Amabel','Click',4,7),(106,'See','McAndrew',6,7),(107,'Clair','Jarrard',6,8),(109,'Mikel','Haysom',2,54),(110,'Toby','Epton',3,65),(111,'Tadeas','Dorricott',4,72),(112,'Devora','Abeau',6,54),(113,'Bryon','Prandoni',5,97),(114,'Edythe','Tipton',7,18),(115,'Pauli','Frow',8,18),(116,'Sindee','Simondson',10,52),(117,'Allsun','Ramsted',5,123),(118,'Hinze','Hartless',4,178),(119,'Alain','Pettersen',3,234),(120,'Doria','Rheubottom',2,214),(121,'Lindi','Gerrelts',6,167),(122,'Loreen','Soro',1,98),(123,'Barrie','Healings',2,100),(124,'Turner','Mowson',3,12),(125,'Stacie','Stallwood',4,244),(126,'Nicolle','Gammack',6,76),(127,'Aridatha','Patifield',6,83),(128,'Ruby','Burdekin',1,95),(129,'Jillian','Kadar',2,134),(130,'Dalis','Griffoen',3,213),(131,'Alastair','Tilmouth',4,21),(132,'Rochester','Simkovich',6,43),(133,'Nehemiah','Soppett',5,32),(137,'Bryanty','Willmott',5,87),(138,'Karlan','Buncom',4,65),(139,'Mattie','Bockett',3,43),(140,'Nadean','Hughesdon',2,18),(141,'Dorotea','Sidey',6,54),(142,'Sascha','Scottini',1,87),(143,'Toiboid','Totton',2,90),(144,'Quintilla','Breeton',3,54),(145,'Goddart','\"Erskine Sandys\"',4,18),(146,'Prentiss','Kissell',6,12),(147,'Sisile','\"Di Meo\"',6,14),(148,'Doro','Aicken',1,15),(149,'Regan','Liddy',2,16),(151,'Park','Weaver',4,54),(152,'Eleanora','Nesbit',6,65),(153,'Jamal','Riggert',5,72),(154,'Earl','Lantaph',7,54),(155,'Bryant','Rochewell',8,97),(156,'Maude','Kemwal',10,18),(157,'Olivette','Helmke',5,18),(158,'Quintana','Sysland',4,52),(159,'Evania','\"De Malchar\"',3,123),(160,'Hali','Remnant',2,178),(161,'Rhea','Shillitto',6,234),(162,'Rahel','Woolway',1,214),(163,'Dulce','Trengrouse',2,167),(164,'Leon','Westcarr',3,98),(165,'Tilda','Newlands',4,100),(166,'Hanni','Romney',6,12),(167,'Carlo','Mayoh',6,244),(168,'Audra','Roglieri',1,76),(169,'Keary','Mimmack',2,83),(170,'Haskell','Randalston',3,95),(171,'Vitoria','Crich',4,134),(172,'Wiley','Bitterton',6,213),(173,'Danice','Micklewicz',5,21),(174,'Reinold','Humpage',7,43),(175,'Bernete','Livezley',8,32),(179,'Kristin','Veall',3,87),(180,'Issy','Ridger',2,65),(181,'Sybil','Janowicz',6,43),(182,'Nickey','Gildea',1,213),(183,'Fanchette','MacDonagh',2,21),(184,'Lyle','Salsberg',3,43),(185,'Amitie','Danels',4,32),(189,'Raffarty','Rootes',2,87),(190,'Standford','Kesey',3,65),(191,'Modestia','Blampy',4,43),(192,'Olav','Cafferty',6,18),(193,'Rosanne','Dumingo',5,54),(194,'Northrup','Axford',7,87),(195,'Monroe','Pender',8,90),(196,'Milli','Burnyate',10,54),(197,'Brittne','Kiehnlt',5,18),(199,'Tressa','Postgate',3,8),(200,'Daphna','Chadney',2,9);
/*!40000 ALTER TABLE `creator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download`
--

DROP TABLE IF EXISTS `download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `download` (
  `download_id` int NOT NULL AUTO_INCREMENT,
  `duration` time NOT NULL,
  `date` date NOT NULL,
  `country_id` int NOT NULL,
  `user_id` int NOT NULL,
  `game_id` int NOT NULL,
  PRIMARY KEY (`download_id`),
  KEY `game_id` (`game_id`),
  KEY `country_id` (`country_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `download_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `download_ibfk_2` FOREIGN KEY (`game_id`) REFERENCES `game` (`game_id`),
  CONSTRAINT `download_ibfk_3` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`),
  CONSTRAINT `download_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `download_ibfk_5` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download`
--

LOCK TABLES `download` WRITE;
/*!40000 ALTER TABLE `download` DISABLE KEYS */;
INSERT INTO `download` VALUES (201,'08:41:18','2020-12-11',40,140,38),(202,'06:56:22','2022-06-01',193,62,13),(203,'20:29:14','2020-08-04',121,163,44),(204,'21:33:15','2020-01-21',154,104,40),(205,'20:55:47','2021-03-24',24,105,3),(208,'02:42:31','2022-12-05',45,121,5),(209,'18:25:56','2020-06-17',240,49,3),(210,'13:01:48','2022-11-28',190,271,5),(211,'23:36:20','2020-04-19',183,112,13),(212,'03:36:27','2022-05-05',10,263,24),(213,'19:55:42','2022-03-12',87,262,32),(214,'09:23:11','2021-12-29',243,189,46),(216,'08:51:45','2020-09-01',87,234,32),(217,'03:42:33','2022-06-06',157,71,24),(218,'07:17:56','2022-08-17',191,122,13),(219,'01:51:31','2022-08-15',118,249,31),(220,'15:45:22','2020-03-19',142,241,56),(221,'12:59:20','2020-11-10',16,100,42),(222,'16:21:24','2021-08-13',151,144,48),(225,'15:13:23','2023-01-09',166,42,44),(226,'16:19:18','2020-05-31',238,286,7),(227,'10:48:48','2022-11-05',95,9,16),(228,'11:49:53','2022-01-03',27,266,48),(229,'22:25:21','2022-11-30',33,284,58),(230,'08:35:09','2021-08-29',177,27,5),(231,'04:10:21','2020-07-29',237,296,24),(232,'23:23:35','2021-08-04',192,130,43),(233,'22:24:57','2022-03-12',110,96,25),(234,'18:18:31','2020-01-31',123,123,7),(235,'10:47:07','2020-08-01',127,12,47),(237,'06:05:44','2021-06-23',190,1,10),(238,'18:48:35','2022-10-11',225,100,27),(240,'15:40:29','2022-01-31',145,195,33),(243,'02:09:38','2020-03-03',158,146,9),(244,'11:46:28','2021-12-14',166,177,17),(245,'11:32:29','2020-04-23',152,137,31),(246,'17:17:52','2020-01-13',144,259,42),(248,'08:02:04','2021-03-01',38,296,54),(249,'02:51:04','2021-11-10',69,116,29),(252,'01:50:10','2022-08-19',17,69,50),(253,'09:45:16','2020-10-10',135,6,50),(255,'11:21:56','2020-07-26',12,233,24),(257,'10:23:10','2020-09-27',62,45,53),(260,'15:42:12','2020-12-31',152,122,34),(261,'00:08:25','2020-05-18',206,129,9),(263,'09:01:45','2021-05-04',35,43,58),(264,'20:12:25','2021-05-27',225,277,10),(267,'13:09:08','2020-11-05',214,89,45),(268,'19:41:22','2020-10-15',141,260,32),(270,'06:47:00','2022-04-28',56,146,1),(271,'03:28:39','2021-01-01',193,285,28),(272,'18:22:08','2021-12-27',24,7,45),(273,'15:09:35','2021-10-20',115,111,26),(274,'22:32:47','2021-10-24',214,187,38),(275,'01:57:09','2021-10-17',162,38,20),(276,'05:28:53','2020-04-09',206,10,31),(277,'10:24:11','2020-05-12',17,203,19),(279,'14:41:24','2022-09-10',237,101,27),(280,'00:02:40','2020-06-23',114,236,29),(281,'09:43:59','2023-01-01',194,1,50),(282,'09:08:49','2022-11-24',77,154,53),(283,'19:55:27','2020-12-24',75,138,26),(284,'02:21:30','2021-07-13',56,54,36),(285,'13:56:24','2020-05-30',79,87,28),(286,'15:27:09','2021-09-23',72,243,52),(288,'09:04:36','2022-11-04',129,17,5),(289,'15:15:14','2022-07-14',177,238,59),(290,'15:23:48','2021-12-05',34,10,31),(291,'17:52:28','2022-09-02',175,144,3),(292,'10:34:02','2022-07-14',80,56,22),(293,'11:30:32','2020-03-05',13,270,45),(294,'10:05:47','2022-07-24',73,275,43),(295,'23:09:24','2020-02-02',188,35,32),(296,'01:58:22','2022-03-21',104,289,37),(297,'07:22:36','2020-07-01',123,27,36),(299,'14:30:13','2020-01-01',245,130,37),(300,'03:34:23','2022-10-10',181,51,38),(302,'15:57:28','2021-02-16',191,172,24),(303,'12:57:12','2020-11-09',47,57,53),(304,'00:20:10','2020-01-11',152,82,24),(305,'05:46:51','2021-04-25',122,106,62),(306,'19:34:17','2022-11-01',182,263,22),(307,'11:30:26','2022-09-15',202,105,35),(309,'12:05:10','2020-05-04',80,195,48),(310,'03:29:48','2020-05-05',143,96,13),(311,'19:06:23','2022-10-26',144,279,58),(313,'22:06:45','2020-12-20',32,103,15),(314,'16:10:41','2022-12-28',137,226,58),(315,'21:23:23','2021-06-29',95,204,9),(316,'14:31:20','2022-12-28',140,233,2),(317,'05:49:41','2020-01-24',138,21,17),(319,'14:13:42','2021-06-24',53,219,36),(320,'14:44:36','2022-10-12',28,87,24),(321,'20:44:05','2021-03-03',70,1,47),(322,'12:07:16','2020-04-04',68,131,8),(323,'22:36:35','2023-02-23',48,53,47),(324,'10:22:19','2020-11-23',196,186,58),(325,'19:35:44','2021-02-03',97,3,54),(327,'21:32:19','2020-10-11',191,7,6),(328,'05:34:12','2020-03-15',157,219,24),(329,'18:19:42','2020-03-11',63,5,30),(330,'01:32:00','2022-12-27',73,10,15),(331,'16:10:21','2020-07-27',48,169,45),(332,'13:47:19','2020-05-06',13,6,41),(333,'14:29:17','2020-08-02',233,251,31),(334,'06:35:09','2021-09-14',194,228,49),(335,'13:24:49','2021-10-30',54,3,5),(336,'21:05:18','2022-01-25',87,149,9),(337,'17:01:24','2022-01-14',123,8,36),(338,'15:14:07','2020-01-22',76,147,46),(339,'11:11:55','2021-02-23',147,117,22),(340,'06:53:21','2021-07-10',199,98,11),(342,'19:24:56','2022-12-12',158,193,29),(343,'13:02:07','2022-03-01',76,159,47),(344,'00:40:24','2020-02-29',130,223,43),(345,'20:01:43','2022-06-23',15,147,36),(346,'13:56:47','2020-06-26',66,27,10),(347,'17:51:59','2021-06-27',147,297,52),(348,'16:10:34','2020-04-11',215,13,25),(349,'16:50:34','2020-08-26',129,97,52),(350,'00:37:18','2021-06-17',71,183,53),(351,'17:24:36','2020-01-02',24,214,15),(352,'14:59:03','2022-06-19',147,279,3),(353,'21:11:18','2022-12-23',114,204,22),(354,'09:40:43','2022-09-07',34,94,56),(355,'19:08:31','2020-02-14',91,137,8),(357,'21:06:48','2023-01-16',231,73,47),(358,'21:15:55','2020-11-10',217,7,36),(359,'00:16:14','2022-10-01',213,63,44),(360,'13:58:44','2021-06-27',54,288,59),(361,'03:58:52','2020-07-16',108,140,5),(362,'19:15:33','2020-05-21',247,75,2),(363,'21:23:48','2021-06-12',69,86,41),(364,'05:43:53','2020-12-24',196,133,13),(366,'16:39:30','2022-07-29',25,180,23),(368,'08:45:09','2021-11-08',53,96,6),(369,'23:19:21','2022-02-25',82,176,50),(370,'00:30:58','2022-03-18',74,180,56),(371,'03:47:48','2021-05-24',224,266,19),(372,'22:26:22','2021-06-03',184,11,18),(373,'13:54:53','2021-04-01',241,264,40),(374,'22:18:09','2021-03-07',75,41,47),(375,'15:53:22','2022-01-26',230,265,46),(376,'06:31:45','2021-03-09',10,280,58),(377,'03:03:38','2023-01-02',70,214,28),(378,'21:15:59','2022-12-23',60,267,60),(379,'21:43:37','2022-10-22',60,196,56),(380,'15:50:40','2021-07-18',160,55,30),(381,'23:11:26','2020-10-10',187,266,48),(382,'19:31:47','2022-03-19',53,252,16),(383,'09:40:31','2022-10-15',94,243,23),(384,'02:03:01','2022-08-26',59,71,49),(385,'02:33:24','2021-11-14',155,254,25),(386,'02:50:06','2020-01-29',48,8,58),(387,'01:28:28','2022-05-30',237,132,49),(388,'19:23:00','2021-11-24',74,62,1),(389,'06:51:40','2022-03-05',227,86,56),(390,'21:04:47','2020-10-02',106,105,22),(391,'08:48:24','2020-02-25',75,259,15),(392,'07:30:56','2020-02-09',224,163,1),(394,'00:00:03','2020-10-23',228,131,11),(397,'05:49:02','2021-04-26',241,241,62),(398,'11:02:06','2021-10-17',21,169,42),(399,'17:41:29','2021-01-13',38,163,52),(400,'23:15:29','2020-01-27',194,116,5);
/*!40000 ALTER TABLE `download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `downloads_by_country`
--

DROP TABLE IF EXISTS `downloads_by_country`;
/*!50001 DROP VIEW IF EXISTS `downloads_by_country`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `downloads_by_country` AS SELECT 
 1 AS `country`,
 1 AS `downloads`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game` (
  `game_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `type_id` int NOT NULL,
  `description` varchar(30) DEFAULT NULL,
  `creator_id` int NOT NULL,
  PRIMARY KEY (`game_id`),
  KEY `creator_id` (`creator_id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `game_ibfk_1` FOREIGN KEY (`creator_id`) REFERENCES `creator` (`creator_id`),
  CONSTRAINT `game_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `game_type` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES (1,'\"Forza Horizon 5\"',5,'\"odio donec\"',61),(2,'\"Call of Duty: Vanguard\"',7,'\"morbi non\"',146),(3,'\"Age of Empires IV\"',23,'',34),(5,'\"Darkest Dungeon II\"',81,'\"erat nulla\"',100),(6,'\"Voice of Cards\"',73,'\"parturient montes nascetur\"',21),(7,'\"FIFA 22: Ultimate Team\"',56,'suspendisse',64),(8,'\"New World\"',34,'\"potenti cras in\"',193),(9,'\"Gran Turismo 7\"',12,'',117),(10,'\"Riders Republic\"',16,'in',24),(11,'\"Forza Horizon 5\"',16,'\"congue eget\"',69),(12,'\"Poppy Playtime\"',27,'\"nulla elit ac nulla\"',139),(13,'DokeV',7,'vel',125),(14,'\"Call of Duty: Vanguard\"',8,'\"in felis eu sapien\"',25),(15,'\"Disciples: Liberation\"',43,'\"non lectus aliquam sit amet\"',1),(16,'\"Assassins Creed Valhalla\"',76,'vivamus',102),(17,'Inscryption',81,'',154),(18,'\"Metroid Dread\"',73,'',162),(19,'\"Call of Duty: Vanguard\"',45,'\"proin eu\"',17),(20,'\"Elden Ring\"',56,'\"nec molestie sed justo\"',170),(22,'\"Far Cry 6\"',12,'',184),(23,'\"Crysis Remastered Trilogy\"',32,'\"volutpat convallis\"',69),(24,'\"Jurassic World Evolution 2\"',15,'',153),(25,'\"Lost Ark\"',2,'\"sapien quis libero\"',185),(26,'\"Dungeon Encounters\"',16,'',117),(27,'\"First Class Trouble\"',27,'',80),(28,'\"Disco Elysium\"',8,'\"in tempor\"',171),(29,'\"FIFA 22: Ultimate Team\"',23,'habitasse',124),(30,'\"Far Cry 6\"',54,'\"quis libero nullam sit\"',86),(31,'\"Battlefield 2042\"',54,'',45),(32,'\"Knockout City\"',76,'',29),(33,'\"God of War\"',81,'\"sit amet diam in\"',88),(34,'\"Kena: Bridge of Spirits\"',73,'\"pellentesque at\"',167),(35,'\"PES 2022\"',56,'\"mi pede\"',125),(36,'\"Elden Ring\"',34,'\"etiam pretium iaculis\"',154),(37,'\"Battlefield 2042\"',7,'\"pede libero\"',90),(38,'\"Jurassic World Evolution 2\"',23,'',128),(40,'Starfield',2,'diam',49),(41,'\"My Friend Peppa Pig\"',16,'vel',56),(42,'\"Youtubers Life 2\"',16,'\"lacus morbi quis\"',6),(43,'\"Ghost Recon: Frontline\"',27,'habitasse',48),(44,'\"Aven Colony\"',5,'\"sollicitudin ut\"',6),(45,'\"Saints & Sinners\"',7,'\"placerat ante nulla justo\"',63),(46,'\"Rainbow Six: Siege\"',43,'\"curae duis faucibus accumsan\"',110),(47,'\"Elden Ring\"',54,'\"elementum pellentesque\"',184),(48,'\"Back 4 Blood\"',76,'pulvinar',192),(49,'\"Dragon Ball Z Kakarot\"',45,'lorem',19),(50,'\"Insurgency: Sandstorm\"',56,'\"morbi a ipsum\"',111),(51,'\"Mafia: Edición Definitiva\"',7,'\"augue vel accumsan\"',174),(52,'\"Xbox Game Pass\"',23,'\"eleifend pede libero quis\"',155),(53,'\"The Last of Us 2\"',32,'\"quam turpis adipiscing\"',96),(54,'\"Harry Potter: Magic Awakened\"',2,'\"sed tristique in tempus\"',174),(55,'\"Riders Republic\"',16,'\"lobortis est\"',85),(56,'\"It Takes Two\"',27,'',34),(57,'UnMetal',5,'\"at turpis\"',156),(58,'\"Ghost of Tsushima\"',7,'purus',29),(59,'\"Bright Memory: Infinite\"',8,'',152),(60,'\"Actraiser Renaissance\"',81,'\"viverra eget congue\"',65),(62,'\"Cyberpunk 2077\"',56,'',18);
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_experience`
--

DROP TABLE IF EXISTS `game_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game_experience` (
  `experience_id` int NOT NULL AUTO_INCREMENT,
  `complete` tinyint(1) NOT NULL,
  `game_time` time DEFAULT NULL,
  `user_id` int NOT NULL,
  `game_id` int NOT NULL,
  PRIMARY KEY (`experience_id`),
  KEY `game_id` (`game_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `game_experience_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `game_experience_ibfk_2` FOREIGN KEY (`game_id`) REFERENCES `game` (`game_id`),
  CONSTRAINT `game_experience_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_experience`
--

LOCK TABLES `game_experience` WRITE;
/*!40000 ALTER TABLE `game_experience` DISABLE KEYS */;
INSERT INTO `game_experience` VALUES (1,0,'00:14:04',194,56),(2,1,'10:34:50',183,49),(3,0,'06:26:54',147,36),(4,1,'12:18:19',116,22),(5,1,'19:20:02',191,18),(6,1,'04:28:17',164,36),(7,0,'19:15:43',20,16),(11,1,'01:46:56',42,57),(12,0,'19:32:54',194,52),(13,0,'22:21:09',185,10),(14,0,'15:13:58',24,38),(15,0,'15:00:03',24,31),(16,0,'12:15:00',264,27),(17,0,'18:53:57',238,34),(18,1,'21:51:20',285,59),(19,1,'01:24:49',121,36),(20,0,'03:43:32',215,10),(21,0,'22:00:31',95,44),(23,1,'13:11:53',188,22),(24,1,'10:57:54',16,2),(26,1,'11:55:33',152,32),(27,0,'04:37:01',102,38),(28,1,'09:13:19',193,17),(29,0,'06:56:04',100,15),(30,0,'01:39:03',274,6),(31,1,'00:47:19',79,16),(32,1,'05:56:26',213,37),(33,0,'02:56:16',89,5),(34,0,'02:21:37',13,60),(35,1,'02:15:53',255,33),(36,1,'17:01:32',238,10),(37,0,'10:49:56',160,27),(38,0,'16:07:31',236,35),(39,1,'17:05:00',130,26),(40,0,'17:21:18',215,52),(42,0,'12:47:58',130,60),(43,0,'05:37:58',195,19),(45,1,'21:03:07',244,54),(46,1,'02:10:34',142,13),(47,0,'12:17:04',162,15),(48,1,'05:49:19',286,40),(50,0,'09:18:01',163,27),(51,0,'02:09:56',151,15),(53,0,'13:16:40',270,59),(54,0,'05:10:17',50,42),(56,1,'09:59:54',191,62),(57,1,'14:12:36',139,1),(58,0,'13:24:48',163,30),(59,1,'08:48:25',135,57),(60,1,'16:52:04',47,11),(61,0,'11:29:47',186,22),(62,1,'02:35:23',280,23),(63,1,'12:10:16',250,32),(65,0,'04:15:30',187,10),(66,0,'17:49:03',189,6),(68,0,'14:05:36',218,20),(71,1,'12:10:49',26,17),(72,0,'19:40:57',212,41),(75,0,'23:42:28',269,29),(76,1,'05:55:38',60,26),(77,1,'00:53:29',105,19),(79,0,'01:51:20',26,16),(80,0,'12:42:54',259,33),(81,1,'18:31:58',117,62),(82,0,'23:44:41',138,28),(83,1,'21:56:41',1,27),(84,1,'19:28:59',47,20),(86,1,'04:25:26',4,12),(89,1,'02:43:50',23,59),(90,0,'14:46:38',22,11),(91,0,'23:34:38',14,1),(92,1,'06:16:57',107,27),(93,0,'16:04:01',105,47),(94,0,'12:49:33',52,50),(95,1,'18:20:36',276,53),(96,0,'19:09:20',259,30),(97,0,'23:37:44',21,26),(99,1,'16:38:17',45,27),(101,1,'21:51:40',215,41),(102,1,'08:23:34',195,62),(103,1,'16:46:34',108,31),(104,1,'04:29:36',93,49),(105,1,'12:04:23',14,40),(106,0,'08:02:42',175,2),(107,0,'21:27:42',129,52),(108,0,'20:38:36',242,26),(109,0,'17:11:37',271,19),(111,1,'08:18:46',276,40),(112,1,'05:04:35',270,37),(113,1,'04:17:10',194,18),(116,1,'02:36:48',239,13),(117,1,'10:19:27',160,8),(118,0,'21:29:33',100,23),(119,1,'13:25:51',265,62),(120,1,'18:51:10',286,10),(121,0,'15:00:03',227,33),(122,0,'15:40:49',129,14),(123,0,'15:17:34',271,7),(124,1,'14:39:37',287,38),(127,0,'01:47:38',218,34),(128,1,'07:47:36',254,7),(130,1,'07:30:14',12,60),(131,1,'04:17:52',260,28),(132,1,'16:16:33',153,25),(133,1,'05:56:15',121,10),(134,1,'11:42:41',56,47),(135,0,'06:56:46',252,42),(136,0,'19:52:06',26,58),(137,1,'22:37:50',51,19),(138,0,'15:47:50',31,20),(139,0,'09:18:02',181,9),(140,0,'16:23:14',54,17),(141,0,'17:27:56',174,2),(143,1,'12:00:37',40,59),(145,1,'22:36:02',164,23),(149,1,'06:29:06',64,60),(150,0,'21:28:03',217,48),(151,1,'21:14:09',188,7),(152,1,'09:31:34',286,62),(153,0,'07:15:17',41,9),(154,0,'16:34:36',17,28),(155,1,'14:01:58',200,2),(156,1,'01:51:08',220,60),(157,0,'18:46:00',277,28),(158,0,'12:07:55',137,55),(159,1,'10:12:31',191,16),(160,1,'08:38:39',172,50),(162,0,'07:45:59',63,14),(165,1,'01:20:21',212,16),(166,0,'02:41:47',111,29),(167,1,'15:54:31',71,46),(168,1,'23:08:12',196,58),(169,0,'08:31:10',204,51),(170,1,'16:40:35',102,60),(171,0,'00:46:14',215,62),(172,1,'08:34:01',266,57),(173,1,'05:25:15',98,42),(175,1,'10:45:03',24,13),(176,1,'12:08:40',54,37),(177,1,'23:41:15',211,35),(178,1,'22:51:45',31,16),(179,0,'22:16:12',159,42),(180,0,'21:41:22',267,2),(181,1,'04:02:49',87,18),(182,1,'10:44:07',183,41),(183,0,'11:40:02',1,23),(185,1,'06:03:04',192,33),(186,1,'22:58:18',132,57),(187,1,'08:45:23',80,62),(188,0,'14:04:21',154,5),(189,0,'12:50:34',289,59),(190,0,'02:09:12',144,49),(191,0,'19:55:42',57,11),(192,0,'22:12:40',262,26),(193,1,'01:18:49',85,19),(194,1,'05:03:26',18,57),(198,0,'14:23:52',145,1),(199,1,'08:55:59',117,36),(200,1,'18:27:38',37,25);
/*!40000 ALTER TABLE `game_experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_type`
--

DROP TABLE IF EXISTS `game_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game_type` (
  `type_id` int NOT NULL AUTO_INCREMENT,
  `type` char(100) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_type`
--

LOCK TABLES `game_type` WRITE;
/*!40000 ALTER TABLE `game_type` DISABLE KEYS */;
INSERT INTO `game_type` VALUES (1,'Action'),(2,'Thriller'),(3,'Children'),(4,'Comedy'),(5,'Romance'),(6,'Drama'),(7,'Documentary'),(8,'Fantasy'),(9,'Sci-Fi'),(10,'Animation'),(11,'War'),(12,'Horror'),(13,'Musical'),(14,'Adventure'),(15,'Documentary'),(16,'IMAX'),(17,'Action'),(18,'\"Poetic Documentary\"'),(19,'\"Expository Documentary\"'),(20,'\"Reflexive Documentary\"'),(21,'\"Observational Documentary\"'),(22,'\"Performative Documentary\"'),(23,'\"Participatory Documentary\"'),(24,'Adventure'),(25,'\"Military Action\"'),(26,'Spy'),(27,'\"Espionage Action\"'),(28,'\"Martial Arts Action\"'),(29,'\"Action Hybrid Genres\"'),(30,'\"Children  literary adaptations\"'),(31,'\"Romance  literary adaptations\"'),(32,'Satire'),(33,'\"Straight drama\"'),(34,'\"Psychological drama\"'),(35,'Comedy-drama'),(36,'Mystery'),(37,'Hyperdrama'),(38,'\"Traditional animation \"'),(39,'\"2D Animation\"'),(40,'\"3D Animation\"'),(41,'\"Motion Graphics\"'),(42,'\"Stop-Motion animation\"'),(43,'\"Typography Animation\"'),(44,'\"Clay animation\"'),(45,'\"Digital 2D animation\"'),(46,'\"Digital 3D animation\"'),(47,'\"Mechanical Animation\"'),(48,'Chuckimation'),(49,'\"Puppetry Animation\"'),(50,'Crime'),(51,'\"Crime comedy\"'),(52,'Suspense-thriller'),(53,'Police'),(54,'Gangster'),(55,'\"Pirate adventure\"'),(56,'\"Horror adventure\"'),(57,'\"War adventure\"'),(58,'\"Action adventure\"'),(59,'Scary'),(60,'\"Psychological horror\"'),(61,'\"Classical musical\"'),(62,'\"First musical\"'),(63,'\"Golden age musical\"'),(64,'\"Spanish musical\"'),(65,'\"Soviet musical\"'),(66,'\"Opera musical\"'),(67,'\"American comedy\"'),(68,'\"Mafia comedy\"'),(69,'\"Indian comedy\"'),(70,'\"Classical comedy\"'),(71,'\"Slapstick comedy\"'),(72,'Stand-up'),(73,'\"Situational comedy\"'),(74,'\"Surreal comedy\"'),(75,'\"Martial Arts Action\"'),(76,'\"Fantasy comedy\"'),(77,'\"Comedy horror\"'),(78,'\"Romantic comedy\"'),(79,'\"Sport comedy\"'),(80,'\"Italian comedy\"'),(81,'\"British comedy\"');
/*!40000 ALTER TABLE `game_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `most_completed_games`
--

DROP TABLE IF EXISTS `most_completed_games`;
/*!50001 DROP VIEW IF EXISTS `most_completed_games`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `most_completed_games` AS SELECT 
 1 AS `name`,
 1 AS `times_completed`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `most_values`
--

DROP TABLE IF EXISTS `most_values`;
/*!50001 DROP VIEW IF EXISTS `most_values`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `most_values` AS SELECT 
 1 AS `name`,
 1 AS `value`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `new_user`
--

DROP TABLE IF EXISTS `new_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_user` (
  `new_user_id` int DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `first_name` char(20) DEFAULT NULL,
  `last_name` char(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_user`
--

LOCK TABLES `new_user` WRITE;
/*!40000 ALTER TABLE `new_user` DISABLE KEYS */;
INSERT INTO `new_user` VALUES (325,'FedeT10','federico','tortolano','fedetortolano@hotmail.com');
/*!40000 ALTER TABLE `new_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ten_most_played_games`
--

DROP TABLE IF EXISTS `ten_most_played_games`;
/*!50001 DROP VIEW IF EXISTS `ten_most_played_games`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ten_most_played_games` AS SELECT 
 1 AS `username`,
 1 AS `name`,
 1 AS `game_time`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `first_name` char(20) NOT NULL,
  `last_name` char(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `country_id` int NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`),
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=326 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'terugkwam1x ','Jereme','Boyn','jboynjf@domainmarket.com',76),(3,'ledemondemidib6 ','Jodee','Knath','jknathjh@sakura.ne.jp',54),(4,'regnumds ','Roanne','Justun','rjustunji@tripadvisor.com',65),(5,'umejat1x ','Amelina','Bovaird','abovairdjj@scientific.com',72),(6,'highollie2n ','Rikki','Collett','rcollettjk@hexun.com',54),(7,'eskay09fw ','Joanie','Bastian','jbastianjl@ehow.com',97),(8,'fiscalearn9 ','Malina','Yanshonok','myanshonokjm@sogou.com',18),(9,'luruhph ','Tiffie','Jewis','tjewisjn@hhs.gov',18),(10,'ajmvsd8k ','Elsy','Darycott','edarycottjo@craigslist.org',52),(11,'vertigo84m4h ','Dicky','Barnewille','dbarnewillejp@mit.edu',123),(12,'amaroa8m ','Melitta','Haskett','mhaskettjq@sciencedaily.com',178),(13,'grwtynni ','Benson','Klima','bklimajr@nyu.edu',234),(14,'akaeld ','Alyda','Beri','aberijs@eventbrite.com',214),(15,'eMamred8 ','Brewer','Maass','bmaassjt@freewebs.com',167),(16,'Tarbuschw7 ','Antonio','Glancey','aglanceyju@ox.ac.uk',98),(17,'epos2s2zwn ','Elisa','Betteridge','ebetteridgejv@illinois.edu',100),(18,'smilinczx ','Gillie','Philippson','gphilippsonjw@wix.com',12),(19,'Rutrlec5 ','Lennard','Ferencowicz','lferencowiczjx@typepad.com',244),(20,'assagesca8c ','Valentia','McDell','vmcdelljy@auda.org.au',76),(21,'Vizkeletsi ','Goddard','Hellewell','ghellewelljz@fda.gov',83),(22,'metalissogoodhq ','Dalston','Jencken','djenckenk0@histats.com',95),(23,'Cursianibc ','Freeman','Giral','fgiralk1@github.io',134),(24,'pb2ra7f ','Bo','Kondrachenko','bkondrachenkok2@instagram.com',213),(25,'sosoplanet2d ','Marchall','Maddison','mmaddisonk3@sakura.ne.jp',21),(26,'gramzdinovs ','Joaquin','Jotham','jjothamk4@sakura.ne.jp',43),(27,'sknonkscw ','Granthem','Grioli','ggriolik5@businessinsider.com',32),(31,'sosoplanetrv ','Silvain','Ickovicz','sickoviczk9@meetup.com',87),(32,'w5sp2raen ','Chrisy','Alsop','calsopka@umn.edu',65),(33,'Bohrrecht98 ','Vern','Isley','visleykb@reddit.com',43),(34,'harsylwfo ','Madelon','Sein','mseinkc@mapy.cz',18),(35,'Adelaidevp ','Elana','Purvis','epurviskd@chicagotribune.com',54),(36,'dumitraquiqf ','Anne','Polk','apolkke@ted.com',87),(37,'kellyos8b ','Nilson','Bows','nbowskf@samsung.com',90),(38,'gogymoiftlv ','Janice','Audrey','jaudreykg@cbsnews.com',54),(39,'tippij5 ','Gar','Lunbech','glunbechkh@dropbox.com',18),(40,'cartaireslo ','Josepha','Carrabott','jcarra@thisfirst_name.com',7),(41,'zaiyntz ','Alain','Coppeard','acoppeardkj@wsj.com',7),(42,'Sequinoqu ','Marisa','Hegerty','mhegertykk@theglobeandmail.com',7),(43,'ng1i2koa0 ','Zacherie','Tarte','ztartekl@jimdo.com',8),(45,'myliciousd7 ','Svend','Renwick','srenwickkn@ezinearticles.com',54),(46,'misplayuw ','Oliy','Hamprecht','ohamprechtko@so-net.ne.jp',65),(47,'obsessisto6 ','Valdemar','Blackaller','vblackallerkp@ustream.tv',72),(48,'aktuarkammp ','Broddy','Pepis','bpepiskq@live.com',54),(49,'chaosjavtix ','Katheryn','Gale','kgalekr@sun.com',97),(50,'roryybeastr4 ','Laurie','Clibbery','lclibberyks@jigsy.com',18),(51,'kisses29bq ','Fawn','Campagne','fcampagnekt@netlog.com',18),(52,'Wesenzoa7 ','Jackelyn','Motto','jmottoku@apple.com',52),(53,'Legauz2 ','Bernadene','Risebarer','brisebarerkv@mlb.com',123),(54,'lepljenexm ','Tana','Swinney','tswinneykw@blinklist.com',178),(55,'trusamumsii ','Fifi','Kneeshaw','fkneeshawkx@msu.edu',234),(56,'radhairckb ','Merrilee','Schade','mschadeky@purevolume.com',214),(57,'Bautroka ','Desiree','Felgate','dfelgatekz@gravatar.com',167),(58,'misangleaip ','Fawn','Cappineer','fcappineerl0@bigcartel.com',98),(59,'Tawfiqch ','Janet','Queripel','jqueripell1@comcast.net',100),(60,'tusweetie077x ','Ciel','Farrand','cfarrandl2@surveymonkey.com',12),(61,'sincpoispef ','Orelle','Coryndon','ocoryndonl3@phpbb.com',134),(62,'gydhanfod98 ','Darb','Exposito','dexpositol4@tinypic.com',213),(63,'bruthas4lifezn ','Michail','Junes','mjunesl5@unc.edu',21),(64,'ginter3x ','Carlos','Lundy','clundyl6@wikimedia.org',43),(65,'lulalexv9 ','Carolynn','Horrell','chorrelll7@weebly.com',32),(69,'eindellenws ','Adan','Boothman','aboothmanlb@360.cn',87),(70,'Schlieferqg ','Samantha','Huish','shuishlc@guardian.co.uk',65),(71,'thuiskomtjf ','Glori','Kinneally','gkinneallyld@state.tx.us',43),(72,'mengotu ','Dylan','Barfitt','dbarfittle@army.mil',213),(73,'Goskap6 ','Scotty','Collip','scolliplf@washingtonpost.com',21),(74,'nnoniusrs ','Georgi','Mingaud','gmingaudlg@statcounter.com',43),(75,'Trhavicenf ','Denyse','Gillbard','dgillbardlh@state.gov',32),(79,'r2v1ubwr ','Gabrielle','Stodit','gstoditll@surveymonkey.com',87),(80,'bi1payw ','Dorie','Tommen','dtommenlm@state.tx.us',65),(81,'trpinkahfa ','Bruce','Kuschel','bkuschelln@technorati.com',43),(82,'Atottbiallgaxme ','Stirling','Gaskall','sgaskalllo@twitter.com',18),(83,'avedas7g ','Elle','Eagleston','eeaglestonlp@salon.com',54),(84,'susednom4m ','Karly','Boyes','kboyeslq@tuttocitta.it',87),(85,'h5ritnj ','Derry','Chadwick','dchadwicklr@topsy.com',90),(86,'fobregonahr ','Rakel','Alti','raltils@topsy.com',54),(87,'ortoptics1q ','Garnet','Grand','ggrandlt@sbwire.com',18),(89,'Schneid23 ','Karyn','Kenyam','kkenyamlv@webs.com',8),(90,'Rusarorgeleragj ','Lucretia','Bakes','lbakeslw@51.la',9),(91,'lomizcutekq ','Claiborn','Awde','cawdelx@reuters.com',76),(93,'vitsmunirp3 ','Carita','Kepling','ckeplinglz@statcounter.com',54),(94,'caitlinbright5n ','Marnie','Alliban','mallibanm0@tinyurl.com',65),(95,'Generuttit5 ','Elissa','Hammelberg','ehammelbergm1@biblegateway.com',72),(96,'domovet4 ','Sandor','Atyeo','satyeom2@xinhuanet.com',54),(97,'Saccoioba ','Henryetta','Diver','hdiverm3@t.co',97),(98,'om5sp2fj ','Meridel','Prudence','mprudencem4@myspace.com',18),(99,'Paschwitzof ','Siana','Minney','sminneym5@blogspot.com',18),(100,'indegudasme ','Dyane','Tonry','dtonrym6@latimes.com',52),(101,'tarfitupyv ','Amalie','Rosenblad','arosenbladm7@homestead.com',123),(102,'vizelhet5d ','Shelby','Dufer','sduferm8@hp.com',178),(103,'rakotrarj ','Alfonso','Blankau','ablankaum9@addtoany.com',234),(104,'Cathracho4 ','Maggee','Ubee','mubeema@google.de',214),(105,'zavzemamq9 ','Leela','Floyde','lfloydemb@redcross.org',167),(106,'IsiIrish31 ','Sandor','Sheeran','ssheeranmc@hubpages.com',98),(107,'7000dansesch ','Janka','Filliskirk','jfilliskirkmd@tonpost.com',100),(108,'blancpaing2 ','Rem','Kynaston','rkynastonme@miitbeian.gov.cn',12),(109,'joshruckergu ','Enrica','Beeden','ebeedenmf@feedburner.com',244),(110,'grindzandfj ','Henrie','Janouch','hjanouchmg@oakley.com',76),(111,'ADVADVAGeb ','Stepha','Goodliffe','sgoodliffemh@techcrunch.com',83),(112,'1liasq ','Christopher','Portsmouth','cportsmouthmi@devhub.com',95),(113,'lelifakwau2 ','Cleopatra','Jarlmann','cjarlmannmj@dmoz.org',134),(114,'m4nb4n4mlmp0 ','Giselle','Swinglehurst','gswinglehurstmk@chron.com',213),(115,'gorazdomak ','Philippe','Gornar','pgornarml@house.gov',21),(116,'Lieschownj ','Jacqueline','Benitez','jbenitezmm@ihg.com',43),(117,'Orgel1o ','Rossy','Cassimer','rcassimermn@wired.com',32),(121,'odtrhat65 ','Antoine','Haggarty','ahaggartymr@moonfruit.com',87),(122,'Tesconisy ','Fletch','Babin','fbabinms@yahoo.co.jp',65),(123,'pagpapalayawq ','Drusilla','Lohrensen','dlohrensenmt@multiply.com',43),(124,'Hiencense9j ','Early','Cuningham','ecuninghammu@whitehouse.gov',18),(125,'imagwirayl ','Josi','Breakey','jbreakeymv@taobao.com',54),(126,'varedbichrm ','Clarine','Frood','cfroodmw@behance.net',87),(127,'fahamiana7q ','Reinaldos','Bowshire','rbowshiremx@independent.co.uk',90),(128,'bdijemotd ','Honor','Fedder','hfeddermy@nps.gov',54),(129,'Fakan9h ','Ladonna','Imbrey','limbreymz@stumbleupon.com',18),(130,'badmathwd ','Georas','Loosemore','gloosemoren0@hp.com',7),(131,'ejeigualdadtz ','Park','Haggus','phaggusn1@simplemachines.org',7),(132,'brandinazgulwt ','Delaney','Stainsby','dstainsbyn2@hibu.com',7),(133,'lulalexuf ','Stefa','Dadge','sdadgen3@admin.ch',8),(135,'blevesworreliif ','Cassandry','Luchelli','cluchellin5@last.fm',54),(136,'vratnicah59 ','Emmery','Whoolehan','ewhoolehann6@nbcnews.com',65),(137,'encaradamb ','Percival','Gadsden','pgadsdenn7@miibeian.gov.cn',72),(138,'srn2s ','Dniren','Esmead','desmeadn8@so-net.ne.jp',54),(139,'Karabelm0 ','Maryanna','Knowlson','mknowlsonn9@theatlantic.com',97),(140,'kelseylespazhy ','Heindrick','Coulter','hcoulterna@bigcartel.com',18),(141,'huracanandaqd ','Edgardo','Davidowich','edavidowichnb@plala.or.jp',18),(142,'sakleysir57 ','Laurie','Hamblen','lhamblennc@indiatimes.com',52),(143,'grinella9o ','Lewiss','Belone','lbelonend@w3.org',123),(144,'brlivkamei ','Carolus','Overil','coverilne@hud.gov',178),(145,'tiasof9 ','Clarisse','Worssam','cworssamnf@nih.gov',234),(146,'tamadrums621xe ','Rhys','Segeswoeth','rsegeswoethng@bandcamp.com',214),(147,'Flughaut4l ','Tilly','Pinnigar','tpinnigarnh@barnesandnoble.com',167),(148,'romiadaet ','Beryle','Backwell','bbackwellni@va.gov',98),(149,'pon4i4e2hl ','Ruthann','Gofforth','rgofforthnj@omniture.com',100),(150,'stisak6w ','Rodina','Binner','rbinnernk@51.la',12),(151,'shacuasseky ','Stan','Perrone','sperronenl@opera.com',134),(152,'Camaninirp ','Tedmund','L\'Episcopi','tlepiscopinm@phpbb.com',213),(153,'womhlobokt ','Maggi','Monery','mmonerynn@miitbeian.gov.cn',21),(154,'rieboyousl ','Marty','Wornum','mwornumno@comsenz.com',43),(155,'lyncher74 ','Brook','Babb','bbabbnp@toplist.cz',32),(159,'fideismov5 ','Reinaldos','Cowton','rcowtonnt@reuters.com',87),(160,'lostrokkt ','Annabel','\"St. Ledger\"','astledgernu@homestead.com',65),(161,'spattenw2 ','Will','Skingle','wskinglenv@google.cn',43),(162,'delanjem65 ','Marybeth','Luberti','mlubertinw@slate.com',213),(163,'umututsi5p ','Alanna','Mapston','amapstonnx@trellian.com',21),(164,'cuisleanut ','Zorina','Benninck','zbenninckny@oracle.com',43),(165,'carey4mca2 ','Kamillah','Postle','kpostlenz@phoca.cz',32),(169,'EfferiAnnuaraog ','Shannah','Hinnerk','shinnerko3@studiopress.com',87),(170,'Polverigixq ','Eduino','Hankinson','ehankinsono4@gizmodo.com',65),(171,'goldfish110270 ','Adelheid','Davio','adavioo5@walmart.com',43),(172,'pugnata1i ','Braden','Hourston','bhourstono6@abc.net.au',18),(173,'livliv725e0 ','Kennedy','Jenson','kjensono7@hp.com',54),(174,'prekaljen5w ','Leupold','Gillespie','lgillespieo8@japanpost.jp',87),(175,'oathleticsfanu3 ','Mychal','Valdes','mvaldeso9@prnewswire.com',90),(176,'obuzetun8 ','Arline','\"Mc Harg\"','amchargoa@soup.io',54),(177,'Parmarlm ','Benetta','Heinz','bheinzob@shareasale.com',18),(179,'Passerin34 ','Sharai','Leyninye','sleyninyeod@va.gov',8),(180,'aponchav7 ','Fionna','Camidge','fcamidgeoe@mac.com',9),(181,'ncaadiaadiagv ','Roderick','Amorts','ramortsof@independent.co.uk',76),(183,'ruftar2002jw ','Minta','Orry','morryoh@dot.gov',54),(184,'ciflars74 ','Stanton','Eggins','segginsoi@furl.net',65),(185,'vicenteesteveg2 ','Ansley','Gonning','agonningoj@sciencedirect.com',72),(186,'predkupen83 ','Erasmus','McSharry','emcsharryok@youtu.be',54),(187,'jbrooke007uw ','Octavius','Warbys','owarbysol@sohu.com',97),(188,'bareiro55 ','Chaim','Sentance','csentanceom@ucoz.com',18),(189,'orlovice32 ','Reinald','Tumini','rtuminion@google.com.hk',18),(190,'semifusast4 ','Mathe','Boots','mbootsoo@i2i.jp',52),(191,'mwnwsx0 ','Jonis','Alfonsini','jalfonsiniop@a8.net',123),(192,'tocaboorimb82 ','Silvan','Vidyapin','svidyapinoq@ebay.com',178),(193,'maviesurmc ','Shannon','Byard','sbyardor@liveinternet.ru',234),(194,'szpulkowyfq ','Celestia','Balke','cbalkeos@webnode.com',214),(195,'nomsingaga ','Dallas','Melloy','dmelloyot@gmpg.org',167),(196,'fatigantebn ','Gaby','Bice','gbiceou@bizjournals.com',98),(197,'musejavaee ','Nariko','Pardi','npardiov@eepurl.com',100),(198,'Gefrage7q ','Desmond','Streatfield','dstreatfieldow@dailymail.co.uk',12),(199,'postsovieticorc ','Rodina','Steger','rstegerox@delicious.com',244),(200,'acapoashl ','Rodolphe','McLeoid','rmcleoidoy@samsung.com',76),(201,'Zollstockvy ','Rafaellle','Mathys','rmathysoz@com.com',83),(202,'empapelodh ','Rurik','Bounds','rboundsp0@ebay.com',95),(203,'Susmeliv4 ','Mureil','Jarret','mjarretp1@rambler.ru',134),(204,'neeraspewmr ','Vasilis','DeSousa','vdesousap2@scribd.com',213),(205,'chimemln ','Jodee','McSharry','jmcsharryp3@google.ca',21),(206,'jegenyeqo ','Nowell','Iddison','niddisonp4@chron.com',43),(207,'helpinjee0a ','Nikkie','Danels','ndanelsp5@nifty.com',32),(211,'inayi17 ','Rodi','Pickles','rpicklesp9@ifeng.com',87),(212,'amatendeal ','Kathlin','Morican','kmoricanpa@1und1.de',65),(213,'schalmei9z ','Petey','D\'Enrico','pdenricopb@skype.com',43),(214,'tro2nanp0 ','Wyndham','Hayden','whaydenpc@uiuc.edu',18),(215,'graziank ','Gerry','Chrichton','gchrichtonpd@imdb.com',54),(216,'dikotielke ','Bev','Huckle','bhucklepe@diigo.com',87),(217,'acropilhak6 ','Omero','Follit','ofollitpf@lulu.com',90),(218,'enthusiasimjc ','Hedwig','Sherrin','hsherrinpg@wikia.com',54),(219,'volatadakv ','Wally','Lathwell','wlathwellph@bravesites.com',18),(220,'chameantegj ','Zolly','Traill','ztraillpi@independent.co.uk',7),(221,'Armanasco40 ','Stepha','Dudek','sdudekpj@mtv.com',7),(222,'letyegettng ','Anthia','Cherryman','acherrymanpk@rediff.com',7),(223,'podastiruv1 ','Heindrick','Clopton','hcloptonpl@yolasite.com',8),(225,'lomnojhu ','Dar','Sowthcote','dsowthcotepn@dropbox.com',54),(226,'oxydayrabb2 ','Bartholomeus','Woolerton','bwoolertonpo@google.it',65),(227,'obulusfw ','Lela','Cockburn','lcockburnpp@nsw.gov.au',72),(228,'bobquasitfv ','Hammad','Gallelli','hgallellipq@photobucket.com',54),(229,'Galanteu9 ','Amie','Aguirrezabala','aaguirrezabalapr@solutions.com',97),(230,'venentd0 ','Moshe','Tarbert','mtarbertps@foxnews.com',18),(231,'Frygijka30 ','Zabrina','Peirson','zpeirsonpt@multiply.com',18),(232,'journalbis3g ','Laurette','Yushankin','lyushankinpu@qq.com',52),(233,'laporgarmjq ','Jennette','Gillibrand','jgillibrandpv@bbb.org',123),(234,'4d5a4t3lzx ','Nobe','Conaghy','nconaghypw@csmonitor.com',178),(235,'Zasap53 ','Gusella','McCartney','gmccartneypx@slate.com',234),(236,'afvalbakst ','Thorstein','Benham','tbenhampy@blinklist.com',214),(237,'whewgq ','Charmane','Durtnall','cdurtnallpz@stanford.edu',167),(238,'sbna14ow ','Ame','Lassell','alassellq0@independent.co.uk',98),(239,'aiirim4 ','Flossy','Smaling','fsmalingq1@unblog.fr',100),(240,'nehumanihxs ','Kimball','Slevin','kslevinq2@loc.gov',12),(241,'apegliziguetw ','Cindie','Summerside','csummersideq3@loc.gov',134),(242,'anaegiguinaq5 ','Lon','Slucock','lslucockq4@ca.gov',213),(243,'YS3S9Vq4 ','Gale','Garfitt','ggarfittq5@wikipedia.org',21),(244,'tanjenif0 ','Gav','Zwicker','gzwickerq6@webeden.co.uk',43),(245,'journalbis3e ','Lara','Yushkin','lyushkinq7@amazon.co.jp',32),(249,'aducere6t ','Nickie','Cavozzi','ncavozziqb@businesswire.com',87),(250,'choopak5 ','Shell','Margarson','smargarsonqc@twitpic.com',65),(251,'sexyhaitian15ji ','Bryna','Ida','bidaqd@bizjournals.com',43),(252,'billardpalacek1 ','Emmaline','Beynkn','ebeynknqe@jalbum.net',213),(253,'jbrooke0077l ','Raphael','Pyett','rpyettqf@wunderground.com',21),(254,'lacaire8p ','Thane','Pulbrook','tpulbrookqg@fc2.com',43),(255,'WheermaTorm7q ','Ethel','Horry','ehorryqh@abc.net.au',32),(259,'Slelvebeestui ','Iseabal','Mattiazzo','imattiazzoql@gov.uk',87),(260,'Vianelloa2 ','Sheelagh','Ayris','sayrisqm@wired.com',65),(261,'estampantr4 ','Abbe','\"St. John\"','astjohnqn@pinterest.com',43),(262,'efyddausf ','Arri','Arnauduc','aarnauducqo@xrea.com',18),(263,'Goldhit5u ','Ephrayim','MacGeaney','emacgeaneyqp@sitemeter.com',54),(264,'Balleggi8b ','Janice','Riddick','jriddickqq@chicagotribune.com',87),(265,'Rottinger2s ','Wayland','Fitchew','wfitchewqr@reddit.com',90),(266,'cruzigramafw ','Darice','Mellows','dmellowsqs@360.cn',54),(267,'Murtinger06 ','Eulalie','Shearer','eshearerqt@github.com',18),(269,'cinquez70 ','Siegfried','Ladbrooke','sladbrookeqv@deliciousdays.com',8),(270,'AdummaSpamyau ','Rogerio','Knapper','rknapperqw@statcounter.com',9),(271,'rosexeof ','Vi','Reveley','vreveleyqx@exblog.jp',76),(273,'styldecos4 ','Bowie','Oxberry','boxberryqz@bloglovin.com',54),(274,'Predotick ','Viv','Bell','vbellr0@theglobeandmail.com',65),(275,'Pohorzvj ','Tiler','Harback','tharbackr1@bbc.co.uk',72),(276,'eo3daros ','Cicily','Maletratt','cmaletrattr2@qq.com',54),(277,'sweetjoan1125td ','Harwilll','Pencot','hpencotr3@ucla.edu',97),(278,'mylovingkellyok ','Donny','Bilofsky','dbilofskyr4@bloglines.com',18),(279,'sammyvhd3f ','Daffie','Ballinger','dballingerr5@desdev.cn',18),(280,'lekarz78 ','Northrup','Lough','nloughr6@paginegialle.it',52),(281,'pleptg6 ','Silvio','Joblin','sjoblinr7@shinystat.com',123),(282,'pihaknyaa4 ','Torey','Cutchie','tcutchier8@moonfruit.com',178),(283,'Kotall5 ','Llewellyn','Sinkinson','lsinkinsonr9@csmonitor.com',234),(284,'wurmgatdv ','Coriss','Chsteney','cchsteneyra@booking.com',214),(285,'il2c1a2gv ','Salim','Bryce','sbrycerb@constantcontact.com',167),(286,'Dedalowy64 ','Elie','Maestro','emaestrorc@amazon.co.uk',98),(287,'nepguankalkatid ','Cesar','Yannikov','cyannikovrd@so-net.ne.jp',100),(288,'bheithe6x ','Vina','Hlavac','vhlavacre@paypal.com',12),(289,'pink69duckiezp6 ','Ingeborg','Godlee','igodleerf@so-net.ne.jp',244),(290,'sceachv9 ','Mia','Killough','mkilloughrg@fc2.com',76),(291,'Skobasd ','Wileen','Tomalin','wtomalinrh@desdev.cn',83),(292,'emaidgewetanw ','Andee','O\'Sharry','aosharryri@scribd.com',95),(293,'cienciacaserar5 ','Robyn','Garham','rgarhamrj@linkedin.com',134),(294,'Tabacaruzg ','Dorothea','Eastlake','deastlakerk@redcross.org',213),(295,'l1s2payl ','Freida','Leonards','fleonardsrl@ebay.com',21),(296,'u2t1gj8 ','Nat','Fitzgerald','nfitzgeraldrm@51.la',43),(297,'Atexingerrl ','Rutter','Pimmocke','rpimmockern@stumbleupon.com',32),(301,'ueurethed','Anselm','McVee','amcveerr@123-reg.co.uk',17),(325,'FedeT10','federico','tortolano','fedetortolano@hotmail.com',18);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `users_arg`
--

DROP TABLE IF EXISTS `users_arg`;
/*!50001 DROP VIEW IF EXISTS `users_arg`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `users_arg` AS SELECT 
 1 AS `users_arg`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `value`
--

DROP TABLE IF EXISTS `value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `value` (
  `value_id` int NOT NULL AUTO_INCREMENT,
  `value` int DEFAULT NULL,
  `date` date NOT NULL,
  `user_id` int NOT NULL,
  `game_id` int NOT NULL,
  PRIMARY KEY (`value_id`),
  KEY `game_id` (`game_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `value_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `value_ibfk_2` FOREIGN KEY (`game_id`) REFERENCES `game` (`game_id`),
  CONSTRAINT `value_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3004 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `value`
--

LOCK TABLES `value` WRITE;
/*!40000 ALTER TABLE `value` DISABLE KEYS */;
INSERT INTO `value` VALUES (1,6,'2014-10-11',143,6),(2,3,'2010-08-30',31,48),(5,3,'2014-10-11',153,45),(6,6,'2010-08-30',147,10),(7,3,'2011-08-17',243,22),(8,4,'2021-10-14',197,37),(9,2,'2014-10-11',245,24),(10,2,'2010-08-30',117,6),(12,6,'2021-10-14',1,32),(13,9,'2014-10-11',27,5),(15,4,'2011-08-17',207,16),(16,9,'2021-10-14',129,18),(18,4,'2010-08-30',220,52),(20,10,'2021-10-14',8,48),(21,10,'2014-10-11',47,45),(23,7,'2011-08-17',105,41),(24,8,'2021-10-14',143,49),(26,10,'2010-08-30',184,35),(27,6,'2011-08-17',195,8),(28,8,'2021-10-14',42,48),(29,10,'2014-10-11',214,47),(31,9,'2011-08-17',191,12),(32,2,'2021-10-14',175,34),(33,1,'2014-10-11',155,30),(35,5,'2011-08-17',42,23),(37,4,'2014-10-11',128,24),(38,10,'2010-08-30',86,6),(39,3,'2011-08-17',141,33),(41,8,'2014-10-11',294,7),(42,4,'2010-08-30',104,28),(43,3,'2011-08-17',184,46),(44,2,'2021-10-14',58,34),(45,5,'2014-10-11',17,1),(47,8,'2011-08-17',231,58),(48,1,'2021-10-14',179,48),(49,3,'2014-10-11',103,47),(50,7,'2010-08-30',63,48),(51,7,'2011-08-17',240,10),(53,3,'2014-10-11',250,27),(54,5,'2010-08-30',160,1),(55,5,'2011-08-17',124,38),(56,9,'2021-10-14',275,51),(57,3,'2014-10-11',87,10),(58,9,'2010-08-30',75,18),(59,6,'2011-08-17',42,37),(60,2,'2021-10-14',90,58),(61,2,'2014-10-11',87,2),(62,2,'2010-08-30',45,55),(64,4,'2021-10-14',123,13),(65,3,'2014-10-11',185,41),(66,10,'2010-08-30',170,1),(67,3,'2011-08-17',79,40),(68,4,'2021-10-14',254,60),(70,2,'2010-08-30',46,36),(71,10,'2011-08-17',50,37),(72,2,'2021-10-14',274,54),(73,4,'2014-10-11',152,17),(74,1,'2010-08-30',221,28),(75,2,'2011-08-17',23,13),(76,7,'2021-10-14',176,54),(77,9,'2014-10-11',58,60),(79,2,'2011-08-17',230,33),(80,8,'2021-10-14',195,47),(81,4,'2014-10-11',65,17),(82,2,'2010-08-30',275,36),(83,7,'2011-08-17',171,36),(84,10,'2021-10-14',265,6),(85,6,'2014-10-11',15,52),(86,9,'2010-08-30',11,3),(87,2,'2011-08-17',69,30),(88,5,'2021-10-14',222,1),(89,6,'2014-10-11',204,59),(90,4,'2010-08-30',217,31),(91,3,'2011-08-17',143,56),(92,8,'2021-10-14',15,26),(93,4,'2014-10-11',137,3),(94,8,'2010-08-30',47,31),(95,5,'2011-08-17',18,53),(96,5,'2021-10-14',226,11),(97,3,'2014-10-11',80,14),(98,10,'2010-08-30',261,62),(99,6,'2011-08-17',96,35),(102,1,'2010-08-30',100,18),(104,10,'2021-10-14',183,47),(105,5,'2014-10-11',289,36),(106,7,'2010-08-30',262,9),(107,5,'2011-08-17',179,10),(108,2,'2021-10-14',290,44),(109,9,'2014-10-11',198,42),(110,7,'2010-08-30',124,52),(111,9,'2011-08-17',27,28),(113,6,'2014-10-11',211,50),(114,1,'2010-08-30',84,36),(115,3,'2011-08-17',136,60),(116,9,'2021-10-14',197,13),(117,9,'2014-10-11',193,18),(118,1,'2010-08-30',290,18),(119,9,'2011-08-17',174,11),(120,6,'2021-10-14',96,6),(122,7,'2010-08-30',89,49),(123,7,'2011-08-17',181,11),(124,5,'2021-10-14',260,5),(126,8,'2010-08-30',3,51),(128,8,'2021-10-14',114,12),(129,4,'2014-10-11',15,30),(130,5,'2010-08-30',23,30),(131,10,'2011-08-17',122,38),(132,1,'2021-10-14',20,22),(133,10,'2014-10-11',145,10),(134,7,'2010-08-30',152,53),(135,5,'2011-08-17',291,56),(136,7,'2021-10-14',172,45),(137,8,'2014-10-11',20,27),(138,10,'2010-08-30',173,6),(139,9,'2011-08-17',18,57),(140,7,'2021-10-14',193,31),(141,1,'2014-10-11',277,25),(142,3,'2010-08-30',22,53),(143,2,'2011-08-17',86,52),(144,6,'2021-10-14',179,51),(145,5,'2014-10-11',81,7),(146,1,'2010-08-30',82,31),(147,9,'2011-08-17',145,29),(148,9,'2021-10-14',238,12),(149,2,'2014-10-11',293,33),(150,8,'2010-08-30',233,62),(152,5,'2021-10-14',206,46),(153,7,'2014-10-11',6,7),(154,6,'2010-08-30',43,22),(155,9,'2011-08-17',60,48),(156,7,'2021-10-14',218,38),(157,5,'2014-10-11',9,10),(158,3,'2010-08-30',152,38),(159,5,'2011-08-17',251,3),(161,4,'2014-10-11',294,53),(162,2,'2010-08-30',127,10),(163,7,'2011-08-17',240,9),(165,10,'2014-10-11',135,46),(166,9,'2010-08-30',143,29),(167,2,'2011-08-17',151,10),(168,9,'2021-10-14',234,25),(169,9,'2014-10-11',45,25),(171,8,'2011-08-17',93,23),(172,5,'2021-10-14',281,1),(173,8,'2014-10-11',163,53),(174,9,'2010-08-30',75,3),(175,1,'2011-08-17',171,44),(176,5,'2021-10-14',276,54),(178,9,'2010-08-30',81,41),(179,7,'2011-08-17',60,18),(180,3,'2021-10-14',115,9),(182,2,'2010-08-30',290,45),(183,10,'2011-08-17',33,57),(184,4,'2021-10-14',273,42),(186,1,'2010-08-30',296,22),(189,1,'2014-10-11',179,8),(190,1,'2010-08-30',4,47),(191,8,'2011-08-17',229,20),(192,8,'2021-10-14',267,27),(193,3,'2014-10-11',263,54),(194,3,'2010-08-30',111,28),(196,8,'2021-10-14',260,60),(197,2,'2014-10-11',65,24),(198,7,'2010-08-30',189,55),(199,3,'2011-08-17',140,25),(3000,10,'2023-03-23',100,30),(3001,0,'2023-03-23',100,30),(3002,2,'2023-03-23',100,30),(3003,10,'2023-03-23',100,20);
/*!40000 ALTER TABLE `value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `downloads_by_country`
--

/*!50001 DROP VIEW IF EXISTS `downloads_by_country`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `downloads_by_country` AS select `c`.`country` AS `country`,count(0) AS `downloads` from (`download` `d` join `country` `c` on((`c`.`country_id` = `d`.`country_id`))) group by `c`.`country` order by `downloads` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `most_completed_games`
--

/*!50001 DROP VIEW IF EXISTS `most_completed_games`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `most_completed_games` AS select `g`.`name` AS `name`,count(0) AS `times_completed` from (`game` `g` join `game_experience` `ge` on((`g`.`game_id` = `ge`.`game_id`))) where (`ge`.`complete` = 1) group by `g`.`name` order by `times_completed` desc limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `most_values`
--

/*!50001 DROP VIEW IF EXISTS `most_values`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `most_values` AS select `g`.`name` AS `name`,`v`.`value` AS `value` from (`game` `g` join `value` `v` on((`g`.`game_id` = `v`.`game_id`))) order by `v`.`value` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ten_most_played_games`
--

/*!50001 DROP VIEW IF EXISTS `ten_most_played_games`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ten_most_played_games` AS select `u`.`username` AS `username`,`g`.`name` AS `name`,`ge`.`game_time` AS `game_time` from ((`game_experience` `ge` join `game` `g`) join `user` `u` on(((`g`.`game_id` = `ge`.`game_id`) and (`u`.`user_id` = `ge`.`user_id`)))) order by `ge`.`game_time` desc limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `users_arg`
--

/*!50001 DROP VIEW IF EXISTS `users_arg`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `users_arg` AS select count(0) AS `users_arg` from (`user` `u` join `country` `c` on((`c`.`country_id` = `u`.`country_id`))) where (`c`.`country` like '%Argentina%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-06 18:01:43
