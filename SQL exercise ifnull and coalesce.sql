

SELECT *
,ifnull(product_size,'Unknown')

,ifnull(product_size, product_category_id)
from product


SELECT *
,ifnull(product_size,'Unknown')

FROM product



nullif(product_size,'')
,coalesce(nullif(product_size,''),'unknown')

FROM product;