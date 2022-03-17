create database advance_queries_db;
----------------Relational tables

create table profession(
prof_id serial,
Profession varchar (50),
CONSTRAINT profession_unique UNIQUE (profession),
CONSTRAINT prof_key PRIMARY KEY (prof_id)
);

INSERT INTO profession (profession)
VALUES ('Doctor'),
       ('Salesman'),
       ('Civil Engineer'),
       ('Plumber'),
	   ('Accountant');
	   
select * from profession;
  
---------------------------------------------
create table postal_code(
postal_Code varchar (4),
city varchar (50),
province varchar (50),
CONSTRAINT PosCod_key PRIMARY KEY (postal_code)
);

INSERT INTO postal_code (postal_code, city, province)
VALUES ('1111', 'Johannesburg', 'Gauteng'),
       ('2222', 'Pretoria', 'Gauteng'),
	   ('3333', 'Polokwane', 'Limpopo'),
	   ('4444', 'Venda', 'Limpopo'),
	   ('5555', 'Pietermaritzburg', 'KwaZulu Natal'),
       ('6666', 'Durban', 'KwaZulu Natal'),
       ('7777', 'East London', 'Eastern Cape'),
       ('8888', 'Port Elizaberth', 'Eastern Cape'),
	   ('9999', 'Rusternburg', 'North West'),
       ('1010', 'Potchefstroom', 'North West'),
	   ('1212', 'Nelspruit', 'Mpumalanga'),
       ('1313', 'Emelo', 'Mpumalanga'),
	   ('1414', 'Bloemfontein', 'Free State'),
       ('1515', 'Figsburg', 'Free State'),
	   ('1616', 'Cape Town', 'Western Cape'),
       ('1717', 'Mossel Bay', 'Western Cape'),
	   ('1818', 'Kimberly', 'Northern Cape'),
       ('1919', 'Upington', 'Northern Cape');
	   
select * from postal_code;

--------------------------------------------------------------	   
create table status (
status_id serial,
status varchar (50),
CONSTRAINT stat_key PRIMARY KEY (status_id)
);

INSERT INTO status (status)
VALUES ('Married'),
       ('single'),
	   ('its_complicated');
	   
select * from status;	   
----------------------------------------	   
create table contact_interest (
contact_id serial,
interest_id serial,
CONSTRAINT cont_intr_key PRIMARY KEY (contact_id)
);

INSERT INTO contact_interest (contact_id, interest_id)
VALUES ('1', '4'),
       ('2', '4'),
       ('3', '3'),
       ('4', '4'),
       ('5', '5'),
       ('6', '6'),
       ('7', '1'),
       ('8', '2'),
       ('9', '3'),
       ('10', '4'),
       ('11', '5'),
       ('12', '6'),
	   ('13', '1'),
       ('14', '2'),
       ('15', '3'),
       ('16', '4'),
       ('17', '5'),
       ('18', '6'),
       ('19', '1'),
       ('20', '2'),
       ('21', '3');
       
select * from contact_interest;
-------------------------------------------
create table contact_seeking (
contact_id serial,
seeking_id serial,
CONSTRAINT cont_seek_key PRIMARY KEY (contact_id)
);

INSERT INTO contact_seeking (contact_id, seeking_id)
VALUES ('1', '1'),
       ('2', '2'),
       ('3', '3'),
       ('4', '4'),
       ('5', '5'),
       ('6', '1'),
       ('7', '2'),
       ('8', '3'),
       ('9', '4'),
       ('10', '5'),
       ('11', '1'),
       ('12', '2'),
	   ('13', '3'),
       ('14', '4'),
       ('15', '5'),
       ('16', '1'),
       ('17', '2'),
       ('18', '3'),
       ('19', '4'),
       ('20', '5'),
       ('21', '1');
	   
select * from contact_interest;
---------------------------------------------
create table interest (
interest_id serial,
interest varchar (50) not null,
CONSTRAINT intr_key PRIMARY KEY (interest_id)
);

INSERT INTO interest (interest)
VALUES ('sports'),
       ('gaming'),
	   ('netflix'),
	   ('clubing'),
       ('hiking'),
	   ('Knitting');
	   
select * from interest;
drop table interest;

