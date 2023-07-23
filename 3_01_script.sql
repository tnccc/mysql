SELECT DATABASE();
USE my_db;

CREATE TABLE people(
	id INT PRIMARY KEY,
	name VARCHAR(50),
	birth_day DATE DEFAULT "1990-01-01"
);

INSERT INTO people VALUES(1, "ケン", "1990-08-08");
INSERT INTO people(id, name) VALUES(2, "リュウ");
SELECT * FROM people;


