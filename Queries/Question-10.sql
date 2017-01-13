SELECT
    Time.week_number_overall,
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
    Sales_fact.time_key = Time.time_key AND
    (Time.week_number_overall = 41 OR Time.week_number_overall = 42) AND
    (Store.sales_district = 'Cook' OR Store.sales_district = 'Fulton') AND
    (Product.brand = 'National Bottle' OR Product.brand = 'Frozen Bird')
    
GROUP BY 
    Store.sales_district,
    Product.brand,
    Time.week_number_overall;