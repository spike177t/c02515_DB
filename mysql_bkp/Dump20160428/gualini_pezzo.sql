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
-- Table structure for table `pezzo`
--

DROP TABLE IF EXISTS `pezzo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pezzo` (
  `POSIZIONE` tinyint(4) DEFAULT NULL,
  `ID_PEZZO` varchar(45) NOT NULL,
  `NOME_PEZZO_ESTERNO` varchar(45) DEFAULT NULL,
  `CODICE_PROFILO` varchar(45) DEFAULT NULL,
  `SERIE_PROFILO` varchar(45) DEFAULT NULL,
  `MAX_LUNGHEZZA` int(11) DEFAULT NULL,
  `ALTEZZA_PROFILO` int(11) DEFAULT NULL,
  `LARGHEZZA_PROFILO` int(11) DEFAULT NULL,
  `MISURA_CAMERA_ESTERNA` int(11) DEFAULT NULL,
  `APPOGGIO_PEZZO` tinyint(4) DEFAULT NULL,
  `POSIZIONE_PEZZO_ESTERNO` tinyint(4) DEFAULT NULL,
  `ID_PEZZO_ESTERNO` varchar(45) DEFAULT NULL,
  `LUNGHEZZA_PEZZO_ESTERNO` int(11) DEFAULT NULL,
  `FILE_XML` varchar(45) DEFAULT NULL,
  `DATA` varchar(45) DEFAULT NULL,
  `ORA` varchar(45) DEFAULT NULL,
  `quartina_ID_QUARTINA` varchar(45) NOT NULL,
  `PRELEVATO` int(11) DEFAULT '0' COMMENT 'se 1 significa che il pezzo è stato prelevato da R2 e messo su assemblatrice',
  PRIMARY KEY (`ID_PEZZO`),
  KEY `fk_pezzo_quartina1_idx` (`quartina_ID_QUARTINA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pezzo`
--

LOCK TABLES `pezzo` WRITE;
/*!40000 ALTER TABLE `pezzo` DISABLE KEYS */;
INSERT INTO `pezzo` VALUES (1,'060014130001','060014130001','K1901','UNA',6500,677,980,6000,0,0,'0',0,'UNA16001.XML','','','060014130001.TELH13',0),(2,'060014130002','060014130002','K1901','UNA',6500,677,980,6000,0,0,'0',0,'UNA16001.XML','','','060014130001.TELH13',0),(3,'060014130003','060014130001','K1901','UNA',6500,677,980,6000,0,0,'0',0,'UNA16001.XML','','','060014130001.TELH13',0),(4,'060014130004','060014130002','K1901','UNA',6500,677,980,6000,0,0,'0',0,'UNA16001.XML','','','060014130001.TELH13',0),(1,'060014140001','060014140001','K1901','UNA',14500,677,980,14000,0,0,'0',0,'UNA16001.XML','','','060014140001.TELH14',0),(2,'060014140002','060014140002','K1901','UNA',9500,677,980,9000,0,0,'0',0,'UNA16001.XML','','','060014140001.TELH14',0),(3,'060014140003','060014140001','K1901','UNA',14500,677,980,14000,0,0,'0',0,'UNA16001.XML','','','060014140001.TELH14',0),(4,'060014140004','060014140002','K1901','UNA',9500,677,980,9000,0,0,'0',0,'UNA16001.XML','','','060014140001.TELH14',0),(1,'060014160005','060014000002','K1911','UNA',17550,485,530,17190,0,0,'0',0,'UNA16001.XML','','','060014160005.BATH16',0),(2,'060014160006','060014000003','K1911','UNA',9560,485,530,9200,0,0,'0',0,'UNA16001.XML','','','060014160005.BATH16',0),(3,'060014160007','060014000002','K1911','UNA',17550,485,530,17190,0,0,'0',0,'UNA16001.XML','','','060014160005.BATH16',0),(4,'060014160008','060014000003','K1911','UNA',9560,485,530,9200,0,0,'0',0,'UNA16001.XML','','','060014160005.BATH16',0),(1,'060035020005','060035020005','K1911','UNA',7200,485,530,6840,0,0,'0',0,'PROVA2P.XML','','','060035020005.BATH02',0),(3,'060035020007','060035020005','K1911','UNA',7200,485,530,6840,0,0,'0',0,'PROVA2P.XML','','','060035020005.BATH02',0),(4,'060035020008','060035020006','K1911','UNA',11940,485,530,11580,0,0,'0',0,'PROVA2P.XML','','','060035020005.BATH02',0),(1,'060043150001','060043000001','K1900','UNA',16000,680,730,16000,0,0,'0',0,'PROVA16.XML','','','060043150001.TELH15',0),(2,'060043150002','060043000002','K1900','UNA',8210,680,730,8210,0,0,'0',0,'PROVA16.XML','','','060043150001.TELH15',0),(3,'060043150003','060043000001','K1900','UNA',16000,680,730,16000,0,0,'0',0,'PROVA16.XML','','','060043150001.TELH15',0),(4,'060043150004','060043000002','K1900','UNA',8210,680,730,8210,0,0,'0',0,'PROVA16.XML','','','060043150001.TELH15',0),(1,'060060020001','060060020001','K1901','UNA',6500,675,980,6000,0,0,'0',0,'PROVA14.XML','','','060060020001.TELH02',0),(2,'060060020002','060060020002','K1901','UNA',6500,675,980,6000,0,0,'0',0,'PROVA14.XML','','','060060020001.TELH02',0),(3,'060060020003','060060020001','K1901','UNA',6500,675,980,6000,0,0,'0',0,'PROVA14.XML','','','060060020001.TELH02',0),(4,'060060020004','060060020002','K1901','UNA',6500,675,980,6000,0,0,'0',0,'PROVA14.XML','','','060060020001.TELH02',0),(1,'060060030001','060060030001','K1901','UNA',11500,675,980,11000,0,0,'0',0,'PROVA14.XML','','','060060030001.TELH03',0),(2,'060060030002','060060000002','K1901','UNA',8500,675,980,8000,0,0,'0',0,'PROVA14.XML','','','060060030001.TELH03',0),(3,'060060030003','060060030001','K1901','UNA',11500,675,980,11000,0,0,'0',0,'PROVA14.XML','','','060060030001.TELH03',0),(4,'060060030004','060060000002','K1901','UNA',8500,675,980,8000,0,0,'0',0,'PROVA14.XML','','','060060030001.TELH03',0),(1,'060060070001','060060000001','K1901','UNA',20500,675,980,20000,0,0,'0',0,'PROVA14.XML','','','060060070001.TELH07',0),(2,'060060070002','060060070002','K1900','UNA',8000,680,730,8000,0,0,'0',0,'PROVA14.XML','','','060060070001.TELH07',0),(3,'060060070003','060060000001','K1901','UNA',20500,675,980,20000,0,0,'0',0,'PROVA14.XML','','','060060070001.TELH07',0),(4,'060060070004','060060070002','K1900','UNA',8000,680,730,8000,0,0,'0',0,'PROVA14.XML','','','060060070001.TELH07',0),(1,'060061020001','060061020001','K1901','UNA',6500,675,980,6000,0,0,'0',0,'PROVA15.XML','','','060061020001.TELH02',0),(2,'060061020002','060061020002','K1901','UNA',6500,675,980,6000,0,0,'0',0,'PROVA15.XML','','','060061020001.TELH02',0),(3,'060061020003','060061020001','K1901','UNA',6500,675,980,6000,0,0,'0',0,'PROVA15.XML','','','060061020001.TELH02',0),(4,'060061020004','060061020002','K1901','UNA',6500,675,980,6000,0,0,'0',0,'PROVA15.XML','','','060061020001.TELH02',0),(1,'060061030001','060061030001','K1901','UNA',11500,675,980,11000,0,0,'0',0,'PROVA15.XML','','','060061030001.TELH03',0),(2,'060061030002','060061000002','K1901','UNA',8500,675,980,8000,0,0,'0',0,'PROVA15.XML','','','060061030001.TELH03',0),(3,'060061030003','060061030001','K1901','UNA',11500,675,980,11000,0,0,'0',0,'PROVA15.XML','','','060061030001.TELH03',0),(4,'060061030004','060061000002','K1901','UNA',8500,675,980,8000,0,0,'0',0,'PROVA15.XML','','','060061030001.TELH03',0),(1,'060061040001','060061000001','K1901','UNA',20500,675,980,20000,0,0,'0',0,'PROVA15.XML','','','060061040001.TELH04',0),(2,'060061040002','060061000002','K1901','UNA',8500,675,980,8000,0,0,'0',0,'PROVA15.XML','','','060061040001.TELH04',0),(3,'060061040003','060061000001','K1901','UNA',20500,675,980,20000,0,0,'0',0,'PROVA15.XML','','','060061040001.TELH04',0),(4,'060061040004','060061000002','K1901','UNA',8500,675,980,8000,0,0,'0',0,'PROVA15.XML','','','060061040001.TELH04',0),(1,'060061070001','060061000001','K1901','UNA',20500,675,980,20000,0,0,'0',0,'PROVA15.XML','','','060061070001.TELH07',0),(2,'060061070002','060061070002','K1900','UNA',8000,680,730,8000,0,0,'0',0,'PROVA15.XML','','','060061070001.TELH07',0),(3,'060061070003','060061000001','K1901','UNA',20500,675,980,20000,0,0,'0',0,'PROVA15.XML','','','060061070001.TELH07',0),(4,'060061070004','060061070002','K1900','UNA',8000,680,730,8000,0,0,'0',0,'PROVA15.XML','','','060061070001.TELH07',0);
/*!40000 ALTER TABLE `pezzo` ENABLE KEYS */;
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
