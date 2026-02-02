--Total revenue generated from all orders
SELECT
  SUM(order_value)
  FROM sales;

--Average order value
SELECT 
  AVG(order_value) as average_order_value
  FROM sales;

--Revenue contirbution by category
SELECT category, 
  SUM(order_value) as revenue
  FROM sales
  GROUP BY category
  ORDER BY SUM(order_value) DESC;

--Top customers based on total revenue
SELECT customer_name,
  SUM(order_value) as revenue
  FROM sales
  GROUP BY customer_name
  ORDER BY SUM(order_value) DESC
  LIMIT 5;

--Revenue trend over time
SELECT sales_date,
  SUM(order_value) as revenue
  FROM sales
  GROUP BY sales_date
  ORDER BY  sales_date;			

--Categories with high order count but lower revenue
SELECT
    category,
    COUNT(order_id) AS order_count,
    SUM(order_value) AS total_revenue
FROM sales
GROUP BY category
ORDER BY order_count DESC, total_revenue ASC;
