SELECT distinct(company_name)
FROM transaction
INNER JOIN company ON company.id = transaction.company_id;