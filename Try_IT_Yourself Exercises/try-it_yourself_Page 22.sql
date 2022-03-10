create database try_it_yourself_1;
 
 CREATE TABLE teachers (
 id bigserial,
 first_name varchar(25),
 last_name varchar(50),
 school varchar(50),
 hire_date date,
 salary numeric
);

INSERT INTO teachers (first_name, last_name, school, hire_date, salary)
VALUES ('Thlokomelo', 'Hlomuka', 'Erasmus HS', '2011-10-30', 36200),
 ('kgoro', 'Tau', 'Sunward HS', '1993-05-22', 65000),
 ('Phindile', 'Bapela', 'ST Peters Middle School', '2005-08-01', 43500),
 ('Zandile', 'Sithole', 'Atlas Middle School', '2011-10-30', 36200),
 ('Cathy', 'Modipa', 'Dreyer Middle School', '2005-08-30', 43500),
 ('Jackson', 'Dames', 'Riggers HS', '2010-10-22', 38500);

Question 1
SELECT school, last_name
FROM teachers
ORDER BY school, last_name;

Question 2
SELECT first_name, last_name, school, salary
FROM teachers
WHERE first_name LIKE 'P%'
AND salary > 40000;

Question 3
SELECT first_name, last_name, hire_date, salary
FROM teachers
WHERE hire_date >= '2010-01-01'
ORDER BY Salary DESC;

 COPY teachers TO 'C:\Users\thlok\Documents\3. SQL Module\Analysis\teachers.txt' WITH (FORMAT CSV, HEADER, DELIMITER '|');
