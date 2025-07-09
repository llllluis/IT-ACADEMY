/* Sprint 4: consulta nivell 1 - exercici 1 - punt 1*/
/* Dissenya una base de dades amb un esquema d'estrella que contingui, almenys 4 taules.*/
/* Creo la taula de dimensions companies.*/
CREATE TABLE IF NOT EXISTS companies (
	company_id CHAR(10) PRIMARY KEY,
	company_name VARCHAR(250),	
	phone VARCHAR(150),
	email VARCHAR(150),	
	country VARCHAR(150),
	website VARCHAR(150)
);