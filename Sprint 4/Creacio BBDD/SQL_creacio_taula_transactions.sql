/* Sprint 4: consulta nivell 1 - exercici 1 - punt 1*/
/* Dissenya una base de dades amb un esquema d'estrella que contingui, almenys 4 taules.*/
/* Creo la taula de dimensions transactions amb les seves FK que apunten a varies taules.*/
CREATE TABLE IF NOT EXISTS transactions (
	id CHAR(50) PRIMARY KEY,
    card_id CHAR(20),
    business_id CHAR(10),
    timestamp timestamp,
    amount DECIMAL(10,2),
    declined boolean,
    product_ids CHAR(150),    
    user_id INT,
    lat float,
    longitude float,
	FOREIGN KEY (card_id) REFERENCES credit_card(id),
    FOREIGN KEY (business_id) REFERENCES companies(company_id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);