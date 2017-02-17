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
INSERT INTO `pezzo` VALUES (1,'060106040001','060106040001','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','060106040005.BATH04',0),(3,'060106040003','060106040003','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','060106040005.BATH04',0),(2,'060106040006','060106040006','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','060106040005.BATH04',0),(4,'060106040008','060106040008','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','060106040005.BATH04',0),(1,'m1_qrt10_1','m1_qrt11_1','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt10',0),(2,'m1_qrt10_2','m1_qrt11_2','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt10',0),(3,'m1_qrt10_3','m1_qrt11_3','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt10',0),(4,'m1_qrt10_4','m1_qrt11_4','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt10',0),(1,'m1_qrt11_1','m1_qrt11_1','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt11',0),(2,'m1_qrt11_2','m1_qrt11_2','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt11',0),(3,'m1_qrt11_3','m1_qrt11_3','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt11',0),(4,'m1_qrt11_4','m1_qrt11_4','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt11',0),(1,'m1_qrt12_1','m1_qrt12_1','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt12',0),(2,'m1_qrt12_2','m1_qrt12_2','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt12',0),(3,'m1_qrt12_3','m1_qrt12_3','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt12',0),(4,'m1_qrt12_4','m1_qrt12_4','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt12',0),(1,'m1_qrt13_1','m1_qrt13_1','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt13',0),(2,'m1_qrt13_2','m1_qrt13_2','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt13',0),(3,'m1_qrt13_3','m1_qrt13_3','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt13',0),(4,'m1_qrt13_4','m1_qrt13_4','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt13',0),(1,'m1_qrt14_1','m1_qrt14_1','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt14',0),(2,'m1_qrt14_2','m1_qrt14_2','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt14',0),(3,'m1_qrt14_3','m1_qrt14_3','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt14',0),(4,'m1_qrt14_4','m1_qrt14_4','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt14',0),(1,'m1_qrt15_1','m1_qrt15_1','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt15',0),(2,'m1_qrt15_2','m1_qrt15_2','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt15',0),(3,'m1_qrt15_3','m1_qrt15_3','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt15',0),(4,'m1_qrt15_4','m1_qrt15_4','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt15',0),(1,'m1_qrt16_1','m1_qrt11_1','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt16',0),(2,'m1_qrt16_2','m1_qrt11_2','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt16',0),(3,'m1_qrt16_3','m1_qrt11_3','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt16',0),(4,'m1_qrt16_4','m1_qrt11_4','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt16',0),(1,'m1_qrt17_1','m1_qrt12_1','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt17',0),(2,'m1_qrt17_2','m1_qrt12_2','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt17',0),(3,'m1_qrt17_3','m1_qrt12_3','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt17',0),(4,'m1_qrt17_4','m1_qrt12_4','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt17',0),(1,'m1_qrt18_1','m1_qrt13_1','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt18',0),(2,'m1_qrt18_2','m1_qrt13_2','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt18',0),(3,'m1_qrt18_3','m1_qrt13_3','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt18',0),(4,'m1_qrt18_4','m1_qrt13_4','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt18',0),(1,'m1_qrt19_1','m1_qrt14_1','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt19',0),(2,'m1_qrt19_2','m1_qrt14_2','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt19',0),(3,'m1_qrt19_3','m1_qrt14_3','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt19',0),(4,'m1_qrt19_4','m1_qrt14_4','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt19',0),(1,'m1_qrt20_1','m1_qrt15_1','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt20',0),(2,'m1_qrt20_2','m1_qrt15_2','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt20',0),(3,'m1_qrt20_3','m1_qrt15_3','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt20',0),(4,'m1_qrt20_4','m1_qrt15_4','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt20',0),(1,'m1_qrt21_1','m1_qrt11_1','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt21',0),(2,'m1_qrt21_2','m1_qrt11_2','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt21',0),(3,'m1_qrt21_3','m1_qrt11_3','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt21',0),(4,'m1_qrt21_4','m1_qrt11_4','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m1_qrt21',0),(1,'m2_qrt10_1','m1_qrt10_1','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m2_qrt10',0),(2,'m2_qrt10_2','m1_qrt10_2','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m2_qrt10',0),(3,'m2_qrt10_3','m1_qrt10_3','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m2_qrt10',0),(4,'m2_qrt10_4','m1_qrt10_4','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m2_qrt10',0),(1,'m2_qrt11_1','m1_qrt11_1','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m2_qrt11',0),(2,'m2_qrt11_2','m1_qrt11_2','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m2_qrt11',0),(3,'m2_qrt11_3','m1_qrt11_3','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m2_qrt11',0),(4,'m2_qrt11_4','m1_qrt11_4','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m2_qrt11',0),(1,'m2_qrt12_1','m1_qrt12_1','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m2_qrt12',0),(2,'m2_qrt12_2','m1_qrt12_2','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m2_qrt12',0),(3,'m2_qrt12_3','m1_qrt12_3','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m2_qrt12',0),(4,'m2_qrt12_4','m1_qrt12_4','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m2_qrt12',0),(1,'m2_qrt13_1','m1_qrt13_1','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m2_qrt13',0),(2,'m2_qrt13_2','m1_qrt13_2','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m2_qrt13',0),(3,'m2_qrt13_3','m1_qrt13_3','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m2_qrt13',0),(4,'m2_qrt13_4','m1_qrt13_4','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m2_qrt13',0),(1,'m2_qrt14_1','m1_qrt14_1','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m2_qrt14',0),(2,'m2_qrt14_2','m1_qrt14_2','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m2_qrt14',0),(3,'m2_qrt14_3','m1_qrt14_3','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m2_qrt14',0),(4,'m2_qrt14_4','m1_qrt14_4','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m2_qrt14',0),(1,'m2_qrt15_1','m1_qrt15_1','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m2_qrt15',0),(2,'m2_qrt15_2','m1_qrt15_2','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m2_qrt15',0),(3,'m2_qrt15_3','m1_qrt15_3','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m2_qrt15',0),(4,'m2_qrt15_4','m1_qrt15_4','K1911','UNA',11360,485,530,11000,0,0,'0',0,'UNA16026.XML','','','m2_qrt15',0);
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

-- Dump completed on 2017-02-17 10:29:13
