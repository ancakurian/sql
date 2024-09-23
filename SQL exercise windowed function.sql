-- windowed function



SELECT*

FROM(
	SELECT
	vendor_id
	,market_date
	,product_id
	,original_price
	,row_number() OVER(PARTITION BY vendor_id ORDER BY original_price DESC) as price_rank
	FROM vendor_inventory
	
)x

WHERE x.price_rank = 1;


	