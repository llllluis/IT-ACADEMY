/* Sprint 2: consulta nivell 1 - exercici 3 - punt 3*/
/* Llista de les empreses empreses que no tenen transaccions registrades. */

SELECT distinct(company_name)
FROM company
where id NOT IN (
select company_id from transaction)