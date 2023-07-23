SHOW TABLES;
# テーブルの定義を確認
DESCRIBE people;

ALTER TABLE people ADD age INT AFTER name;

INSERT INTO people VALUES(1, "john", 18, "2001-01-01");
INSERT INTO people VALUES(2, "Alice", 15, "2003-01-01");
INSERT INTO people VALUES(3, "Paul", 19, "2000-01-01");
INSERT INTO people VALUES(4, "Chris", 17, "2001-01-01");
INSERT INTO people VALUES(5, "ken", 20, "2001-01-01");
INSERT INTO people VALUES(6, "ryu", 23, "2001-01-01");

SELECT * FROM people;

# ageで昇順
SELECT * FROM people ORDER BY age ASC;

# ageで降順
SELECT * FROM people ORDER BY age DESC;

# 複数のデータに対して昇順、降順を指定することも可
SELECT * FROM people ORDER BY birth_day DESC, name ASC;

# DISNTICT 重複を削除
SELECT DISTINCT birth_day FROM people ORDER BY birth_day DESC;

SELECT DISTINCT name, birth_day FROM people;

# LIMIT 最初の行だけ表示
SELECT * FROM people LIMIT 3;

# 飛ばして表示する [飛ばす行], [表示件数]
SELECT * FROM people LIMIT 3, 100;