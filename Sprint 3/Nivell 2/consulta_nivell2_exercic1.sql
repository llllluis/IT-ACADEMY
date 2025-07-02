/* Sprint 3: consulta nivell 2 - exercici 1*/
/* Elimina de la taula transaction el registre amb ID 000447FE-B650-4DCF-85DE-C7ED0EE1CAAD de la base de dades  */

DELETE FROM transaction WHERE id='000447FE-B650-4DCF-85DE-C7ED0EE1CAAD';

/* mostro el registre pre comprobar que ha estat borrat */

SELECT * FROM transaction WHERE id='000447FE-B650-4DCF-85DE-C7ED0EE1CAAD';