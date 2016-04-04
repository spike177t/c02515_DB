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
-- Table structure for table `quartina`
--

DROP TABLE IF EXISTS `quartina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartina` (
  `ID_QUARTINA` varchar(45) NOT NULL,
  `TOTALE_PEZZI_QUARTINA` tinyint(4) DEFAULT NULL,
  `NUM_SQUADRETTE1` tinyint(4) DEFAULT NULL,
  `COD_SQUADRETTA1` varchar(45) DEFAULT NULL,
  `NUM_SQUADRETTE2` tinyint(4) DEFAULT NULL,
  `COD_SQUADRETTA2` varchar(45) DEFAULT NULL,
  `NOME_COMMESSA` varchar(45) DEFAULT NULL,
  `cassetto_ID_CASSETTO` int(11) NOT NULL,
  `cassetto_magazzino_ID_MAGAZZINO` int(11) NOT NULL,
  PRIMARY KEY (`ID_QUARTINA`),
  KEY `fk_quartina_cassetto1_idx` (`cassetto_ID_CASSETTO`,`cassetto_magazzino_ID_MAGAZZINO`),
  CONSTRAINT `fk_quartina_cassetto1` FOREIGN KEY (`cassetto_ID_CASSETTO`, `cassetto_magazzino_ID_MAGAZZINO`) REFERENCES `cassetto` (`ID_CASSETTO`, `magazzino_ID_MAGAZZINO`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartina`
--

LOCK TABLES `quartina` WRITE;
/*!40000 ALTER TABLE `quartina` DISABLE KEYS */;
INSERT INTO `quartina` VALUES ('060014080001.TELH08',4,1,'721001',1,'721000','UNA16001',8,2),('060014130001.TELH13',4,1,'721000',1,'721001','UNA16001',26,2),('060014140001.TELH14',4,1,'721000',1,'721001','UNA16001',25,2),('060014140005.BATH14',4,1,'721002',0,'Cod2','UNA16001',2,2),('060014150001.TELH15',4,1,'721000',1,'721001','UNA16001',27,2),('060014160005.BATH16',4,1,'721002',0,'Cod2','UNA16001',6,2),('060014170001.TELH17',4,1,'721000',1,'721001','UNA16001',22,1),('060014170005.BATH17',4,1,'721002',0,'Cod2','UNA16001',3,2),('060035020005.BATH02',4,1,'721002',0,'Cod2','PROVA2P',9,2),('060035040005.BATH04',4,1,'721002',0,'Cod2','PROVA2P',7,2),('060035050005.BATH05',4,1,'721002',0,'Cod2','PROVA2P',5,2),('060043130001.TELH13',4,1,'721001',1,'721000','PROVA16',1,2),('060043140001.TELH14',4,1,'721001',1,'721000','PROVA16',30,2),('060043150001.TELH15',4,1,'721001',1,'721000','PROVA16',15,2),('060043160001.TELH16',4,1,'721001',1,'721000','PROVA16',28,2),('060043170001.TELH17',4,1,'721001',1,'721000','PROVA16',10,2),('A60014080001.TELH08',4,1,'721001',1,'721000','UNA16001',4,2);
/*!40000 ALTER TABLE `quartina` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `gualini_quartina_before_delete` BEFORE DELETE ON `gualini`.`quartina`
	FOR EACH ROW
			DELETE FROM `gualini`.`pezzo` WHERE quartina_ID_QUARTINA = OLD.ID_QUARTINA */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-04 14:39:15
