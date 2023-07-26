-- 算術演算子

# +, -, * /, %
SELECT 1 + 1;

SELECT name, age, age+3 AS age_3 FROM users LIMIT 10;

SELECT 10 - 5;
SELECT age-1 AS age_1 FROM users;

SELECT birth_day, birth_day + 2 FROM users;

SELECT 3 * 5;
SELECT * FROM employees;
SELECT department, name, salary * 1.1 AS salary_next_year FROM employees;
SELECT department, name, salary * 0.9 FROM employees;

SELECT 10 / 3;
SELECT salary / 10 FROM employees;

SELECT 10 % 3;
SELECT age % 12 as age_percent FROM users;

-- CONCAT 文字の連結 MySQL以外では || で連結可能
SELECT CONCAT(department," : ", name) as concat_query FROM employees;
SELECT CONCAT(name, "(",age,")") AS "名前(年齢)" FROM users;

-- NOW, CURDATE, DATE_FORMAT
# 現在時刻を表示
SELECT NOW(), name, age FROM users;

# 現在日付を表示
SELECT CURDATE(); 

# 任意のフォーマットで表示できる
# https://www.javadrive.jp/mysql/function/index49.html
SELECT DATE_FORMAT(NOW(), "%Y") 

SELECT DATE_FORMAT(NOW(), "%Y/%d") 