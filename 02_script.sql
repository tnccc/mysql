USE my_db;
SELECT DATABASE ();

#テーブルを表示
SHOW TABLES;

# テーブルの削除
DROP TABLE users;

SHOW TABLES;

# テーブルを定義する
CREATE TABLE users(
	id INT PRIMARY KEY, -- idカラムINT型
	name VARCHAR(10), -- 名前, 可変長文字列
	age INT, -- 年齢, INT型
	phone_number CHAR(13), -- 電話番号 固定長文字列
	message TEXT
)

# テーブルの定義確認
DESCRIBE users;



/* テーブルの中身を確認
SELECT *
FROM users;
/*