USE `gualini`;
CREATE 
     OR REPLACE ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `gualini`.`tutti_pezzi_count_profili` AS
    SELECT 
        `tutti`.`ID_CASSETTO` AS `ID_CASSETTO`,
        `tutti`.`DISPONIBILE` AS `DISPONIBILE`,
        `tutti`.`STATO` AS `STATO`,
        `tutti`.`POSIZIONE_CASSETTO` AS `POSIZIONE_CASSETTO`,
        `tutti`.`magazzino_ID_MAGAZZINO` AS `magazzino_ID_MAGAZZINO`,
        `tutti`.`lastupdate` AS `lastupdate`,
        `tutti`.`lastupdate_milli` AS `lastupdate_milli`,
        `tutti`.`ID_QUARTINA` AS `ID_QUARTINA`,
        `tutti`.`TOTALE_PEZZI_QUARTINA` AS `TOTALE_PEZZI_QUARTINA`,
        `tutti`.`NUM_SQUADRETTE1` AS `NUM_SQUADRETTE1`,
        `tutti`.`COD_SQUADRETTA1` AS `COD_SQUADRETTA1`,
        `tutti`.`NUM_SQUADRETTE2` AS `NUM_SQUADRETTE2`,
        `tutti`.`COD_SQUADRETTA2` AS `COD_SQUADRETTA2`,
        `tutti`.`NOME_COMMESSA` AS `NOME_COMMESSA`,
        `tutti`.`cassetto_ID_CASSETTO` AS `cassetto_ID_CASSETTO`,
        `tutti`.`cassetto_magazzino_ID_MAGAZZINO` AS `cassetto_magazzino_ID_MAGAZZINO`,
        `tutti`.`POSIZIONE` AS `POSIZIONE`,
        `tutti`.`ID_PEZZO` AS `ID_PEZZO`,
        `tutti`.`NOME_PEZZO_ESTERNO` AS `NOME_PEZZO_ESTERNO`,
        `tutti`.`CODICE_PROFILO` AS `CODICE_PROFILO`,
        `tutti`.`SERIE_PROFILO` AS `SERIE_PROFILO`,
        `tutti`.`MAX_LUNGHEZZA` AS `MAX_LUNGHEZZA`,
        `tutti`.`ALTEZZA_PROFILO` AS `ALTEZZA_PROFILO`,
        `tutti`.`LARGHEZZA_PROFILO` AS `LARGHEZZA_PROFILO`,
        `tutti`.`MISURA_CAMERA_ESTERNA` AS `MISURA_CAMERA_ESTERNA`,
        `tutti`.`APPOGGIO_PEZZO` AS `APPOGGIO_PEZZO`,
        `tutti`.`POSIZIONE_PEZZO_ESTERNO` AS `POSIZIONE_PEZZO_ESTERNO`,
        `tutti`.`ID_PEZZO_ESTERNO` AS `ID_PEZZO_ESTERNO`,
        `tutti`.`LUNGHEZZA_PEZZO_ESTERNO` AS `LUNGHEZZA_PEZZO_ESTERNO`,
        `tutti`.`FILE_XML` AS `FILE_XML`,
        `tutti`.`DATA` AS `DATA`,
        `tutti`.`ORA` AS `ORA`,
        `tutti`.`quartina_ID_QUARTINA` AS `quartina_ID_QUARTINA`,
        `tutti`.`PRELEVATO` AS `PRELEVATO`,
        `tutti`.`SerieProfilo` AS `SerieProfilo`,
        `tutti`.`CodiceProfilo` AS `CodiceProfilo`,
        `tutti`.`Attrezzatura` AS `Attrezzatura`,
        `tutti`.`CodiceRobot` AS `CodiceRobot`,
        `tutti`.`OffsetPezzo` AS `OffsetPezzo`,
        `tutti`.`OffsetSuadretta1` AS `OffsetSuadretta1`,
        `tutti`.`OffsetSuadretta2` AS `OffsetSuadretta2`,
        `tutti`.`Colla` AS `Colla`,
        `tutti`.`Apertura` AS `Apertura`,
        `tutti`.`TIPO_PROFILO` AS `TIPO_PROFILO`,
        `tutti`.`TELAIO` AS `TELAIO`,
        `tutti`.`R3_CodiceRobot` AS `R3_CodiceRobot`,
        COALESCE(`tutti`.`BANCO_SQ1`, 0) AS `BANCO_SQ1`,
        COALESCE(`tutti`.`FILA_SQ1`, 0) AS `FILA_SQ1`,
        COALESCE(`tutti`.`BANCO_SQ2`, 0) AS `BANCO_SQ2`,
        COALESCE(`tutti`.`FILA_SQ2`, 0) AS `FILA_SQ2`,
        (SELECT 
                COUNT(0)
            FROM
                `gualini`.`tutti_pezzi_profili_banchisquadrette` `self`
            WHERE
                ((`tutti`.`quartina_ID_QUARTINA` = `self`.`quartina_ID_QUARTINA`)
                    AND (`self`.`TIPO_PROFILO` = 'Z'))) AS `COUNT_Z`
    FROM
        `gualini`.`tutti_pezzi` `tutti`;
