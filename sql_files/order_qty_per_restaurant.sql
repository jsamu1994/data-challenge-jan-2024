with restaurants as (
select restaurant_id
     , sum(1) as order_qty
        
from tb_orders

GROUP BY 1)
--

SELECT CASE WHEN order_qty < 10 THEN 'A) 00 - 09'
            WHEN order_qty < 20 THEN 'B) 10 - 19'
            WHEN order_qty < 30 THEN 'C) 20 - 29'
            WHEN order_qty < 40 THEN 'D) 30 - 39'
            WHEN order_qty < 50 THEN 'E) 40 - 49'
            ELSE "F) 50+" end as orders_counts
     , SUM(1) as restaurants

FROM restaurants

GROUP BY 1
ORDER BY 1