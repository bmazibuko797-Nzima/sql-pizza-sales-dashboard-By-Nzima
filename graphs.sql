select * from pizza_sales;
-- 1 Daily trend
SELECT 
    DAYNAME(order_date) AS order_day,
    COUNT(DISTINCT order_id) AS total_order
FROM pizza_sales
GROUP BY DAYNAME(order_date);

-- 2 monthly trends
select
     monthname(order_date) as order_month,
     count(distinct order_id) as total_order
 from pizza_sales
 group by monthname(order_date);
 
 -- 3 percentage of sales by pizza catergory
SELECT 
    pizza_category,
    SUM(total_price) * 100.0 / (SELECT SUM(total_price) FROM pizza_sales) AS Total_revenue
FROM pizza_sales
GROUP BY pizza_category;

-- 4 percetage of sales by pizza size
SELECT 
    pizza_size,
    SUM(total_price) * 100.0 / (SELECT SUM(total_price) FROM pizza_sales) AS Total_revenue
FROM pizza_sales
GROUP BY pizza_size;

-- 5 total revenue by pizza name top 5
select  pizza_name, sum(total_price)as Total_revenue
from pizza_sales
group by pizza_name
order by Total_revenue desc
limit 5;

-- 6 best seller by quantity top 5

select  pizza_name, sum(quantity)as Total_quantity
from pizza_sales
group by pizza_name
order by Total_quantity desc
limit 5;

-- 7 best seller by order top 5

select  pizza_name, count(distinct order_id)as Total_order
from pizza_sales
group by pizza_name
order by Total_order desc
limit 5;
