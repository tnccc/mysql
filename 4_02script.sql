SELECT DATABASE();
DESCRIBE customers;

-- nameがnullのレコードを取得 / IS NULLでないとNULLは取り出せない
SELECT * FROM customers WHERE name IS NULL;

-- nameがnull以外のレコードを取得 / IS NOT NULLでないとNULL以外の意味にならない
SELECT * FROM customers WHERE name IS NOT NULL;

SELECT * FROM prefectures;
-- nullは値が何が入っているのか分からない
SELECT * FROM prefectures WHERE name IS NULL;
-- 空白の場合はダブルクォーテーション、またはシングルクォーテーションで取り出せる
SELECT * FROM prefectures WHERE name = "";

-- BETWEEN, NOT BETWEEN
# 5以上10以下 最大値10を含む
SELECT * FROM users WHERE age BETWEEN 5 AND 10;
# 5以上10以下の条件以外
SELECT * FROM users WHERE age NOT BETWEEN 5 AND 10;

-- LIKE, NOT LIKE
# 前方一致 %が後ろにつく
SELECT * FROM users WHERE name LIKE "村%";
# 後方一致 %が前につく
SELECT * FROM users WHERE name LIKE "%郎";
# 含む %で挟む
SELECT * FROM users WHERE name LIKE "%A%";

# _は任意の一文字
SELECT * FROM prefectures WHERE name LIKE "%福_%" ORDER BY id DESC;