USE `gualini`;
CREATE 
     OR REPLACE ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `gualini`.`tutti_pezzi` AS
    SELECT 
        `tbcassetto`.`ID_CASSETTO` AS `ID_CASSETTO`,
        `tbcassetto`.`DISPONIBILE` AS `DISPONIBILE`,
        `tbcassetto`.`STATO` AS `STATO`,
        `tbcassetto`.`POSIZIONE` AS `POSIZIONE_CASSETTO`,
        `tbcassetto`.`magazzino_ID_MAGAZZINO` AS `magazzino_ID_MAGAZZINO`,
        `tbcassetto`.`lastupdate` AS `lastupdate`,
        `tbcassetto`.`lastupdate_milli` AS `lastupdate_milli`,
        `tbquartina`.`ID_QUARTINA` AS `ID_QUARTINA`,
        `tbquartina`.`TOTALE_PEZZI_QUARTINA` AS `TOTALE_PEZZI_QUARTINA`,
        `tbquartina`.`NUM_SQUADRETTE1` AS `NUM_SQUADRETTE1`,
        `tbquartina`.`COD_SQUADRETTA1` AS `COD_SQUADRETTA1`,
        `tbquartina`.`NUM_SQUADRETTE2` AS `NUM_SQUADRETTE2`,
        `tbquartina`.`COD_SQUADRETTA2` AS `COD_SQUADRETTA2`,
        `tbquartina`.`NOME_COMMESSA` AS `NOME_COMMESSA`,
        `tbquartina`.`cassetto_ID_CASSETTO` AS `cassetto_ID_CASSETTO`,
        `tbquartina`.`cassetto_magazzino_ID_MAGAZZINO` AS `cassetto_magazzino_ID_MAGAZZINO`,
        `tbpezzo`.`POSIZIONE` AS `POSIZIONE`,
        `tbpezzo`.`ID_PEZZO` AS `ID_PEZZO`,
        `tbpezzo`.`NOME_PEZZO_ESTERNO` AS `NOME_PEZZO_ESTERNO`,
        `tbpezzo`.`CODICE_PROFILO` AS `CODICE_PROFILO`,
        `tbpezzo`.`SERIE_PROFILO` AS `SERIE_PROFILO`,
        `tbpezzo`.`MAX_LUNGHEZZA` AS `MAX_LUNGHEZZA`,
        `tbpezzo`.`ALTEZZA_PROFILO` AS `ALTEZZA_PROFILO`,
        `tbpezzo`.`LARGHEZZA_PROFILO` AS `LARGHEZZA_PROFILO`,
        `tbpezzo`.`MISURA_CAMERA_ESTERNA` AS `MISURA_CAMERA_ESTERNA`,
        `tbpezzo`.`APPOGGIO_PEZZO` AS `APPOGGIO_PEZZO`,
        `tbpezzo`.`POSIZIONE_PEZZO_ESTERNO` AS `POSIZIONE_PEZZO_ESTERNO`,
        `tbpezzo`.`ID_PEZZO_ESTERNO` AS `ID_PEZZO_ESTERNO`,
        `tbpezzo`.`LUNGHEZZA_PEZZO_ESTERNO` AS `LUNGHEZZA_PEZZO_ESTERNO`,
        `tbpezzo`.`FILE_XML` AS `FILE_XML`,
        `tbpezzo`.`DATA` AS `DATA`,
        `tbpezzo`.`ORA` AS `ORA`,
        `tbpezzo`.`quartina_ID_QUARTINA` AS `quartina_ID_QUARTINA`,
        `tbpezzo`.`PRELEVATO` AS `PRELEVATO`,
        `codprof`.`SerieProfilo` AS `SerieProfilo`,
        `codprof`.`CodiceProfilo` AS `CodiceProfilo`,
        `codprof`.`Attrezzatura` AS `Attrezzatura`,
        `codprof`.`CodiceRobot` AS `CodiceRobot`,
        `codprof`.`OffsetPezzo` AS `OffsetPezzo`,
        `codprof`.`OffsetSuadretta1` AS `OffsetSuadretta1`,
        `codprof`.`OffsetSuadretta2` AS `OffsetSuadretta2`,
        `codprof`.`Colla` AS `Colla`,
        `codprof`.`Apertura` AS `Apertura`,
        `codprof`.`TIPO_PROFILO` AS `TIPO_PROFILO`,
        `codprof`.`TELAIO` AS `TELAIO`,
        `codprof`.`R3_CodiceRobot` AS `R3_CodiceRobot`,
		COALESCE(`banco1`.`ID_BANCO`, 0) AS `BANCO_SQ1`,
        COALESCE(`banco1`.`NumeroFila`, 0) AS `FILA_SQ1`,
        COALESCE(`banco2`.`ID_BANCO`, 0) AS `BANCO_SQ2`,
        COALESCE(`banco2`.`NumeroFila`, 0) AS `FILA_SQ2`
    FROM
        (((((`gualini`.`cassetto` `tbcassetto`
        JOIN `gualini`.`quartina` `tbquartina` ON (((`tbcassetto`.`ID_CASSETTO` = `tbquartina`.`cassetto_ID_CASSETTO`)
            AND (`tbcassetto`.`magazzino_ID_MAGAZZINO` = `tbquartina`.`cassetto_magazzino_ID_MAGAZZINO`))))
        JOIN `gualini`.`pezzo` `tbpezzo` ON ((`tbquartina`.`ID_QUARTINA` = `tbpezzo`.`quartina_ID_QUARTINA`)))
        LEFT JOIN `gualini`.`r2_codiciprofili` `codprof` ON (((`tbpezzo`.`CODICE_PROFILO` = CONVERT( `codprof`.`CodiceProfilo` USING UTF8))
            AND (`tbpezzo`.`SERIE_PROFILO` = CONVERT( `codprof`.`SerieProfilo` USING UTF8)))))
        LEFT JOIN `gualini`.`r2_banchi_squadrette` `banco1` ON ((CONVERT( `banco1`.`CodiceSquadretta` USING UTF8) = `tbquartina`.`COD_SQUADRETTA1`)))
        LEFT JOIN `gualini`.`r2_banchi_squadrette` `banco2` ON ((CONVERT( `banco2`.`CodiceSquadretta` USING UTF8) = `tbquartina`.`COD_SQUADRETTA2`)))
    ORDER BY `tbquartina`.`cassetto_ID_CASSETTO` , `tbcassetto`.`magazzino_ID_MAGAZZINO` , `tbpezzo`.`ID_PEZZO`;
