/* Sprint 2: consulta nivell 1 - exercici 3 - punt 1*/
/* Mostra totes les transaccions realitzades per empreses d'Alemanya*/

SELECT *
FROM transaction
where transaction.company_id IN (Select id from company where country ='Germany')