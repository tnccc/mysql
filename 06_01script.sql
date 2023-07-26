 06_script02.sql-- IF(条件式, 真の値, 偽の値)
SELECT IF(10 < 20, "A", "B");
SELECT * FROM users;
DESCRIBE users;

# 名前の文字数が10より多いユーザーはIS_CHECKEDにA, 以外はB
SELECT *, IF(CHAR_LENGTH(name) > 10, "A", "B") AS IS_CHECKED FROM users;

SELECT *, IF(birth_place = "日本", "日本人", "その他") AS 国籍 FROM users;

SELECT name, age, IF(age < 20, "未成年", "成人") AS "未成年 or 成人" FROM users;

SELECT *, IF(class_no = 6 AND height > 170, "6組の170cm以上の人", "その他") FROM students;

SELECT * FROM users;
SELECT name, IF(name LIKE "%田%", "名前に田を含む", "その他") AS name_check FROM users;