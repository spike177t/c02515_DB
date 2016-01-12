USE `gualini`;
DROP procedure IF EXISTS `CassettoPiuVicinoAndInsert`;

DELIMITER $$
USE `gualini`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `CassettoPiuVicinoAndInsert`
		(
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
    
    SELECT count(*) FROM cassetti_disponibili WHERE ID_MAGAZZINO = 1 INTO CASS_DISPONIBILI_MAG1;
	SELECT count(*) FROM cassetti_disponibili WHERE ID_MAGAZZINO = 2 INTO CASS_DISPONIBILI_MAG2;
    
    SET valMAGAZZINO = 1;
    SET valPOSIZIONE = 0;
    
    -- devo verificare che la quartina non esista nel DB, se esiste faccio solo update dei campi
    SELECT count(*) FROM `gualini`.`quartina` WHERE `quartina`.`ID_QUARTINA` = pID_QUARTINA INTO esiste;
    
    IF esiste = 0 THEN
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
                    IF  CASS_DISPONIBILI_MAG1 = 0 AND CASS_DISPONIBILI_MAG2 = 0 THEN
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
END