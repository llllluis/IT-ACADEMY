/* Sprint 4: consulta nivell 2 - exercici 1*/
/* Genera la següent consulta: Quantes targetes estan actives?  */

select count(*) as targetes_actives from credit_card_status where status=0