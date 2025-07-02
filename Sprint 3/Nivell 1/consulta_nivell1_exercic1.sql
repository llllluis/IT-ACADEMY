/* Sprint 3: consulta nivell 1 - exercici 1 - punt 1*/
/* crear una taula anomenada "credit_card"  */

CREATE TABLE IF NOT EXISTS credit_card (
    id VARCHAR(10) PRIMARY KEY,
    iban VARCHAR(50),
    pan VARCHAR(50),
    pin VARCHAR(10),
    cvv VARCHAR(10),    
    expiring_date VARCHAR(50)
);

/*establir una relació adequada amb les altres dues taules "transaction"  .*/
ALTER TABLE transaction ADD CONSTRAINT fk_credit_card_id FOREIGN KEY (credit_card_id) REFERENCES credit_card(id);

/*establir una relació adequada amb les altres dues taules "company" .*/
/*NO cal perquè la taula company ja que estan relacione amb credit_card  a traves de la taula transaction */