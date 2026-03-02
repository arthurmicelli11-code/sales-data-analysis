
-- Task 1: Total Revenue by Region
SELECT 
    region,
    SUM(quantity * unit_price) AS total_revenue
FROM sales_data
GROUP BY region
ORDER BY total_revenue DESC;


-- Task 2: Top 5 Products by Revenue
SELECT 
    product,
    SUM(quantity * unit_price) AS total_revenue
FROM sales_data
GROUP BY product
ORDER BY total_revenue DESC;
FETCH FIRST 5 ROWS ONLY;


-- Task 3: Monthly Revenue Trend
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(quantity * unit_price) AS monthly_revenue
FROM sales_data
GROUP BY 
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY year, month;