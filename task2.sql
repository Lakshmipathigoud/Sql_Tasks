-- 1.Use INSERT INTO for adding rows
-- 2.Handle missing values using NULL or default
-- 3.Use UPDATE and DELETE with WHERE conditions

Select * from Authors;
Select * from Orders;

ALTER TABLE Orders MODIFY quantity INT DEFAULT 1;
select * from Orders;

Update Orders set price=100 where order_id=2002;
select * from Orders;

Delete from Orders where order_id=2003;
select * from orders;

select * from orders where A_id=101;
select * from orders;
