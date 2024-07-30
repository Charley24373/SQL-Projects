-- MySQL dump 10.13  Distrib 9.0.1, for macos14 (x86_64)
--
-- Host: localhost    Database: practice
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `CompanyName`
--

DROP TABLE IF EXISTS `CompanyName`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CompanyName` (
  `Ticker_symbol` varchar(55) NOT NULL,
  `Actualname` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`Ticker_symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CompanyName`
--

LOCK TABLES `CompanyName` WRITE;
/*!40000 ALTER TABLE `CompanyName` DISABLE KEYS */;
INSERT INTO `CompanyName` VALUES ('ABCL','Abcellera'),('AQB','Aquabounty'),('EH','Ehang'),('LOW','Lowes'),('MFA','MFA Financial'),('MSFT','Microsoft'),('PLTR','Palantir'),('TSLA','Tesla');
/*!40000 ALTER TABLE `CompanyName` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Crypto`
--

DROP TABLE IF EXISTS `Crypto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Crypto` (
  `Avg_cost` decimal(11,6) DEFAULT NULL,
  `Percent_change` decimal(5,2) DEFAULT NULL,
  `Positive_or_Negative_change` varchar(55) DEFAULT NULL,
  `Ticker_symbol` varchar(55) DEFAULT NULL,
  KEY `Ticker_symbol` (`Ticker_symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Crypto`
--

LOCK TABLES `Crypto` WRITE;
/*!40000 ALTER TABLE `Crypto` DISABLE KEYS */;
INSERT INTO `Crypto` VALUES (2227.990000,45.84,'Positive','ETH'),(0.114770,13.20,'Positive','DOGE');
/*!40000 ALTER TABLE `Crypto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CryptoName`
--

DROP TABLE IF EXISTS `CryptoName`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CryptoName` (
  `Ticker_symbol` varchar(55) NOT NULL,
  `Actualname` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`Ticker_symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CryptoName`
--

LOCK TABLES `CryptoName` WRITE;
/*!40000 ALTER TABLE `CryptoName` DISABLE KEYS */;
INSERT INTO `CryptoName` VALUES ('DOGE','Dogecoin'),('ETH','Ethereum');
/*!40000 ALTER TABLE `CryptoName` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stocks`
--

DROP TABLE IF EXISTS `Stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Stocks` (
  `AverageCost` decimal(5,2) DEFAULT NULL,
  `TotalPercentChange` decimal(5,2) DEFAULT NULL,
  `Positive_or_Negative_change` varchar(55) DEFAULT NULL,
  `Ticker_symbol` varchar(55) DEFAULT NULL,
  KEY `fk` (`Ticker_symbol`),
  CONSTRAINT `fk` FOREIGN KEY (`Ticker_symbol`) REFERENCES `CompanyName` (`Ticker_symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stocks`
--

LOCK TABLES `Stocks` WRITE;
/*!40000 ALTER TABLE `Stocks` DISABLE KEYS */;
INSERT INTO `Stocks` VALUES (7.13,56.52,'Negative','ABCL'),(75.55,97.84,'Negative','AQB'),(16.05,22.74,'Negative','EH'),(239.45,1.92,'Negative','LOW'),(10.62,3.20,'Positive','MFA'),(408.04,2.90,'Positive','MSFT'),(14.08,90.01,'Positive','PLTR'),(144.58,54.16,'Positive','TSLA');
/*!40000 ALTER TABLE `Stocks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-29 22:30:10
