-- Geographical and Category Revenue Breakdown using Window Functions
SELECT country, 
       Product_Category, 
       revenue_by_category, 
       SUM(revenue_by_category) OVER(PARTITION BY country) AS revenue_by_country,
       revenue_by_category / SUM(revenue) OVER(PARTITION BY country) * 100 AS percentage
FROM (
SELECT country,
       Product_Category, 
       revenue, 
       SUM(Purchase_Amount) AS revenue_by_category
FROM `ecommerce.transaction`
GROUP BY 1,2  
)
ORDER BY country ASC, revenue_by_category DESC
