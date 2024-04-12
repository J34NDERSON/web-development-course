-- DDL
DROP TABLE students;
CREATE TABLE IF NOT EXISTS students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name CHAR NOT NULL,
    CPF TEXT NOT NULL UNIQUE,
    age NUMERIC         
);        

--DML
INSERT INTO students (name, CPF, age) VALUES ('Jeanderson Wylis', '148.949.654-88', '18');

--DQL
SELECT * FROM students;

SELECT name, age FROM students;

select * FROM students
WHERE id >= 2 LIMIT 3;
