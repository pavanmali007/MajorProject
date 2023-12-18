-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: vnstadium
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `querydetails`
--

DROP TABLE IF EXISTS `querydetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `querydetails` (
  `queryId` int NOT NULL AUTO_INCREMENT,
  `emailId` varchar(50) DEFAULT NULL,
  `query` varchar(100) NOT NULL,
  PRIMARY KEY (`queryId`),
  KEY `emailId` (`emailId`),
  CONSTRAINT `querydetails_ibfk_1` FOREIGN KEY (`emailId`) REFERENCES `userdetails` (`emailId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `querydetails`
--

LOCK TABLES `querydetails` WRITE;
/*!40000 ALTER TABLE `querydetails` DISABLE KEYS */;
INSERT INTO `querydetails` VALUES (1,'bhavesh@nasa.com','Seat reservation for match on 2024-01-01.');
/*!40000 ALTER TABLE `querydetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seatdetails`
--

DROP TABLE IF EXISTS `seatdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seatdetails` (
  `seatId` int NOT NULL AUTO_INCREMENT,
  `seatAddress` varchar(5) NOT NULL,
  `emailId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`seatId`),
  UNIQUE KEY `seatAddress` (`seatAddress`),
  KEY `emailId` (`emailId`),
  CONSTRAINT `seatdetails_ibfk_1` FOREIGN KEY (`emailId`) REFERENCES `userdetails` (`emailId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seatdetails`
--

LOCK TABLES `seatdetails` WRITE;
/*!40000 ALTER TABLE `seatdetails` DISABLE KEYS */;
INSERT INTO `seatdetails` VALUES (2,'A1','bhavesh@nasa.com');
/*!40000 ALTER TABLE `seatdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdetails`
--

DROP TABLE IF EXISTS `userdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userdetails` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) NOT NULL,
  `emailId` varchar(50) NOT NULL,
  `phoneNumber` bigint NOT NULL,
  `password` varchar(20) NOT NULL,
  `isAdmin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  KEY `idx_emailId` (`emailId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdetails`
--

LOCK TABLES `userdetails` WRITE;
/*!40000 ALTER TABLE `userdetails` DISABLE KEYS */;
INSERT INTO `userdetails` VALUES (1,'Bhavesh','bhavesh@nasa.com',1234567890,'bhavesh123',0);
/*!40000 ALTER TABLE `userdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-18 16:43:42
