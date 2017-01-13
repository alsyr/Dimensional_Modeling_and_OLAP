SELECT
    Product.brand AS Brand,
    SUM(Sales_fact.dollar_sales) AS Sales_Dollars
FROM
    Product, 
    Sales_fact
WHERE
    Sales_fact.product_key = Product.product_key
    
GROUP BY 
    Product.brand;