SHOW DATABASES;
USE techpit;
SHOW TABLES;

CREATE TABLE person_data(
	id INT PRIMARY KEY,
	name VARCHAR(15),
	age INT,
	address CHAR(30)
);

ALTER TABLE person_data ADD dept CHAR(3);


INSERT INTO person_data(id, name, age, address, dept) 
VALUES (1, "佐藤", 25, "東京都千代田区"),
	(2, "鈴木", 32, "東京都北区"),
	(3, "斎藤", 43, "神奈川県川崎市"),
	(4, "吉田", 35, "神奈川県横浜市"),
	(5, "川崎", 27, "東京都武蔵野市"),
	(6, "石川", 53, "東京都北区");

SELECT * FROM person_data;
SELECT dept, count(name) FROM person_data GROUP BY dept;
