-- DDL
DROP TABLE students;
CREATE TABLE IF NOT EXISTS students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name CHAR NOT NULL,
    CPF TEXT NOT NULL UNIQUE,
    age NUMERIC         
);        

--DML
INSERT INTO students (name, CPF, age) VALUES ('TSUKASA FUJII', '148.999.777-90', '12');


--DQL
SELECT * FROM students;

SELECT name, age FROM students;

select * FROM students
WHERE id >= 2 LIMIT 3;

SELECT * FROM students
WHERE age >= 18 and age <= 67;


--DML 
--UPDATE SET WHERE!
UPDATE students 
SET age = 36
WHERE id = 9;

DELETE FROM students
WHERE id = 10;


--TCL
BEGIN TRANSACTION;
ROLLBACK;
COMMIT;

--DDL
ALTER TABLE students
ADD COLUMN ANIME TEXT;

UPDATE students 
SET age = 200
WHERE id = 12;