----------------------------------------------
create table seeking (
seeking_id serial,
seeking varchar (50),
CONSTRAINT seek_key PRIMARY KEY (seeking_id)
);

INSERT INTO seeking (seeking)
VALUES ('Male'),
       ('female'),
	   ('gay'),
	   ('lesbian'),
	   ('bisexual');
	   	   
select * from seeking;

------------------------------------------------

Create table my_contacts (
contact_id serial,
last_name varchar (50),
first_name varchar (50),
phone varchar (50),
email varchar (50),
gender varchar (50),
birthday date,
prof_id integer,
postal_code varchar (4),
status_id integer,
interest_id integer,
seeking_id integer,
CONSTRAINT cont_key PRIMARY KEY (contact_id)	
);

INSERT INTO my_contacts (last_name, first_name, phone, email, gender, birthday, prof_id, postal_code, status_id, interest_id, seeking_id)
VALUES ('Corpade', 'Phindile', '071 123 4567', 'CP@gmail.com', 'female', '1/4/1990', '1', '1111', '1', '1','1'),
       ('Sithole', 'Zandile', '072 124 4567', 'SZ@gmail.com', 'female', '2/10/1994', '2', '2222', '2','2','2'),
       ('Bapela', 'Tshego', '073 125 4567', 'BT@gmail.com', 'male', '3/11/1995', '3', '3333', '3','3','3'),
       ('Ledwaba', 'Joy', '074 125 4567', 'BT@gmail.com', 'male', '3/6/1987', '4', '4444', '1', '4','4'),
       ('Shezi', 'Lungile', '083 126 4567', 'LS@gmail.com', 'male', '4/6/1989', '5', '5555', '2', '5','5'),
       ('Johnson', 'Brownwyn', '084 127 4567', 'JB@gmail.com', 'female', '1/1/1980', '1', '6666', '3', '6','1'),
       ('Ackerman', 'James', '072 128 4567', 'AJ@gmail.com', 'male', '6/8/1991', '2', '6666', '1', '1','2'),
       ('Dickson', 'Tom', '081 129 4567', 'DT@gmail.com', 'male', '7/12/1992', '2', '7777', '2', '2','3'),
       ('Motsepe', 'Jerry', '081 130 4567', 'MJ@gmail.com', 'male', '8/2/1992', '3', '8888', '3', '3','4'),
       ('Tompson', 'Nicole', '084 131 4567', 'TN@gmail.com', 'female', '9/3/1987', '4', '9999', '1', '4','5'),
       ('Jordan', 'Susan', '084 132 4567', 'JS@gmail.com', 'female', '2/4/1984', '5', '1010', '2', '5','6'),
       ('Smith', 'Mark', '082 134 4567', 'SM@gmail.com', 'male', '5/5/1985', '1', '1111', '3', '1','1'),
	   ('Visser', 'Bruce', '082 135 4567', 'VB@gmail.com', 'male', '7/6/1986', '2', '1212', '1', '2','2'),
	   ('Liebenberg', 'Monica', '081 136 4567', 'LM@gmail.com', 'female', '3/7/1987', '3', '1313', '2', '3','3'),
	   ('Winehouse', 'Amy', '082 137 4567', 'WA@gmail.com', 'female', '4/8/1990', '4', '1313', '3', '4','4'),
	   ('Moore', 'Vicky', '082 137 4567', 'MV@gmail.com', 'female', '5/9/1994', '5', '1414', '1', '5','5'),
	   ('Vandam', 'Diane', '082 138 4567', 'VD@gmail.com', 'female', '6/9/1994', '1', '1515', '2', '1','6'),
       ('Willis', 'Garry', '082 139 4567', 'WG@gmail.com', 'male', '7/12/1995', '2', '1616', '3', '2','2'),
	   ('Ross', 'Trevor', '072 140 4567', 'RT@gmail.com', 'male', '8/11/1996', '3', '1717', '1', '3','3'),
	   ('Bramfitcher', 'Travis', '072 141 1111', 'BT1@gmail.com', 'male', '9/12/1997', '4', '1818', '2', '4','4'),
	   ('Mokoena', 'Botshelo', '072 142 1222', 'MB1@gmail.com', 'female', '2/1/1998', '5', '1919', '3', '5','2');
	   
select * from my_contacts;  

