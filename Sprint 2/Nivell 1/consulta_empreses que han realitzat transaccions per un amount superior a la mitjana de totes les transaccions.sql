SELECT distinct(company_name)
FROM company
where id IN (
select company_id from transaction where amount>(
select avg(amount) as ventes from transaction)
)