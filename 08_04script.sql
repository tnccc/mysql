USE day_4_9db;

UPDATE customers 
SET age = 44
WHERE id = 1;

ROLLBACK;

SELECT * FROM customers;
SELECT * FROM customers WHERE id=1 FOR SHARE;

UPDATE customers 
SET age =  42
WHERE id = 1;

-- DEAD LOCK
START TRANSACTION;
-- users → customers
SELECT * FROM users;
UPDATE users
SET age = 12
WHERE id = 1;

UPDATE customers
SET age = 12
WHERE id = 1;