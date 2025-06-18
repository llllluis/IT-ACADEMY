/* Sprint 2: consulta nivell 1 - exercici 2 - punt 1*/
/* Llistat dels països que estan generant vendes.*/

SELECT distinct(country) as paises
FROM transaction t
INNER JOIN company c ON c.id = t.company_id;