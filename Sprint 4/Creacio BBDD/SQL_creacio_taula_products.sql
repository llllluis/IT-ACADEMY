/* Sprint 4: consulta nivell 1 - exercici 1 - punt 1*/
/* Dissenya una base de dades amb un esquema d'estrella que contingui, almenys 4 taules.*/
/* Creo la taula de products.*/
CREATE TABLE IF NOT EXISTS products (
	id int PRIMARY KEY,
	product_name VARCHAR(150),
	price decimal(10,2),
	colour VARCHAR(10),
	weight decimal(5,1),	
	warehouse_id VARCHAR(50)	
);