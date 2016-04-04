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
-- Table structure for table `r2_codiciprofili`
--

DROP TABLE IF EXISTS `r2_codiciprofili`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `r2_codiciprofili` (
  `SerieProfilo` varchar(45) NOT NULL DEFAULT 'serie',
  `CodiceProfilo` varchar(45) NOT NULL DEFAULT 'cod',
  `Attrezzatura` int(10) DEFAULT NULL,
  `CodiceRobot` int(10) DEFAULT NULL,
  `OffsetPezzo` int(10) DEFAULT NULL,
  `OffsetSuadretta1` int(10) DEFAULT NULL,
  `OffsetSuadretta2` int(10) DEFAULT NULL,
  `Colla` int(10) DEFAULT NULL,
  `Apertura` int(10) DEFAULT NULL,
  `TIPO_PROFILO` varchar(45) NOT NULL DEFAULT 'L' COMMENT 'indica il tipo di profilo che può essere L o Z o T oppure I se il profilo serve per in Telaio Interno\nserve per identificare il profilo da invertire nel caso di telai esterni che hanno combinazioni di profili\nL - T\nL - Z\nnel caso di combinazioni la L si inverte',
  `TELAIO` varchar(45) NOT NULL DEFAULT 'I' COMMENT 'indica se il profilo realizza un telaio ESTERNo o INTERNO\nvalori ammissibili E o I',
  `R3_CodiceRobot` int(10) DEFAULT NULL,
  PRIMARY KEY (`SerieProfilo`,`CodiceProfilo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `r2_codiciprofili`
--

LOCK TABLES `r2_codiciprofili` WRITE;
/*!40000 ALTER TABLE `r2_codiciprofili` DISABLE KEYS */;
INSERT INTO `r2_codiciprofili` VALUES ('AWS65','363890',1,4,50,545,72,30,250,'L','E',3),('AWS65','363980',1,8,0,0,0,30,250,'T','E',3),('AWS65','364110',1,6,50,100,580,30,250,'Z','E',3),('AWS65','364650',1,10,0,0,0,30,250,'I','I',3),('AWS70','358140',1,5,0,0,0,30,250,'L','E',0),('AWS70','358240',1,9,0,0,0,30,250,'T','E',0),('AWS70','358340',1,7,0,0,0,30,250,'Z','E',0),('AWS70','358610',1,11,0,0,0,30,250,'Z','I',0),('AWS90','441050',1,16,0,0,0,30,250,'L','E',0),('AWS90','441780',1,17,0,0,0,30,250,'I','I',0),('R72TT','R72C113',1,15,50,230,690,30,250,'I','I',3),('R72TT','R72C41',1,13,50,225,0,30,250,'Z','E',1),('R72TT','R72C44',1,12,50,420,0,30,250,'L','E',1),('R72TT','R72C45',1,14,0,0,0,30,250,'T','E',0),('UNA','K1900',1,1,50,535,55,30,250,'L','E',3),('UNA','K1901',1,2,50,130,620,30,250,'Z','E',3),('UNA','K1911',1,3,118,255,0,30,250,'I','I',1);
/*!40000 ALTER TABLE `r2_codiciprofili` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-04 14:39:16
