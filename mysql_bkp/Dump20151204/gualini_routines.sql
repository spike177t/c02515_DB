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
-- Temporary view structure for view `tutti_cassetti`
--

DROP TABLE IF EXISTS `tutti_cassetti`;
/*!50001 DROP VIEW IF EXISTS `tutti_cassetti`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `tutti_cassetti` AS SELECT 
 1 AS `ID_MAGAZZINO`,
 1 AS `MAG_NOME`,
 1 AS `MAG_STATO`,
 1 AS `MAG_PIENO`,
 1 AS `ID_CASSETTO`,
 1 AS `DISPONIBILE`,
 1 AS `STATO`,
 1 AS `POSIZIONE`,
 1 AS `magazzino_ID_MAGAZZINO`,
 1 AS `lastupdate`,
 1 AS `lastupdate_milli`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cassetti_disponibili`
--

DROP TABLE IF EXISTS `cassetti_disponibili`;
/*!50001 DROP VIEW IF EXISTS `cassetti_disponibili`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `cassetti_disponibili` AS SELECT 
 1 AS `ID_MAGAZZINO`,
 1 AS `MAG_NOME`,
 1 AS `MAG_STATO`,
 1 AS `MAG_PIENO`,
 1 AS `ID_CASSETTO`,
 1 AS `DISPONIBILE`,
 1 AS `STATO`,
 1 AS `POSIZIONE`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cassetti_disponibili_nestedquery`
--

DROP TABLE IF EXISTS `cassetti_disponibili_nestedquery`;
/*!50001 DROP VIEW IF EXISTS `cassetti_disponibili_nestedquery`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `cassetti_disponibili_nestedquery` AS SELECT 
 1 AS `ID_MAGAZZINO`,
 1 AS `MAG_NOME`,
 1 AS `MAG_STATO`,
 1 AS `MAG_PIENO`,
 1 AS `ID_CASSETTO`,
 1 AS `DISPONIBILE`,
 1 AS `STATO`,
 1 AS `POSIZIONE`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cassetti_occupati`
--

DROP TABLE IF EXISTS `cassetti_occupati`;
/*!50001 DROP VIEW IF EXISTS `cassetti_occupati`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `cassetti_occupati` AS SELECT 
 1 AS `ID_MAGAZZINO`,
 1 AS `MAG_NOME`,
 1 AS `MAG_STATO`,
 1 AS `MAG_PIENO`,
 1 AS `ID_CASSETTO`,
 1 AS `DISPONIBILE`,
 1 AS `STATO`,
 1 AS `POSIZIONE`,
 1 AS `magazzino_ID_MAGAZZINO`,
 1 AS `lastupdate`,
 1 AS `lastupdate_milli`,
 1 AS `ID_QUARTINA`,
 1 AS `NOME_COMMESSA`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `tutti_cassetti`
--

/*!50001 DROP VIEW IF EXISTS `tutti_cassetti`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tutti_cassetti` AS select `mag`.`ID_MAGAZZINO` AS `ID_MAGAZZINO`,`mag`.`NOME` AS `MAG_NOME`,`mag`.`STATO` AS `MAG_STATO`,`mag`.`PIENO` AS `MAG_PIENO`,`cass`.`ID_CASSETTO` AS `ID_CASSETTO`,`cass`.`DISPONIBILE` AS `DISPONIBILE`,`cass`.`STATO` AS `STATO`,`cass`.`POSIZIONE` AS `POSIZIONE`,`cass`.`magazzino_ID_MAGAZZINO` AS `magazzino_ID_MAGAZZINO`,`cass`.`lastupdate` AS `lastupdate`,`cass`.`lastupdate_milli` AS `lastupdate_milli` from (`magazzino` `mag` join `cassetto` `cass` on((`mag`.`ID_MAGAZZINO` = `cass`.`magazzino_ID_MAGAZZINO`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cassetti_disponibili`
--

/*!50001 DROP VIEW IF EXISTS `cassetti_disponibili`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cassetti_disponibili` AS select `tt`.`ID_MAGAZZINO` AS `ID_MAGAZZINO`,`tt`.`MAG_NOME` AS `MAG_NOME`,`tt`.`MAG_STATO` AS `MAG_STATO`,`tt`.`MAG_PIENO` AS `MAG_PIENO`,`tt`.`ID_CASSETTO` AS `ID_CASSETTO`,`tt`.`DISPONIBILE` AS `DISPONIBILE`,`tt`.`STATO` AS `STATO`,`tt`.`POSIZIONE` AS `POSIZIONE` from (`gualini`.`tutti_cassetti` `tt` left join (select `cass`.`ID_MAGAZZINO` AS `ID_MAGAZZINO`,`cass`.`MAG_NOME` AS `MAG_NOME`,`cass`.`MAG_STATO` AS `MAG_STATO`,`cass`.`MAG_PIENO` AS `MAG_PIENO`,`cass`.`ID_CASSETTO` AS `ID_CASSETTO`,`cass`.`DISPONIBILE` AS `DISPONIBILE`,`cass`.`STATO` AS `STATO`,`cass`.`POSIZIONE` AS `POSIZIONE`,`qrt`.`ID_QUARTINA` AS `ID_QUARTINA`,`qrt`.`NOME_COMMESSA` AS `NOME_COMMESSA` from (`gualini`.`tutti_cassetti` `cass` join `gualini`.`quartina` `qrt` on(((`qrt`.`cassetto_ID_CASSETTO` = `cass`.`ID_CASSETTO`) and (`qrt`.`cassetto_magazzino_ID_MAGAZZINO` = `cass`.`ID_MAGAZZINO`))))) `co` on(((`tt`.`ID_MAGAZZINO` = `co`.`ID_MAGAZZINO`) and (`tt`.`ID_CASSETTO` = `co`.`ID_CASSETTO`)))) where (isnull(`co`.`ID_CASSETTO`) and (`tt`.`DISPONIBILE` = 1)) order by `tt`.`ID_MAGAZZINO`,`tt`.`ID_CASSETTO` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cassetti_disponibili_nestedquery`
--

/*!50001 DROP VIEW IF EXISTS `cassetti_disponibili_nestedquery`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cassetti_disponibili_nestedquery` AS select `tt`.`ID_MAGAZZINO` AS `ID_MAGAZZINO`,`tt`.`MAG_NOME` AS `MAG_NOME`,`tt`.`MAG_STATO` AS `MAG_STATO`,`tt`.`MAG_PIENO` AS `MAG_PIENO`,`tt`.`ID_CASSETTO` AS `ID_CASSETTO`,`tt`.`DISPONIBILE` AS `DISPONIBILE`,`tt`.`STATO` AS `STATO`,`tt`.`POSIZIONE` AS `POSIZIONE` from `tutti_cassetti` `tt` where (not(exists(select 1 from `cassetti_occupati` `co` where ((`tt`.`ID_MAGAZZINO` = `co`.`ID_MAGAZZINO`) and (`tt`.`ID_CASSETTO` = `co`.`ID_CASSETTO`) and (`tt`.`DISPONIBILE` = 1))))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cassetti_occupati`
--

/*!50001 DROP VIEW IF EXISTS `cassetti_occupati`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cassetti_occupati` AS select `cass`.`ID_MAGAZZINO` AS `ID_MAGAZZINO`,`cass`.`MAG_NOME` AS `MAG_NOME`,`cass`.`MAG_STATO` AS `MAG_STATO`,`cass`.`MAG_PIENO` AS `MAG_PIENO`,`cass`.`ID_CASSETTO` AS `ID_CASSETTO`,`cass`.`DISPONIBILE` AS `DISPONIBILE`,`cass`.`STATO` AS `STATO`,`cass`.`POSIZIONE` AS `POSIZIONE`,`cass`.`magazzino_ID_MAGAZZINO` AS `magazzino_ID_MAGAZZINO`,`cass`.`lastupdate` AS `lastupdate`,`cass`.`lastupdate_milli` AS `lastupdate_milli`,`qrt`.`ID_QUARTINA` AS `ID_QUARTINA`,`qrt`.`NOME_COMMESSA` AS `NOME_COMMESSA` from (`tutti_cassetti` `cass` join `quartina` `qrt` on(((`qrt`.`cassetto_ID_CASSETTO` = `cass`.`ID_CASSETTO`) and (`qrt`.`cassetto_magazzino_ID_MAGAZZINO` = `cass`.`ID_MAGAZZINO`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'gualini'
--

--
-- Dumping routines for database 'gualini'
--
/*!50003 DROP PROCEDURE IF EXISTS `carica_quartine` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `carica_quartine`(
pMAGAZZINO INT
, pPREFISSO_QRT varchar(10)
, pNUM INT
)
BEGIN

	DECLARE ppID_QUARTINA  varchar(45) DEFAULT  "Q_xxx";
	DECLARE ppTOTALE_PEZZI_QUARTINA INT DEFAULT  4;
	DECLARE ppNOME_COMMESSA  varchar(45)  DEFAULT  "c_QRT";
	DECLARE ppNUM_SQUADRETTE1 INT  DEFAULT  4;
	DECLARE ppCOD_SQUADRETTA1 varchar(45)   DEFAULT  "banco1";
	DECLARE ppNUM_SQADRETTE2 INT DEFAULT  0;
	DECLARE ppCOD_SQUADRETTA2 varchar(45)   DEFAULT  "";
	DECLARE ppcasDECLAREto INT DEFAULT  0;
	DECLARE ppmagazzino INT DEFAULT  0;

	DECLARE ppPOSIZIONE INT DEFAULT  1; 
	DECLARE ppID_PEZZO  varchar(45)  DEFAULT "ppID_PEZZO"; 
	DECLARE ppNOME_PEZZO_ESTERNO varchar(45)  DEFAULT  "EST"; 
	DECLARE ppCODICE_PROFILO varchar(45)   DEFAULT  "CODPROF"; 
	DECLARE ppSERIE_PROFILO varchar(45)  DEFAULT  "SERIEPROF"; 
	DECLARE ppMAX_LUNGHEZZA INT DEFAULT  20000; 
	DECLARE ppALTEZZA_PROFILO INT DEFAULT 1000; 
	DECLARE ppLARGHEZZA_PROFILO INT DEFAULT 500; 
	DECLARE ppMISURA_CAMERA_ESTERNA INT DEFAULT 0; 
	DECLARE ppAPPOGGIO_PEZZO INT DEFAULT  NULL; 
	DECLARE ppPOSIZIONE_PEZZO_ESTERN INT DEFAULT NULL; 
	DECLARE ppID_PEZZO_ESTERNO  varchar(45)  DEFAULT  NULL; 
	DECLARE ppLUNGHEZZA_PEZZO_ESTERNO INT DEFAULT  NULL; 
	DECLARE ppFILE_XML  varchar(45)  DEFAULT  NULL; 
	DECLARE ppDDATA  varchar(45)  DEFAULT  NULL; 
	DECLARE ppORA  varchar(45)  DEFAULT  NULL;

	DECLARE c_QRT INT DEFAULT 1;
    DECLARE c_PEZZI INT DEFAULT 1;

	SET ppmagazzino = pMAGAZZINO;

	add_qrt: REPEAT

		SET ppID_QUARTINA = CONCAT(TO_DAYS(NOW()), pPREFISSO_QRT , "__" , c_QRT);
		-- CALL `gualini`.`CasDECLAREtoPiuVicinoAndInsert`(<{TipoCarico INT}>, <{LeggiDaQuadra INT}>, <{OP VARCHAR(10)}>, <{/* ""  DEFAULT  solo ricerca del casDECLAREto più vicino}>, <{"INS"  DEFAULT  inserisce anche nuova quartina}>, <{"UPD" aggiorna i dati indentificativi della quartina */
		-- 		pID_QUARTINA VARCHAR(45)}>, <{pTOTALE_PEZZI_QUARTINA TINYINT(4)}>, <{pNOME_COMMESSA VARCHAR(45)}>, <{pNUM_SQUADRETTE1 TINYINT(4)}>, <{pCOD_SQUADRETTA1  VARCHAR(45)}>, <{pNUM_SQADRETTE2 TINYINT(4)}>, <{pCOD_SQUADRETTA2  VARCHAR(45)}>);

		CALL `gualini`.`CassettoPiuVicinoAndInsert`(0, pMAGAZZINO, "INS", ppID_QUARTINA, ppTOTALE_PEZZI_QUARTINA, ppNOME_COMMESSA,ppNUM_SQUADRETTE1, ppCOD_SQUADRETTA1,ppNUM_SQADRETTE2, ppCOD_SQUADRETTA2);
        
        SET c_PEZZI = 1;
		add_pezzi: REPEAT
			SET ppPOSIZIONE = c_PEZZI;
			SET ppID_PEZZO =  CONCAT(ppID_QUARTINA , "___" , ppPOSIZIONE);
			CALL `gualini`.`inserisci_pezzo`(ppID_QUARTINA,
			  ppPOSIZIONE,ppID_PEZZO, ppNOME_PEZZO_ESTERNO, ppCODICE_PROFILO, ppSERIE_PROFILO, ppMAX_LUNGHEZZA, ppALTEZZA_PROFILO, ppLARGHEZZA_PROFILO, ppMISURA_CAMERA_ESTERNA, ppAPPOGGIO_PEZZO, ppPOSIZIONE_PEZZO_ESTERN, ppID_PEZZO_ESTERNO, ppLUNGHEZZA_PEZZO_ESTERNO, ppFILE_XML, ppDDATA, ppORA);
			
            SET c_PEZZI = c_PEZZI + 1;
            UNTIL c_PEZZI > 4
		END REPEAT add_pezzi;	
    
		SET c_QRT = c_QRT + 1 ;
	UNTIL c_QRT > pNUM
	END REPEAT add_qrt;	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CassettoPiuVicino` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CassettoPiuVicino`(TipoCarico INT, LeggiDaQuadra INT)
