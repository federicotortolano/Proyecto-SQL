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
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (7,'\"Afganistán\"'),(8,'\"Albania\"'),(9,'\"Alemania\"'),(10,'\"Algeria\"'),(11,'\"Andorra\"'),(12,'\"Angola\"'),(13,'\"Anguila\"'),(14,'\"Antártida\"'),(15,'\"Antigua y Barbuda\"'),(16,'\"Antillas Neerlandesas\"'),(17,'\"Arabia Saudita\"'),(18,'\"Argentina\"'),(19,'\"Armenia\"'),(20,'\"Aruba\"'),(21,'\"Australia\"'),(22,'\"Austria\"'),(23,'\"Azerbayán\"'),(24,'\"Bélgica\"'),(25,'\"Bahamas\"'),(26,'\"Bahrein\"'),(27,'\"Bangladesh\"'),(28,'\"Barbados\"'),(29,'\"Belice\"'),(30,'\"Benín\"'),(31,'\"Bhután\"'),(32,'\"Bielorrusia\"'),(33,'\"Birmania\"'),(34,'\"Bolivia\"'),(35,'\"Bosnia y Herzegovina\"'),(36,'\"Botsuana\"'),(37,'\"Brasil\"'),(38,'\"Brunéi\"'),(39,'\"Bulgaria\"'),(40,'\"Burkina Faso\"'),(41,'\"Burundi\"'),(42,'\"Cabo Verde\"'),(43,'\"Camboya\"'),(44,'\"Camerún\"'),(45,'\"Canadá\"'),(46,'\"Chad\"'),(47,'\"Chile\"'),(48,'\"China\"'),(49,'\"Chipre\"'),(50,'\"Ciudad del Vaticano\"'),(51,'\"Colombia\"'),(52,'\"Comoras\"'),(53,'\"Congo\"'),(54,'\"Congo\"'),(55,'\"Corea del Norte\"'),(56,'\"Corea del Sur\"'),(57,'\"Costa de Marfil\"'),(58,'\"Costa Rica\"'),(59,'\"Croacia\"'),(60,'\"Cuba\"'),(61,'\"Dinamarca\"'),(62,'\"Dominica\"'),(63,'\"Ecuador\"'),(64,'\"Egipto\"'),(65,'\"El Salvador\"'),(66,'\"Emiratos Árabes Unidos\"'),(67,'\"Eritrea\"'),(68,'\"Eslovaquia\"'),(69,'\"Eslovenia\"'),(70,'\"España\"'),(71,'\"Estados Unidos de América\"'),(72,'\"Estonia\"'),(73,'\"Etiopía\"'),(74,'\"Filipinas\"'),(75,'\"Finlandia\"'),(76,'\"Fiyi\"'),(77,'\"Francia\"'),(78,'\"Gabón\"'),(79,'\"Gambia\"'),(80,'\"Georgia\"'),(81,'\"Ghana\"'),(82,'\"Gibraltar\"'),(83,'\"Granada\"'),(84,'\"Grecia\"'),(85,'\"Groenlandia\"'),(86,'\"Guadalupe\"'),(87,'\"Guam\"'),(88,'\"Guatemala\"'),(89,'\"Guayana Francesa\"'),(90,'\"Guernsey\"'),(91,'\"Guinea\"'),(92,'\"Guinea Ecuatorial\"'),(93,'\"Guinea-Bissau\"'),(94,'\"Guyana\"'),(95,'\"Haití\"'),(96,'\"Honduras\"'),(97,'\"Hong kong\"'),(98,'\"Hungría\"'),(99,'\"India\"'),(100,'\"Indonesia\"'),(101,'\"Irán\"'),(102,'\"Irak\"'),(103,'\"Irlanda\"'),(104,'\"Isla Bouvet\"'),(105,'\"Isla de Man\"'),(106,'\"Isla de Navidad\"'),(107,'\"Isla Norfolk\"'),(108,'\"Islandia\"'),(109,'\"Islas Bermudas\"'),(110,'\"Islas Caimán\"'),(111,'\"Islas Cocos (Keeling)\"'),(112,'\"Islas Cook\"'),(113,'\"Islas de Åland\"'),(114,'\"Islas Feroe\"'),(115,'\"Islas Heard y McDonald\"'),(116,'\"Islas Maldivas\"'),(117,'\"Islas Malvinas\"'),(118,'\"Islas Marianas del Norte\"'),(119,'\"Islas Marshall\"'),(120,'\"Islas Pitcairn\"'),(121,'\"Islas Salomón\"'),(122,'\"Islas Turcas y Caicos\"'),(123,'\"Islas Vírgenes Británicas\"'),(124,'\"Israel\"'),(125,'\"Italia\"'),(126,'\"Jamaica\"'),(127,'\"Japón\"'),(128,'\"Jersey\"'),(129,'\"Jordania\"'),(130,'\"Kazajistán\"'),(131,'\"Kenia\"'),(132,'\"Kirgizstán\"'),(133,'\"Kiribati\"'),(134,'\"Kuwait\"'),(135,'\"Líbano\"'),(136,'\"Laos\"'),(137,'\"Lesoto\"'),(138,'\"Letonia\"'),(139,'\"Liberia\"'),(140,'\"Libia\"'),(141,'\"Liechtenstein\"'),(142,'\"Lituania\"'),(143,'\"Luxemburgo\"'),(144,'\"México\"'),(145,'\"Mónaco\"'),(146,'\"Macao\"'),(147,'\"Macedônia\"'),(148,'\"Madagascar\"'),(149,'\"Malasia\"'),(150,'\"Malawi\"'),(151,'\"Mali\"'),(152,'\"Malta\"'),(153,'\"Marruecos\"'),(154,'\"Martinica\"'),(155,'\"Mauricio\"'),(156,'\"Mauritania\"'),(157,'\"Mayotte\"'),(158,'\"Micronesia\"'),(159,'\"Moldavia\"'),(160,'\"Mongolia\"'),(161,'\"Montenegro\"'),(162,'\"Montserrat\"'),(163,'\"Mozambique\"'),(164,'\"Namibia\"'),(165,'\"Nauru\"'),(166,'\"Nepal\"'),(167,'\"Nicaragua\"'),(168,'\"Niger\"'),(169,'\"Nigeria\"'),(170,'\"Niue\"'),(171,'\"Noruega\"'),(172,'\"Nueva Caledonia\"'),(173,'\"Nueva Zelanda\"'),(174,'\"Omán\"'),(175,'\"Países Bajos\"'),(176,'\"Pakistán\"'),(177,'\"Palau\"'),(178,'\"Palestina\"'),(179,'\"Panamá\"'),(180,'\"Papúa Nueva Guinea\"'),(181,'\"Paraguay\"'),(182,'\"Perú\"'),(183,'\"Polinesia Francesa\"'),(184,'\"Polonia\"'),(185,'\"Portugal\"'),(186,'\"Puerto Rico\"'),(187,'\"Qatar\"'),(188,'\"Reino Unido\"'),(189,'\"República Centroafricana\"'),(190,'\"República Checa\"'),(191,'\"República Dominicana\"'),(192,'\"Reunión\"'),(193,'\"Ruanda\"'),(194,'\"Rumanía\"'),(195,'\"Rusia\"'),(196,'\"Sahara Occidental\"'),(197,'\"Samoa\"'),(198,'\"Samoa Americana\"'),(199,'\"San Bartolomé\"'),(200,'\"San Cristóbal y Nieves\"'),(201,'\"San Marino\"'),(202,'\"San Martín (Francia)\"'),(203,'\"San Pedro y Miquelón\"'),(204,'\"San Vicente y las Granadinas\"'),(205,'\"Santa Elena\"'),(206,'\"Santa Lucía\"'),(207,'\"Santo Tomé y Príncipe\"'),(208,'\"Senegal\"'),(209,'\"Serbia\"'),(210,'\"Seychelles\"'),(211,'\"Sierra Leona\"'),(212,'\"Singapur\"'),(213,'\"Siria\"'),(214,'\"Somalia\"'),(215,'\"Sri lanka\"'),(216,'\"Sudáfrica\"'),(217,'\"Sudán\"'),(218,'\"Suecia\"'),(219,'\"Suiza\"'),(220,'\"Surinám\"'),(221,'\"Svalbard y Jan Mayen\"'),(222,'\"Swazilandia\"'),(223,'\"Tadjikistán\"'),(224,'\"Tailandia\"'),(225,'\"Taiwán\"'),(226,'\"Tanzania\"'),(227,'\"Timor Oriental\"'),(228,'\"Togo\"'),(229,'\"Tokelau\"'),(230,'\"Tonga\"'),(231,'\"Trinidad y Tobago\"'),(232,'\"Tunez\"'),(233,'\"Turkmenistán\"'),(234,'\"Turquía\"'),(235,'\"Tuvalu\"'),(236,'\"Ucrania\"'),(237,'\"Uganda\"'),(238,'\"Uruguay\"'),(239,'\"Uzbekistán\"'),(240,'\"Vanuatu\"'),(241,'\"Venezuela\"'),(242,'\"Vietnam\"'),(243,'\"Wallis y Futuna\"'),(244,'\"Yemen\"'),(245,'\"Yibuti\"'),(246,'\"Zambia\"'),(247,'\"Zimbabue\"');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-09 20:00:22
