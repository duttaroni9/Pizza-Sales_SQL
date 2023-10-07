SELECT SUM(total_price) AS Total_Revenue FROM pizza_sales;


Select SUM(total_price) / COUNT(DISTINCT order_id) AS Avg_order_value From pizza_sales


Select SUM(quantity) AS Total_pizza_sales From pizza_sales

Select COUNT(DISTINCT order_id) AS Total_Orders From pizza_sales


SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) / 
CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2))
AS Avg_Pizzas_per_order
FROM pizza_sales


Select DATENAME(DW, order_date) as order_day, COUNT(DISTINCT order_id) AS Total_orders
FROM pizza_sales
GROUP BY DATENAME(DW, order_date) 
ORDER BY Total_orders desc


Select DATEPART(HOUR, order_time) AS order_hours, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY DATEPART(HOUR, order_time) 
ORDER BY DATEPART(HOUR, order_time) asc


Select pizza_category, CAST(SUM(total_price) AS Decimal(10,2))
AS Total_Revenue,
CAST(SUM(total_price) * 100 / (Select SUM(total_price) FROM pizza_sales)AS Decimal(10,2)) AS PCT
FROM pizza_sales
GROUP BY pizza_category



Select pizza_size, CAST(SUM(total_price) AS Decimal(10,2)) AS Total_Revenue,
CAST(SUM(total_price) * 100 / (Select SUM(total_price) FROM pizza_sales)AS Decimal(10,2)) AS PCT
FROM pizza_sales
GROUP BY pizza_size
ORDER BY pizza_size



Select pizza_category, SUM(quantity) as Total_quantity_sold
FROM pizza_sales
WHERE MONTH(Order_date) = 2
GROUP BY pizza_category
ORDER BY Total_quantity_sold DESC



Select Top 5 pizza_name, SUM(quantity) AS Total_pizza_sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_pizza_sold DESC



Select Top 5 pizza_name, SUM(quantity) AS Total_pizza_sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_pizza_sold ASC

