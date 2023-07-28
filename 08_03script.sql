SHOW DATABASES;
USE day_4_9db;

START TRANSACTION;

SHOW TABLES;

SELECT * FROM customers;

UPDATE customers 
SET age = 43
WHERE id = 1;

ROLLBACK;

START TRANSACTION;

UPDATE customers 
-- 主キー以外でカラムを指定するとテーブル全体がロックされる
SET age = 42
WHERE name = "河野 文典";

ROLLBACK;


-- 行ロック 
DELETE FROM customers WHERE id = 1;
COMMIT;


START TRANSACTION;
INSERT INTO customers VALUES(1, "田中 一郎", 21, "1999-01-01");
COMMIT;

-- SELECTのロック
-- FOR SHARE(共有ロック)
-- FOR UPDATE(排他ロック)

-- 別のユーザーが参照することは可、値を更新することは不可、削除も同様
START TRANSACTION;
SELECT * FROM customers WHERE id=1 FOR SHARE;
ROLLBACK;

-- 　
START TRANSACTION;
SELECT * FROM customers WHERE id=1 FOR UPDATE;

-- LOCK TABLE READ
LOCK TABLE customers READ;
SELECT * FROM customers;
UPDATE customers 
SET age =  42
WHERE id = 1;

UNLOCK TABLES;

-- LOCK TABLE WRITE
-- LOCK TABLE WRITEを使用したユーザー(セッション)のみselectや値の更新が可能になる
LOCK TABLE customers WRITE;

SELECT * FROM customers;
UPDATE customers 
SET age =  42
WHERE id = 1;

-- DEAD LOCK
START TRANSACTION;
-- customers → users
UPDATE customers
SET age = 444
WHERE id = 1;

UPDATE users
SET age = 12
WHERE id = 1;