-----------------------------------------------------------------------------------------------------------------
----------Advanced queries
----------ODBC and JDBC Support
--- Quesion 1: Finding duplicate rows

--contact_seeking table
select seeking_id, count (seeking_id)
from contact_seeking
group by seeking_id
having count (seeking_id)>1
order by seeking_id;

---------------------------------------------------------------------------------------------------------------------
--- Quesion 2: Deleting duplicate rows
--1.1.

delete from contact_seeking
where seeking_id IN
(select seeking_id 
from 
(select seeking_id,
row_number() over(partition by seeking_id
order by seeking_id) as row_num
From contact_seeking) t
where t.row_num > 1);

--- run 1.2 to check if there are still duplicates

---------------------------------------------------------------------------------------------------------------------
--- Quesion 3: Creating commands to set up Postgre Tables

--3.1 creates table
create table profession(
prof_id serial primary key,
Profession varchar (50) not null
);
	   
--3.2 creates table
create table postal_code(
postal_Code varchar (4) primary key,
city varchar (50) not null,
province varchar (50) not null
);


--3.3 creates table
create table status (
status_id serial primary key,
status varchar (50) not null
);	   

--3.4 creates table
create table contact_interest (
contact_id serial,
interest_id serial not null,
primary key (contact_id, interest_id)
);
 

--3.5 creates table
create table interest (
interest_id serial primary key,
interest varchar (50) not null
);

--3.6 creates table
create table seeking (
seeking_id serial primary key,
seeking varchar (50)
);

--3.8 creates table
Create table my_contacts (
contact_id serial primary key,
last_name varchar (50) not null,
first_name varchar (50) not null,
phone varchar (50) not null,
email varchar (50) not null,
gender varchar (50) not null,
birthday date not null,
prof_id integer not null,
postal_code varchar (4) not null,
status_id integer not null,
interest_id integer not null,
seeking_id integer
);

-----------------------------------------------------------------------------------
--- Quesion 4: Inserting Data into a PostgreSQL Table 

--interts values into my_contacts table

INSERT INTO my_contacts (last_name, first_name, phone, email, gender, birthday, prof_id, postal_code, status_id, interest_id, seeking_id)
VALUES ('Corpade', 'Phindile', '071 123 4567', 'CP@gmail.com', 'female', '1/4/1990', '1', '1111', '1', '1','1'),
       ('Sithole', 'Zandile', '072 124 4567', 'SZ@gmail.com', 'female', '2/10/1994', '2', '2222', '2','2','2'),
       ('Bapela', 'Tshego', '073 125 4567', 'BT@gmail.com', 'male', '3/11/1995', '3', '3333', '3','3','3'),
       ('Ledwaba', 'Joy', '074 125 4567', 'BT@gmail.com', 'male', '3/6/1987', '4', '4444', '1', '4','4'),
       ('Shezi', 'Lungile', '083 126 4567', 'LS@gmail.com', 'male', '4/6/1989', '5', '5555', '2', '5','5'),
       ('Johnson', 'Brownwyn', '084 127 4567', 'JB@gmail.com', 'female', '1/1/1980', '1', '6666', '3', '6','1'),
       ('Ackerman', 'James', '072 128 4567', 'AJ@gmail.com', 'male', '6/8/1991', '2', '6666', '1', '1','2'),
       ('Dickson', 'Tom', '081 129 4567', 'DT@gmail.com', 'male', '7/12/1992', '2', '7777', '2', '2','3'),
       ('Motsepe', 'Jerry', '081 130 4567', 'MJ@gmail.com', 'male', '8/2/1992', '3', '8888', '3', '3','4'),
       ('Tompson', 'Nicole', '084 131 4567', 'TN@gmail.com', 'female', '9/3/1987', '4', '9999', '1', '4','5'),
       ('Jordan', 'Susan', '084 132 4567', 'JS@gmail.com', 'female', '2/4/1984', '5', '1010', '2', '5','6'),
       ('Smith', 'Mark', '082 134 4567', 'SM@gmail.com', 'male', '5/5/1985', '1', '1111', '3', '1','1'),
	   ('Visser', 'Bruce', '082 135 4567', 'VB@gmail.com', 'male', '7/6/1986', '2', '1212', '1', '2','2'),
	   ('Liebenberg', 'Monica', '081 136 4567', 'LM@gmail.com', 'female', '3/7/1987', '3', '1313', '2', '3','3'),
	   ('Winehouse', 'Amy', '082 137 4567', 'WA@gmail.com', 'female', '4/8/1990', '4', '1313', '3', '4','4'),
	   ('Moore', 'Vicky', '082 137 4567', 'MV@gmail.com', 'female', '5/9/1994', '5', '1414', '1', '5','5'),
	   ('Vandam', 'Diane', '082 138 4567', 'VD@gmail.com', 'female', '6/9/1994', '1', '1515', '2', '1','6'),
       ('Willis', 'Garry', '082 139 4567', 'WG@gmail.com', 'male', '7/12/1995', '2', '1616', '3', '2','2'),
	   ('Ross', 'Trevor', '072 140 4567', 'RT@gmail.com', 'male', '8/11/1996', '3', '1717', '1', '3','3'),
	   ('Bramfitcher', 'Travis', '072 141 1111', 'BT1@gmail.com', 'male', '9/12/1997', '4', '1818', '2', '4','4'),
	   ('Mokoena', 'Botshelo', '072 142 1222', 'MB1@gmail.com', 'female', '2/1/1998', '5', '1919', '3', '5','2');

