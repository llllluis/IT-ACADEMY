/* Sprint 4: consulta nivell 1 - exercici 2*/
/* Mostra la mitjana d'amount per IBAN de les targetes de crèdit a la companyia "Donec Ltd" */
select cc.iban, round(avg(t.amount),2) as mitjana from transactions t
inner join credit_card cc on cc.id = t.card_id
inner join companies c on c.company_id = t.business_id
group by cc.iban, c.company_name
having c.company_name ='Donec Ltd'
order by mitjana desc