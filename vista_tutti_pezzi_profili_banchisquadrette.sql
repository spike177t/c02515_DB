USE `gualini`;
CREATE  OR REPLACE VIEW `tutti_pezzi_profili_banchisquadrette` AS
SELECT tutti.*
	, profili.*
	, (select ID_BANCO from gualini.r2_banchi_squadrette as banco where banco.CodiceSquadretta = tutti.COD_SQUADRETTA1) AS BANCO_SQ1
    , (select NumeroFila from gualini.r2_banchi_squadrette as banco where banco.CodiceSquadretta = tutti.COD_SQUADRETTA1)  AS FILA_SQ1
	, (select ID_BANCO from gualini.r2_banchi_squadrette as banco where banco.CodiceSquadretta = tutti.COD_SQUADRETTA2) AS BANCO_SQ2
    , (select NumeroFila from gualini.r2_banchi_squadrette as banco where banco.CodiceSquadretta = tutti.COD_SQUADRETTA2)  AS FILA_SQ2
FROM gualini.tutti_pezzi as tutti
 left join gualini.r2_codiciprofili as profili on (tutti.SERIE_PROFILO = profili.SerieProfilo And tutti.CODICE_PROFILO = profili.CodiceProfilo);