--dispalys the my_contacts table

select * from my_contacts;  

-------------------------------------------------------------------------------------------------------------------
--- Quesion 5: Using PostgreSQL Recursive Queries

--using my_contacts table to find out which contact has a proffesion with id=2

WITH RECURSIVE cohort AS ( 
SELECT contact_id, prof_id, first_name
FROM my_contacts 
WHERE prof_id = 2
UNION
SELECT r.contact_id, r.prof_id, r.first_name
FROM my_contacts r
INNER JOIN cohort i ON i.contact_id = i.prof_id)
SELECT * 
FROM cohort;

---------------------------------------------------------------------------------------------------------------------
--- Quesion 6: Using PostgreSQL Recursive Queries

--using my_contacts PostgreSQL FETCH Command to Limit Query Results

SELECT contact_id, postal_code
FROM my_contacts
ORDER BY contact_id
FETCH FIRST ROW ONLY; --limits to first row only

--------------------------------------------------------------------------------------------------------------------
--- Quesion 7: Expert Inner Join Query in PostgreSQL

--fetching 2 tables and using the Primary Key of the 1st to fetch matches from the 2nd. 
--The following will return a list of contacts last_name and their interests,
--We added the ORDER BY clause to sort the result by interest_id.

SELECT contact_interest.interest_id, last_name
FROM contact_interest
INNER JOIN my_contacts ON my_contacts.interest_id = contact_interest.interest_id
ORDER BY contact_interest.interest_id; 

--displays the interest table

select * from interest; 
---------------------------------------------------------------------------------------------------------------------
--- Quesion 8: advanced PostgreSQL self_join query and alias

--uses self join to join the my_contacts table to itsels using aliases.
--the self join uses an inner-join clause beacuse the query is referencing the same table.
--the table alias (my_contacts a and my_contacts b) is used to assign different names to the same table within the query.

SELECT
    a.last_name,
    b.last_name,
    a.prof_id
FROM
   my_contacts a
INNER JOIN my_contacts b 
    ON a.contact_id <> b.contact_id AND 
       a.prof_id = b.prof_id
	   order by prof_id;    ------added line for sorting   
--------------------------------------------------------------------------------------------------------
--- Quesion 9: Full Outer Join Query 
--Query returns all records when there is a match in my_contacts (table 1) a or interest b (table 2)records.
--below query returns contacts last_name by their interest.
--Where rows do not match, the full outer join adds the value NULL (row 7 - 43 have no matches in this case).

SELECT
	last_name,
	interest
FROM
	my_contacts a
FULL OUTER JOIN interest b
        ON b.interest_id = a.contact_id;
----------------------------------------------------------------------------------------------------------
--- Quesion 10:  Advanced Where Clause in Full Outer Join Query 
--returns interest_id rows 1 - 43 (Nulls).

SELECT
	last_name,
	interest
FROM
	my_contacts a
FULL OUTER JOIN interest b
        ON b.interest_id = a.contact_id
where 
	interest is null;
	
