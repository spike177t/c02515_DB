USE `gualini`;
DROP procedure IF EXISTS `CassettoPiuVicinoAndInsert`;

DELIMITER $$
USE `gualini`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `CassettoPiuVicinoAndInsert`
		(
		TipoCarico INT, 
        LeggiDaQuadra INT,
		OP VARCHAR(10),
		ID_QUARTINA VARCHAR(45),
		TOTALE_PEZZI_QUARTINA TINYINT(4),
		NOME_COMMESSA VARCHAR(45),
		NUM_SQUADRETTE1 TINYINT(4),
		COD_SQUADRETTA1  VARCHAR(45),
		NUM_SQADRETTE2 TINYINT(4),
		COD_SQUADRETTA2  VARCHAR(45)
        )
BEGIN
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
    
ricerca: REPEAT

		-- cerco il casetto che è nell'estrattore
		SELECT ID_CASSETTO from gualini.cassetto WHERE POSIZIONE = cass_posizione AND magazzino_ID_MAGAZZINO = valMAGAZZINO into cass_riferimento;
        -- se l'estrattore è vuoto come riferiemnto prendo l'ultimo cassetto non disponibile movimentato
        IF (cass_riferimento IS NULL) THEN        
			SELECT ID_CASSETTO from cassetti_occupati WHERE POSIZIONE = 0 AND magazzino_ID_MAGAZZINO = valMAGAZZINO Order By lastupdate_milli DESC LIMIT 1 into cass_riferimento;
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
    
    -- sarebbe da ottimizzare in base al cassetto fuori o se non ci sono cassetti fuori in base al cassetto che è di fronte al cassetto fuori
   
   IF (OP = "INS") THEN
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
		(ID_QUARTINA,
		TOTALE_PEZZI_QUARTINA,
		NOME_COMMESSA,
		NUM_SQUADRETTE1,
		COD_SQUADRETTA1,
		NUM_SQADRETTE2,
		COD_SQUADRETTA2,
		cassetto,
		magazzino)
        ON duplicate key update 
        `TOTALE_PEZZI_QUARTINA` = TOTALE_PEZZI_QUARTINA,
		`NOME_COMMESSA` = NOME_COMMESSA,
		`NUM_SQUADRETTE1` = NUM_SQUADRETTE1,
		`COD_SQUADRETTA1` = COD_SQUADRETTA1,
		`NUM_SQADRETTE2` = NUM_SQADRETTE2,
		`COD_SQUADRETTA2` = COD_SQUADRETTA2
        ;
	END IF;
    
 --    SELECT magazzino AS MAGAZZINO, cassetto AS CASSETTO, ID_QUARTINA AS ID_QUARTINA;
    SELECT magazzino AS MAGAZZINO, cassetto AS CASSETTO, DISTANZA_MAG1_CLW, DISTANZA_MAG1_CCW, DISTANZA_MAG2_CLW, DISTANZA_MAG2_CCW, CASS_RIF_MAG1, CASS_RIF_MAG2;
    
    /* QUERY DI RIFERIMENTO
    
        SELECT 	*
		, ID_CASSETTO - cass_riferimento as ID_VIRTUALE
		, IF(ID_CASSETTO - cass_riferimento >= 0, ID_CASSETTO - cass_riferimento, MAX_CASS_MAG1 + (ID_CASSETTO - cass_riferimento)) AS DIST_CLW 
		, IF(cass_riferimento - ID_CASSETTO >= 0, cass_riferimento - ID_CASSETTO, MAX_CASS_MAG1 + (cass_riferimento - ID_CASSETTO)) AS DIST_CCW
		, ABS(ID_CASSETTO - cass_riferimento) as ABS_ID_VIRTUALE 
	FROM gualini.cassetti_disponibili 
	WHERE 
		DISPONIBILE = 1 
		AND ID_CASSETTO != cass_riferimento 
		and ID_MAGAZZINO = 1
		and POSIZIONE = 0    
	order by 
	DIST_CLW
	LIMIT 1
    INTO @idc, DISTANZA_MAG1_CLW
	;
    */
    
END$$

DELIMITER ;

