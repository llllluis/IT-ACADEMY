ALTER TABLE transaction_products
ADD CONSTRAINT fk_transaction
  FOREIGN KEY (transaction_id) REFERENCES transactions(id)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE transaction_products
MODIFY COLUMN product_id INT;

ALTER TABLE transaction_products
ADD CONSTRAINT fk_product
  FOREIGN KEY (product_id) REFERENCES products(id)
  ON DELETE CASCADE
  ON UPDATE CASCADE;
