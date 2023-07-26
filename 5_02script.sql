-- LENGTH, CHAR_LENGTH

-- バイト数
SELECT LENGTH ("ABC");
SELECT LENGTH ("あいう");
SELECT LENGTH(name) FROM users;

-- 文字数
SELECT CHAR_LENGTH("あいう");
SELECT CHAR_LENGTH(name) FROM users;
SELECT name, CHAR_LENGTH(name) AS "名前文字数" FROM users; 

-- TRIM, LTRIM, RTRIM 空白削除
SELECT LTRIM(" ABC ");
SELECT RTRIM(" ABC ");
SELECT TRIM(" ABC ")

SELECT name, CHAR_LENGTH(name) AS name_length  FROM employees
WHERE CHAR_LENGTH(name) <> CHAR_LENGTH(TRIM(name));

-- UPDATEして空白を削除したものにする
UPDATE employees 
SET name = TRIM(name)
WHERE CHAR_LENGTH(name) <> CHAR_LENGTH(TRIM(name));

-- REPLACE: 置換
SELECT REPLACE("I like an apple", "apple", "lemon");

UPDATE users 
SET name =REPLACE(name, "Mrs", "Ms") WHERE name LIKE 'Mrs%';
SELECT * FROM users WHERE id = 13;

-- UPPER LOWER(大文字、　小文字)
# usersテーブルのレコード内にあるIDが13のnameを大文字に変換
SELECT name, UPPER(name) as upper_name, LOWER(name) as LOWER_name FROM users;

-- SUBSTRING 一部取り出し
SELECT SUBSTRING(name, 2, 3) FROM employees;

SELECT * FROM employees WHERE SUBSTR(name, 2, 1) = "田";

-- REVERSE 文字列を逆順にする
SELECT REVERSE(name), name FROM users; 