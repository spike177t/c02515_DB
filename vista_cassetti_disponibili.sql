/*	SELECT table1.name,
table1.ID,
table2.address
FROM table1 LEFT JOIN table2
ON table1.ID=table2.ID
WHERE table2.address IS NULL;

SELECT table1.name,
table1.ID
FROM table1
WHERE NOT EXISTS ( SELECT 1
FROM table2
WHERE table1.id = table2.id );	*/

select tt.* from tutti_cassetti as tt 
	left join (select cass.*, qrt.ID_QUARTINA, qrt.NOME_COMMESSA  from tutti_cassetti as cass 
					join quartina qrt
					on (qrt.cassetto_ID_CASSETTO = ID_CASSETTO and qrt.cassetto_magazzino_ID_MAGAZZINO = cass.ID_MAGAZZINO)
				) as co 
 
	on (tt.ID_MAGAZZINO = co.ID_MAGAZZINO and tt.ID_CASSETTO = co.ID_CASSETTO) where co.ID_CASSETTO IS NULL and tt.DISPONIBILE = 1
order by ID_MAGAZZINO, ID_CASSETTO;

-- versioni alterative
select * from tutti_cassetti as tt where not exists (select 1 from cassetti_occupati as co 
			where tt.ID_MAGAZZINO = co.ID_MAGAZZINO and tt.ID_CASSETTO = co.ID_CASSETTO and tt.DISPONIBILE = 1);
            
select * from tutti_cassetti as tt left join cassetti_occupati as co 
	on (tt.ID_MAGAZZINO = co.ID_MAGAZZINO and tt.ID_CASSETTO = co.ID_CASSETTO) 
    where co.ID_CASSETTO IS NULL and tt.DISPONIBILE = 1
    order by tt.ID_MAGAZZINO, tt.ID_CASSETTO;