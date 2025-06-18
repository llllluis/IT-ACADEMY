/* Sprint 2: consulta nivell 1 - exercici 2 - punt 2*/
/* Des de quants països es generen les vendes. */

SELECT count(distinct(country)) as paises
FROM transaction t
INNER JOIN company c ON c.id = t.company_id;