USE `gualini`;
CREATE  OR REPLACE VIEW `tutti_pezzi_count_profili` AS
SELECT tutti.*
, (select count(*) from gualini.tutti_pezzi_profili_banchisquadrette as self where tutti.quartina_ID_QUARTINA = self.quartina_ID_QUARTINA AND self.TIPO_PROFILO = "Z") as COUNT_Z
 FROM gualini.tutti_pezzi as tutti;