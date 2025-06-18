
/* Sprint 2: consulta nivell 2 - exercici 3 - punt 1*/
/* Mostra totes la llista de totes les transaccions realitzades per empreses que estan situades en el mateix país que aquesta companyia.*/

SELECT t.*
FROM transactions.transaction t
INNER JOIN company c ON c.id = t.company_id
where country = (
SELECT country FROM transactions.company where company_name='Non Institute'
)
