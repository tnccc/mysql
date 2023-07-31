SHOW DATABASES;
USE techpit;

SHOW TABLES;

// 1. itemのレコードにはNULLを許容していないので、NULLが入るとエラーになる
CREATE TABLE kakaku(
	No INT PRIMARY KEY,
	item VARCHAR(5) UNIQUE NOT NULL,
	price INT
)

DESCRIBE kakaku; 

-- 2. 1で指定した定義を参照するのでレコード追加時にNULLがあるとエラーになる。
INSERT INTO kakaku(No, item, price) 
VALUES
	(01, "鉛筆", 80),
	(02, "ボールペン", 100),
	(03, "消しゴム", 150),
	(04, "ノート", 180),
	(05, "はさみ", 200),
	(06, "ホッチキス", 600)
;
-- VALUES エラーとなるレコード追加
#(01, "鉛筆", 80),
#(02, "ボールペン", 100),
#(03, NULL, 150),
#(04, "ノート", 180),
#(05, "はさみ", 200),
#(06, "ホッチキス", 600),

# 2の追加を確認
SELECT * FROM kakaku;


