-- 1.Choose a domain (e.g., Library, E-commerce)
-- 2.Identify entities and relationships
-- 3.Create tables using CREATE TABLE
-- 4.Define primary and foreign keys


create database pathi;
use pathi;
create table Authors(
A_id int primary key,
A_name varchar(10),
A_book varchar(20)
);
select * from Authors;
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    quantity INT,
    price INT,
    A_id INT,  -- Define the column first
    FOREIGN KEY (A_id) REFERENCES Authors(A_id)
);

INSERT INTO Authors (A_id, A_name, A_book) VALUES (101, 'jhon', 'Data Science'),
                                                   (102, 'Bob', 'AI Basics'),
												   (103, 'Clara', 'SQL Mastery'),
                                                    (104, 'David', 'Python 101'),
                                                     (105, 'Eva', 'Machine Learning');
                                   
INSERT INTO Orders (order_id, quantity, A_id, price) VALUES
(201, 2, 101, 500),
(202, 1, 102, 300),
(203, 4, 103, 1200),
(204, 3, 104, 900),
(205, 2, 105, 1000);
               
