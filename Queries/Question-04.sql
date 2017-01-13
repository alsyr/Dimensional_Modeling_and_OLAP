SELECT
    Store.sales_district AS District,
    Product.brand AS Brand,
    SUM(Sales_fact.dollar_sales) AS Sales_Dollars
FROM
    Store,
    Product, 
    Sales_fact
WHERE
    Sales_fact.store_key = Store.store_key AND
    Sales_fact.product_key = Product.product_key
    
GROUP BY 
    Store.sales_district,
    Product.brand;