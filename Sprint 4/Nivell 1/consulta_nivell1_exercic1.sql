/* Sprint 4: consulta nivell 1 - exercici 1*/
/* crear subconsulta que mostri tots els usuaris amb més de 80 transaccions  */

select u.name, u.surname, count(t.id) as nro_trans from users u
inner join transactions t on  t.user_id = u.id
group by name, surname
having nro_trans > 80