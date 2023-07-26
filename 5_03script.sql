-- ROUND, FLOOR, CEILING

SELECT ROUND(3.14); # 四捨五入

SELECT ROUND(3.14, 1);

SELECT ROUND(13.14, -1);

SELECT FLOOR(3.14); #切り捨て

SELECT CEILING(3.14); #切り上げ

-- ランダム
SELECT RAND(); # 0 ~ 1;
SELECT RAND() * 10;
SELECT CEILING (RAND() * 10);
SELECT FLOOR(RAND() * 10);

-- べき乗
SELECT POWER(3, 4); 
SELECT weight / POWER(height/100, 2) AS BMI FROM students;

-- COALESCE
SELECT * FROM tests_score;

-- NULLでない最初の値を返す
SELECT COALESCE(NULL, NULL, NULL, "A", NULL, "B");

SELECT COALESCE(test_score_1, test_score_2, test_score_3) AS score FROM tests_score
