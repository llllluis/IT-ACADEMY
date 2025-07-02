/* Sprint 3: consulta nivell 3 - exercici 1*/

/* Eliminem la relacio */
ALTER TABLE `user`
DROP FOREIGN KEY `user_ibfk_1`;

/* tornem a crear la relacio */
ALTER TABLE transaction
ADD CONSTRAINT fk_transaction_user
FOREIGN KEY (user_id)
REFERENCES user(id)
ON UPDATE CASCADE;
