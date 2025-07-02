/* Sprint 3: consulta nivell 3 - exercici 1 - part 02*/
/* canvis a la taula creadit_card al camp id */
/* 1) Eliminar la restricció de la clau foránea temporalment*/
ALTER TABLE transaction
DROP FOREIGN KEY fk_credit_card_id;

/* 2) Canviar la mida de les dues columnes de les dues taules perquè coincideixin*/
ALTER TABLE credit_card
MODIFY COLUMN id VARCHAR(20) NOT NULL;

ALTER TABLE transaction
MODIFY COLUMN credit_card_id VARCHAR(20) NOT NULL;

/* 3) tornar a crear la clau foránea */
ALTER TABLE transaction
ADD CONSTRAINT fk_credit_card_id
FOREIGN KEY (credit_card_id)
REFERENCES credit_card(id)
ON UPDATE CASCADE;