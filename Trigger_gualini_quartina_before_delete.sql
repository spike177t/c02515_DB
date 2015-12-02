
DROP TRIGGER IF EXISTS `gualini_quartina_before_delete`;

CREATE DEFINER=`root`@`localhost` 
TRIGGER `gualini_quartina_before_delete` BEFORE DELETE ON `gualini`.`quartina`
	FOR EACH ROW
			DELETE FROM `gualini`.`pezzo` WHERE quartina_ID_QUARTINA = OLD.ID_QUARTINA;
