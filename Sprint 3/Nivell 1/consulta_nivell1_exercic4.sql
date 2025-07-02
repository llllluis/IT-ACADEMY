/* Sprint 3: consulta nivell 1 - exercici 1 - punt 4*/
/* eliminar la columna "pan" de la taula credit_card  */

ALTER TABLE credit_card DROP column pan;

/* mostro els camps de la taula credit_card  */

SELECT COLUMN_NAME, DATA_TYPE, IS_NULLABLE, COLUMN_KEY, COLUMN_DEFAULT
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'transactions'
  AND TABLE_NAME = 'credit_card';