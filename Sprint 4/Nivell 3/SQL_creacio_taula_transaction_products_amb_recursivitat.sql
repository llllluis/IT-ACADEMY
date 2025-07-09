CREATE TABLE transaction_products AS
WITH RECURSIVE split_products AS (
  SELECT
    id AS transaction_id,
    SUBSTRING_INDEX(product_ids, ',', 1) AS product_id,
    SUBSTRING(product_ids, LENGTH(SUBSTRING_INDEX(product_ids, ',', 1)) + 2) AS rest
  FROM transactions

  UNION ALL

  SELECT
    transaction_id,
    SUBSTRING_INDEX(rest, ',', 1),
    SUBSTRING(rest, LENGTH(SUBSTRING_INDEX(rest, ',', 1)) + 2)
  FROM split_products
  WHERE rest != ''
)
SELECT 
  sp.transaction_id,
  product_id 
FROM split_products sp
JOIN products p ON p.id = TRIM(sp.product_id);

select * from transaction_products;