BEGIN
	CALL CassettoPiuVicinoAndInsert(TipoCarico, LeggiDaQuadra , "", "", 0, "", 0, "", 0, "");    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CassettoPiuVicinoAndInsert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CassettoPiuVicinoAndInsert`(
		TipoCarico INT, 
        LeggiDaQuadra INT,
		OP VARCHAR(10), --  "" = solo ricerca del cassetto più vicino, "INS" = inserisce anche nuova quartina, "UPD" aggiorna i dati indentificativi della quartina 
		pID_QUARTINA VARCHAR(45),
		pTOTALE_PEZZI_QUARTINA TINYINT(4),
		pNOME_COMMESSA VARCHAR(45),
		pNUM_SQUADRETTE1 TINYINT(4),
		pCOD_SQUADRETTA1  VARCHAR(45),
		pNUM_SQADRETTE2 TINYINT(4),
		pCOD_SQUADRETTA2  VARCHAR(45)
        )
BEGIN

	DECLARE esiste INT;
	DECLARE magazzino INT;
    DECLARE cassetto INT;
    
    DECLARE cass_riferimento INT;
    DECLARE cass_posizione INT default 1; -- cassetto assegnato all'estrattore 1
    
   	DECLARE CASS_RIF_MAG1 INT;
    DECLARE CASS_RIF_MAG2 INT;   
    
	DECLARE MAX_CASS_MAG1 INT;
    DECLARE MAX_CASS_MAG2 INT;
    DECLARE CASS_DISPONIBILI_MAG1 INT;
    DECLARE CASS_DISPONIBILI_MAG2 INT;
    
	DECLARE DISTANZA_CLW INT;
    DECLARE DISTANZA_CCW INT;
    DECLARE ID_CLW INT;
    DECLARE ID_CCW INT;
    
	DECLARE DISTANZA_MAG1_CLW INT;
    DECLARE DISTANZA_MAG1_CCW INT;
    DECLARE ID_MAG1_CLW INT;
    DECLARE ID_MAG1_CCW INT;
    
    DECLARE DISTANZA_MAG2_CLW INT;
    DECLARE DISTANZA_MAG2_CCW INT;
    DECLARE ID_MAG2_CLW INT;
    DECLARE ID_MAG2_CCW INT;
    
    DECLARE DISTANZA_MAG1 INT;
	DECLARE ID_MAG1 INT;   
    DECLARE DISTANZA_MAG2 INT;
	DECLARE ID_MAG2 INT;   
    
    DECLARE valPOSIZIONE INT;
    DECLARE valMAGAZZINO INT;
    
    SELECT count(*) FROM cassetto WHERE magazzino_ID_MAGAZZINO = 1 INTO MAX_CASS_MAG1;
	SELECT count(*) FROM cassetto WHERE magazzino_ID_MAGAZZINO = 2 INTO MAX_CASS_MAG2;
    
    SELECT count(*) FROM cassetti_disponibili WHERE ID_MAGAZZINO = 1 INTO CASS_DISPONIBILI_MAG1;
	SELECT count(*) FROM cassetti_disponibili WHERE ID_MAGAZZINO = 2 INTO CASS_DISPONIBILI_MAG2;
    
    SET valMAGAZZINO = 1;
    SET valPOSIZIONE = 0;
    
    -- devo verificare che la quartina non esista nel DB, se esiste faccio solo update dei campi
    SELECT count(*) FROM `gualini`.`quartina` WHERE `quartina`.`ID_QUARTINA` = pID_QUARTINA INTO esiste;
    
    IF esiste = 0 THEN
		BEGIN
			ricerca: REPEAT

				-- cerco il casetto che è nell'estrattore
				SELECT ID_CASSETTO from gualini.cassetto WHERE POSIZIONE = cass_posizione AND magazzino_ID_MAGAZZINO = valMAGAZZINO into cass_riferimento;
				-- se l'estrattore è vuoto come riferiemnto prendo l'ultimo cassetto non disponibile movimentato
				IF (cass_riferimento IS NULL) THEN        
					SELECT ID_CASSETTO from cassetti_occupati WHERE POSIZIONE = 0 AND magazzino_ID_MAGAZZINO = valMAGAZZINO Order By lastupdate_milli DESC LIMIT 1 into cass_riferimento;
				END IF;     
                -- se ancora NULL battezzo 1
                IF (cass_riferimento IS NULL) THEN        
					SET cass_riferimento = 1;
				END IF; 
				
				IF valMAGAZZINO = 1 THEN
					SET CASS_RIF_MAG1 = cass_riferimento;
				ELSE
					SET CASS_RIF_MAG2 = cass_riferimento;       
				END IF;

				SELECT ID_CASSETTO
					, IF(ID_CASSETTO - cass_riferimento >= 0, ID_CASSETTO - cass_riferimento, MAX_CASS_MAG1 + (ID_CASSETTO - cass_riferimento)) AS DIST_CLW 
			-- 		, IF(cass_riferimento - ID_CASSETTO >= 0, cass_riferimento - ID_CASSETTO, MAX_CASS_MAG1 + (cass_riferimento - ID_CASSETTO)) AS DIST_CCW
				FROM gualini.cassetti_disponibili 
				WHERE 
					DISPONIBILE = 1 
					AND ID_CASSETTO != cass_riferimento 
					and ID_MAGAZZINO = valMAGAZZINO
					and POSIZIONE = valPOSIZIONE    
				order by 
				DIST_CLW
				LIMIT 1
				INTO ID_CLW, DISTANZA_CLW
				;
				
				SELECT ID_CASSETTO
		-- 		, IF(ID_CASSETTO - cass_riferimento >= 0, ID_CASSETTO - cass_riferimento, MAX_CASS_MAG1 + (ID_CASSETTO - cass_riferimento)) AS DIST_CLW 
				, IF(cass_riferimento - ID_CASSETTO >= 0, cass_riferimento - ID_CASSETTO, MAX_CASS_MAG1 + (cass_riferimento - ID_CASSETTO)) AS DIST_CCW
				FROM gualini.cassetti_disponibili 
				WHERE 
					DISPONIBILE = 1 
					AND ID_CASSETTO != cass_riferimento 
					and ID_MAGAZZINO = valMAGAZZINO
					and POSIZIONE = valPOSIZIONE    
				order by 
				DIST_CCW
				LIMIT 1
				INTO  ID_CCW, DISTANZA_CCW;
				
				IF valMAGAZZINO = 1 THEN
					SET DISTANZA_MAG1_CLW = DISTANZA_CLW;
					SET DISTANZA_MAG1_CCW = DISTANZA_CCW;
					SET ID_MAG1_CLW = ID_CLW;
					SET ID_MAG1_CCW = ID_CCW;
				ELSE
					SET DISTANZA_MAG2_CLW = DISTANZA_CLW;
					SET DISTANZA_MAG2_CCW = DISTANZA_CCW;   
					SET ID_MAG2_CLW = ID_CLW;
					SET ID_MAG2_CCW = ID_CCW;
				END IF;
			
				SET valMAGAZZINO = valMAGAZZINO + 1 ;
				SET cass_riferimento = NULL;
				
			UNTIL valMAGAZZINO > 2
			END REPEAT ricerca;	

			IF TipoCarico = 0 THEN
				IF LeggiDaQuadra = 1 THEN
					SET magazzino = 1;
					SET cassetto = IF(DISTANZA_MAG1_CLW <= DISTANZA_MAG1_CCW, ID_MAG1_CLW, ID_MAG1_CCW);
				ELSE
					SET magazzino = 2;
					SET cassetto = IF(DISTANZA_MAG2_CLW <= DISTANZA_MAG2_CCW, ID_MAG2_CLW, ID_MAG2_CCW);
				END IF;
			ELSE 
				SET DISTANZA_MAG1 = IF(DISTANZA_MAG1_CLW <= DISTANZA_MAG1_CCW, DISTANZA_MAG1_CLW, DISTANZA_MAG1_CCW);
				SET ID_MAG1 = IF(DISTANZA_MAG1_CLW <= DISTANZA_MAG1_CCW, ID_MAG1_CLW, ID_MAG1_CCW);
				
				SET DISTANZA_MAG2 = IF(DISTANZA_MAG2_CLW <= DISTANZA_MAG2_CCW, DISTANZA_MAG2_CLW, DISTANZA_MAG2_CCW);
				SET ID_MAG2 = IF(DISTANZA_MAG2_CLW <= DISTANZA_MAG2_CCW, ID_MAG2_CLW, ID_MAG2_CCW);
				
				-- guardo se le distanze sono uguali
				IF DISTANZA_MAG1 = DISTANZA_MAG2 THEN
				-- in questo caso prendo dal magazzino più vuoto
					SET magazzino = IF(CASS_DISPONIBILI_MAG1 <= CASS_DISPONIBILI_MAG2, 1, 2);
					SET cassetto  = IF(CASS_DISPONIBILI_MAG1 <= CASS_DISPONIBILI_MAG2, ID_MAG1, ID_MAG2);
				END IF;
				-- altrimenti prenso dal magazzino con distanza minore
				SET magazzino = IF(DISTANZA_MAG1 < DISTANZA_MAG2, 1, 2);
				SET cassetto  = IF(DISTANZA_MAG1 < DISTANZA_MAG2, ID_MAG1, ID_MAG2);
			END IF;
            
            -- se cassetto o magazzino sono NULL significa che magazzino pieno e non posso inserire allora forzo i valori a zero
            IF (cassetto IS NULL OR magazzino IS NULL) THEN
				SET magazzino = 0;
                SET cassetto  = 0;
            END IF;

			-- sarebbe da ottimizzare in base al cassetto fuori o se non ci sono cassetti fuori in base al cassetto che è di fronte al cassetto fuori
		   
		   IF (OP = "INS" AND cassetto > 0 AND magazzino > 0) THEN
				INSERT INTO `gualini`.`quartina`
					(`ID_QUARTINA`,
					`TOTALE_PEZZI_QUARTINA`,
					`NOME_COMMESSA`,
					`NUM_SQUADRETTE1`,
					`COD_SQUADRETTA1`,
					`NUM_SQADRETTE2`,
					`COD_SQUADRETTA2`,
					`cassetto_ID_CASSETTO`,
					`cassetto_magazzino_ID_MAGAZZINO`)
					VALUES
					(pID_QUARTINA,
					pTOTALE_PEZZI_QUARTINA,
					pNOME_COMMESSA,
					pNUM_SQUADRETTE1,
					pCOD_SQUADRETTA1,
					pNUM_SQADRETTE2,
					pCOD_SQUADRETTA2,
					cassetto,
					magazzino)
                    /*
					ON duplicate key update 
					`TOTALE_PEZZI_QUARTINA` = pTOTALE_PEZZI_QUARTINA,
					`NOME_COMMESSA` = pNOME_COMMESSA,
					`NUM_SQUADRETTE1` = pNUM_SQUADRETTE1,
					`COD_SQUADRETTA1` = pCOD_SQUADRETTA1,
					`NUM_SQADRETTE2` = pNUM_SQADRETTE2,
					`COD_SQUADRETTA2` = pCOD_SQUADRETTA2
                    */
				;
			END IF;
			
		 --    SELECT magazzino AS MAGAZZINO, cassetto AS CASSETTO, pID_QUARTINA AS ID_QUARTINA;
			SELECT magazzino AS MAGAZZINO, cassetto AS CASSETTO, DISTANZA_MAG1_CLW, DISTANZA_MAG1_CCW, DISTANZA_MAG2_CLW, DISTANZA_MAG2_CCW, CASS_RIF_MAG1, CASS_RIF_MAG2;
			
		END;
    ELSE
    -- caso in cui la quartina esiste già
		BEGIN
        -- aggiorno i dati
			IF (OP = "UPD") THEN
                UPDATE `gualini`.`quartina`
					SET
					`TOTALE_PEZZI_QUARTINA` = pTOTALE_PEZZI_QUARTINA,
					`NUM_SQUADRETTE1` = pNUM_SQUADRETTE1,
					`COD_SQUADRETTA1` = pCOD_SQUADRETTA1,
					`NUM_SQADRETTE2` = pNUM_SQADRETTE2,
					`COD_SQUADRETTA2` = pCOD_SQUADRETTA2,
					`NOME_COMMESSA` = pNOME_COMMESSA
					WHERE `quartina`.`ID_QUARTINA` = pID_QUARTINA;                
			END IF;
			-- torno i valori di magazzino e cassetto      
			SELECT `cassetto_magazzino_ID_MAGAZZINO` AS MAGAZZINO, `cassetto_ID_CASSETTO` AS CASSETTO, pID_QUARTINA AS ID_QUARTINA FROM `gualini`.`quartina`
				WHERE `quartina`.`ID_QUARTINA` = pID_QUARTINA;
        END;
    END IF;
    


    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crea_config_magazzini_DELETE_ALL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crea_config_magazzini_DELETE_ALL`()
