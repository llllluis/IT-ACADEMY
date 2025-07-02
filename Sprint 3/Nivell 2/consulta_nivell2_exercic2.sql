/* Sprint 3: consulta nivell 2 - exercici 2*/
/*Crea una vista anomenada VistaMarketing que contingui la següent informació: 
Nom de la companyia. Telèfon de contacte. País de residència. Mitjana de compra realitzat per cada companyia. 
Ordenant les dades de major a menor mitjana de compra.*/

CREATE OR REPLACE VIEW VistaMarketing AS
	SELECT c.company_name,c.phone,c.country,avg(t.amount) as media_ventas FROM transaction t
		inner join company c on c.id = t.company_id
	group by c.company_name,c.phone,c.country
	order by media_ventas desc