---------------------------------------------------------------------------------------------------------
--- Quesion 11: PostgreSQL Advanced Query Using the LEFT JOIN Clause.

--allows you to query data from multiple tables.
--The LEFT JOIN returns all rows from the left table and the matching rows from the right table. 
--If no matching rows are found in the right table, NULL are used.
--All rows match, no null columns exist in this case.

select my_contacts.last_name, my_contacts.first_name, my_contacts.phone, my_contacts.email, my_contacts.gender,
my_contacts.birthday, profession.profession, postal_code.postal_code, postal_code.city, postal_code.province, 
status.status, interest.interest, seeking.seeking
from my_contacts 
left join profession
on my_contacts.prof_id = profession.prof_id
left join postal_code
on my_contacts.postal_code = postal_code.postal_code
left join status
on my_contacts.status_id = status.status_id
left join interest
on my_contacts.interest_id = interest.interest_id
left join seeking
on my_contacts.seeking_id = seeking.seeking_id;

-------------------------------------------------------------------------------------------------------------
--- Quesion 12: Implementing the CROSS JOIN Query in PostgreSQL
--creates table 1
create table profession_cj(
prof_id serial,
Profession varchar (50),
CONSTRAINT profession_unique UNIQUE (profession),
CONSTRAINT prof_key PRIMARY KEY (prof_id)
);

--inserts itnto table 1
INSERT INTO profession_cj (profession)
VALUES ('Doctor'),
       ('Salesman'),
       ('Civil Engineer'),
       ('Plumber'),
	   ('Accountant');

--displays table 1 
select * from profession_cj;

--creates table 2
create table seeking_cj (
seeking_id serial,
seeking varchar (50),
CONSTRAINT seekcj_key PRIMARY KEY (seeking_id)
);

--inserts itnto table 2
INSERT INTO seeking_cj (seeking)
VALUES ('Male'),
       ('female'),
	   ('gay'),
	   ('lesbian'),
	   ('bisexual');
	
--displays table 2
select * from seeking_cj;

--generates a paired combination of each row of the first table with each row of the second table. 
--cross joins two tables
select * 
from profession_cj
cross join seeking_cj;

--------------------------------------------------------------------------------------------------------------
--- Quesion 13: Elegant NATURAL JOIN Query in PostgreSQL 
-- discovers the identical column labels – columns with matching labels – 
--and use the matching labels to define the best type of join to fit the data.

SELECT * FROM my_contacts NATURAL JOIN postal_code; 
-----------------------------------------------------------------------------------------------------------------
--- Quesion 14: Applying the UNION Operator to Multiple PostgreSQL Advanced Queries 
--takes the union of two query results

--creates table 1
create table profession_contact_1(
last_name varchar (50),
prof_id serial,
Profession varchar (50),
CONSTRAINT profun_key PRIMARY KEY (prof_id)
);

--inserts into table 1
INSERT INTO profession_contact_1 (profession, last_name)
VALUES ('Doctor', 'Boyle'),
       ('Salesman', 'Suliman'),
       ('Civil Engineer', 'Moore'),
       ('Plumber', 'Themba'),
	   ('Accountant', 'Johnson');
	   
--dispalys table 1
select * from profession_contact_1;

--creates table 2
create table profession_contact_2(
last_name varchar (50),
prof_id serial,
Profession varchar (50),
CONSTRAINT profun2_key PRIMARY KEY (prof_id)
);

--inserts into table 2
INSERT INTO profession_contact_2 (profession, last_name)
VALUES ('Administrator', 'AB'),
       ('Reporter', 'BC'),
       ('Actor', 'CD'),
       ('Producer', 'EF'),
	   ('Chef', 'GH');
	
--inserts into table 2
select * from profession_contact_2;
	   	   
select * from seeking_un;

--joins tables by stacking them on top of each other
SELECT * FROM profession_contact_1
UNION ALL 
SELECT * FROM profession_contact_2
order by prof_id asc;

--combines result sets from table 1 and table 2:
SELECT * FROM profession_contact_1
UNION
SELECT * FROM profession_contact_2
order by prof_id asc;

-----------------------------------------------------------------------------------------------------
--- Quesion 15: Use a PostgreSQL Query Result to Create a Table 

