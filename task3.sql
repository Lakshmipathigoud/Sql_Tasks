Select * from Authors;
Select * from Orders;

Select A_name,A_book from Authors;
Select * from Orders where quantity > 2;
Select * from Orders where quantity > 1 AND price > 500;
Select * from Authors where A_book LIKE '%python%' OR '%Data Science%';
Select * from Orders where price BETWEEN 100 AND 500;


Select * from Orders ORDER BY price DESC;
Select * from Authors LIMIT 5;
Select * from orders LIMIT 5;
Insert into orders (order_id,A_id,quantity,price) values (2003,103,4,800);
Select * from orders;