-- Monthly Revenue Trend Analysis
SELECT 
    DATE_TRUNC(Transaction_Date, MONTH) AS month,
    ROUND(SUM(Purchase_Amount), 2) AS total_revenue,
    COUNT(Transaction_ID) AS total_transactions
FROM `ecommerce.transaction`
GROUP BY 1
ORDER BY 1 ASC;
