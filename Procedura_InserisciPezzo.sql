USE `gualini`;
DROP procedure IF EXISTS `inserisci_pezzo`;

DELIMITER $$
USE `gualini`$$
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
    
END$$

DELIMITER ;

