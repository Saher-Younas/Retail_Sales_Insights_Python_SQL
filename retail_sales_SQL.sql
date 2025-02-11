select * from df_orders;

-- 1. find top 10 highest reveue generating products 
SELECT product_id, SUM(sale_price) AS sales
FROM df_orders
GROUP BY product_id
ORDER BY sales DESC
LIMIT 10;

-- 2. find top 5 highest selling products in each region
with cte as (
select region,product_id,sum(sale_price) as sales
from df_orders
group by region,product_id)
select * from (
select *
, row_number() over(partition by region order by sales desc) as rn
from cte) A
where rn<=5;

-- 3. find month over month growth comparison for 2022 and 2023 sales eg : jan 2022 vs jan 2023
with cte as (
select year(order_date) as order_year,month(order_date) as order_month,
sum(sale_price) as sales
from df_orders
group by year(order_date),month(order_date)
-- order by year(order_date),month(order_date)
	)
select order_month
, sum(case when order_year=2022 then sales else 0 end) as sales_2022
, sum(case when order_year=2023 then sales else 0 end) as sales_2023
from cte 
group by order_month
order by order_month;

-- 4. for each category which month had highest sales 
with cte as (
select category,format(order_date,'yyyyMM') as order_year_month
, sum(sale_price) as sales 
from df_orders
group by category,format(order_date,'yyyyMM')
--  by category,format(order_date,'yyyyMM')
)
select * from (
select *,
row_number() over(partition by category order by sales desc) as rn
from cte
) a
where rn=1;


-- 5. Which sub category had highest growth by profit in 2023 compare to 2022
with cte as (
select sub_category,year(order_date) as order_year,
sum(sale_price) as sales
from df_orders
group by sub_category,year(order_date)
-- order by year(order_date),month(order_date)
	)
, cte2 as (
select sub_category
, sum(case when order_year=2022 then sales else 0 end) as sales_2022
, sum(case when order_year=2023 then sales else 0 end) as sales_2023
from cte 
group by sub_category
)
select *
,(sales_2023-sales_2022)
from  cte2
order by (sales_2023-sales_2022) desc
LIMIT 1;

-- 6. Best-Selling Products by Quantity Sold
SELECT 
    Product_Id, 
    Category, 
    Sub_Category, 
    SUM(Quantity) AS total_units_sold
FROM df_orders
GROUP BY Product_Id, Category, Sub_Category
ORDER BY total_units_sold DESC
LIMIT 10;

-- 7. Region-Wise Revenue Contribution
select * from df_orders;
SELECT 
    Region, 
    SUM(sale_price * Quantity) AS total_revenue
FROM df_orders
GROUP BY Region
ORDER BY total_revenue DESC;

-- 8. Effect of Discounts on Sales Volume
SELECT 
    Discount, 
    COUNT(Order_Id) AS total_orders, 
    SUM(Quantity) AS total_units_sold
FROM df_orders
GROUP BY Discount
ORDER BY Discount DESC;

-- 9. Fastest & Slowest Shipping Modes
SELECT 
    Ship_Mode, 
    COUNT(Order_Id) AS total_orders,
    ROUND(AVG(DATEDIFF(CURDATE(), Order_Date)), 2) AS avg_shipping_time
FROM df_orders
GROUP BY Ship_Mode
ORDER BY avg_shipping_time ASC;


-- 10. Customer Segmentation by Spending Behavior
WITH customer_spend AS (
    SELECT 
        Segment, 
        Order_Id,  -- Assuming Order_Id can serve as a unique identifier for each customer
        SUM(Sale_Price * Quantity) AS total_spent
    FROM df_orders
    GROUP BY Segment, Order_Id
)
SELECT 
    Segment, 
    Order_Id, 
    total_spent,
    CASE 
        WHEN total_spent > 5000 THEN 'High-Value Customer'
        WHEN total_spent BETWEEN 2000 AND 5000 THEN 'Mid-Tier Customer'
        ELSE 'Low-Value Customer'
    END AS customer_category
FROM customer_spend
ORDER BY total_spent DESC;


