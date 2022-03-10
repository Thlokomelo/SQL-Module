CREATE TABLE departments (
 dept_id bigserial,   ---primary key column
 dept varchar(100),
 city varchar(100),
 CONSTRAINT dept_key PRIMARY KEY (dept_id),
 CONSTRAINT dept_city_unique UNIQUE (dept, city)
);

CREATE TABLE employees (
 emp_id bigserial,    ---primary key column
 first_name varchar(100),
 last_name varchar(100),
 salary integer,
 dept_id integer REFERENCES departments (dept_id),   ----foreign key column
 CONSTRAINT emp_key PRIMARY KEY (emp_id),
 CONSTRAINT emp_dept_unique UNIQUE (emp_id, dept_id)
);

INSERT INTO departments (dept, city)
VALUES
('Tax', 'Atlanta'),
('IT', 'Boston');

select * from departments;
 
INSERT INTO employees (first_name, last_name, salary, dept_id)
VALUES
 ('Nancy', 'Jones', 62500, 1),
 ('Lee', 'Smith', 59300, 1),
 ('Soo', 'Nguyen', 83000, 2),
 ('Janet', 'King', 95000, 2);
 
 select * from employees
 
SELECT *
FROM employees JOIN departments
ON employees.dept_id = departments.dept_id;

SELECT employees.emp_id, employees.first_name,
       employees.last_name, employees.salary,
       departments.dept, departments.city
FROM employees JOIN departments
ON employees.dept_id = departments.dept_id;

----------------------------------------------------------------------------------

CREATE TABLE schools_left (
id integer CONSTRAINT left_id_key PRIMARY KEY,
left_school varchar(30)
);

CREATE TABLE schools_right (
id integer CONSTRAINT right_id_key PRIMARY KEY,
right_school varchar(30)
);

INSERT INTO schools_left (id, left_school) VALUES
 (1, 'Oak Street School'),
 (2, 'Roosevelt High School'),
 (5, 'Washington Middle School'),
 (6, 'Jefferson High School');
 
INSERT INTO schools_right (id, right_school) VALUES
 (1, 'Oak Street School'),
 (2, 'Roosevelt High School'),
 (3, 'Morrison Elementary'),
 (4, 'Chase Magnet Academy'),
 (6, 'Jefferson High School');

--Inner Join
SELECT *
FROM schools_left JOIN schools_right
ON schools_left.id = schools_right.id;

--left Join
SELECT *
FROM schools_left LEFT JOIN schools_right
ON schools_left.id = schools_right.id;

--Right Join
SELECT *
FROM schools_left RIGHT JOIN schools_right
ON schools_left.id = schools_right.id;

---Full Outer Join
SELECT * 
FROM schools_left FULL OUTER JOIN schools_right
ON schools_left.id = schools_right.id;

---Cross Join (shows all possible joins)
SELECT * 
FROM schools_left CROSS JOIN schools_right;

---Using NULL to Find Rows with Missing Values
SELECT *
FROM schools_left LEFT JOIN schools_right
ON schools_left.id = schools_right.id
WHERE schools_right.id IS NULL;

---Not Null (Occupied)
SELECT *
FROM schools_left LEFT JOIN schools_right
ON schools_left.id = schools_right.id
WHERE schools_right.id IS Not NULL;

---Not Null  (Occupied)
SELECT *
FROM schools_left Right JOIN schools_right
ON schools_left.id = schools_right.id
WHERE schools_right.id IS Not NULL;


SELECT employees.emp_id, employees.first_name,
       employees.last_name, employees.salary,
       departments.dept, departments.city
FROM employees JOIN departments
ON employees.dept_id = departments.dept_id;

----alias
SELECT lt.id,
 lt.left_school, 
 rt.right_school
u FROM schools_left AS lt LEFT JOIN schools_right AS rt
ON lt.id = rt.id;

----------------------------------------------------------------------------------

CREATE TABLE schools_enrollment (
 id integer,
 enrollment integer
);

CREATE TABLE schools_grades (
 id integer,
 grades varchar(10)
);

INSERT INTO schools_enrollment (id, enrollment) 
VALUES
 (1, 360),
 (2, 1001),
 (5, 450),
 (6, 927);
 
INSERT INTO schools_grades (id, grades) 
VALUES
 (1, 'K-3'),
 (2, '9-12'),
 (5, '6-8'),
 (6, '9-12');

SELECT lt.id, lt.left_school, en.enrollment, gr.grades
FROM schools_left AS lt LEFT JOIN schools_enrollment AS en
 ON lt.id = en.id
LEFT JOIN schools_grades AS gr
 ON lt.id = gr.id;
 
------------------------------------------------------------------------

CREATE TABLE us_counties_2000 (
    geo_name varchar(90),              -- County/state name,
    state_us_abbreviation varchar(2),  -- State/U.S. abbreviation
    state_fips varchar(2),             -- State FIPS code
    county_fips varchar(3),            -- County code
    p0010001 integer,                  -- Total population
    p0010002 integer,                  -- Population of one race:
    p0010003 integer,                      -- White Alone
    p0010004 integer,                      -- Black or African American alone
    p0010005 integer,                      -- American Indian and Alaska Native alone
    p0010006 integer,                      -- Asian alone
    p0010007 integer,                      -- Native Hawaiian and Other Pacific Islander alone
    p0010008 integer,                      -- Some Other Race alone
    p0010009 integer,                  -- Population of two or more races
    p0010010 integer,                  -- Population of two races
    p0020002 integer,                  -- Hispanic or Latino
    p0020003 integer                   -- Not Hispanic or Latino:
 );
 
COPY us_counties_2000
FROM 'C:\Users\thlok\Documents\3. SQL Module\Analysis\us_counties_2000.csv'
WITH (FORMAT CSV, HEADER);
 
SELECT c2010.geo_name,
       c2010.state_us_abbreviation AS state,
       c2010.p0010001 AS pop_2010,
       c2000.p0010001 AS pop_2000,
       c2010.p0010001 - c2000.p0010001 AS raw_change,
       round( (CAST(c2010.p0010001 AS numeric(8,1)) - c2000.p0010001)
           / c2000.p0010001 * 100, 1 ) AS pct_change
FROM us_counties_2010 c2010 INNER JOIN us_counties_2000 c2000
ON c2010.state_fips = c2000.state_fips
   AND c2010.county_fips = c2000.county_fips
   AND c2010.p0010001 <> c2000.p0010001
ORDER BY pct_change DESC;


