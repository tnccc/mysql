DESCRIBE customers;
# ① 28歳以上40歳未満 かつ 名前の最後に子がつく人を絞る
SELECT * 
FROM customers
WHERE age > 28 AND age < 40 
AND name LIKE "%子";

# ② レコードの追加
SHOW TABLES;
SELECT * FROM receipts;
DESCRIBE receipts ;
# SELECT * FROM receipts ORDER BY id DESC LIMIT 10; 簡単に数字が大きいidを絞り込める
INSERT INTO receipts (id ,customer_id, store_name, price) VALUES(301 ,100, "Store X", 10000);

# ③ 2で追加したレコードの削除
DELETE FROM receipts WHERE id = 301;

# ④ nameがNULLの値と空白の値を削除
SELECT * FROM prefectures;
DELETE FROM  prefectures WHERE name IS NULL;
DELETE FROM  prefectures WHERE name = "";
# DELETE FROM WHERE name = "" OR name IS NULL;
# ⑤
SELECT * FROM customers;
UPDATE customers
SET age = age + 1 
WHERE id BETWEEN 20 AND 50;

# ⑥
SELECT * FROM students;
UPDATE students
# CEILING(RAND() * 5)
SET class_no = CEILING(RAND() * 5) + 1
WHERE class_no = 6;

# ⑦
SELECT * FROM students;
SELECT *, height + 10 FROM students
WHERE class_no IN(3, 4);

SELECT * FROM students
WHERE height < ALL(SELECT height + 10 FROM students WHERE class_no IN(3, 4))
AND class_no = 1;

# ⑧
SELECT * FROM employees;
UPDATE employees
SET department = TRIM(department)
WHERE department LIKE "%部%";

# ⑨
SELECT *,
CASE 
	WHEN salary >= 5000000 THEN ROUND(salary * 0.9)
	ELSE ROUND(salary * 1.1)
	END AS new_salary
FROM employees;	

# ⑩
SELECT * FROM customers;
INSERT INTO customers (id, name, age, birth_day) VALUES(101, "名無権兵衛", 0, CURDATE());

# 11
SELECT * FROM customers;
ALTER TABLE customers 
ADD name_length INT;
UPDATE customers 
SET name_length = CHAR_LENGTH(name);

# 12
SHOW TABLES;
SELECT * FROM tests_score;
ALTER TABLE tests_score
ADD score INT;

SELECT *,
CASE
	WHEN COALESCE(test_score_1, test_score_2, test_score_3) >= 900 
	THEN FLOOR(COALESCE(test_score_1, test_score_2, test_score_3) * 1.2)
	WHEN COALESCE(test_score_1, test_score_2, test_score_3) <= 900 
	THEN CEILING(COALESCE(test_score_1, test_score_2, test_score_3) * 0.8)
END AS new_score
FROM tests_score;

UPDATE tests_score 
SET score = CASE
	WHEN COALESCE(test_score_1, test_score_2, test_score_3) >= 900 
	THEN FLOOR(COALESCE(test_score_1, test_score_2, test_score_3) * 1.2)
	WHEN COALESCE(test_score_1, test_score_2, test_score_3) <= 900 
	THEN CEILING(COALESCE(test_score_1, test_score_2, test_score_3) * 0.8)
END;

# 13
SELECT * FROM employees
ORDER BY
CASE department 
	WHEN "マーケティング部" THEN 1
	WHEN "研究部" THEN 2
	WHEN "開発部" THEN 3
	WHEN "総務部" THEN 4
	WHEN "営業部" THEN 5
	WHEN "経理部" THEN 6
END;