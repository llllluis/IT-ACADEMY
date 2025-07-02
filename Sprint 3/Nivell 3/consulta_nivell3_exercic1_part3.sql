/* Sprint 3: consulta nivell 3 - exercici 1 - part 3*/
/* canvis a la taula credit_card a diferents camps */

ALTER TABLE credit_card
MODIFY COLUMN pin VARCHAR(4) NOT NULL;

ALTER TABLE credit_card
MODIFY COLUMN cvv INT NOT NULL;

ALTER TABLE credit_card
MODIFY COLUMN expiring_date VARCHAR(20) NOT NULL;

ALTER TABLE credit_card
ADD COLUMN fecha_actual DATE DEFAULT (CURRENT_DATE);

/*	CURRENT_DATE és estàndard ANSI SQL i funciona a MySQL per assignar la data actual del sistema. */