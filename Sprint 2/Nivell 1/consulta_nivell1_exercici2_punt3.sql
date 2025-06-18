/* Sprint 2: consulta nivell 1 - exercici 2 - punt 3*/
/* Identifica la companyia amb la mitjana més gran de vendes.*/

SELECT round(avg(amount),2) as Mitjana, c.company_name
FROM transaction t
INNER JOIN company c ON c.id = t.company_id
GROUP by company_name
order by Mitjana desc
LIMIT 1