BEGIN
    DECLARE iMagazzino INT DEFAULT 1;
    DECLARE iCassetti INT DEFAULT 1;
    DECLARE max_cassetti INT DEFAULT 30;
    DECLARE num_magazzini INT DEFAULT 2;
    DECLARE nome_magazzino VARCHAR(15) DEFAULT 'MAG_';
    
    -- elimino tutti i record
    delete from `gualini`.`pezzo`;
    delete from `gualini`.`quartina`;
    delete from `gualini`.`cassetto`;
    delete from `gualini`.`magazzino`;
    
    
-- creo i magazzini
    SET iMagazzino = 1;
    WHILE iMagazzino <= num_magazzini DO
        SET nome_magazzino = CONCAT('MAG_', CAST(iMagazzino AS CHAR))  ;

        INSERT INTO `gualini`.`magazzino` 
        (ID_MAGAZZINO, NOME, STATO, PIENO)
        VALUES
        (iMagazzino,nome_magazzino,0,0);
        
    -- creo i cassetti
        SET iCassetti = 1;
        
        WHILE iCassetti <= max_cassetti DO

            INSERT INTO `gualini`.`cassetto`
                (`ID_CASSETTO`,
                `DISPONIBILE`,
                `STATO`,
                `magazzino_ID_MAGAZZINO`)
                VALUES
                (
                iCassetti,
                1,
                0,
                iMagazzino
                );


            SET iCassetti = iCassetti + 1;
        END WHILE;
    -- fine creo i cassetti    
        
        SET iMagazzino = iMagazzino + 1;
    END WHILE;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `crea_config_magazzini_mantienipezzipresenti` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `crea_config_magazzini_mantienipezzipresenti`()
