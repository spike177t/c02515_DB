CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `cassetti_occupati` AS
    SELECT 
    cass.*,
    /*
        `cass`.`ID_MAGAZZINO` AS `ID_MAGAZZINO`,
        `cass`.`MAG_NOME` AS `MAG_NOME`,
        `cass`.`MAG_STATO` AS `MAG_STATO`,
        `cass`.`MAG_PIENO` AS `MAG_PIENO`,
        `cass`.`ID_CASSETTO` AS `ID_CASSETTO`,
        `cass`.`DISPONIBILE` AS `DISPONIBILE`,
        `cass`.`STATO` AS `STATO`,
        `cass`.`POSIZIONE` AS `POSIZIONE`,
        */
        `qrt`.`ID_QUARTINA` AS `ID_QUARTINA`,
        `qrt`.`NOME_COMMESSA` AS `NOME_COMMESSA`
    FROM
        (`tutti_cassetti` `cass`
        JOIN `quartina` `qrt` ON (((`qrt`.`cassetto_ID_CASSETTO` = `cass`.`ID_CASSETTO`)
            AND (`qrt`.`cassetto_magazzino_ID_MAGAZZINO` = `cass`.`ID_MAGAZZINO`))))