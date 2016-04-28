CREATE DATABASE  IF NOT EXISTS `gualini` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `gualini`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: gualini
-- ------------------------------------------------------
-- Server version	5.7.9-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `r2_banchi_squadrette`
--

DROP TABLE IF EXISTS `r2_banchi_squadrette`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r2_banchi_squadrette` (
  `ID_BANCO` int(11) NOT NULL DEFAULT '1',
  `NumeroFila` int(10) NOT NULL,
  `CodiceSquadretta` varchar(45) NOT NULL,
  PRIMARY KEY (`ID_BANCO`,`NumeroFila`),
  UNIQUE KEY `CodiceSquadretta_UNIQUE` (`CodiceSquadretta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r2_banchi_squadrette`
--

LOCK TABLES `r2_banchi_squadrette` WRITE;
/*!40000 ALTER TABLE `r2_banchi_squadrette` DISABLE KEYS */;
INSERT INTO `r2_banchi_squadrette` VALUES (1,8,'1100B'),(1,7,'230A'),(1,6,'230B'),(1,9,'5034'),(1,10,'5034INV'),(1,5,'622A'),(1,4,'622B'),(1,2,'721000'),(1,1,'721001'),(1,3,'721002');
/*!40000 ALTER TABLE `r2_banchi_squadrette` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-28 16:14:44
