-- GROUP BY
SELECT age, COUNT(*), MAX(birth_day), MIN(birth_day) FROM users
WHERE birth_place = "日本"
GROUP BY age
ORDER BY COUNT(*)
;

SELECT department, SUM(salary) AS total_salary, FLOOR(AVG(salary)) AS avg_salary, MIN(salary) AS min_salary
FROM employees
WHERE age > 40
GROUP BY department;

SELECT
	age,
	CASE 
		WHEN age < 20 THEN "未成年"
		ELSE "成人"
	END AS "分類",
	COUNT(*)
FROM users
GROUP BY age;
	