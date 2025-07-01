select * from orders;
select * from Authors;

-- Scalar and Correlated Subquery
select (select count(*) from Orders) as total_orders;
select A_name,(select count(*) from Orders o where o.A_id=a.A_id) AS order_count from Authors a; 

-- Subqueries eith IN,EXISTS,=
select A_id,A_name from Authors where A_id In (select A_id from Orders);
select A_id,A_name from Authors a where EXISTS (select 1 from Orders o where o.A_id = a.A_id);
select A_name from Authors where A_id = (select A_id from orders order by price desc limit 1);