BEGIN
    DECLARE iMagazzino INT DEFAULT 1;
    DECLARE iCassetti INT DEFAULT 1;
    DECLARE max_cassetti INT DEFAULT 30;
    DECLARE num_magazzini INT DEFAULT 2;
    DECLARE nome_magazzino VARCHAR(15) DEFAULT 'MAG_';
    
    -- elimino cassetti vuoti
    delete from `gualini`.`cassetto` where 
		(SELECT COUNT(ID_CASSETTO) from quartina AS B where (ID_CASSETTO = B.cassetto_ID_CASSETTO) = 0) 
		AND 
		(SELECT COUNT(`magazzino_ID_MAGAZZINO`) from quartina AS B where (`magazzino_ID_MAGAZZINO` = B.`cassetto_magazzino_ID_MAGAZZINO`) = 0);
    
    -- elimino magazzini vuoti
	delete from `gualini`.`magazzino` where 
		(SELECT COUNT(`ID_MAGAZZINO`) from quartina AS B where (`ID_MAGAZZINO` = B.`cassetto_magazzino_ID_MAGAZZINO`) = 0);
    
    
-- creo i magazzini
    SET iMagazzino = 1;
    WHILE iMagazzino <= num_magazzini DO
        SET nome_magazzino = CONCAT('MAG_', CAST(iMagazzino AS CHAR))  ;

        INSERT INTO `gualini`.`magazzino` 
        (ID_MAGAZZINO, NOME, STATO, PIENO)
        VALUES
        (iMagazzino,nome_magazzino,0,0) 
			ON DUPLICATE KEY UPDATE STATO = 0;
        COMMIT;
        
    -- creo i cassetti
        SET iCassetti = 1;
        
        WHILE iCassetti <= max_cassetti DO

           INSERT INTO `gualini`.`cassetto`
                (`ID_CASSETTO`,
                `DISPONIBILE`,
                `STATO`,
                `magazzino_ID_MAGAZZINO`)
                VALUES
                (
                iCassetti,
                1,
                0,
                iMagazzino
                ) ON DUPLICATE KEY UPDATE  STATO = 0;


            SET iCassetti = iCassetti + 1;
        END WHILE;
    -- fine creo i cassetti    
        
        SET iMagazzino = iMagazzino + 1;
    END WHILE;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `definizione_posizione_cassetti` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `definizione_posizione_cassetti`()
