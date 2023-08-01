SHOW DATABASES;
USE day_4_9db;
SHOW TABLES;

-- UNION: 重複は削除
SELECT * FROM new_students
UNION
SELECT * FROM students ORDER BY id;

-- UNION ALL: 重複は削除されない (UNIONじゃないといけない場合以外はこちらを採用する)
SELECT * FROM new_students
UNION ALL
SELECT * FROM students ORDER BY id;

-- WHEREとUNIONを使うことも可能
SELECT * FROM students WHERE id < 10
UNION ALL
SELECT * FROM students WHERE id > 250;

-- UNIONする型が合っていればカラムを指定できる。
-- ORDER BYを使用する際は一番最初のカラム指定
SELECT id, name FROM students WHERE id < 10
UNION
SELECT age, name FROM users WHERE id < 10 ORDER BY id;

-- カラムの数を揃えないとエラーになってしまう
SELECT id, name, height FROM students;
UNION
SELECT age, name, FROM users;