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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `idCategory` int NOT NULL AUTO_INCREMENT,
  `category` varchar(50) NOT NULL,
  `description` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idCategory`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Carnico','Categoria carnes','2024-09-12 09:45:00','2024-09-12 09:45:00'),(2,'Grano','Categoria granos','2024-09-12 09:45:00','2024-09-12 09:45:00'),(3,'Lacteo','Categoria lacteos','2024-09-12 09:50:00','2024-09-12 09:50:00'),(4,'Mecato','Categoria Mecato','2024-09-12 09:50:00','2024-09-12 09:50:00'),(5,'Aseo','Categoria Aseo','2024-09-12 10:00:00','2024-09-12 10:00:00');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `idCity` int NOT NULL AUTO_INCREMENT,
  `city` varchar(50) NOT NULL,
  `idDepartment` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idCity`),
  KEY `idDepartment` (`idDepartment`),
  CONSTRAINT `city_ibfk_1` FOREIGN KEY (`idDepartment`) REFERENCES `department` (`idDepartment`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Pasto',2,'2024-09-12 09:20:00','2024-09-12 09:20:00'),(2,'Mocoa',1,'2024-09-12 09:20:00','2024-09-12 09:20:00'),(3,'Villagarzon',1,'2024-09-12 09:20:00','2024-09-12 09:20:00'),(4,'Medellin',4,'2024-09-12 09:22:00','2024-09-12 09:22:00'),(5,'Neiva',3,'2024-09-12 09:22:00','2024-09-12 09:22:00'),(6,'Miami',6,'2024-09-12 09:23:00','2024-09-12 09:23:00'),(7,'Sao Paulo',7,'2024-09-12 09:23:00','2024-09-12 09:23:00'),(8,'Guayaquil',8,'2024-09-12 09:24:00','2024-09-12 09:24:00'),(9,'Barcelona',5,'2024-09-12 09:24:00','2024-09-12 09:24:00');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `idCountry` int NOT NULL AUTO_INCREMENT,
  `country` varchar(50) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idCountry`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Colombia','2024-09-12 09:05:00','2024-09-12 09:05:00'),(2,'Brasil','2024-09-12 09:06:00','2024-09-12 09:06:00'),(3,'Ecuador','2024-09-12 09:07:00','2024-09-12 09:07:00'),(4,'Estados Unidos','2024-09-12 09:08:00','2024-09-12 09:08:00'),(5,'España','2024-09-12 09:09:00','2024-09-12 09:09:00');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `idDepartment` int NOT NULL AUTO_INCREMENT,
  `department` varchar(40) NOT NULL,
  `idCountry` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idDepartment`),
  KEY `idCountry` (`idCountry`),
  CONSTRAINT `department_ibfk_1` FOREIGN KEY (`idCountry`) REFERENCES `country` (`idCountry`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Putumayo',1,'2024-09-12 09:10:00','2024-09-12 09:10:00'),(2,'Nariño',1,'2024-09-12 09:10:00','2024-09-12 09:10:00'),(3,'Huila',1,'2024-09-12 09:10:00','2024-09-12 09:10:00'),(4,'Antioquia',1,'2024-09-12 09:10:00','2024-09-12 09:10:00'),(5,'Cataluña',5,'2024-09-12 09:11:00','2024-09-12 09:11:00'),(6,'Florida',4,'2024-09-12 09:11:00','2024-09-12 09:11:00'),(7,'Sao Paulo',2,'2024-09-12 09:12:00','2024-09-12 09:12:00'),(8,'Guayas',3,'2024-09-12 09:12:00','2024-09-12 09:12:00');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `idProduct` int NOT NULL AUTO_INCREMENT,
  `product` varchar(50) NOT NULL,
  `description` text,
  `idCategory` int NOT NULL,
  `idSupplier` int NOT NULL,
  `currentStock` int NOT NULL,
  `minimumStock` int NOT NULL,
  `unitPrice` decimal(10,2) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idProduct`),
  KEY `idCategory` (`idCategory`),
  KEY `idSupplier` (`idSupplier`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`idCategory`) REFERENCES `category` (`idCategory`),
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`idSupplier`) REFERENCES `supplier` (`idSupplier`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Carne de res','kilo',1,3,30,8,10000.00,'2024-09-18 07:21:00','2024-09-18 07:21:00'),(2,'Carne de cerdo','kilo',1,3,6,8,15000.00,'2024-09-18 07:21:00','2024-09-18 07:21:00'),(3,'Leche','Litro',3,4,28,5,5000.00,'2024-09-18 07:25:00','2024-09-18 07:25:00'),(4,'Arroz Roa','kilo',2,1,48,5,11000.00,'2024-09-18 07:25:00','2024-09-18 07:25:00'),(5,'Queso crema','Tarro',3,2,35,5,8000.00,'2024-09-18 07:30:00','2024-09-18 07:30:00'),(6,'Lenteja','kilo',2,1,39,5,9000.00,'2024-09-18 07:30:00','2024-09-18 07:30:00'),(7,'Papas fritas','Paquete',4,4,3,5,3000.00,'2024-09-18 07:52:00','2024-09-18 07:52:00'),(8,'Jabon de manos','Tarro',5,2,18,5,5000.00,'2024-09-18 07:52:00','2024-09-18 07:52:00'),(9,'Chocolatina Jumbo Grande','Unidad',4,2,10,5,2000.00,'2024-09-18 08:00:00','2024-09-18 08:00:00'),(10,'Detergente fab','Bolsa grande',5,4,13,5,8000.00,'2024-09-18 08:00:00','2024-09-18 08:00:00');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaseorder`
--

DROP TABLE IF EXISTS `purchaseorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchaseorder` (
  `idPurchaseOrder` int NOT NULL AUTO_INCREMENT,
  `idSupplier` int NOT NULL,
  `orderDate` datetime NOT NULL,
  `idStatus` int NOT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idPurchaseOrder`),
  KEY `idSupplier` (`idSupplier`),
  KEY `idStatus` (`idStatus`),
  CONSTRAINT `purchaseorder_ibfk_1` FOREIGN KEY (`idSupplier`) REFERENCES `supplier` (`idSupplier`),
  CONSTRAINT `purchaseorder_ibfk_2` FOREIGN KEY (`idStatus`) REFERENCES `purchaseorderstatus` (`idPurchaseOrderStatus`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseorder`
--

LOCK TABLES `purchaseorder` WRITE;
/*!40000 ALTER TABLE `purchaseorder` DISABLE KEYS */;
INSERT INTO `purchaseorder` VALUES (1,3,'2024-08-18 10:32:00',3,250000.00,'2024-08-18 10:32:00','2024-08-18 10:32:00'),(2,1,'2024-09-18 10:49:00',2,160000.00,'2024-09-18 10:49:00','2024-09-18 10:49:00'),(3,4,'2024-09-19 11:07:00',1,282000.00,'2024-09-19 11:07:00','2024-09-19 11:07:00');
/*!40000 ALTER TABLE `purchaseorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaseorderdetail`
--

DROP TABLE IF EXISTS `purchaseorderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchaseorderdetail` (
  `idPurchaseOrderDetail` int NOT NULL AUTO_INCREMENT,
  `idPurchaseOrder` int NOT NULL,
  `idProduct` int NOT NULL,
  `quantity` int NOT NULL,
  `unitPrice` decimal(10,2) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idPurchaseOrderDetail`),
  KEY `idPurchaseOrder` (`idPurchaseOrder`),
  KEY `idProduct` (`idProduct`),
  CONSTRAINT `purchaseorderdetail_ibfk_1` FOREIGN KEY (`idPurchaseOrder`) REFERENCES `purchaseorder` (`idPurchaseOrder`),
  CONSTRAINT `purchaseorderdetail_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `product` (`idProduct`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseorderdetail`
--

LOCK TABLES `purchaseorderdetail` WRITE;
/*!40000 ALTER TABLE `purchaseorderdetail` DISABLE KEYS */;
INSERT INTO `purchaseorderdetail` VALUES (1,1,2,12,12500.00,'2024-09-18 11:22:00','2024-09-18 11:22:00'),(2,1,4,10,6000.00,'2024-09-18 11:22:00','2024-09-18 11:22:00'),(3,1,7,8,5000.00,'2024-09-18 11:22:00','2024-09-18 11:22:00'),(4,3,5,40,7050.00,'2024-09-18 11:25:00','2024-09-18 11:25:00'),(5,2,10,16,7000.00,'2024-09-18 11:30:00','2024-09-18 11:30:00'),(6,2,3,12,4000.00,'2024-09-18 11:30:00','2024-09-18 11:30:00');
/*!40000 ALTER TABLE `purchaseorderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaseorderstatus`
--

DROP TABLE IF EXISTS `purchaseorderstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchaseorderstatus` (
  `idPurchaseOrderStatus` int NOT NULL AUTO_INCREMENT,
  `status` varchar(20) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idPurchaseOrderStatus`)
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
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `idSupplier` int NOT NULL AUTO_INCREMENT,
  `names` varchar(40) DEFAULT NULL,
  `paternalSurname` varchar(30) DEFAULT NULL,
  `maternalSurname` varchar(30) DEFAULT NULL,
  `companyName` varchar(50) DEFAULT NULL,
  `nit` varchar(15) DEFAULT NULL,
  `address` varchar(80) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `phone` varchar(12) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idSupplier`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Michael Alejandro','Riascos','Fernández',NULL,NULL,'Calle 123, Zona 4','michael.riascos@gmail.com','3136541230','2024-09-18 07:15:00','2024-09-18 07:15:00'),(2,'María Fernanda','García','Pérez',NULL,NULL,'Av. Principal 456, Zona 2','maria.garcia@hotmail.com','3207891230','2024-09-18 07:15:00','2024-09-18 07:15:00'),(3,NULL,NULL,NULL,'Suministros ABC','8009001001','Calle 5, Zona Industrial','contacto@abc.com','4561237','2024-09-18 07:20:00','2024-09-18 07:20:00'),(4,NULL,NULL,NULL,'SurtiFami','8012003004','Avenida Tecnológica 8, Centro','ventas@surtifami.com','4234567','2024-09-18 07:20:00','2024-09-18 07:20:00');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliercity`
--

DROP TABLE IF EXISTS `suppliercity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliercity` (
  `idSupplierCity` int NOT NULL AUTO_INCREMENT,
  `idSupplier` int NOT NULL,
  `idCity` int NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`idSupplierCity`),
  KEY `idSupplier` (`idSupplier`),
  KEY `idCity` (`idCity`),
  CONSTRAINT `suppliercity_ibfk_1` FOREIGN KEY (`idSupplier`) REFERENCES `supplier` (`idSupplier`),
  CONSTRAINT `suppliercity_ibfk_2` FOREIGN KEY (`idCity`) REFERENCES `city` (`idCity`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliercity`
--

LOCK TABLES `suppliercity` WRITE;
/*!40000 ALTER TABLE `suppliercity` DISABLE KEYS */;
INSERT INTO `suppliercity` VALUES (1,3,7,'2024-09-27 08:21:00','2024-09-27 08:21:00'),(2,1,8,'2024-09-27 08:22:00','2024-09-27 08:22:00'),(3,4,2,'2024-09-27 08:23:00','2024-09-27 08:23:00'),(4,4,5,'2024-09-27 08:24:00','2024-09-27 08:24:00'),(5,2,4,'2024-09-27 08:25:00','2024-09-27 08:25:00');
/*!40000 ALTER TABLE `suppliercity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-27 19:32:08
