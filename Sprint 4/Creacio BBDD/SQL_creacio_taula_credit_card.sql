/* Sprint 4: consulta nivell 1 - exercici 1 - punt 1*/
/* Dissenya una base de dades amb un esquema d'estrella que contingui, almenys 4 taules.*/
/* Creo la taula de dimensions credit_card amb FK que apunta a users.*/
CREATE TABLE IF NOT EXISTS credit_card (
	id CHAR(20) PRIMARY KEY,
    user_id INT,
	iban VARCHAR(50),	
	pan VARCHAR(50),
	pin VARCHAR(4),	
	cvv int,
	track1 VARCHAR(150),
    track2 VARCHAR(150),
    expiring_date date,
    FOREIGN KEY (user_id) REFERENCES users(id)
);