SHOW DATABASES;
USE day_4_9db;
SHOW TABLES;

SELECT * FROM users;

-- TRANSACTIONの開始
START TRANSACTION;

-- UPDATE処理
UPDATE users
SET name = "下山 成美"
WHERE id = 1;

-- ROLLBACK(トランザクション開始前に戻します)
ROLLBACK;

-- COMMIT (トランザクションをDBに反映)
COMMIT;

-- 自動コミットモード ON / OFF

SELECT * FROM students;
DELETE FROM students
WHERE id = 300;

SELECT * FROM students ORDER BY id DESC LIMIT 10;

-- AUTOCOMMIT 確認
SHOW VARIABLES WHERE variable_name = "autocommit";
SET AUTOCOMMIT = 0;

SET AUTOCOMMIT = 1;

DELETE FROM students 
WHERE id = 299;

-- SQLの反映
COMMIT;