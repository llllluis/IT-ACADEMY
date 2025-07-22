/* Sprint 5: consulta nivell 1 - exercici 1 - punt 2*/
/* Creo la taula de theatersNew per recuberar els registres de theater.csv.*/
CREATE TABLE IF NOT EXISTS theatersNew  (
	_id VARCHAR(255) primary key,    
	city VARCHAR(255),    
	state VARCHAR(255),    
	street1 VARCHAR(255),    
	street2 VARCHAR(255),    
	zipcode VARCHAR(255),    
	geo VARCHAR(255),    
	theaterId VARCHAR(255)
);	