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
-- Temporary view structure for view `tutti_pezzi_profili_banchisquadrette`
--

DROP TABLE IF EXISTS `tutti_pezzi_profili_banchisquadrette`;
/*!50001 DROP VIEW IF EXISTS `tutti_pezzi_profili_banchisquadrette`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `tutti_pezzi_profili_banchisquadrette` AS SELECT 
 1 AS `ID_CASSETTO`,
 1 AS `DISPONIBILE`,
 1 AS `STATO`,
 1 AS `POSIZIONE_CASSETTO`,
 1 AS `magazzino_ID_MAGAZZINO`,
 1 AS `lastupdate`,
 1 AS `lastupdate_milli`,
 1 AS `ID_QUARTINA`,
 1 AS `TOTALE_PEZZI_QUARTINA`,
 1 AS `NUM_SQUADRETTE1`,
 1 AS `COD_SQUADRETTA1`,
 1 AS `NUM_SQUADRETTE2`,
 1 AS `COD_SQUADRETTA2`,
 1 AS `NOME_COMMESSA`,
 1 AS `cassetto_ID_CASSETTO`,
 1 AS `cassetto_magazzino_ID_MAGAZZINO`,
 1 AS `POSIZIONE`,
 1 AS `ID_PEZZO`,
 1 AS `NOME_PEZZO_ESTERNO`,
 1 AS `CODICE_PROFILO`,
 1 AS `SERIE_PROFILO`,
 1 AS `MAX_LUNGHEZZA`,
 1 AS `ALTEZZA_PROFILO`,
 1 AS `LARGHEZZA_PROFILO`,
 1 AS `MISURA_CAMERA_ESTERNA`,
 1 AS `APPOGGIO_PEZZO`,
 1 AS `POSIZIONE_PEZZO_ESTERNO`,
 1 AS `ID_PEZZO_ESTERNO`,
 1 AS `LUNGHEZZA_PEZZO_ESTERNO`,
 1 AS `FILE_XML`,
 1 AS `DATA`,
 1 AS `ORA`,
 1 AS `quartina_ID_QUARTINA`,
 1 AS `PRELEVATO`,
 1 AS `SerieProfilo`,
 1 AS `CodiceProfilo`,
 1 AS `Attrezzatura`,
 1 AS `CodiceRobot`,
 1 AS `OffsetPezzo`,
 1 AS `OffsetSuadretta1`,
 1 AS `OffsetSuadretta2`,
 1 AS `Colla`,
 1 AS `Apertura`,
 1 AS `TIPO_PROFILO`,
 1 AS `TELAIO`,
 1 AS `BANCO_SQ1`,
 1 AS `FILA_SQ1`,
 1 AS `BANCO_SQ2`,
 1 AS `FILA_SQ2`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cassetti_in_riempimento`
--

DROP TABLE IF EXISTS `cassetti_in_riempimento`;
/*!50001 DROP VIEW IF EXISTS `cassetti_in_riempimento`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `cassetti_in_riempimento` AS SELECT 
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
 1 AS `NOME_COMMESSA`,
 1 AS `TOTALE_PEZZI_QUARTINA`,
 1 AS `PEZZI_PRESENTI`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tutti_pezzi_count_profili`
--

DROP TABLE IF EXISTS `tutti_pezzi_count_profili`;
/*!50001 DROP VIEW IF EXISTS `tutti_pezzi_count_profili`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `tutti_pezzi_count_profili` AS SELECT 
 1 AS `ID_CASSETTO`,
 1 AS `DISPONIBILE`,
 1 AS `STATO`,
 1 AS `POSIZIONE_CASSETTO`,
 1 AS `magazzino_ID_MAGAZZINO`,
 1 AS `lastupdate`,
 1 AS `lastupdate_milli`,
 1 AS `ID_QUARTINA`,
 1 AS `TOTALE_PEZZI_QUARTINA`,
 1 AS `NUM_SQUADRETTE1`,
 1 AS `COD_SQUADRETTA1`,
 1 AS `NUM_SQUADRETTE2`,
 1 AS `COD_SQUADRETTA2`,
 1 AS `NOME_COMMESSA`,
 1 AS `cassetto_ID_CASSETTO`,
 1 AS `cassetto_magazzino_ID_MAGAZZINO`,
 1 AS `POSIZIONE`,
 1 AS `ID_PEZZO`,
 1 AS `NOME_PEZZO_ESTERNO`,
 1 AS `CODICE_PROFILO`,
 1 AS `SERIE_PROFILO`,
 1 AS `MAX_LUNGHEZZA`,
 1 AS `ALTEZZA_PROFILO`,
 1 AS `LARGHEZZA_PROFILO`,
 1 AS `MISURA_CAMERA_ESTERNA`,
 1 AS `APPOGGIO_PEZZO`,
 1 AS `POSIZIONE_PEZZO_ESTERNO`,
 1 AS `ID_PEZZO_ESTERNO`,
 1 AS `LUNGHEZZA_PEZZO_ESTERNO`,
 1 AS `FILE_XML`,
 1 AS `DATA`,
 1 AS `ORA`,
 1 AS `quartina_ID_QUARTINA`,
 1 AS `PRELEVATO`,
 1 AS `SerieProfilo`,
 1 AS `CodiceProfilo`,
 1 AS `Attrezzatura`,
 1 AS `CodiceRobot`,
 1 AS `OffsetPezzo`,
 1 AS `OffsetSuadretta1`,
 1 AS `OffsetSuadretta2`,
 1 AS `Colla`,
 1 AS `Apertura`,
 1 AS `TIPO_PROFILO`,
 1 AS `TELAIO`,
 1 AS `BANCO_SQ1`,
 1 AS `FILA_SQ1`,
 1 AS `BANCO_SQ2`,
 1 AS `FILA_SQ2`,
 1 AS `COUNT_Z`*/;
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
 1 AS `NOME_COMMESSA`,
 1 AS `TOTALE_PEZZI_QUARTINA`,
 1 AS `PEZZI_PRESENTI`*/;
