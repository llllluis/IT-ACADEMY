/* clau modificar tipis de dades a INT*/
ALTER TABLE transaction_products
MODIFY COLUMN product_id INT;

/* clau primaria PK*/
ALTER TABLE transaction_products
ADD CONSTRAINT pk_transaction_products
	PRIMARY KEY (transaction_id,product_id);

/* clau foranea FK*/
ALTER TABLE transaction_products
ADD CONSTRAINT fk_transaction
  FOREIGN KEY (transaction_id) REFERENCES transactions(id)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

/* clau foranea FK*/
ALTER TABLE transaction_products
ADD CONSTRAINT fk_product
  FOREIGN KEY (product_id) REFERENCES products(id)
  ON DELETE CASCADE
  ON UPDATE CASCADE;
