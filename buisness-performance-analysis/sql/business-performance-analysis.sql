--Calculate total revnue from all sales
SELECT
  SUM(total) as total_revenue
FROM sales;

--Calculate total quantity of items sold
SELECT 
  SUM(quantity) as total_quantity
FROM sales;

--Revenue contribution by product
SELECT 
  SUM(total) as revenue
FROM sales
GROUP BY product
ORDER BY revenue DESC;

--Revenue trend over time
SELECT date, 
  SUM(total) as daily_revenue
FROM sales
GROUP BY date
ORDER BY date;

--Top 2 products by revenue
SELECT product, 
  SUM(total) as revenue
FROM sales
GROUP BY product
ORDER BY revenue DESC
LIMIT 2;
