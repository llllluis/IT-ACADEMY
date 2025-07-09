/* Sprint 4: consulta nivell 3 - exercici 1*/
/* crear subconsulta que mostri nombre de vegades que s'ha venut cada producte  */

select product_name as Producte, count(product_id) as Total_Ventes from products p
inner join transaction_products tp on tp.product_id = p.id
group by Producte
order by Total_Ventes desc