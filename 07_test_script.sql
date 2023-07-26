DESCRIBE customers;

SELECT * 
FROM customers
WHERE age > 28 AND age < 40 AND LIKE name "子%";