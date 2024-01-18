SELECT  cat_level_0
      , cat_level_1
      , cat_level_2
      , AVG (10000 * distinct_sku_SOLD/distinct_sku_listed) as perc_sold_thousand -- *1000 because SQLITE doesnt support float
     


FROM tb_task1_clean

GROUP BY 1, 2, 3

