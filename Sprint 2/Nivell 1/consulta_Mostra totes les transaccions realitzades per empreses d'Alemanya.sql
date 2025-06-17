SELECT count(*) as 'Transaccions empreses alemanyes'
FROM transaction
where transaction.company_id IN (Select id from company where country ='Germany')