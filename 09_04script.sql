-- WHERE GROUP BYをする前に絞り込む
-- HAVING GROUP BY(集計)したものに対して絞り込む, GROUP BYした後に絞り込む
SELECT department, FLOOR(AVG(salary))  FROM employees
GROUP BY department
HAVING AVG(salary) > 3980000
;

SELECT birth_place, age, COUNT(*) FROM users
GROUP BY birth_place, age
HAVING COUNT(*) > 1
ORDER BY age DESC 
;