SET character_set_client = @saved_cs_client;

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
-- Temporary view structure for view `tutti_pezzi`
--

DROP TABLE IF EXISTS `tutti_pezzi`;
/*!50001 DROP VIEW IF EXISTS `tutti_pezzi`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `tutti_pezzi` AS SELECT 
 1 AS `ID_CASSETTO`,
 1 AS `DISPONIBILE`,
 1 AS `STATO`,
 1 AS `POSIZIONE_CASSETTO`,
 1 AS `magazzino_ID_MAGAZZINO`,
 1 AS `lastupdate`,
 1 AS `lastupdate_milli`,
 1 AS `ID_QUARTINA`,
 1 AS `TOTALE_PEZZI_QUARTINA`,
 1 AS `NUM_SQUADRETTE1`,
 1 AS `COD_SQUADRETTA1`,
 1 AS `NUM_SQUADRETTE2`,
 1 AS `COD_SQUADRETTA2`,
 1 AS `NOME_COMMESSA`,
 1 AS `cassetto_ID_CASSETTO`,
 1 AS `cassetto_magazzino_ID_MAGAZZINO`,
 1 AS `POSIZIONE`,
 1 AS `ID_PEZZO`,
 1 AS `NOME_PEZZO_ESTERNO`,
 1 AS `CODICE_PROFILO`,
 1 AS `SERIE_PROFILO`,
 1 AS `MAX_LUNGHEZZA`,
 1 AS `ALTEZZA_PROFILO`,
 1 AS `LARGHEZZA_PROFILO`,
 1 AS `MISURA_CAMERA_ESTERNA`,
 1 AS `APPOGGIO_PEZZO`,
 1 AS `POSIZIONE_PEZZO_ESTERNO`,
 1 AS `ID_PEZZO_ESTERNO`,
 1 AS `LUNGHEZZA_PEZZO_ESTERNO`,
 1 AS `FILE_XML`,
 1 AS `DATA`,
 1 AS `ORA`,
 1 AS `quartina_ID_QUARTINA`,
 1 AS `PRELEVATO`,
 1 AS `SerieProfilo`,
 1 AS `CodiceProfilo`,
 1 AS `Attrezzatura`,
 1 AS `CodiceRobot`,
 1 AS `OffsetPezzo`,
 1 AS `OffsetSuadretta1`,
 1 AS `OffsetSuadretta2`,
 1 AS `Colla`,
 1 AS `Apertura`,
 1 AS `TIPO_PROFILO`,
 1 AS `TELAIO`,
 1 AS `BANCO_SQ1`,
 1 AS `FILA_SQ1`,
 1 AS `BANCO_SQ2`,
 1 AS `FILA_SQ2`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cassetti_pieni`
--

DROP TABLE IF EXISTS `cassetti_pieni`;
/*!50001 DROP VIEW IF EXISTS `cassetti_pieni`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `cassetti_pieni` AS SELECT 
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
 1 AS `NOME_COMMESSA`,
 1 AS `TOTALE_PEZZI_QUARTINA`,
 1 AS `PEZZI_PRESENTI`*/;
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
-- Final view structure for view `tutti_pezzi_profili_banchisquadrette`
--

