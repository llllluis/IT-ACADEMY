insert into transaction_products (transaction_id,product_id)
select
t.id as transaction_id,
p.id as product_id
from transactions t
inner join products p
on FIND_IN_SET(p.id,REPLACE(t.product_ids,' ', ''))>0;