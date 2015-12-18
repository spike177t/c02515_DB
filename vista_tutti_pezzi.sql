USE `gualini`;
CREATE  OR REPLACE VIEW `tutti_pezzi` AS
SELECT
	  tbCassetto.ID_CASSETTO 
	, tbCassetto.DISPONIBILE
    , tbCassetto.STATO
    , tbCassetto.POSIZIONE AS POSIZIONE_CASSETTO
    , tbCassetto.magazzino_ID_MAGAZZINO
    , tbCassetto.lastupdate
    , tbCassetto.lastupdate_milli
	,tbQuartina.*
	, tbPezzo.* 
FROM gualini.cassetto As tbCassetto 
join gualini.quartina As tbQuartina on ( tbCassetto.ID_CASSETTO = tbQuartina.cassetto_ID_CASSETTO and tbCassetto.magazzino_ID_MAGAZZINO = tbQuartina.cassetto_magazzino_ID_MAGAZZINO)
join gualini.pezzo as tbPezzo on(tbQuartina.ID_QUARTINA = tbPezzo.quartina_ID_QUARTINA)
order by
   cassetto_ID_CASSETTO
 , magazzino_ID_MAGAZZINO
 , ID_PEZZO
;