/*!50001 DROP VIEW IF EXISTS `tutti_pezzi_profili_banchisquadrette`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tutti_pezzi_profili_banchisquadrette` AS select `tutti`.`ID_CASSETTO` AS `ID_CASSETTO`,`tutti`.`DISPONIBILE` AS `DISPONIBILE`,`tutti`.`STATO` AS `STATO`,`tutti`.`POSIZIONE_CASSETTO` AS `POSIZIONE_CASSETTO`,`tutti`.`magazzino_ID_MAGAZZINO` AS `magazzino_ID_MAGAZZINO`,`tutti`.`lastupdate` AS `lastupdate`,`tutti`.`lastupdate_milli` AS `lastupdate_milli`,`tutti`.`ID_QUARTINA` AS `ID_QUARTINA`,`tutti`.`TOTALE_PEZZI_QUARTINA` AS `TOTALE_PEZZI_QUARTINA`,`tutti`.`NUM_SQUADRETTE1` AS `NUM_SQUADRETTE1`,`tutti`.`COD_SQUADRETTA1` AS `COD_SQUADRETTA1`,`tutti`.`NUM_SQUADRETTE2` AS `NUM_SQUADRETTE2`,`tutti`.`COD_SQUADRETTA2` AS `COD_SQUADRETTA2`,`tutti`.`NOME_COMMESSA` AS `NOME_COMMESSA`,`tutti`.`cassetto_ID_CASSETTO` AS `cassetto_ID_CASSETTO`,`tutti`.`cassetto_magazzino_ID_MAGAZZINO` AS `cassetto_magazzino_ID_MAGAZZINO`,`tutti`.`POSIZIONE` AS `POSIZIONE`,`tutti`.`ID_PEZZO` AS `ID_PEZZO`,`tutti`.`NOME_PEZZO_ESTERNO` AS `NOME_PEZZO_ESTERNO`,`tutti`.`CODICE_PROFILO` AS `CODICE_PROFILO`,`tutti`.`SERIE_PROFILO` AS `SERIE_PROFILO`,`tutti`.`MAX_LUNGHEZZA` AS `MAX_LUNGHEZZA`,`tutti`.`ALTEZZA_PROFILO` AS `ALTEZZA_PROFILO`,`tutti`.`LARGHEZZA_PROFILO` AS `LARGHEZZA_PROFILO`,`tutti`.`MISURA_CAMERA_ESTERNA` AS `MISURA_CAMERA_ESTERNA`,`tutti`.`APPOGGIO_PEZZO` AS `APPOGGIO_PEZZO`,`tutti`.`POSIZIONE_PEZZO_ESTERNO` AS `POSIZIONE_PEZZO_ESTERNO`,`tutti`.`ID_PEZZO_ESTERNO` AS `ID_PEZZO_ESTERNO`,`tutti`.`LUNGHEZZA_PEZZO_ESTERNO` AS `LUNGHEZZA_PEZZO_ESTERNO`,`tutti`.`FILE_XML` AS `FILE_XML`,`tutti`.`DATA` AS `DATA`,`tutti`.`ORA` AS `ORA`,`tutti`.`quartina_ID_QUARTINA` AS `quartina_ID_QUARTINA`,`tutti`.`PRELEVATO` AS `PRELEVATO`,`profili`.`SerieProfilo` AS `SerieProfilo`,`profili`.`CodiceProfilo` AS `CodiceProfilo`,`profili`.`Attrezzatura` AS `Attrezzatura`,`profili`.`CodiceRobot` AS `CodiceRobot`,`profili`.`OffsetPezzo` AS `OffsetPezzo`,`profili`.`OffsetSuadretta1` AS `OffsetSuadretta1`,`profili`.`OffsetSuadretta2` AS `OffsetSuadretta2`,`profili`.`Colla` AS `Colla`,`profili`.`Apertura` AS `Apertura`,`profili`.`TIPO_PROFILO` AS `TIPO_PROFILO`,`profili`.`TELAIO` AS `TELAIO`,`banco1`.`ID_BANCO` AS `BANCO_SQ1`,`banco1`.`NumeroFila` AS `FILA_SQ1`,`banco2`.`ID_BANCO` AS `BANCO_SQ2`,`banco2`.`NumeroFila` AS `FILA_SQ2` from (((`tutti_pezzi` `tutti` left join `r2_codiciprofili` `profili` on(((`tutti`.`SERIE_PROFILO` = convert(`profili`.`SerieProfilo` using utf8)) and (`tutti`.`CODICE_PROFILO` = convert(`profili`.`CodiceProfilo` using utf8))))) left join `r2_banchi_squadrette` `banco1` on((convert(`banco1`.`CodiceSquadretta` using utf8) = `tutti`.`COD_SQUADRETTA1`))) left join `r2_banchi_squadrette` `banco2` on((convert(`banco2`.`CodiceSquadretta` using utf8) = `tutti`.`COD_SQUADRETTA2`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cassetti_in_riempimento`
--

/*!50001 DROP VIEW IF EXISTS `cassetti_in_riempimento`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cassetti_in_riempimento` AS select `cass`.`ID_MAGAZZINO` AS `ID_MAGAZZINO`,`cass`.`MAG_NOME` AS `MAG_NOME`,`cass`.`MAG_STATO` AS `MAG_STATO`,`cass`.`MAG_PIENO` AS `MAG_PIENO`,`cass`.`ID_CASSETTO` AS `ID_CASSETTO`,`cass`.`DISPONIBILE` AS `DISPONIBILE`,`cass`.`STATO` AS `STATO`,`cass`.`POSIZIONE` AS `POSIZIONE`,`cass`.`magazzino_ID_MAGAZZINO` AS `magazzino_ID_MAGAZZINO`,`cass`.`lastupdate` AS `lastupdate`,`cass`.`lastupdate_milli` AS `lastupdate_milli`,`qrt`.`ID_QUARTINA` AS `ID_QUARTINA`,`qrt`.`NOME_COMMESSA` AS `NOME_COMMESSA`,`qrt`.`TOTALE_PEZZI_QUARTINA` AS `TOTALE_PEZZI_QUARTINA`,(select count(0) from `pezzo` where (`pezzo`.`quartina_ID_QUARTINA` = `qrt`.`ID_QUARTINA`)) AS `PEZZI_PRESENTI` from (`tutti_cassetti` `cass` join `quartina` `qrt` on(((`qrt`.`cassetto_ID_CASSETTO` = `cass`.`ID_CASSETTO`) and (`qrt`.`cassetto_magazzino_ID_MAGAZZINO` = `cass`.`ID_MAGAZZINO`)))) where ((select count(0) from `pezzo` where (`pezzo`.`quartina_ID_QUARTINA` = `qrt`.`ID_QUARTINA`)) < `qrt`.`TOTALE_PEZZI_QUARTINA`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tutti_pezzi_count_profili`
--

/*!50001 DROP VIEW IF EXISTS `tutti_pezzi_count_profili`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tutti_pezzi_count_profili` AS select `tutti`.`ID_CASSETTO` AS `ID_CASSETTO`,`tutti`.`DISPONIBILE` AS `DISPONIBILE`,`tutti`.`STATO` AS `STATO`,`tutti`.`POSIZIONE_CASSETTO` AS `POSIZIONE_CASSETTO`,`tutti`.`magazzino_ID_MAGAZZINO` AS `magazzino_ID_MAGAZZINO`,`tutti`.`lastupdate` AS `lastupdate`,`tutti`.`lastupdate_milli` AS `lastupdate_milli`,`tutti`.`ID_QUARTINA` AS `ID_QUARTINA`,`tutti`.`TOTALE_PEZZI_QUARTINA` AS `TOTALE_PEZZI_QUARTINA`,`tutti`.`NUM_SQUADRETTE1` AS `NUM_SQUADRETTE1`,`tutti`.`COD_SQUADRETTA1` AS `COD_SQUADRETTA1`,`tutti`.`NUM_SQUADRETTE2` AS `NUM_SQUADRETTE2`,`tutti`.`COD_SQUADRETTA2` AS `COD_SQUADRETTA2`,`tutti`.`NOME_COMMESSA` AS `NOME_COMMESSA`,`tutti`.`cassetto_ID_CASSETTO` AS `cassetto_ID_CASSETTO`,`tutti`.`cassetto_magazzino_ID_MAGAZZINO` AS `cassetto_magazzino_ID_MAGAZZINO`,`tutti`.`POSIZIONE` AS `POSIZIONE`,`tutti`.`ID_PEZZO` AS `ID_PEZZO`,`tutti`.`NOME_PEZZO_ESTERNO` AS `NOME_PEZZO_ESTERNO`,`tutti`.`CODICE_PROFILO` AS `CODICE_PROFILO`,`tutti`.`SERIE_PROFILO` AS `SERIE_PROFILO`,`tutti`.`MAX_LUNGHEZZA` AS `MAX_LUNGHEZZA`,`tutti`.`ALTEZZA_PROFILO` AS `ALTEZZA_PROFILO`,`tutti`.`LARGHEZZA_PROFILO` AS `LARGHEZZA_PROFILO`,`tutti`.`MISURA_CAMERA_ESTERNA` AS `MISURA_CAMERA_ESTERNA`,`tutti`.`APPOGGIO_PEZZO` AS `APPOGGIO_PEZZO`,`tutti`.`POSIZIONE_PEZZO_ESTERNO` AS `POSIZIONE_PEZZO_ESTERNO`,`tutti`.`ID_PEZZO_ESTERNO` AS `ID_PEZZO_ESTERNO`,`tutti`.`LUNGHEZZA_PEZZO_ESTERNO` AS `LUNGHEZZA_PEZZO_ESTERNO`,`tutti`.`FILE_XML` AS `FILE_XML`,`tutti`.`DATA` AS `DATA`,`tutti`.`ORA` AS `ORA`,`tutti`.`quartina_ID_QUARTINA` AS `quartina_ID_QUARTINA`,`tutti`.`PRELEVATO` AS `PRELEVATO`,`tutti`.`SerieProfilo` AS `SerieProfilo`,`tutti`.`CodiceProfilo` AS `CodiceProfilo`,`tutti`.`Attrezzatura` AS `Attrezzatura`,`tutti`.`CodiceRobot` AS `CodiceRobot`,`tutti`.`OffsetPezzo` AS `OffsetPezzo`,`tutti`.`OffsetSuadretta1` AS `OffsetSuadretta1`,`tutti`.`OffsetSuadretta2` AS `OffsetSuadretta2`,`tutti`.`Colla` AS `Colla`,`tutti`.`Apertura` AS `Apertura`,`tutti`.`TIPO_PROFILO` AS `TIPO_PROFILO`,`tutti`.`TELAIO` AS `TELAIO`,`tutti`.`BANCO_SQ1` AS `BANCO_SQ1`,`tutti`.`FILA_SQ1` AS `FILA_SQ1`,`tutti`.`BANCO_SQ2` AS `BANCO_SQ2`,`tutti`.`FILA_SQ2` AS `FILA_SQ2`,(select count(0) from `tutti_pezzi_profili_banchisquadrette` `self` where ((`tutti`.`quartina_ID_QUARTINA` = `self`.`quartina_ID_QUARTINA`) and (`self`.`TIPO_PROFILO` = 'Z'))) AS `COUNT_Z` from `tutti_pezzi` `tutti` */;
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
/*!50001 VIEW `cassetti_occupati` AS select `cass`.`ID_MAGAZZINO` AS `ID_MAGAZZINO`,`cass`.`MAG_NOME` AS `MAG_NOME`,`cass`.`MAG_STATO` AS `MAG_STATO`,`cass`.`MAG_PIENO` AS `MAG_PIENO`,`cass`.`ID_CASSETTO` AS `ID_CASSETTO`,`cass`.`DISPONIBILE` AS `DISPONIBILE`,`cass`.`STATO` AS `STATO`,`cass`.`POSIZIONE` AS `POSIZIONE`,`cass`.`magazzino_ID_MAGAZZINO` AS `magazzino_ID_MAGAZZINO`,`cass`.`lastupdate` AS `lastupdate`,`cass`.`lastupdate_milli` AS `lastupdate_milli`,`qrt`.`ID_QUARTINA` AS `ID_QUARTINA`,`qrt`.`NOME_COMMESSA` AS `NOME_COMMESSA`,`qrt`.`TOTALE_PEZZI_QUARTINA` AS `TOTALE_PEZZI_QUARTINA`,(select count(0) from `pezzo` where (`pezzo`.`quartina_ID_QUARTINA` = `qrt`.`ID_QUARTINA`)) AS `PEZZI_PRESENTI` from (`tutti_cassetti` `cass` join `quartina` `qrt` on(((`qrt`.`cassetto_ID_CASSETTO` = `cass`.`ID_CASSETTO`) and (`qrt`.`cassetto_magazzino_ID_MAGAZZINO` = `cass`.`ID_MAGAZZINO`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

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
-- Final view structure for view `tutti_pezzi`
--

/*!50001 DROP VIEW IF EXISTS `tutti_pezzi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tutti_pezzi` AS select `tbcassetto`.`ID_CASSETTO` AS `ID_CASSETTO`,`tbcassetto`.`DISPONIBILE` AS `DISPONIBILE`,`tbcassetto`.`STATO` AS `STATO`,`tbcassetto`.`POSIZIONE` AS `POSIZIONE_CASSETTO`,`tbcassetto`.`magazzino_ID_MAGAZZINO` AS `magazzino_ID_MAGAZZINO`,`tbcassetto`.`lastupdate` AS `lastupdate`,`tbcassetto`.`lastupdate_milli` AS `lastupdate_milli`,`tbquartina`.`ID_QUARTINA` AS `ID_QUARTINA`,`tbquartina`.`TOTALE_PEZZI_QUARTINA` AS `TOTALE_PEZZI_QUARTINA`,`tbquartina`.`NUM_SQUADRETTE1` AS `NUM_SQUADRETTE1`,`tbquartina`.`COD_SQUADRETTA1` AS `COD_SQUADRETTA1`,`tbquartina`.`NUM_SQUADRETTE2` AS `NUM_SQUADRETTE2`,`tbquartina`.`COD_SQUADRETTA2` AS `COD_SQUADRETTA2`,`tbquartina`.`NOME_COMMESSA` AS `NOME_COMMESSA`,`tbquartina`.`cassetto_ID_CASSETTO` AS `cassetto_ID_CASSETTO`,`tbquartina`.`cassetto_magazzino_ID_MAGAZZINO` AS `cassetto_magazzino_ID_MAGAZZINO`,`tbpezzo`.`POSIZIONE` AS `POSIZIONE`,`tbpezzo`.`ID_PEZZO` AS `ID_PEZZO`,`tbpezzo`.`NOME_PEZZO_ESTERNO` AS `NOME_PEZZO_ESTERNO`,`tbpezzo`.`CODICE_PROFILO` AS `CODICE_PROFILO`,`tbpezzo`.`SERIE_PROFILO` AS `SERIE_PROFILO`,`tbpezzo`.`MAX_LUNGHEZZA` AS `MAX_LUNGHEZZA`,`tbpezzo`.`ALTEZZA_PROFILO` AS `ALTEZZA_PROFILO`,`tbpezzo`.`LARGHEZZA_PROFILO` AS `LARGHEZZA_PROFILO`,`tbpezzo`.`MISURA_CAMERA_ESTERNA` AS `MISURA_CAMERA_ESTERNA`,`tbpezzo`.`APPOGGIO_PEZZO` AS `APPOGGIO_PEZZO`,`tbpezzo`.`POSIZIONE_PEZZO_ESTERNO` AS `POSIZIONE_PEZZO_ESTERNO`,`tbpezzo`.`ID_PEZZO_ESTERNO` AS `ID_PEZZO_ESTERNO`,`tbpezzo`.`LUNGHEZZA_PEZZO_ESTERNO` AS `LUNGHEZZA_PEZZO_ESTERNO`,`tbpezzo`.`FILE_XML` AS `FILE_XML`,`tbpezzo`.`DATA` AS `DATA`,`tbpezzo`.`ORA` AS `ORA`,`tbpezzo`.`quartina_ID_QUARTINA` AS `quartina_ID_QUARTINA`,`tbpezzo`.`PRELEVATO` AS `PRELEVATO`,`codprof`.`SerieProfilo` AS `SerieProfilo`,`codprof`.`CodiceProfilo` AS `CodiceProfilo`,`codprof`.`Attrezzatura` AS `Attrezzatura`,`codprof`.`CodiceRobot` AS `CodiceRobot`,`codprof`.`OffsetPezzo` AS `OffsetPezzo`,`codprof`.`OffsetSuadretta1` AS `OffsetSuadretta1`,`codprof`.`OffsetSuadretta2` AS `OffsetSuadretta2`,`codprof`.`Colla` AS `Colla`,`codprof`.`Apertura` AS `Apertura`,`codprof`.`TIPO_PROFILO` AS `TIPO_PROFILO`,`codprof`.`TELAIO` AS `TELAIO`,`banco1`.`ID_BANCO` AS `BANCO_SQ1`,`banco1`.`NumeroFila` AS `FILA_SQ1`,`banco2`.`ID_BANCO` AS `BANCO_SQ2`,`banco2`.`NumeroFila` AS `FILA_SQ2` from (((((`cassetto` `tbcassetto` join `quartina` `tbquartina` on(((`tbcassetto`.`ID_CASSETTO` = `tbquartina`.`cassetto_ID_CASSETTO`) and (`tbcassetto`.`magazzino_ID_MAGAZZINO` = `tbquartina`.`cassetto_magazzino_ID_MAGAZZINO`)))) join `pezzo` `tbpezzo` on((`tbquartina`.`ID_QUARTINA` = `tbpezzo`.`quartina_ID_QUARTINA`))) left join `r2_codiciprofili` `codprof` on(((`tbpezzo`.`CODICE_PROFILO` = convert(`codprof`.`CodiceProfilo` using utf8)) and (`tbpezzo`.`SERIE_PROFILO` = convert(`codprof`.`SerieProfilo` using utf8))))) left join `r2_banchi_squadrette` `banco1` on((convert(`banco1`.`CodiceSquadretta` using utf8) = `tbquartina`.`COD_SQUADRETTA1`))) left join `r2_banchi_squadrette` `banco2` on((convert(`banco2`.`CodiceSquadretta` using utf8) = `tbquartina`.`COD_SQUADRETTA2`))) order by `tbquartina`.`cassetto_ID_CASSETTO`,`tbcassetto`.`magazzino_ID_MAGAZZINO`,`tbpezzo`.`ID_PEZZO` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cassetti_pieni`
--

/*!50001 DROP VIEW IF EXISTS `cassetti_pieni`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cassetti_pieni` AS select `cass`.`ID_MAGAZZINO` AS `ID_MAGAZZINO`,`cass`.`MAG_NOME` AS `MAG_NOME`,`cass`.`MAG_STATO` AS `MAG_STATO`,`cass`.`MAG_PIENO` AS `MAG_PIENO`,`cass`.`ID_CASSETTO` AS `ID_CASSETTO`,`cass`.`DISPONIBILE` AS `DISPONIBILE`,`cass`.`STATO` AS `STATO`,`cass`.`POSIZIONE` AS `POSIZIONE`,`cass`.`magazzino_ID_MAGAZZINO` AS `magazzino_ID_MAGAZZINO`,`cass`.`lastupdate` AS `lastupdate`,`cass`.`lastupdate_milli` AS `lastupdate_milli`,`qrt`.`ID_QUARTINA` AS `ID_QUARTINA`,`qrt`.`NOME_COMMESSA` AS `NOME_COMMESSA`,`qrt`.`TOTALE_PEZZI_QUARTINA` AS `TOTALE_PEZZI_QUARTINA`,(select count(0) from `pezzo` where (`pezzo`.`quartina_ID_QUARTINA` = `qrt`.`ID_QUARTINA`)) AS `PEZZI_PRESENTI` from (`tutti_cassetti` `cass` join `quartina` `qrt` on(((`qrt`.`cassetto_ID_CASSETTO` = `cass`.`ID_CASSETTO`) and (`qrt`.`cassetto_magazzino_ID_MAGAZZINO` = `cass`.`ID_MAGAZZINO`)))) where (`qrt`.`TOTALE_PEZZI_QUARTINA` = (select count(0) from `pezzo` where (`pezzo`.`quartina_ID_QUARTINA` = `qrt`.`ID_QUARTINA`))) */;
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
	DECLARE ppNUM_SQUADRETTE2 INT DEFAULT  0;
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
    
    DECLARE cc INT;

	SET ppmagazzino = pMAGAZZINO;

	add_qrt: REPEAT

		SET ppID_QUARTINA = CONCAT(TO_DAYS(NOW()), pPREFISSO_QRT , "__" , c_QRT);
		-- CALL `gualini`.`CasDECLAREtoPiuVicinoAndInsert`(<{TipoCarico INT}>, <{LeggiDaQuadra INT}>, <{OP VARCHAR(10)}>, <{/* ""  DEFAULT  solo ricerca del casDECLAREto più vicino}>, <{"INS"  DEFAULT  inserisce anche nuova quartina}>, <{"UPD" aggiorna i dati indentificativi della quartina */
		-- 		pID_QUARTINA VARCHAR(45)}>, <{pTOTALE_PEZZI_QUARTINA TINYINT(4)}>, <{pNOME_COMMESSA VARCHAR(45)}>, <{pNUM_SQUADRETTE1 TINYINT(4)}>, <{pCOD_SQUADRETTA1  VARCHAR(45)}>, <{pNUM_SQUADRETTE2 TINYINT(4)}>, <{pCOD_SQUADRETTA2  VARCHAR(45)}>);

		CALL `gualini`.`CassettoPiuVicinoAndInsert`
			(0, pMAGAZZINO, "INS", ppID_QUARTINA, ppTOTALE_PEZZI_QUARTINA, ppNOME_COMMESSA,ppNUM_SQUADRETTE1, ppCOD_SQUADRETTA1,ppNUM_SQUADRETTE2, ppCOD_SQUADRETTA2);
        
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
		pNUM_SQUADRETTE2 TINYINT(4),
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
    
    SELECT count(*) FROM cassetti_disponibili WHERE ID_MAGAZZINO = 1 AND POSIZIONE = 0 INTO CASS_DISPONIBILI_MAG1;
	SELECT count(*) FROM cassetti_disponibili WHERE ID_MAGAZZINO = 2 AND POSIZIONE = 0 INTO CASS_DISPONIBILI_MAG2;
    
    SET valMAGAZZINO = 1;
    SET valPOSIZIONE = 0;
    
    -- devo verificare che la quartina non esista nel DB, se esiste faccio solo update dei campi
    SELECT count(*) FROM `gualini`.`quartina` WHERE `quartina`.`ID_QUARTINA` = pID_QUARTINA INTO esiste;
    
    IF esiste = 0 THEN
    -- caso in cui la quartina non è presente nel magazzino
		BEGIN
			ricerca: REPEAT
				-- inizializzo
				SET cass_riferimento = NULL; 
                SET DISTANZA_CLW = NULL;
				SET DISTANZA_CCW = NULL;
				SET ID_CLW = NULL;
				SET ID_CCW = NULL;
                 
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
					IF CASS_DISPONIBILI_MAG1 > 0 THEN
						SET magazzino = 1;
						SET cassetto = IF(DISTANZA_MAG1_CLW <= DISTANZA_MAG1_CCW, ID_MAG1_CLW, ID_MAG1_CCW);
					ELSE
						SET magazzino = 0;
						SET cassetto = 0;
					END IF;
				ELSE
					IF CASS_DISPONIBILI_MAG2 > 0 THEN
						SET magazzino = 2;
						SET cassetto = IF(DISTANZA_MAG2_CLW <= DISTANZA_MAG2_CCW, ID_MAG2_CLW, ID_MAG2_CCW);
					ELSE
						SET magazzino = 0;
						SET cassetto = 0;
					END IF;
				END IF;
			ELSE 
				-- caso in cui posso caricare in uno qualsiasi dei magazzini
                
                -- guardo se ho cassetti disponibili in tutti e due i casi
                IF CASS_DISPONIBILI_MAG1 > 0 AND CASS_DISPONIBILI_MAG2 > 0 THEN
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
					-- altrimenti prendo dal magazzino con distanza minore
					SET magazzino = IF(DISTANZA_MAG1 < DISTANZA_MAG2, 1, 2);
					SET cassetto  = IF(DISTANZA_MAG1 < DISTANZA_MAG2, ID_MAG1, ID_MAG2);
				else
					-- inizializzo perchè potrebbero essere tutti e due pieni
                    SET magazzino = 0;
					SET cassetto  = 0;
					-- se posso prendere solo da MAG1
                    IF  CASS_DISPONIBILI_MAG1 > 0 AND CASS_DISPONIBILI_MAG2 = 0 THEN
						SET magazzino = 1;
						SET cassetto = IF(DISTANZA_MAG1_CLW <= DISTANZA_MAG1_CCW, ID_MAG1_CLW, ID_MAG1_CCW);
                    END IF;
                    -- se posso prendere solo da MAG2
                    IF  CASS_DISPONIBILI_MAG1 = 0 AND CASS_DISPONIBILI_MAG2 > 0 THEN
						SET magazzino = 2;
						SET cassetto = IF(DISTANZA_MAG2_CLW <= DISTANZA_MAG2_CCW, ID_MAG2_CLW, ID_MAG2_CCW);
                    END IF;
                END IF;
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
					`NUM_SQUADRETTE2`,
					`COD_SQUADRETTA2`,
					`cassetto_ID_CASSETTO`,
					`cassetto_magazzino_ID_MAGAZZINO`)
					VALUES
					(pID_QUARTINA,
					pTOTALE_PEZZI_QUARTINA,
					pNOME_COMMESSA,
					pNUM_SQUADRETTE1,
					pCOD_SQUADRETTA1,
					pNUM_SQUADRETTE2,
					pCOD_SQUADRETTA2,
					cassetto,
					magazzino)
                    /*
					ON duplicate key update 
					`TOTALE_PEZZI_QUARTINA` = pTOTALE_PEZZI_QUARTINA,
					`NOME_COMMESSA` = pNOME_COMMESSA,
					`NUM_SQUADRETTE1` = pNUM_SQUADRETTE1,
					`COD_SQUADRETTA1` = pCOD_SQUADRETTA1,
					`NUM_SQUADRETTE2` = pNUM_SQUADRETTE2,
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
					`NUM_SQUADRETTE2` = pNUM_SQUADRETTE2,
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
/*!50003 DROP PROCEDURE IF EXISTS `ScaricoCassettoPiuVicino` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ScaricoCassettoPiuVicino`(
		pMAGAZZINO INT 
		, pCOMMESSA_PREF VARCHAR(45)
		, pCOMMESSA_ESCLUSIVA boolean
        )
BEGIN

	DECLARE magazzino INT;
    DECLARE cassetto INT;
    
    DECLARE cass_riferimento INT;
    DECLARE cass_posizione INT default 2; -- cassetto assegnato all'estrattore 2
    
	DECLARE CASS_RIF_MAG INT;

	DECLARE MAX_CASS_MAG INT;
    DECLARE CASS_PIENI_MAG INT;

	DECLARE DISTANZA_CLW INT;
    DECLARE DISTANZA_CCW INT;
    DECLARE ID_CLW INT;
    DECLARE ID_CCW INT;
    
    DECLARE valPOSIZIONE INT;
    DECLARE valMAGAZZINO INT;
    DECLARE likeVal varchar(10);	-- il suo valore dipende dal fatto che la commessa sia esclusiva o meno
    DECLARE countCommessePref INT;
    
    SELECT count(*) FROM cassetto 			WHERE magazzino_ID_MAGAZZINO 	= 1 INTO MAX_CASS_MAG;    
    SELECT count(*) FROM cassetti_pieni 	WHERE ID_MAGAZZINO 				= 1 INTO CASS_PIENI_MAG;    

    SET valMAGAZZINO = pMAGAZZINO;
    SET valPOSIZIONE = 0;
    SET cass_posizione = 2; -- estrattore 2
    
    SET cass_riferimento = NULL;
    SET countCommessePref = NULL;
	SET DISTANZA_CLW = NULL;
    SET DISTANZA_CCW = NULL;
    SET ID_CLW = NULL;
    SET ID_CCW = NULL;
    
    
	BEGIN

		-- cerco il casetto che è nell'estrattore
		SELECT ID_CASSETTO from gualini.cassetto WHERE POSIZIONE = cass_posizione AND magazzino_ID_MAGAZZINO = valMAGAZZINO into cass_riferimento;
		-- se l'estrattore è vuoto come riferiemnto prendo l'ultimo cassetto non disponibile movimentato
		IF (cass_riferimento IS NULL) THEN        
			SELECT ID_CASSETTO from cassetti_pieni WHERE POSIZIONE = 0 AND magazzino_ID_MAGAZZINO = valMAGAZZINO Order By lastupdate_milli DESC LIMIT 1 into cass_riferimento;
		END IF;     
		-- se ancora NULL battezzo 1
		IF (cass_riferimento IS NULL) THEN        
			SET cass_riferimento = 1;
		END IF; 

		IF pCOMMESSA_ESCLUSIVA  THEN
			SET likeVal = "";
		ELSE
			-- se non è esclusica devo controllare prima che ci sianopezzi per quella commessa, se non ce ne sono devo poter scegliere qualsiasi commessa
            SELECT COUNT(*) FROM cassetti_pieni WHERE magazzino_ID_MAGAZZINO = valMAGAZZINO AND NOME_COMMESSA = pCOMMESSA_PREF  INTO countCommessePref; 
            IF countCommessePref > 0 THEN
            	SET likeVal = "";
			ELSE
				SET likeVal = "%";  -- questo permette di selezionare qualsiasi commessa nelle query successive
            END IF;
		END IF;
        
		SELECT ID_CASSETTO
			, IF(ID_CASSETTO - cass_riferimento >= 0, ID_CASSETTO - cass_riferimento, MAX_CASS_MAG + (ID_CASSETTO - cass_riferimento)) AS DIST_CLW 
	-- 		, IF(cass_riferimento - ID_CASSETTO >= 0, cass_riferimento - ID_CASSETTO, MAX_CASS_MAG + (cass_riferimento - ID_CASSETTO)) AS DIST_CCW
		FROM gualini.cassetti_pieni 
		WHERE 
			DISPONIBILE = 1 
			AND ID_CASSETTO != cass_riferimento 
			and ID_MAGAZZINO = valMAGAZZINO
			and POSIZIONE = valPOSIZIONE   
            and (NOME_COMMESSA = pCOMMESSA_PREF OR NOME_COMMESSA like likeVal)
		order by 
		DIST_CLW
		LIMIT 1
		INTO ID_CLW, DISTANZA_CLW
		;
		
		SELECT ID_CASSETTO
-- 		, IF(ID_CASSETTO - cass_riferimento >= 0, ID_CASSETTO - cass_riferimento, MAX_CASS_MAG + (ID_CASSETTO - cass_riferimento)) AS DIST_CLW 
		, IF(cass_riferimento - ID_CASSETTO >= 0, cass_riferimento - ID_CASSETTO, MAX_CASS_MAG + (cass_riferimento - ID_CASSETTO)) AS DIST_CCW
		FROM gualini.cassetti_pieni 
		WHERE 
			DISPONIBILE = 1 
			AND ID_CASSETTO != cass_riferimento 
			and ID_MAGAZZINO = valMAGAZZINO
			and POSIZIONE = valPOSIZIONE    
			and (NOME_COMMESSA = pCOMMESSA_PREF OR NOME_COMMESSA like likeVal)
		order by 
		DIST_CCW
		LIMIT 1
		INTO  ID_CCW, DISTANZA_CCW;



		SET magazzino = pMAGAZZINO;
		SET cassetto  = IF(DISTANZA_CLW <= DISTANZA_CCW, ID_CLW, ID_CCW);

		
		-- se cassetto o magazzino sono NULL significa che magazzino vuoto e non ho cassetti pieni allora forzo i valori a zero
		IF (cassetto IS NULL OR magazzino IS NULL) THEN
			SET magazzino = 0;
			SET cassetto  = 0;
		END IF;

		
	 --    SELECT magazzino AS MAGAZZINO, cassetto AS CASSETTO, pID_QUARTINA AS ID_QUARTINA;
		SELECT magazzino AS MAGAZZINO, cassetto AS CASSETTO, DISTANZA_CLW, ID_CLW, DISTANZA_CCW, ID_CCW;
		
	END;
    
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

-- Dump completed on 2016-01-29 16:00:55
