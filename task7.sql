-- Use CREATE VIEW with complex SELECT
CREATE VIEW AuthorSalesSummary AS
SELECT 
    a.A_id,
    a.A_name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.price) AS total_sales,
    ROUND(AVG(o.price), 2) AS avg_order_value
FROM Authors a
JOIN Orders o ON a.A_id = o.A_id
GROUP BY a.A_id, a.A_name;
select * from AuthorSalesSummary;
-- Use CREATE VIEW with complex SELECT
CREATE VIEW PublicAuthors AS
SELECT 
    A_id,
    A_name
FROM Authors;
select * from PublicAuthors;
