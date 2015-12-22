USE `gualini`;
CREATE  OR REPLACE VIEW `cassetti_in_riempimento` AS
SELECT 
        `cass`.`ID_MAGAZZINO` AS `ID_MAGAZZINO`,
        `cass`.`MAG_NOME` AS `MAG_NOME`,
        `cass`.`MAG_STATO` AS `MAG_STATO`,
        `cass`.`MAG_PIENO` AS `MAG_PIENO`,
        `cass`.`ID_CASSETTO` AS `ID_CASSETTO`,
        `cass`.`DISPONIBILE` AS `DISPONIBILE`,
        `cass`.`STATO` AS `STATO`,
        `cass`.`POSIZIONE` AS `POSIZIONE`,
        `cass`.`magazzino_ID_MAGAZZINO` AS `magazzino_ID_MAGAZZINO`,
        `cass`.`lastupdate` AS `lastupdate`,
        `cass`.`lastupdate_milli` AS `lastupdate_milli`,
        `qrt`.`ID_QUARTINA` AS `ID_QUARTINA`,
        `qrt`.`NOME_COMMESSA` AS `NOME_COMMESSA`,
        `qrt`.`TOTALE_PEZZI_QUARTINA` AS `TOTALE_PEZZI_QUARTINA`,
        (SELECT 
                COUNT(0)
            FROM
                `pezzo`
            WHERE
                (`pezzo`.`quartina_ID_QUARTINA` = `qrt`.`ID_QUARTINA`)
		) AS `PEZZI_PRESENTI`
    FROM
        (`tutti_cassetti` `cass`
			JOIN `quartina` `qrt` ON 
				(
					(`qrt`.`cassetto_ID_CASSETTO` = `cass`.`ID_CASSETTO`)
					AND (`qrt`.`cassetto_magazzino_ID_MAGAZZINO` = `cass`.`ID_MAGAZZINO`)
                    -- AND (`PEZZI_PRESENTI` < qrt.TOTALE_PEZZI_QUARTINA)					
				)
		)
        WHERE
        (
			SELECT COUNT(0) FROM `pezzo` WHERE (`pezzo`.`quartina_ID_QUARTINA` = `qrt`.`ID_QUARTINA`) 
		) < qrt.TOTALE_PEZZI_QUARTINA;