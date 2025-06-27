select * from orders;

-- aggregate functions

Select SUM(price) AS  total_price from orders;
Select AVG(price) AS  total_price from orders;
Select MAX(quantity) AS  quantity from orders;
Select min(quantity) AS  quantity from orders;

-- GROUP BY
select A_id,sum(quantity) AS quantity  from orders GROUP BY A_id;
Select A_id,AVG(price) AS Avg_price from Orders GROUP BY A_id;

-- HAVING 

select A_id,sum(price) AS total_price from orders GROUP BY A_id HAVING SUM(price)>=500;
select A_id,avg(quantity) AS total_quantity from orders GROUP BY A_id HAVING AVG(quantity)>=2; 

