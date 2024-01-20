CREATE TABLE tb_restaurants as
SELECT restaurant_id
     , restaurant_name
     , city
     , SUM(1) as total_orders
     , SUM(CASE WHEN order_status = "delivered" THEN 1 ELSE 0 END) as delivered_orders
     , SUM(products_qty) as products_qty
     , SUM(order_value_eur_cents) as order_value_eur_cents
     , SUM(delivery_fee_eur_cents) as delivery_fee_eur_cents
     , SUM(delivery_time_secs) as delivery_time_secs

FROM tb_orders

GROUP BY 1, 2, 3
ORDER BY 4 DESC;