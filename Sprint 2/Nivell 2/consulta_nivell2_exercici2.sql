SELECT FORMAT(avg(amount),2) as MITJANA, country as PAIS FROM transactions.transaction t
INNER JOIN company c ON c.id = t.company_id
group by country
order by MITJANA desc