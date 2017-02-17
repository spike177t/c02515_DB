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
-- Table structure for table `cassetto`
--

DROP TABLE IF EXISTS `cassetto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cassetto` (
  `ID_CASSETTO` int(11) NOT NULL DEFAULT '1',
  `DISPONIBILE` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 = non utilizzare; 1 = disponibile',
  `STATO` varchar(45) DEFAULT NULL,
  `POSIZIONE` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'indica la posizione del casseto nel magazzino: 0 = in magazzino;  1 = estrattore di R1; 2 = estrattore di R2; 3 = estrattore manuale',
  `magazzino_ID_MAGAZZINO` int(11) NOT NULL,
  `lastupdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastupdate_milli` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`ID_CASSETTO`,`magazzino_ID_MAGAZZINO`),
  KEY `fk_cassetto_magazzino1_idx` (`magazzino_ID_MAGAZZINO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cassetto`
--

LOCK TABLES `cassetto` WRITE;
/*!40000 ALTER TABLE `cassetto` DISABLE KEYS */;
INSERT INTO `cassetto` VALUES (1,1,'0',0,1,'2016-06-30 09:55:48','2016-06-30 09:55:48.125'),(1,1,'0',0,2,'2016-04-18 09:50:03','2016-04-18 09:50:03.157'),(2,1,'0',0,1,'2016-06-28 07:59:09','2016-06-28 07:59:09.911'),(2,1,'0',0,2,'2016-06-29 14:25:36','2016-06-29 14:25:36.875'),(3,1,'0',0,1,'2016-06-28 10:28:20','2016-06-28 10:28:20.880'),(3,1,'0',0,2,'2016-06-28 12:12:34','2016-06-28 12:12:34.590'),(4,1,'0',0,1,'2016-06-28 12:45:13','2016-06-28 12:45:13.454'),(4,1,'0',0,2,'2016-06-28 08:09:26','2016-06-28 08:09:26.996'),(5,1,'0',0,1,'2016-06-28 13:00:08','2016-06-28 13:00:08.988'),(5,1,'0',0,2,'2017-02-16 10:15:56','2017-02-16 10:15:56.065'),(6,1,'0',0,1,'2016-06-28 14:22:42','2016-06-28 14:22:42.900'),(6,1,'0',0,2,'2016-06-28 09:12:46','2016-06-28 09:12:46.317'),(7,1,'0',0,1,'2016-06-30 09:49:03','2016-06-30 09:49:03.056'),(7,1,'0',0,2,'2016-06-28 09:57:16','2016-06-28 09:57:16.992'),(8,1,'0',0,1,'2016-06-29 09:46:45','2016-06-29 09:46:45.789'),(8,1,'0',0,2,'2016-06-28 10:36:17','2016-06-28 10:36:17.954'),(9,1,'0',0,1,'2016-06-29 10:25:35','2016-06-29 10:25:35.967'),(9,1,'0',0,2,'2016-06-28 12:03:21','2016-06-28 12:03:21.096'),(10,1,'0',0,1,'2016-06-29 12:45:39','2016-06-29 12:45:39.242'),(10,1,'0',0,2,'2016-06-28 13:22:43','2016-06-28 13:22:43.281'),(11,1,'0',0,1,'2017-02-16 16:33:18','2017-02-16 16:33:18.839'),(11,1,'0',0,2,'2017-02-16 16:33:18','2017-02-16 16:33:18.926'),(12,1,'0',0,1,'2016-06-30 09:42:21','2016-06-30 09:42:21.711'),(12,1,'0',0,2,'2016-06-30 09:23:09','2016-06-30 09:23:09.349'),(13,1,'0',0,1,'2017-02-13 16:25:33','2017-02-13 16:25:33.844'),(13,1,'0',0,2,'2016-06-30 08:56:36','2016-06-30 08:56:36.347'),(14,1,'0',0,1,'2016-06-29 14:37:46','2016-06-29 14:37:46.899'),(14,1,'0',0,2,'2016-06-30 08:58:15','2016-06-30 08:58:15.344'),(15,1,'0',0,1,'2016-06-30 08:34:33','2016-06-30 08:34:33.602'),(15,1,'0',0,2,'2016-06-30 08:59:37','2016-06-30 08:59:37.345'),(16,1,'0',0,1,'2016-06-30 09:28:03','2016-06-30 09:28:03.939'),(16,1,'0',0,2,'2016-06-30 09:00:48','2016-06-30 09:00:48.219'),(17,1,'0',0,1,'2016-06-30 09:36:55','2016-06-30 09:36:55.444'),(17,1,'0',0,2,'2016-06-30 09:05:13','2016-06-30 09:05:13.014'),(18,1,'0',0,1,'2016-04-28 15:02:56','2016-04-28 15:02:56.157'),(18,1,'0',0,2,'2016-06-30 09:03:40','2016-06-30 09:03:40.709'),(19,1,'0',0,1,'2016-04-29 08:42:00','2016-04-29 08:42:00.168'),(19,1,'0',0,2,'2016-06-30 09:02:05','2016-06-30 09:02:05.532'),(20,1,'0',0,1,'2016-04-28 13:45:09','2016-04-28 13:45:09.345'),(20,1,'0',0,2,'2016-06-30 09:17:04','2016-06-30 09:17:04.486'),(21,0,'0',0,1,'2016-06-22 08:19:45','2016-06-22 08:19:45.084'),(21,1,'0',0,2,'2016-06-28 14:53:56','2016-06-28 14:53:56.059'),(22,1,'0',0,1,'2016-04-26 12:41:28','2016-04-26 12:41:28.919'),(22,1,'0',0,2,'2017-02-16 10:23:05','2017-02-16 10:23:05.964'),(23,1,'0',0,1,'2016-05-10 08:32:26','2016-05-10 08:32:26.253'),(23,1,'0',0,2,'2016-06-29 10:14:39','2016-06-29 10:14:39.673'),(24,1,'0',0,1,'2016-05-10 15:19:56','2016-05-10 15:19:56.187'),(24,1,'0',0,2,'2017-02-16 10:15:56','2017-02-16 10:15:56.079'),(25,1,'0',0,1,'2016-06-30 09:06:35','2016-06-30 09:06:35.010'),(25,1,'0',0,2,'2016-06-29 10:44:52','2016-06-29 10:44:52.116'),(26,1,'0',0,1,'2016-06-30 09:16:58','2016-06-30 09:16:58.365'),(26,1,'0',0,2,'2016-06-29 12:37:41','2016-06-29 12:37:41.213'),(27,1,'0',0,1,'2016-06-30 10:24:10','2016-06-30 10:24:10.567'),(27,1,'0',0,2,'2016-06-29 12:50:35','2016-06-29 12:50:35.163'),(28,1,'0',0,1,'2016-06-30 10:18:25','2016-06-30 10:18:25.137'),(28,1,'0',0,2,'2016-06-29 13:21:37','2016-06-29 13:21:37.626'),(29,1,'0',0,1,'2016-06-30 10:11:32','2016-06-30 10:11:32.873'),(29,1,'0',0,2,'2016-06-30 08:26:26','2016-06-30 08:26:26.511'),(30,1,'0',0,1,'2016-06-30 10:04:21','2016-06-30 10:04:21.542'),(30,1,'0',0,2,'2016-04-21 13:57:38','2016-04-21 13:57:38.726');
/*!40000 ALTER TABLE `cassetto` ENABLE KEYS */;
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