/* Sprint 3: consulta nivell 3 - exercici 2*/
/* crear una vista anomenada "InformeTecnico"  */

CREATE OR REPLACE VIEW InformeTecnico AS
	select t.id as Transaccio, u.name, u.surname, cc.iban, c.company_name as Companyia  from transaction t
		inner join user u on u.id = t.user_id
		inner join credit_card cc on cc.id = t.credit_card_id
		inner join company c on c.id = t.company_id
	order by t.id;