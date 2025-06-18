SELECT company_name as EMPRESA, phone as TELEFON, country as PAIS, 
DATE_FORMAT(timestamp, '%d/%m/%Y') as DATA, amount as TRANSACCIO 
FROM transactions.transaction t
INNER JOIN company c ON c.id = t.company_id
where (amount between 350 and 400) and date(timestamp) in (
		'2015-04-29',
        '2018-07-20',
        '2024-03-13')
order by TRANSACCIO desc