SELECT distinct(company_name)
FROM company
where id NOT IN (
select company_id from transaction)