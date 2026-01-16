select * from pizza_sales;

-- KPI CARDS
-- total revenue
select sum(total_price) as Total_revenue
from pizza_sales;

-- AVERAGE ORDER values
select sum(total_price)/ count(distinct order_id) as AVG_order_value
from pizza_sales; 

-- sum of total pizzas sold
select sum(quantity) as total_pizza_sold 
from pizza_sales;

-- total orders
select count(distinct(order_id)) as total_orders 
from pizza_sales;

-- average pizza sold
SELECT 
    cast(CAST(SUM(quantity) AS DECIMAL(10,2)) /
    CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) as decimal(10,2))AS AVG_pizza_sold
FROM pizza_sales;