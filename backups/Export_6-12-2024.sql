-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: project_dev_bd
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `idDepartment` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idDepartment` (`idDepartment`),
  KEY `idx_name` (`name`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`idDepartment`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Pasto',2,'2024-09-12 09:20:00','2024-09-12 09:20:00'),(2,'Mocoa',1,'2024-09-12 09:20:00','2024-09-12 09:20:00'),(3,'Villagarzon',1,'2024-09-12 09:20:00','2024-09-12 09:20:00'),(4,'Medellin',4,'2024-09-12 09:22:00','2024-09-12 09:22:00'),(5,'Neiva',3,'2024-09-12 09:22:00','2024-09-12 09:22:00'),(6,'Miami',6,'2024-09-12 09:23:00','2024-09-12 09:23:00'),(7,'Sao Paulo',7,'2024-09-12 09:23:00','2024-09-12 09:23:00'),(8,'Guayaquil',8,'2024-09-12 09:24:00','2024-09-12 09:24:00'),(9,'Barcelona',5,'2024-09-12 09:24:00','2024-09-12 09:24:00');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Colombia','2024-09-12 09:05:00','2024-09-12 09:05:00'),(2,'Brasil','2024-09-12 09:06:00','2024-09-12 09:06:00'),(3,'Ecuador','2024-09-12 09:07:00','2024-09-12 09:07:00'),(4,'Estados Unidos','2024-09-12 09:08:00','2024-09-12 09:08:00'),(5,'España','2024-09-12 09:09:00','2024-09-12 09:09:00');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `idCountry` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idCountry` (`idCountry`),
  CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`idCountry`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Putumayo',1,'2024-09-12 09:10:00','2024-09-12 09:10:00'),(2,'Nariño',1,'2024-09-12 09:10:00','2024-09-12 09:10:00'),(3,'Huila',1,'2024-09-12 09:10:00','2024-09-12 09:10:00'),(4,'Antioquia',1,'2024-09-12 09:10:00','2024-09-12 09:10:00'),(5,'Cataluña',5,'2024-09-12 09:11:00','2024-09-12 09:11:00'),(6,'Florida',4,'2024-09-12 09:11:00','2024-09-12 09:11:00'),(7,'Sao Paulo',2,'2024-09-12 09:12:00','2024-09-12 09:12:00'),(8,'Guayas',3,'2024-09-12 09:12:00','2024-09-12 09:12:00'),(9,'California',4,'2024-12-06 16:47:49','2024-12-06 16:47:49'),(10,'Texas',4,'2024-12-06 17:05:46','2024-12-06 17:05:46');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `afterDepartmentInsert` AFTER INSERT ON `departments` FOR EACH ROW BEGIN
	INSERT INTO departmentsAudit (`name`, idCountry, createdAt, actionTime)
    VALUES (NEW.`name`, NEW.idCountry, NEW.createdAt, NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `departmentsandtheircitiesview`
--

DROP TABLE IF EXISTS `departmentsandtheircitiesview`;
/*!50001 DROP VIEW IF EXISTS `departmentsandtheircitiesview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `departmentsandtheircitiesview` AS SELECT 
 1 AS `department`,
 1 AS `city`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `departmentsaudit`
--

DROP TABLE IF EXISTS `departmentsaudit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departmentsaudit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `idCountry` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `actionTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departmentsaudit`
--

LOCK TABLES `departmentsaudit` WRITE;
/*!40000 ALTER TABLE `departmentsaudit` DISABLE KEYS */;
INSERT INTO `departmentsaudit` VALUES (1,'California',4,'2024-12-06 16:47:50','2024-12-06 16:47:50'),(2,'Texas',4,'2024-12-06 17:05:46','2024-12-06 17:05:46');
/*!40000 ALTER TABLE `departmentsaudit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documenttypes`
--

DROP TABLE IF EXISTS `documenttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documenttypes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documenttypes`
--

LOCK TABLES `documenttypes` WRITE;
/*!40000 ALTER TABLE `documenttypes` DISABLE KEYS */;
INSERT INTO `documenttypes` VALUES (1,'CC','2024-11-30 21:28:08','2024-11-30 21:28:08'),(2,'CE','2024-11-30 21:28:08','2024-11-30 21:28:08'),(3,'PP','2024-11-30 21:28:08','2024-11-30 21:28:08');
/*!40000 ALTER TABLE `documenttypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoicedetails`
--

DROP TABLE IF EXISTS `invoicedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoicedetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idInvoice` int NOT NULL,
  `idProduct` int NOT NULL,
  `quantity` int NOT NULL,
  `unitPrice` decimal(10,2) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idInvoice` (`idInvoice`),
  KEY `idProduct` (`idProduct`),
  CONSTRAINT `invoicedetails_ibfk_1` FOREIGN KEY (`idInvoice`) REFERENCES `invoices` (`id`),
  CONSTRAINT `invoicedetails_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoicedetails`
--

LOCK TABLES `invoicedetails` WRITE;
/*!40000 ALTER TABLE `invoicedetails` DISABLE KEYS */;
INSERT INTO `invoicedetails` VALUES (1,1,3,7,5000.00,'2024-11-30 21:28:09','2024-11-30 21:28:09'),(2,1,5,10,8000.00,'2024-11-30 21:28:09','2024-11-30 21:28:09'),(3,3,1,12,10000.00,'2024-11-30 21:28:09','2024-11-30 21:28:09'),(4,3,8,4,5000.00,'2024-11-30 21:28:09','2024-11-30 21:28:09'),(5,3,10,5,8000.00,'2024-11-30 21:28:09','2024-11-30 21:28:09'),(6,2,5,15,8000.00,'2024-11-30 21:28:09','2024-11-30 21:28:09');
/*!40000 ALTER TABLE `invoicedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idCustomer` int DEFAULT NULL,
  `idSeller` int NOT NULL,
  `invoiceDate` datetime NOT NULL,
  `totalAmount` decimal(10,2) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idCustomer` (`idCustomer`),
  KEY `idSeller` (`idSeller`),
  CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`idCustomer`) REFERENCES `users` (`id`),
  CONSTRAINT `invoices_ibfk_2` FOREIGN KEY (`idSeller`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1,NULL,5,'2024-11-30 21:28:09',57500.00,'2024-11-30 21:28:09','2024-11-30 21:28:09'),(2,NULL,5,'2024-11-30 21:28:09',125200.00,'2024-11-30 21:28:09','2024-11-30 21:28:09'),(3,NULL,5,'2024-11-30 21:28:09',210000.00,'2024-11-30 21:28:09','2024-11-30 21:28:09');
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parameters`
--

DROP TABLE IF EXISTS `parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parameters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parameters`
--

LOCK TABLES `parameters` WRITE;
/*!40000 ALTER TABLE `parameters` DISABLE KEYS */;
/*!40000 ALTER TABLE `parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentgateawayrecords`
--

DROP TABLE IF EXISTS `paymentgateawayrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymentgateawayrecords` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idInvoice` int NOT NULL,
  `idPayment` int NOT NULL,
  `dataResponse` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idInvoice` (`idInvoice`),
  KEY `idPayment` (`idPayment`),
  CONSTRAINT `paymentgateawayrecords_ibfk_1` FOREIGN KEY (`idInvoice`) REFERENCES `invoices` (`id`),
  CONSTRAINT `paymentgateawayrecords_ibfk_2` FOREIGN KEY (`idPayment`) REFERENCES `payments` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentgateawayrecords`
--

LOCK TABLES `paymentgateawayrecords` WRITE;
/*!40000 ALTER TABLE `paymentgateawayrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `paymentgateawayrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentgateaways`
--

DROP TABLE IF EXISTS `paymentgateaways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymentgateaways` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idPaymentMethod` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idPaymentMethod` (`idPaymentMethod`),
  CONSTRAINT `paymentgateaways_ibfk_1` FOREIGN KEY (`idPaymentMethod`) REFERENCES `paymentmethods` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentgateaways`
--

LOCK TABLES `paymentgateaways` WRITE;
/*!40000 ALTER TABLE `paymentgateaways` DISABLE KEYS */;
/*!40000 ALTER TABLE `paymentgateaways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentgateawaysstores`
--

DROP TABLE IF EXISTS `paymentgateawaysstores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymentgateawaysstores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idStore` int NOT NULL,
  `idPaymentGateaway` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idStore` (`idStore`),
  KEY `idPaymentGateaway` (`idPaymentGateaway`),
  CONSTRAINT `paymentgateawaysstores_ibfk_1` FOREIGN KEY (`idStore`) REFERENCES `stores` (`id`),
  CONSTRAINT `paymentgateawaysstores_ibfk_2` FOREIGN KEY (`idPaymentGateaway`) REFERENCES `paymentgateaways` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentgateawaysstores`
--

LOCK TABLES `paymentgateawaysstores` WRITE;
/*!40000 ALTER TABLE `paymentgateawaysstores` DISABLE KEYS */;
/*!40000 ALTER TABLE `paymentgateawaysstores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentgateawaysstoresparameters`
--

DROP TABLE IF EXISTS `paymentgateawaysstoresparameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymentgateawaysstoresparameters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idParameter` int NOT NULL,
  `idPaymentGateawayStore` int NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idParameter` (`idParameter`),
  KEY `idPaymentGateawayStore` (`idPaymentGateawayStore`),
  CONSTRAINT `paymentgateawaysstoresparameters_ibfk_1` FOREIGN KEY (`idParameter`) REFERENCES `parameters` (`id`),
  CONSTRAINT `paymentgateawaysstoresparameters_ibfk_2` FOREIGN KEY (`idPaymentGateawayStore`) REFERENCES `paymentgateawaysstores` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentgateawaysstoresparameters`
--

LOCK TABLES `paymentgateawaysstoresparameters` WRITE;
/*!40000 ALTER TABLE `paymentgateawaysstoresparameters` DISABLE KEYS */;
/*!40000 ALTER TABLE `paymentgateawaysstoresparameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentmethods`
--

DROP TABLE IF EXISTS `paymentmethods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymentmethods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentmethods`
--

LOCK TABLES `paymentmethods` WRITE;
/*!40000 ALTER TABLE `paymentmethods` DISABLE KEYS */;
/*!40000 ALTER TABLE `paymentmethods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idInvoice` int NOT NULL,
  `idPaymentMethod` int NOT NULL,
  `paymentDate` datetime NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `idPaymentGateawaysStore` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idInvoice` (`idInvoice`),
  KEY `idPaymentMethod` (`idPaymentMethod`),
  KEY `idPaymentGateawaysStore` (`idPaymentGateawaysStore`),
  CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`idInvoice`) REFERENCES `invoices` (`id`),
  CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`idPaymentMethod`) REFERENCES `paymentmethods` (`id`),
  CONSTRAINT `payments_ibfk_3` FOREIGN KEY (`idPaymentGateawaysStore`) REFERENCES `paymentgateawaysstores` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idUser` int DEFAULT NULL,
  `idDocumentType` int NOT NULL,
  `document` varchar(255) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `paternalSurname` varchar(255) DEFAULT NULL,
  `maternalSurname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `document` (`document`),
  UNIQUE KEY `idUser` (`idUser`),
  KEY `idDocumentType` (`idDocumentType`),
  CONSTRAINT `people_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`),
  CONSTRAINT `people_ibfk_2` FOREIGN KEY (`idDocumentType`) REFERENCES `documenttypes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (1,1,1,'1006945725','Michael','Alejandro','Riascos','Fernández','Calle 123, Zona 4','michael.riascos@gmail.com','3136541230','2024-09-18 07:15:00','2024-09-18 07:15:00'),(2,2,1,'1007462351','María','Fernanda','García','Pérez','Av. Principal 456, Zona 2','maria.garcia@hotmail.com','3207891230','2024-09-18 07:15:00','2024-09-18 07:15:00'),(3,3,1,'1127037425','Andres','Camilo','Murcia','Acosta','Calle 5, Zona Industrial','contacto@abc.com','4561237','2024-09-18 07:20:00','2024-09-18 07:20:00'),(4,4,1,'27358885','Ximena','Alejandra','Acosta','Lopez','Avenida Tecnológica 8, Centro','ventas@surtifami.com','4234567','2024-09-18 07:20:00','2024-09-18 07:20:00'),(5,5,1,'69472692','Juan','Antonio','Pérez','García','Calle Principal 123, Ciudad','juan.perez@gmail.com','555-123-4567','2024-10-08 07:20:00','2024-10-08 07:20:00'),(6,6,1,'1124843207','María','Isabel','López','Rodríguez','Avenida Central 456, Pueblo','maria.lopez@hotmail.com','555-987-6543','2024-10-08 07:20:00','2024-10-08 07:20:00');
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peoplecity`
--

DROP TABLE IF EXISTS `peoplecity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peoplecity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idPerson` int NOT NULL,
  `idCity` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idPerson` (`idPerson`),
  KEY `idCity` (`idCity`),
  CONSTRAINT `peoplecity_ibfk_1` FOREIGN KEY (`idPerson`) REFERENCES `people` (`id`),
  CONSTRAINT `peoplecity_ibfk_2` FOREIGN KEY (`idCity`) REFERENCES `cities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peoplecity`
--

LOCK TABLES `peoplecity` WRITE;
/*!40000 ALTER TABLE `peoplecity` DISABLE KEYS */;
INSERT INTO `peoplecity` VALUES (1,3,7,'2024-09-27 08:21:00','2024-09-27 08:21:00'),(2,1,8,'2024-09-27 08:22:00','2024-09-27 08:22:00'),(3,4,2,'2024-09-27 08:23:00','2024-09-27 08:23:00'),(4,4,5,'2024-09-27 08:24:00','2024-09-27 08:24:00'),(5,2,4,'2024-09-27 08:25:00','2024-09-27 08:25:00'),(6,5,3,'2024-09-27 08:25:00','2024-09-27 08:25:00'),(7,6,2,'2024-09-27 08:25:00','2024-09-27 08:25:00');
/*!40000 ALTER TABLE `peoplecity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `peoplecityview`
--

DROP TABLE IF EXISTS `peoplecityview`;
/*!50001 DROP VIEW IF EXISTS `peoplecityview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `peoplecityview` AS SELECT 
 1 AS `firstName`,
 1 AS `middleName`,
 1 AS `paternalSurname`,
 1 AS `maternalSurname`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `idCategory` int NOT NULL,
  `idSupplier` int NOT NULL,
  `currentStock` int NOT NULL,
  `minimumStock` int NOT NULL,
  `unitPrice` decimal(10,2) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idCategory` (`idCategory`),
  KEY `idSupplier` (`idSupplier`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`idCategory`) REFERENCES `productscategories` (`id`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`idSupplier`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Carne de res','kilo',1,3,30,8,10000.00,'2024-09-18 07:21:00','2024-09-18 07:21:00'),(2,'Carne de cerdo','kilo',1,3,6,8,15000.00,'2024-09-18 07:21:00','2024-09-18 07:21:00'),(3,'Leche','Litro',3,4,28,5,5000.00,'2024-09-18 07:25:00','2024-09-18 07:25:00'),(4,'Arroz Roa','kilo',2,1,48,5,11000.00,'2024-09-18 07:25:00','2024-09-18 07:25:00'),(5,'Queso crema','Tarro',3,2,35,5,8000.00,'2024-09-18 07:30:00','2024-09-18 07:30:00'),(6,'Lenteja','kilo',2,1,39,5,9000.00,'2024-09-18 07:30:00','2024-09-18 07:30:00'),(7,'Papas fritas','Paquete',4,4,3,5,3000.00,'2024-09-18 07:52:00','2024-09-18 07:52:00'),(8,'Jabon de manos','Tarro',5,2,18,5,5000.00,'2024-09-18 07:52:00','2024-09-18 07:52:00'),(9,'Chocolatina Jumbo Grande','Unidad',4,2,10,5,2000.00,'2024-09-18 08:00:00','2024-09-18 08:00:00'),(10,'Detergente fab','Bolsa grande',5,4,13,5,8000.00,'2024-09-18 08:00:00','2024-09-18 08:00:00');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productscategories`
--

DROP TABLE IF EXISTS `productscategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productscategories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productscategories`
--

LOCK TABLES `productscategories` WRITE;
/*!40000 ALTER TABLE `productscategories` DISABLE KEYS */;
INSERT INTO `productscategories` VALUES (1,'Carnico','Categoria carnes','2024-09-12 09:45:00','2024-09-12 09:45:00'),(2,'Grano','Categoria granos','2024-09-12 09:45:00','2024-09-12 09:45:00'),(3,'Lacteo','Categoria lacteos','2024-09-12 09:50:00','2024-09-12 09:50:00'),(4,'Mecato','Categoria Mecato','2024-09-12 09:50:00','2024-09-12 09:50:00'),(5,'Aseo','Categoria Aseo','2024-09-12 10:00:00','2024-09-12 10:00:00');
/*!40000 ALTER TABLE `productscategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `productswithcategoryandsupplierview`
--

DROP TABLE IF EXISTS `productswithcategoryandsupplierview`;
/*!50001 DROP VIEW IF EXISTS `productswithcategoryandsupplierview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `productswithcategoryandsupplierview` AS SELECT 
 1 AS `productName`,
 1 AS `category`,
 1 AS `supplierFullName`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `purchaseorderdetails`
--

DROP TABLE IF EXISTS `purchaseorderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchaseorderdetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idPurchaseOrder` int NOT NULL,
  `idProduct` int NOT NULL,
  `quantity` int NOT NULL,
  `unitPrice` decimal(10,2) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idPurchaseOrder` (`idPurchaseOrder`),
  KEY `idProduct` (`idProduct`),
  CONSTRAINT `purchaseorderdetails_ibfk_1` FOREIGN KEY (`idPurchaseOrder`) REFERENCES `purchaseorders` (`id`),
  CONSTRAINT `purchaseorderdetails_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseorderdetails`
--

LOCK TABLES `purchaseorderdetails` WRITE;
/*!40000 ALTER TABLE `purchaseorderdetails` DISABLE KEYS */;
INSERT INTO `purchaseorderdetails` VALUES (1,1,2,12,12500.00,'2024-09-18 11:22:00','2024-09-18 11:22:00'),(2,1,4,10,6000.00,'2024-09-18 11:22:00','2024-09-18 11:22:00'),(3,1,7,8,5000.00,'2024-09-18 11:22:00','2024-09-18 11:22:00'),(4,3,5,40,7050.00,'2024-09-18 11:25:00','2024-09-18 11:25:00'),(5,2,10,16,7000.00,'2024-09-18 11:30:00','2024-09-18 11:30:00'),(6,2,3,12,4000.00,'2024-09-18 11:30:00','2024-09-18 11:30:00');
/*!40000 ALTER TABLE `purchaseorderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaseorders`
--

DROP TABLE IF EXISTS `purchaseorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchaseorders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idSupplier` int NOT NULL,
  `orderDate` datetime NOT NULL,
  `idStatus` int NOT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idSupplier` (`idSupplier`),
  KEY `idStatus` (`idStatus`),
  CONSTRAINT `purchaseorders_ibfk_1` FOREIGN KEY (`idSupplier`) REFERENCES `users` (`id`),
  CONSTRAINT `purchaseorders_ibfk_2` FOREIGN KEY (`idStatus`) REFERENCES `purchaseorderstatus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseorders`
--

LOCK TABLES `purchaseorders` WRITE;
/*!40000 ALTER TABLE `purchaseorders` DISABLE KEYS */;
INSERT INTO `purchaseorders` VALUES (1,3,'2024-08-18 10:32:00',3,250000.00,'2024-08-18 10:32:00','2024-08-18 10:32:00'),(2,1,'2024-09-18 10:49:00',2,160000.00,'2024-09-18 10:49:00','2024-09-18 10:49:00'),(3,4,'2024-09-19 11:07:00',1,282000.00,'2024-09-19 11:07:00','2024-09-19 11:07:00');
/*!40000 ALTER TABLE `purchaseorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `purchaseordersandtheirstatusview`
--

DROP TABLE IF EXISTS `purchaseordersandtheirstatusview`;
/*!50001 DROP VIEW IF EXISTS `purchaseordersandtheirstatusview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `purchaseordersandtheirstatusview` AS SELECT 
 1 AS `purchaseOrderId`,
 1 AS `orderDate`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `purchaseorderstatus`
--

DROP TABLE IF EXISTS `purchaseorderstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchaseorderstatus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseorderstatus`
--

LOCK TABLES `purchaseorderstatus` WRITE;
/*!40000 ALTER TABLE `purchaseorderstatus` DISABLE KEYS */;
INSERT INTO `purchaseorderstatus` VALUES (1,'Cancelada','2024-09-27 08:00:00','2024-09-27 08:00:00'),(2,'Pendiente','2024-09-27 08:01:00','2024-09-27 08:01:00'),(3,'Procesada','2024-09-27 08:02:00','2024-09-27 08:02:00');
/*!40000 ALTER TABLE `purchaseorderstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrador','2024-11-30 21:28:09','2024-11-30 21:28:09'),(2,'Cajero','2024-11-30 21:28:09','2024-11-30 21:28:09'),(3,'Bodeguero','2024-11-30 21:28:09','2024-11-30 21:28:09'),(4,'Proveedor','2024-11-30 21:28:09','2024-11-30 21:28:09'),(5,'Cliente','2024-11-30 21:28:09','2024-11-30 21:28:09');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeproducts`
--

DROP TABLE IF EXISTS `storeproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storeproducts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idStore` int NOT NULL,
  `idProduct` int NOT NULL,
  `stock` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idStore` (`idStore`),
  KEY `idProduct` (`idProduct`),
  CONSTRAINT `storeproducts_ibfk_1` FOREIGN KEY (`idStore`) REFERENCES `stores` (`id`),
  CONSTRAINT `storeproducts_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeproducts`
--

LOCK TABLES `storeproducts` WRITE;
/*!40000 ALTER TABLE `storeproducts` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeproducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `nit` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nit` (`nit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'michael.riascos@gmail.com','password12','2024-10-08 07:30:00','2024-10-08 07:30:00'),(2,'maria.garcia@hotmail.com','password1200','2024-10-08 07:30:00','2024-10-08 07:30:00'),(3,'contacto@abc.com','password1234','2024-10-08 07:30:00','2024-10-08 07:30:00'),(4,'ventas@surtifami.com','password1235','2024-10-08 07:30:00','2024-10-08 07:30:00'),(5,'juan.perez@gmail.com','password123','2024-10-08 07:30:00','2024-10-08 07:30:00'),(6,'maria.lopez@hotmail.com','securepass456','2024-10-08 07:32:00','2024-10-08 07:32:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersroles`
--

DROP TABLE IF EXISTS `usersroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usersroles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idUser` int NOT NULL,
  `idRole` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idUser` (`idUser`),
  KEY `idRole` (`idRole`),
  CONSTRAINT `usersroles_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`),
  CONSTRAINT `usersroles_ibfk_2` FOREIGN KEY (`idRole`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersroles`
--

LOCK TABLES `usersroles` WRITE;
/*!40000 ALTER TABLE `usersroles` DISABLE KEYS */;
INSERT INTO `usersroles` VALUES (1,1,4,'2024-11-30 21:28:09','2024-11-30 21:28:09'),(2,2,4,'2024-11-30 21:28:09','2024-11-30 21:28:09'),(3,3,4,'2024-11-30 21:28:09','2024-11-30 21:28:09'),(4,4,4,'2024-11-30 21:28:09','2024-11-30 21:28:09'),(5,5,2,'2024-11-30 21:28:09','2024-11-30 21:28:09'),(6,6,1,'2024-11-30 21:28:09','2024-11-30 21:28:09');
/*!40000 ALTER TABLE `usersroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'project_dev_bd'
--

--
-- Dumping routines for database 'project_dev_bd'
--
/*!50003 DROP PROCEDURE IF EXISTS `getUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getUsers`(IN idUser INT)
BEGIN
	SELECT * FROM users WHERE id = idUser;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertDepartmentsAndAudit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertDepartmentsAndAudit`(
	IN newName VARCHAR(255),
    IN newIdCountry INT
)
BEGIN
	-- Insertar nuevo departamento
    INSERT INTO departments(`name`, idCountry, createdAt, updatedAt)
    VALUES (newName, newIdCountry, NOW(), NOW());
    
    -- Insertar auditoria de la insercion
    INSERT INTO departmentsAudit(`name`, idCountry, createdAt, actionTime)
    VALUES (newName, newIdCountry, NOW(), NOW());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `departmentsandtheircitiesview`
--

/*!50001 DROP VIEW IF EXISTS `departmentsandtheircitiesview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `departmentsandtheircitiesview` AS select `d`.`name` AS `department`,`c`.`name` AS `city` from (`departments` `d` left join `cities` `c` on((`c`.`idDepartment` = `d`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `peoplecityview`
--

/*!50001 DROP VIEW IF EXISTS `peoplecityview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `peoplecityview` AS select `people`.`firstName` AS `firstName`,`people`.`middleName` AS `middleName`,`people`.`paternalSurname` AS `paternalSurname`,`people`.`maternalSurname` AS `maternalSurname` from `people` where `people`.`id` in (select `peoplecity`.`idPerson` from `peoplecity` where `peoplecity`.`idCity` in (select `cities`.`id` from `cities` where (`cities`.`name` = 'Mocoa'))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `productswithcategoryandsupplierview`
--

/*!50001 DROP VIEW IF EXISTS `productswithcategoryandsupplierview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `productswithcategoryandsupplierview` AS select `pd`.`name` AS `productName`,`pc`.`name` AS `category`,concat_ws(' ',`p`.`firstName`,`p`.`middleName`,`p`.`paternalSurname`,`p`.`maternalSurname`) AS `supplierFullName` from (((`products` `pd` join `productscategories` `pc` on((`pd`.`idCategory` = `pc`.`id`))) join `users` `u` on((`pd`.`idSupplier` = `u`.`id`))) join `people` `p` on((`u`.`id` = `p`.`idUser`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `purchaseordersandtheirstatusview`
--

/*!50001 DROP VIEW IF EXISTS `purchaseordersandtheirstatusview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `purchaseordersandtheirstatusview` AS select `po`.`id` AS `purchaseOrderId`,`po`.`orderDate` AS `orderDate`,`pos`.`status` AS `status` from (`purchaseorders` `po` left join `purchaseorderstatus` `pos` on((`po`.`idStatus` = `pos`.`id`))) */;
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

-- Dump completed on 2024-12-06 19:57:33
