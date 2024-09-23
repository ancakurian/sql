-- dense_rank vs rank vs row_number

SELECT 
vendor_id
,market_date
,product_id
,original_price
,DENSE_RANK() OVER(PARTITION BY vendor_id ORDER BY original_price DESC) as price_dense_rank
FROM vendor_inventory
WHERE vendor_id = 7;

SELECT 
vendor_id
,market_date
,product_id
,original_price
,DENSE_RANK() OVER(PARTITION BY vendor_id ORDER BY original_price DESC, market_date DESC) as price_dense_rank
FROM vendor_inventory
WHERE vendor_id = 7;

SELECT 
vendor_id
,market_date
,product_id
,original_price
,DENSE_RANK() OVER(PARTITION BY vendor_id, market_date ORDER BY original_price DESC) as price_dense_rank
FROM vendor_inventory
WHERE vendor_id = 7;