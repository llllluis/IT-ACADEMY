SELECT count(distinct(country)) as paises
FROM transaction
INNER JOIN company ON company.id = transaction.company_id;