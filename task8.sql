use pathi;
-- 1.Use CREATE PROCEDURE and CREATE FUNCTION
-- 2.Use parameters and conditional logic
DELIMITER $$
CREATE PROCEDURE AddNewOrder (
    IN p_order_id INT,
    IN p_author_id INT,
    IN p_quantity INT,
    IN p_price INT)
BEGIN
    INSERT INTO Orders (order_id, A_id, quantity, price)
    VALUES (p_order_id, p_author_id, p_quantity, p_price);
END $$

DELIMITER ;

SELECT * FROM Authors WHERE A_id = 2;
INSERT INTO Authors (A_id, A_name)
VALUES (2, 'Bob');  

CALL AddNewOrder(2006, 2, 1, 850);

select * from orders;

DELIMITER $$
CREATE FUNCTION CalculateTotal (
    qty INT,
    unit_price INT
)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN qty * unit_price;
END $$

DELIMITER ;

SELECT CalculateTotal(3, 250) AS total_cost;

DELIMITER $$
CREATE PROCEDURE CheckOrderValue ( 
In p_price INT,
IN p_quantity INT
)
BEGIN
     DECLARE total INT;
     SET total=p_quantity*p_price;
     IF P_PRICE > 1000 THEN
        SELECT 'HIGH VALUE Oredr' AS category;
     ELSEIF p_price BETWEEN 500 AND 1000 THEN
        SELECT "MEDIUM VALUE Order" AS category;
	 ELSE
        SELECT "LOW VALUES Order" AS category;
    END IF;
END $$
DELIMITER ;
CALL CheckOrderValue(550,3);



     
