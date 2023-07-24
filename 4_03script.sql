SELECT DATABASE(); 

-- IN INの後に条件を複数の条件を指定できる
SELECT * FROM users WHERE age IN(12, 24, 36);

SELECT * FROM users WHERE birth_place IN("France", "Germany");

-- NOT IN で条件を否定
SELECT * FROM users WHERE birth_place NOT IN("France", "Germany");

-- SELECT + IN
SELECT * FROM receipts;
SELECT * FROM customers;
SELECT * FROM customers WHERE id IN (SELECT customer_id FROM receipts);
SELECT * FROM customers WHERE id IN (SELECT customer_id FROM receipts WHERE id < 10);

-- ALL, ANY
SELECT * FROM users WHERE age > ALL (SELECT age FROM employees WHERE salary > 5000000);

SELECT * FROM users WHERE age = ANY (SELECT age FROM employees WHERE salary > 5000000);

-- AND, OR 
# AND 2つの要件の両方が真の場合だけ、真となる
SELECT * FROM employees;

SELECT * FROM employees WHERE department = " 営業部 " AND name LIKE "%田%";

SELECT * FROM employees WHERE department = " 営業部 " AND name LIKE "%田%" AND age < 35;


# 2つの条件のどちらかが真の場合だけ、真となる

SELECT * FROM employees WHERE department = " 営業部 " AND (name LIKE "%田%" OR name LIKE "%西%") AND age < 35;

SELECT * FROM employees WHERE department " 営業部 " OR department = " 開発部 ";

# INでも同じ条件で記述可能 こちらの方がスマート
SELECT * FROM employees WHERE department IN(" 営業部 ", " 開発部 ");

