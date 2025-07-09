/* Sprint 4: consulta nivell 1 - exercici 1 - punt 1*/
/* Dissenya una base de dades amb un esquema d'estrella que contingui, almenys 4 taules.*/
/* Creo la taula de dimensions users on afegire els registres american_user i els european_user.*/
CREATE TABLE IF NOT EXISTS users (
	id INT PRIMARY KEY,
	name VARCHAR(100),
	surname VARCHAR(100),
	phone VARCHAR(150),
	email VARCHAR(150),
	birth_date VARCHAR(100),
	country VARCHAR(150),
	city VARCHAR(150),
	postal_code VARCHAR(100),
	address VARCHAR(255)    
);