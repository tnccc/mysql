SHOW TABLES;

# カラム全取得
SELECT * FROM people;

INSERT INTO people(id, name, birth_day) VALUES(3, "yoshio", "1992-09-09");
INSERT INTO people(id, name, birth_day) VALUES(4, "gon", "1995-12-10");

# カラム一部
SELECT  id, name, name, name FROM people;

# AS文を用いて表示方法を変更する
SELECT  id AS "番号", name AS "名前", birth_day "生年月日" FROM people;

# WHERE句
SELECT  * FROM people WHERE id = 2;
SELECT * FROM people WHERE name = "ケン";

# UPDATE 
UPDATE people SET birth_day = "1900-01-01", name="ken";

UPDATE people SET name = "Taro", birth_day="2000-01-01" WHERE id = 2;
UPDATE people SET name = "To4", birth_day="2000-01-01" WHERE id = 3;
UPDATE people SET name = "change", birth_day="2029-01-01" WHERE id < 4;

# DELETE 

# DELETEとWHEREを使用してidが2以下のレコードを削除
DELETE FROM people WHERE id < 2;

# レコード全削除
DELETE FROM people;
SELECT * FROM people;