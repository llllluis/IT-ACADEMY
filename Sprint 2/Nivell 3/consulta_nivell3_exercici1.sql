/* Sprint 2: consulta nivell 3 - exercici 1*/
/*Presenta el nom, telèfon, país, data i amount, d'aquelles empreses que van realitzar transaccions amb un valor comprès entre 350 i 400 euros i en alguna d'aquestes dates: 29 d'abril del 2015, 20 de juliol del 2018 i 13 de març del 2024. Ordena els resultats de major a menor quantitat.*/

SELECT company_name as EMPRESA, phone as TELEFON, country as PAIS, 
DATE_FORMAT(timestamp, '%d/%m/%Y') as DATA, amount as TRANSACCIO 
FROM transactions.transaction t
INNER JOIN company c ON c.id = t.company_id
where (amount between 350 and 400) and date(timestamp) in (
		'2015-04-29',
        '2018-07-20',
        '2024-03-13')
order by TRANSACCIO desc