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
-- Dumping data for table `quartina`
--

LOCK TABLES `quartina` WRITE;
/*!40000 ALTER TABLE `quartina` DISABLE KEYS */;
INSERT INTO `quartina` VALUES ('080024010056.BATH01',4,0,'0',0,'0','TUTOR',30,2),('736299aa__1',4,4,'banco1',0,'','c_QRT',10,1),('736299aa__10',4,4,'banco1',0,'','c_QRT',19,1),('736299aa__2',4,4,'banco1',0,'','c_QRT',11,1),('736299aa__3',4,4,'banco1',0,'','c_QRT',12,1),('736299aa__4',4,4,'banco1',0,'','c_QRT',13,1),('736299aa__5',4,4,'banco1',0,'','c_QRT',14,1),('736299aa__6',4,4,'banco1',0,'','c_QRT',15,1),('736299aa__7',4,4,'banco1',0,'','c_QRT',16,1),('736299aa__8',4,4,'banco1',0,'','c_QRT',17,1),('736299aa__9',4,4,'banco1',0,'','c_QRT',18,1),('736299bb__1',4,4,'banco1',0,'','c_QRT',20,1),('736299bb__2',4,4,'banco1',0,'','c_QRT',21,1),('736299bb__3',4,4,'banco1',0,'','c_QRT',22,1),('736299bb__4',4,4,'banco1',0,'','c_QRT',23,1),('736299bb__5',4,4,'banco1',0,'','c_QRT',24,1),('736299bb__6',4,4,'banco1',0,'','c_QRT',26,1),('736299qq__1',4,4,'banco1',0,'','c_QRT',5,1),('736299qq__10',4,4,'banco1',0,'','c_QRT',27,1),('736299qq__2',4,4,'banco1',0,'','c_QRT',1,1),('736299qq__3',4,4,'banco1',0,'','c_QRT',6,1),('736299qq__4',4,4,'banco1',0,'','c_QRT',30,1),('736299qq__5',4,4,'banco1',0,'','c_QRT',7,1),('736299qq__6',4,4,'banco1',0,'','c_QRT',29,1),('736299qq__7',4,4,'banco1',0,'','c_QRT',8,1),('736299qq__8',4,4,'banco1',0,'','c_QRT',28,1),('736299qq__9',4,4,'banco1',0,'','c_QRT',9,1),('Q_001',4,4,'sqA_sss2',0,'','commmmaaa',1,2),('Q_002',4,0,'',4,'aa','aaaaaa',3,1),('Q_003',4,0,'',4,'bb','bbbbbbb',2,1),('Q_005',4,4,'sqA_2',0,'','commbbbb',2,2),('Q_006',4,4,'banco1',0,'','insert',4,1),('Q_011',4,4,'banco1',0,'','insert',25,1);
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

-- Dump completed on 2015-12-04 17:45:36
