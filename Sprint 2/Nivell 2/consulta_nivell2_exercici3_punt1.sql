SELECT company_name as EMPRESA, count(amount) as TRANSACCIONS FROM transactions.transaction t
INNER JOIN company c ON c.id = t.company_id
where country = (
SELECT country FROM transactions.company where company_name='Non Institute'
)
group by EMPRESA
order by TRANSACCIONS desc