/* Sprint 3: consulta nivell 1 - exercici 1 - punt 2*/
/* modificar el compte associat a la targeta de crèdit amb ID CcU-2938  */

UPDATE credit_card SET iban = 'TR323456312213576817699999' WHERE id = 'CcU-2938';

/* mostro el registre modificat  */
SELECT iban FROM credit_card WHERE id = 'CcU-2938';