--uses a query to create a table
SELECT contact_id, last_name
INTO my_contacts_select
FROM my_contacts
WHERE contact_id = 2;

--displays the created table
select * from my_contacts_select;
--------------------------------------------------------------------------------------------------------
--- Quesion 16: Implementing Math Functions in PostgreSQL Queries

--16.1. Finding the average
SELECT AVG (prof_id) FROM my_contacts; -----returns 2.9069767441860465

--16.2. Generating random numbers
SELECT random() * 100 + 1 AS RAND_1_100; ----returns 98.75363408502216

--------------------------------------------------------------------------------------------------------------
--- Quesion 17: Using the Advanced Subquery in PostgreSQL

--returns all contacts last_name whose prof_id are above average, 
--by putting the average calculation in a subquery: 

SELECT last_name, prof_id
FROM my_contacts
WHERE prof_id > ( 
SELECT AVG (prof_id) FROM my_contacts
); 
-----------------------------------------------------------------------------------------------------------------
--- Quesion 18:  Querying Stats on the Postgre DB 

--returns largest table in our pgadmin DB
SELECT relname, relpages FROM pg_class ORDER BY relpages DESC limit 5;

--list: 
--■ relname – table name 
--■ relpages – number of pages 
--■ pg_class – system table names 
--■ limit – limits output to the first result 

--returns largest table in our current database (advanced_queries_db) and limits the lizt to 3

SELECT
    relname AS "relation",
    pg_size_pretty (
        pg_total_relation_size (C .oid)
    ) AS "total_size"
FROM
    pg_class C
LEFT JOIN pg_namespace N ON (N.oid = C .relnamespace)
WHERE
    nspname NOT IN (
        'pg_catalog',
        'information_schema'
    )
AND C .relkind <> 'i'
AND nspname !~ '^pg_toast'
ORDER BY
    pg_total_relation_size (C .oid) DESC
LIMIT 3;

-------------------------------------------------------------------------------------------------------------------
--- Quesion 19: Using PostgreSQL SELECT DISTINCT clause 

--finds the unique values in a specific category within a table. 
--by retrieving average prof_id for each contact

SELECT DISTINCT
last_name, prof_id
FROM my_contacts
WHERE prof_id > ( 
SELECT AVG (prof_id) FROM my_contacts
); 

-----------------------------------------------------------------------------------------------------------------------
----------important PostgreSQL queries for daily use: 
--- Quesion 1 (20): Rollup

--provides a shorthand for defining multiple grouping sets and generates grouping sets based on an assumed hierachy

SELECT seeking_id, interest_id, count(*)
FROM my_contacts
GROUP BY ROLLUP(seeking_id, interest_id) 

-----------------------------------------------------------------------------------------------------------------------
--- Quesion 2 (21): CUBE 

--gets all sequences. gives a consolidated summary of collections and the hierarchical rollup. 

SELECT seeking_id, interest_id, count(*)
FROM my_contacts
GROUP BY cube (seeking_id, interest_id)

----------------------------------------------------------------------------------------------------------------------
--- Quesion 3 (22): creating an Index

--creates an index called contact_index on the my_contacts table for the contact_id column. 

CREATE INDEX contact_index ON my_contacts (contact_id); 

----------------------------------------------------------------------------------------------------------------------
--- Question 4 (23): HAVING Clause 

--defines which particular group(s) are to be presented. 

SELECT
	gender,
	SUM (interest_id) ---aggregate function
FROM
	my_contacts
GROUP BY
	gender
HAVING
	SUM (interest_id) > 2; ---condition

--If you want to present the record of the average interest_id 
--for all genders having a interest_id greater than 2 from the my_contacts table, 
--the following SQL can be applied: 

SELECT gender, AVG(interest_id) 
FROM my_contacts 
GROUP BY gender
HAVING COUNT(*)>3;

-----------------------------------------------------------------------------------------------------------------------
--- Quesion 5 (24): triggers

--creates table 2

create table contact_status(
contact_id serial,
status_id serial
);

--inserts into table 2
insert into contact_status (contact_id, status_id)
VALUES ('1', '1'),
       ('2', '2'),
	   ('3', '3'),
	   ('4', '1'),
       ('5', '2'),
	   ('6', '3');


