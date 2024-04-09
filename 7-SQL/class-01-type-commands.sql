-- DDL
DROP TABLE students;
CREATE TABLE IF NOT EXISTS students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name CHAR NOT NULL,
    CPF TEXT NOT NULL UNIQUE,
    age NUMERIC         
);        

--DML
INSERT INTO students (name, CPF) VALUES ('HASHIRAMA', '148.949.654-16')