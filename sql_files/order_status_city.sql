SELECT city
    ,  payment_method
     , SUM(1) as total_orders
     , SUM(CASE WHEN order_status = "delivered" THEN 1 ELSE 0 END) as delivered_orders
     , SUM(CASE WHEN order_status = "rejected" THEN 1 ELSE 0 END) as rejected_orders
     , SUM(CASE WHEN order_status = "failed" THEN 1 ELSE 0 END) as failed_orders

FROM tb_orders

GROUP BY 1, 2
ORDER BY 1, 3