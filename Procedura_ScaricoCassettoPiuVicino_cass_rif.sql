USE `gualini`;
DROP procedure IF EXISTS `ScaricoCassettoPiuVicino_cass_rif`;

DELIMITER $$
USE `gualini`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `ScaricoCassettoPiuVicino_cass_rif`(
		pMAGAZZINO INT 
		, pCOMMESSA_PREF VARCHAR(45)
		, pCOMMESSA_ESCLUSIVA boolean
        , pCASS_FRONTE_ESTRATTORE INT
        )
BEGIN

	DECLARE magazzino INT;
    DECLARE cassetto INT;
    
    DECLARE cass_riferimento INT;
    DECLARE cass_posizione INT default 2; -- cassetto assegnato all'estrattore 2
    
	DECLARE CASS_RIF_MAG INT;

	DECLARE TOT_CASSETTI_MAG INT;
    DECLARE CASS_PIENI_MAG INT;

	DECLARE DISTANZA_CLW INT;
    DECLARE DISTANZA_CCW INT;
    DECLARE ID_CLW INT;
    DECLARE ID_CCW INT;
    
    DECLARE valPOSIZIONE INT;
    DECLARE valMAGAZZINO INT;
    DECLARE likeVal varchar(10);	-- il suo valore dipende dal fatto che la commessa sia esclusiva o meno
    DECLARE countCommessePref INT;
    
    SELECT count(*) FROM cassetto 			WHERE magazzino_ID_MAGAZZINO 	= pMAGAZZINO INTO TOT_CASSETTI_MAG;    
    SELECT count(*) FROM cassetti_pieni 	WHERE ID_MAGAZZINO 				= pMAGAZZINO INTO CASS_PIENI_MAG;    

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
		-- se l'estrattore è vuoto come riferiemnto prendo pCASS_FRONTE_ESTRATTORE
		IF (cass_riferimento IS NULL) THEN        
			-- SELECT ID_CASSETTO from cassetti_pieni WHERE POSIZIONE = 0 AND magazzino_ID_MAGAZZINO = valMAGAZZINO Order By lastupdate_milli DESC LIMIT 1 into cass_riferimento;
            -- SELECT ID_CASSETTO from gualini.cassetto WHERE POSIZIONE = 0 AND magazzino_ID_MAGAZZINO = valMAGAZZINO Order By lastupdate_milli DESC LIMIT 1 into cass_riferimento;
            SET cass_riferimento = pCASS_FRONTE_ESTRATTORE;
		END IF; 
        
        -- se ho 1 solo cassetto pieno il casssetto di riferimento trovato al punto sopra
        -- coincide con il cassetto pieno, quindi devo forzare a 0 il cassetto di riferimento
        IF (CASS_PIENI_MAG = 1) THEN
			SET cass_riferimento = 0;
		END IF;
		-- se ancora NULL battezzo 0
		IF (cass_riferimento IS NULL) THEN        
			-- SET cass_riferimento = 1;
            SET cass_riferimento = 0;
		END IF; 


		IF pCOMMESSA_ESCLUSIVA  THEN
			SET likeVal = "";
		ELSE
			-- se non è esclusica devo controllare prima che ci siano pezzi per quella commessa, se non ce ne sono devo poter scegliere qualsiasi commessa
            SELECT COUNT(*) FROM cassetti_pieni WHERE magazzino_ID_MAGAZZINO = valMAGAZZINO AND NOME_COMMESSA = pCOMMESSA_PREF  INTO countCommessePref; 
            IF countCommessePref > 0 THEN
            	SET likeVal = "";
			ELSE
				SET likeVal = "%";  -- questo permette di selezionare qualsiasi commessa nelle query successive
            END IF;
		END IF;
       
		SELECT ID_CASSETTO
			, IF(ID_CASSETTO - cass_riferimento >= 0, ID_CASSETTO - cass_riferimento, TOT_CASSETTI_MAG + (ID_CASSETTO - cass_riferimento)) AS DIST_CLW 
	-- 		, IF(cass_riferimento - ID_CASSETTO >= 0, cass_riferimento - ID_CASSETTO, TOT_CASSETTI_MAG + (cass_riferimento - ID_CASSETTO)) AS DIST_CCW
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
-- 		, IF(ID_CASSETTO - cass_riferimento >= 0, ID_CASSETTO - cass_riferimento, TOT_CASSETTI_MAG + (ID_CASSETTO - cass_riferimento)) AS DIST_CLW 
		, IF(cass_riferimento - ID_CASSETTO >= 0, cass_riferimento - ID_CASSETTO, TOT_CASSETTI_MAG + (cass_riferimento - ID_CASSETTO)) AS DIST_CCW
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

		SELECT magazzino AS MAGAZZINO, cassetto AS CASSETTO, DISTANZA_CLW, ID_CLW, DISTANZA_CCW, ID_CCW;
        
	END;
    
END$$

DELIMITER ;

