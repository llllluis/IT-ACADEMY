/* Sprint 2: consulta nivell 2 - exercici 1*/
/* Identifica els cinc dies que es va generar la quantitat més gran d'ingressos a l'empresa per vendes. Mostra la data de cada transacció juntament amb el total de les vendes.

*/

SELECT DATE_FORMAT(timestamp,'%d/%m/%Y') as DATA, SUM(amount) as VENTES 
FROM transactions.transaction t
group by DATA
order by VENTES desc LIMIT 5