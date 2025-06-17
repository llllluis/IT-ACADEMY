SELECT t.company_id as EMPRESA,count(amount) as TRANSACCIONES FROM transaction t
where company_id IN (select id from company c where country = (select country from company where company_name='Non Institute'))
group by EMPRESA
order by TRANSACCIONES desc

