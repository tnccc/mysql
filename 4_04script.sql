-- IN + NULL
SELECT * FROM customers;
SELECT * FROM customers WHERE name IN ("河野 文典", "稲田 季雄") OR name IS NULL;

-- NOT IN
SELECT * FROM customers WHERE name NOT IN ("河野 文典", "稲田 季雄") AND name IS NOT NULL;

-- ALL
-- customersテーブルからid<10の人の誕生日よりも古い誕生日の人をusersから取り出すSQL (NULLを除外している)
SELECT * FROM users WHERE birth_day <= ALL(SELECT birth_day FROM customers WHERE id < 10 AND birth_day IS NOT NULL);

# ALL INの場合はNULLに気を付ける