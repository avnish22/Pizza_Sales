select * from pizza_sales;

select sum(total_price) as Total_Revenue from pizza_sales;

select sum(total_price) / count(distinct order_id) as Avg_Order_Value
from pizza_sales;

select sum(quantity) as Total_Pizza_Sold from pizza_sales;

select count(distinct order_id) as Total_Orders from pizza_sales;

select sum(quantity) / count(distinct order_id) as Avg_Pizza_Per_Order from pizza_sales;

Select DATENAME(DW, order_date) as Order_day , count(distinct order_id) as Total_order
from pizza_sales
group by DATENAME(DW, order_date)

select datename(month, order_date) as Month_name, count(distinct order_id) as Total_order        
from pizza_sales 
group by datename(month, order_date) 
order by count(distinct order_id) desc;

select pizza_category, sum(total_price) * 100 / (select sum(total_price) from
pizza_sales) as PCT
from pizza_sales
group by pizza_category
order by PCT desc;select pizza_size, sum(total_price) * 100 / (select sum(total_price) from
pizza_sales) as PCT
from pizza_sales
group by pizza_size
order by PCT desc;select top 5 pizza_name, sum(total_price) as Total_Revenue
from pizza_sales
group by pizza_name
order by Total_Revenue desc;select top 5 pizza_name, sum(total_price) as Total_Revenue
from pizza_sales
group by pizza_name
order by Total_Revenue;select top 5 pizza_name, sum(quantity) as Total_quantity
from pizza_sales
group by pizza_name
order by Total_quantity desc;select top 5 pizza_name, sum(quantity) as Total_quantity
from pizza_sales
group by pizza_name
order by Total_quantity;