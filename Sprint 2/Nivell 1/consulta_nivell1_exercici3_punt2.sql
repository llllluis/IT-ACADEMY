/* Sprint 2: consulta nivell 1 - exercici 3 - punt 2*/
/* Llista les empreses que han realitzat transaccions per un amount superior a la mitjana de totes les transaccions.*/

SELECT company_name
FROM company
where id IN (
select distinct company_id from transaction where amount>(
select avg(amount) as ventes from transaction)
)