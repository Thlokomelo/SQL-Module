Create database analysis;

 CREATE TABLE teachers (
 id bigserial,
 first_name varchar(25),
 last_name varchar(50),
 school varchar(50),
 hire_date date,
 salary numeric
);

INSERT INTO teachers (first_name, last_name, school, hire_date, salary)
VALUES ('Janet', 'Smith', 'F.D. Roosevelt HS', '2011-10-30', 36200),
 ('Lee', 'Reynolds', 'F.D. Roosevelt HS', '1993-05-22', 65000),
 ('Samuel', 'Cole', 'Myers Middle School', '2005-08-01', 43500),
 ('Samantha', 'Bush', 'Myers Middle School', '2011-10-30', 36200),
 ('Betty', 'Diaz', 'Myers Middle School', '2005-08-30', 43500),
 ('Kathleen', 'Roush', 'F.D. Roosevelt HS', '2010-10-22', 38500);
 

select * from teachers;
 
 SELECT DISTINCT school
 FROM teachers;
 
 SELECT DISTINCT school, salary
 FROM teachers;
 
SELECT first_name, last_name, salary 
FROM teachers
ORDER BY salary DESC;
 
SELECT last_name, school, hire_date 
FROM teachers
ORDER BY school ASC, hire_date DESC;
 
SELECT last_name, school, hire_date
FROM teachers
WHERE school = 'Myers Middle School';

SELECT first_name, last_name, salary
FROM teachers
WHERE salary > 50000;

SELECT first_name, last_name, salary
FROM teachers
WHERE salary BETWEEN 20000 and 40000;

SELECT *
FROM teachers
WHERE school = 'F.D. Roosevelt HS'
 AND (salary < 38000 OR salary > 40000);
 
 
 CREATE TABLE char_data_types (
 varchar_column varchar(10),
 char_column char(10),
 text_column text 
);

INSERT INTO char_data_types
VALUES 
 ('abc', 'abc', 'abc'),
 ('defghi', 'defghi', 'defghi');
 
  COPY char_data_types TO 'C:\Users\thlok\Documents\3. SQL Module\Analysis\try-it_yourself.sql' WITH (FORMAT CSV, HEADER, DELIMITER '|');
 
