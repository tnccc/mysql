SELECT * FROM customers  WHERE name IS NULL;

-- COUNT
SELECT COUNT(*) FROM customers; # NULLがカウントされている / 何行データが入っているか
SELECT COUNT(name) FROM customers; # NULLがカウントされていない / この列に何行入っているか

-- 絞り込んだ結果に対してカウントを実行させる
SELECT COUNT(name) FROM customers WHERE id > 80;

-- MAX(最大), MIN(最小)
SELECT MAX(age), MIN(age) FROM users WHERE birth_place = "日本";

SELECT MAX(birth_day), MIN(birth_day) FROM users;

-- SUM(合計値)
SELECT SUM(salary) FROM employees;

-- AVG(平均値) NULLの場合が面倒
-- NULLはAVGから除外されてしまうので、NULLを0として許容し、平均値に加えたい場合はCOALESCEを使う
CREATE TABLE tmp_count(
	num INT
);

INSERT INTO tmp_count VALUES(1);
INSERT INTO tmp_count VALUES(2);
INSERT INTO tmp_count VALUES(3);
INSERT INTO tmp_count VALUES(NULL);

SELECT * FROM tmp_count;

SELECT AVG(COALESCE(num, 0)) FROM tmp_count;