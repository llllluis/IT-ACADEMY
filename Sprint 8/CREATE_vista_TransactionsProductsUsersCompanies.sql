CREATE OR REPLACE VIEW TransactionsProductsUsersCompanies AS
select  t.id as id_transaction, t.timestamp, t.amount, t.declined,t.lat, t.longitude,
p.id as id_product, p.price, p.product_name, p.colour, p.weight, p.warehouse_id,
u.id as _id_user, u.name, u.surname, u.phone as user_phone, u.email as user_email, u.birth_date, u.country as user_country, 
u.city, u.postal_code,u.address,
c.*
from transactions t
inner join transaction_products tp on t.id=tp.transaction_id
inner join products p on tp.product_id=p.id
inner join users u on t.user_id=u.id
inner join companies c on t.business_id=c.company_id;