---having 2 tables, we insert a row in table 1 and table 2 autmatically gets updated

----displays the my_contacts table
SELECT * FROM my_contacts;       ----table 1

----displays the interest table
SELECT * FROM contact_status;    ----table 2

----creates a trigger function called record_insert that returns a new insert/row as a trigger

CREATE OR REPLACE FUNCTION record_insert()  ---name of the trigger function
  RETURNS trigger AS
$$
BEGIN
         INSERT INTO contact_status (status_id)
         VALUES(new.status_id);
 
    RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';                       

----creates a new trigger
create trigger insert_same_record_trigger ----name of trigger
after insert                              ----trigerring event
on my_contacts
for each row
execute procedure record_insert();
 
--Inserts the row into Table1 which activates the trigger and inserts the records into Table2

INSERT INTO my_contacts (last_name, first_name, phone, email, gender, birthday, prof_id, postal_code, status_id, interest_id, seeking_id)
VALUES ('Van He', 'Maddie', '071 000 4567', 'HTJ@gmail.com', 'female', '1/9/1999', '1', '1111', '1', '1','1');

----------------------------------------------------------------------------------------------------------------------
--- Quesion 6 (25): Missing Values

select * from my_contacts;

------ Find missing values in my_contacts b (based on 'contact_id' field)

SELECT contact_id + 1            -------increments the start of a missing value (Contact_id) by 1
From my_contacts a
WHERE NOT EXISTS 
( 
SELECT NULL 
from my_contacts b
WHERE a.contact_id = b.contact_id + 1  -------increments the end of a missing value (Contact_id) by 1
) 
ORDER BY contact_id; 

--------------------------------------------------------------------------------------------------------------
--- Quesion 7 (26): RANK() function 

--This function comes under Windows function. It allows ranking within an organized partition. 
--If the contents of the two rows are the equivalent, the RANK() function allocates the identical rank, with the next ranking(s) hopped. 
		
SELECT
	last_name,
	prof_id,
	status_id,
	RANK () OVER ( 
		PARTITION BY prof_id
		ORDER BY status_id)
FROM
my_contacts;
		
-----------------------------------------------------------------------------------------------------------------------
--- Quesion 8 (27): DENSE_RANK() 

--allocates the ranking within an organized partition, but the ranks are continuing. In other words, the identical ranks are allocated to many rows and no ranks are hopped. This is the most important advanced PostgreSQL query which is used for analyzing a huge amount of data. 

SELECT
	last_name,
	prof_id,
	status_id,
	Dense_RANK () OVER ( 
		PARTITION BY prof_id
		ORDER BY status_id)
FROM
my_contacts;

---------------------------------------------------------------------------------------------------------------------------
--- Quesion 9 (28): FIRST_VALUE() 

--The FIRST_VALUE() function yields the first value from the principal row of the normalized assemblage. 

SELECT 
last_name, 
gender, 
interest_id, 
FIRST_VALUE(interest_id) OVER ( 
PARTITION BY gender 
ORDER BY 
interest_id
) AS number_of_interest_id
from
my_contacts
INNER JOIN interest USING (interest_id);

-----------------------------------------------------------------------------------------------------------------------------
--- Quesion 10 (29): LAST_VALUE() 

SELECT 
last_name, 
gender, 
interest_id, 
Last_VALUE(interest_id) OVER ( 
PARTITION BY gender 
ORDER BY 
gender RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING 
) AS interested_gender
from
my_contacts
INNER JOIN interest USING (interest_id);
-----------------------------------------------------------------------------------------------------------------------
--- Quesion 11 (30): Explain Statement

EXPLAIN SELECT * FROM my_contacts;

--QUERY PLAN 
----------------------------------------------------
Seq Scan on emp1 (cost=0.00..1.43 rows=43 width=634)

-----------------------------------------------------------------------------------------------------------------------
--- Quesion 12 (31): Create Role

--creates a role
create role my_contacts_admin;
create role Thlokomelo;

--shows pgadmin role names
SELECT rolname FROM pg_roles; 
---------------------------------------------------------------------------------------------------------------
--- Quesion 13 (32): Create Role

--creates a role
create role Thlokomelo;

--assigns a role name
grant my_contacts_admin to Thlokomelo;

-----------------------------------------------------------------------------------------------------------------










