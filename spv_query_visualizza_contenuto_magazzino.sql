SELECT 
    `tutti_pezzi`.`magazzino_ID_MAGAZZINO` AS MAG,	
    `tutti_pezzi`.`ID_CASSETTO` AS CASS,
--    `tutti_pezzi`.`DISPONIBILE`,
--    `tutti_pezzi`.`STATO`,
--    `tutti_pezzi`.`POSIZIONE_CASSETTO`,
	pos.DESCRIZIONE AS POSIZIONE_CASSETTO,      

--    `tutti_pezzi`.`lastupdate`,
--    `tutti_pezzi`.`lastupdate_milli`,
    `tutti_pezzi`.`ID_QUARTINA`,
    
    `tutti_pezzi`.`ID_PEZZO`,    
    `tutti_pezzi`.`POSIZIONE` AS SLOT_PEZZO,
    `tutti_pezzi`.`NOME_COMMESSA`,
    
    `tutti_pezzi`.`SerieProfilo`,
    `tutti_pezzi`.`CodiceProfilo`,
    
--    `tutti_pezzi`.`TOTALE_PEZZI_QUARTINA`,
    `tutti_pezzi`.`NUM_SQUADRETTE1` AS NUM_SQ1,
    `tutti_pezzi`.`COD_SQUADRETTA1` AS COD_SQ1,
    `tutti_pezzi`.`NUM_SQUADRETTE2` AS NUM_SQ2,
    `tutti_pezzi`.`COD_SQUADRETTA2` AS COD_SQ2,

--    `tutti_pezzi`.`cassetto_ID_CASSETTO`,
--   `tutti_pezzi`.`cassetto_magazzino_ID_MAGAZZINO`,

--    `tutti_pezzi`.`NOME_PEZZO_ESTERNO`,
--    `tutti_pezzi`.`CODICE_PROFILO`,
--    `tutti_pezzi`.`SERIE_PROFILO`,
    `tutti_pezzi`.`MAX_LUNGHEZZA`,
    `tutti_pezzi`.`ALTEZZA_PROFILO`,
    `tutti_pezzi`.`LARGHEZZA_PROFILO`,
    `tutti_pezzi`.`MISURA_CAMERA_ESTERNA`,
    `tutti_pezzi`.`APPOGGIO_PEZZO`,
--    `tutti_pezzi`.`POSIZIONE_PEZZO_ESTERNO`,
--    `tutti_pezzi`.`ID_PEZZO_ESTERNO`,
--    `tutti_pezzi`.`LUNGHEZZA_PEZZO_ESTERNO`,
--    `tutti_pezzi`.`FILE_XML`,
    `tutti_pezzi`.`DATA`,
    `tutti_pezzi`.`ORA`,
--    `tutti_pezzi`.`quartina_ID_QUARTINA`,
--    `tutti_pezzi`.`PRELEVATO`,

    `tutti_pezzi`.`Attrezzatura`,
    `tutti_pezzi`.`CodiceRobot`,
    `tutti_pezzi`.`OffsetPezzo`,
    `tutti_pezzi`.`OffsetSuadretta1`,
    `tutti_pezzi`.`OffsetSuadretta2`,
    `tutti_pezzi`.`Colla`,
    `tutti_pezzi`.`Apertura`,
    `tutti_pezzi`.`TIPO_PROFILO`,
    `tutti_pezzi`.`TELAIO`,
    `tutti_pezzi`.`BANCO_SQ1`,
    `tutti_pezzi`.`FILA_SQ1`,
    `tutti_pezzi`.`BANCO_SQ2`,
    `tutti_pezzi`.`FILA_SQ2`
FROM `gualini`.`tutti_pezzi`
join  `gualini`.`posizione_cassetti` AS pos on  `tutti_pezzi`.`POSIZIONE_CASSETTO`=  pos.ID_POSIZIONE_CASSETTI
Order by MAG, CASS, SLOT_PEZZO;
