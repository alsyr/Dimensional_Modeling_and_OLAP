SELECT
    Time.week_number_overall AS Week_Number,
    Store.sales_district AS District,
    Product.brand AS Brand,
    SUM(Sales_fact.dollar_sales) AS Sales_Dollars
FROM
    Store,
    Product, 
    Sales_fact,
    Time
WHERE
    Sales_fact.store_key = Store.store_key AND
    Sales_fact.product_key = Product.product_key AND
    Sales_fact.time_key = Time.time_key
    
GROUP BY 
    Store.sales_district,
    Product.brand,
    Time.week_number_overall;