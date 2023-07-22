SHOW DATABASES;
# my_dbを削除
DROP DATABASE my_db;
# databaseの表示
SHOW DATABASES;
# USEでデータベースの指定
USE performance_schema;
CREATE DATABASE  my_db;
USE my_db;
# SELECT DATABASE();で使用中のデータベースの確認
SELECT DATABASE();