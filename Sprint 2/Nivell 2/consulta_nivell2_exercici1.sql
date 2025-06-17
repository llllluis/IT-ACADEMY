SELECT DATE_FORMAT(timestamp,'%d/%m/%Y') as DATA, SUM(amount) as VENTES, company_name FROM transactions.transaction t
INNER JOIN company c ON c.id = t.company_id
group by DATA, company_id
order by VENTES desc LIMIT 5