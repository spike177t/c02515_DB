USE `gualini`;
DROP procedure IF EXISTS `CassettoPiuVicino`;

DELIMITER $$
USE `gualini`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `CassettoPiuVicino`(TipoCarico INT, LeggiDaQuadra INT)
BEGIN
	CALL CassettoPiuVicinoAndInsert(TipoCarico, LeggiDaQuadra , "", "", 0, "", 0, "", 0, "");    
END$$

DELIMITER ;

