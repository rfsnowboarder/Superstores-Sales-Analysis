SELECT 
  SUM(Sales) AS total_revenue,
  COUNT(DISTINCt order_id) as total_orders,
  ROUND(SUM(Sales) / COUNT(DISTINCT order_id), 2) as average_order_value
FROM sales;

SELECT 
  Region,
  SUM(Sales) AS revenue
FROM sales
GROUP BY Region
ORDER BY revenue DESC;

SELECT 
  Category,
  SUM(Sales) AS revenue
FROM sales
GROUP BY Category
ORDER BY revenue DESC;

SELECT 
  Customer_Name,
  SUM(Sales) AS total_spent
FROM sales
GROUP BY Customer_Name
ORDER BY total_spent DESC
LIMIT 10;