BEGIN

-- elimino tutti i record
    delete from `gualini`.`posizione_cassetti`;
    
    INSERT INTO `gualini`.`posizione_cassetti`(`ID_POSIZIONE_CASSETTI`,`DESCRIZIONE`) VALUES ( 0, 'MAG');
    INSERT INTO `gualini`.`posizione_cassetti`(`ID_POSIZIONE_CASSETTI`,`DESCRIZIONE`) VALUES ( 1, 'ES_R1');
    INSERT INTO `gualini`.`posizione_cassetti`(`ID_POSIZIONE_CASSETTI`,`DESCRIZIONE`) VALUES ( 2, 'ES_R2');
    INSERT INTO `gualini`.`posizione_cassetti`(`ID_POSIZIONE_CASSETTI`,`DESCRIZIONE`) VALUES ( 3, 'ES_MAN');

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inserisci_pezzo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inserisci_pezzo`(

  `pID_QUARTINA` varchar(45) ,
 /*   IN `Quartina_TotPezzi` tinyint(4),
    IN `Quartina_NomeCommessa` varchar(45),
    IN `Quartina_umSquadrette1` tinyint(4),
    IN `Quartina_CodSquadretta1` varchar(45),
    IN `Quartina_NumSquadrette2` tinyint(4),
    IN `Quartina_CodSquadretta2` varchar(45),
*/    
  `pPOSIZIONE` tinyint(4),
  `pID_PEZZO` varchar(45),
  `pNOME_PEZZO_ESTERNO` varchar(45),
  `pCODICE_PROFILO` varchar(45),
  `pSERIE_PROFILO` varchar(45),
  `pMAX_LUNGHEZZA` int(11),
  `pALTEZZA_PROFILO` int(11),
  `pLARGHEZZA_PROFILO` int(11),
  `pMISURA_CAMERA_ESTERNA` int(11),
  `pAPPOGGIO_PEZZO` tinyint(4),
  `pPOSIZIONE_PEZZO_ESTERNO` tinyint(4),
  `pID_PEZZO_ESTERNO` varchar(45),
  `pLUNGHEZZA_PEZZO_ESTERNO` int(11),
  `pFILE_XML` varchar(45),
  `pDATA` varchar(45),
  `pORA` varchar(45)
)
BEGIN
    /*
        cercare se esiste quartina 
            se si aggiungere pezzo 
        
        se non esiste quartina
            non fare nulla
    */
    DECLARE valID_QUARTINA  varchar(45);
    DECLARE count_q int DEFAULT 0;
    
    /*cerco se esiste quartina*/
    SELECT  Count(ID_QUARTINA) into count_q FROM gualini.quartina WHERE ID_QUARTINA= pID_QUARTINA;

    IF (count_q= 1) THEN
		INSERT INTO `gualini`.`pezzo`
			(`POSIZIONE`,
			`ID_PEZZO`,
			`NOME_PEZZO_ESTERNO`,
			`CODICE_PROFILO`,
			`SERIE_PROFILO`,
			`MAX_LUNGHEZZA`,
			`ALTEZZA_PROFILO`,
			`LARGHEZZA_PROFILO`,
			`MISURA_CAMERA_ESTERNA`,
			`APPOGGIO_PEZZO`,
			`POSIZIONE_PEZZO_ESTERNO`,
			`ID_PEZZO_ESTERNO`,
			`LUNGHEZZA_PEZZO_ESTERNO`,
			`FILE_XML`,
			`DATA`,
			`ORA`,
			`quartina_ID_QUARTINA`)
		VALUES
		(pPOSIZIONE,
		pID_PEZZO,
		pNOME_PEZZO_ESTERNO,
		pCODICE_PROFILO,
		pSERIE_PROFILO,
		pMAX_LUNGHEZZA,
		pALTEZZA_PROFILO,
		pLARGHEZZA_PROFILO,
		pMISURA_CAMERA_ESTERNA,
		pAPPOGGIO_PEZZO,
		pPOSIZIONE_PEZZO_ESTERNO,
		pID_PEZZO_ESTERNO,
		pLUNGHEZZA_PEZZO_ESTERNO,
		pFILE_XML,
		pDATA,
		pORA,
		pID_QUARTINA)
		;    
    END IF;
    
    SELECT count_q;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_cassetti` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,ALLOW_INVALID_DATES,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_cassetti`()
BEGIN
    DECLARE v1 INT DEFAULT 11;

    WHILE v1 < 33 DO

    INSERT INTO `gualini`.`cassetto`
    (`idCassetto`,
    `Disponibile`,
    `Stato`)
    VALUES
    (v1,1,0);

    SET v1 = v1 + 1;
    END WHILE;
END ;;
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

-- Dump completed on 2015-12-04 17:45:37
