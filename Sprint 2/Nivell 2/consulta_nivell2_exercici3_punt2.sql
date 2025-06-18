/* Sprint 2: consulta nivell 2 - exercici 3 - punt 2*/
/* Mostra totes la llista de totes les transaccions realitzades per empreses que estan situades en el mateix país que aquesta companyia. Només amb subconsultes*/
SELECT t.*
FROM transaction t
where company_id IN 
	(select id from company c where country = 
	(select country from company where company_name='Non Institute'))


