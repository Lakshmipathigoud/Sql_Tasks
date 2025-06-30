select * from Authors;
-- create table Authors(A_id int primary key,A_name varchar(10),A_book varchar(20)); 

select * from Authors;

-- CREATE TABLE Orders (order_id INT PRIMARY KEY,quantity INT,price INT,A_id INT, FOREIGN KEY (A_id) REFERENCES Authors(A_id));

-- joins 1.INNER JOIN
select a.A_name,o.order_id,o.price from Authors a inner join Orders o on a.A_id = o.A_id;

-- right join
select a.A_name,o.order_id,o.price from Authors a right join Orders o on a.A_id = o.A_id;
-- LEFT JOIN
select a.A_name,o.order_id,o.price from Authors a left join Orders o on a.A_id = o.A_id;
