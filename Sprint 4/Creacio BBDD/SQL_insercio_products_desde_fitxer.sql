LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\products.csv'
INTO TABLE products
FIELDS TERMINATED BY ',' 
IGNORE 1 LINES
(@id, @product_name, @raw_price, @colour, @weight, @warehouse_id)
SET 
  id = @id,
  product_name = TRIM(@product_name), 
  price = CAST(SUBSTRING(@raw_price, 2) AS DECIMAL(10,2)),
  colour = @colour,
  weight = @weight,
  warehouse_id = @warehouse_id;

select * from products;