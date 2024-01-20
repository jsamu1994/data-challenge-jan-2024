
CREATE TABLE tb_orders as 
SELECT DATE(SUBSTR(order_date,7,4) || "-" ||
            SUBSTR(order_date,4,2) || "-" ||
            SUBSTR(order_date,1,2))  as order_date
      , country
      , city
      , restaurant_id
      , restaurant_name
      , order_status
      , cancel_reason
      , cuisine
      , platform
      , payment_method
      , card_issuer
      , products_qty
      , order_value_eur_cents
      , delivery_fee_eur_cents
      , delivery_time_secs

FROM dataset_task2_clean;
