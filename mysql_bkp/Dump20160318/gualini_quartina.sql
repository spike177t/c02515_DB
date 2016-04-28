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
INSERT INTO `quartina` VALUES ('060014120005.BATH12',4,1,'721002',0,'Cod2','UNA16001',17,1),('060014170001.TELH17',4,1,'721000',1,'721001','UNA16001',22,1),('060034020001.TELH02',4,1,'721001',1,'721000','PROVA1P',2,2),('060034030001.TELH03',4,1,'721001',1,'721000','PROVA1P',30,2),('060034030005.BATH03',4,1,'721002',0,'Cod2','PROVA1P',23,1),('060034040001.TELH04',4,1,'721001',1,'721000','PROVA1P',28,1),('060034050001.TELH05',4,1,'721001',1,'721000','PROVA1P',29,1),('060034050005.BATH05',4,1,'721002',0,'Cod2','PROVA1P',26,1),('060034050009.BATH05',4,1,'721002',0,'Cod2','PROVA1P',27,1),('060035010001.TELH01',4,1,'721001',1,'721000','PROVA2P',1,2),('060035010005.BATH01',4,1,'721002',0,'Cod2','PROVA2P',10,2),('060035020001.TELH02',4,1,'721001',1,'721000','PROVA2P',4,2),('060035020005.BATH02',4,1,'721002',0,'Cod2','PROVA2P',9,2),('060035030001.TELH03',4,1,'721001',1,'721000','PROVA2P',3,2),('060035030005.BATH03',4,1,'721002',0,'Cod2','PROVA2P',6,2),('060035040001.TELH04',4,1,'721001',1,'721000','PROVA2P',8,2),('060035040005.BATH04',4,1,'721002',0,'Cod2','PROVA2P',7,2),('060035050001.TELH05',4,1,'721001',1,'721000','PROVA2P',28,2),('060035050005.BATH05',4,1,'721002',0,'Cod2','PROVA2P',5,2);
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

-- Dump completed on 2016-03-18 15:07:56