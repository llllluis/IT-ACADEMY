/* crear la taula nova usant la funcio FIND_IN_SET */

CREATE TABLE transaction_products AS (
select t.id as transaction_id, p.id as product_id
	from transactions t
	inner join products p
	on FIND_IN_SET(p.id,REPLACE(t.product_ids,' ', ''))>0);