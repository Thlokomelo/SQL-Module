Create database EmployeeDB;

Create table Department (
depart_id serial,
depart_name Varchar (50),
depart_city Varchar (50),
CONSTRAINT depart_key PRIMARY KEY (depart_id)
);

INSERT INTO Department (depart_name, depart_city)
VALUES ('IT', 'Johanneburg'),
       ( 'HR', 'Pietermaritzburg'),
       ('Legal', 'Cape Town'),
       ('Procurement', 'Durban');
	   
select * From Department;	   
------------------------------------------------------	   
Create table Roles (
role_id serial,
roles Varchar (50),
CONSTRAINT role_key PRIMARY KEY (role_id)
);

INSERT INTO Roles (roles)
VALUES ('Admin'),
       ( 'Developer'),
       ('Manager'),
       ('Coordinator');
	   
select * From Roles;
--------------------------------------------------------

Create table Salaries (
salary_id serial,
salary_pa money,
CONSTRAINT sal_key PRIMARY KEY (salary_id)
);

INSERT INTO Salaries (salary_pa)
VALUES ('100000'),
       ( '200000'),
       ('300000'),
       ('40000');
	   
select * From Salaries;	
-----------------------------------------------------------

Create table Overtime_Hours (
overtime_id serial,
overtime_hours varchar (50),
CONSTRAINT ovt_key PRIMARY KEY (overtime_id)
);

INSERT INTO Overtime_Hours (overtime_hours)
VALUES ('1-2hr'),
       ('3-4hr'),
       ('5-6hr'),
       ('7-8hr');
	   
select * From Overtime_Hours;	
-----------------------------------------------------------

Create table Employees (
emp_id serial,
first_name Varchar (50),
surname Varchar (50),
gender varchar (50),
address varchar (50),
email varchar (50),
depart_id integer,
role_id integer,
salary_id integer,
overtime_id integer,
CONSTRAINT email_unique UNIQUE (email),
CONSTRAINT emp_key PRIMARY KEY (emp_id)
);

INSERT INTO Employees (first_name, surname, gender, address, email, depart_id, role_id, salary_id, overtime_id)
VALUES ('Lerato', 'Tlale', 'Female', '01 Maxwell Drive_Sunninghill', 'LT@gmail.com', 1, 1, 1, 1 ),
       ( 'Mpho', 'Bogopa', 'Male', '02 Nicol Drive_Sandton', 'MB@gmail.com', 2, 2, 2, 2 ), 
       ('Sipho', 'Zuma','Male', '03 Witkoppen Drive_Woodmead', 'SZ@gmail.com', 3, 3, 3, 3 ),
       ('Lebo', 'Hadebe', 'Female', '04 Hilton Drive_Houghton', 'LH@gmail.com', 4, 4, 4, 4 );
	   
select * From Employees;

----------------------------------------------------------------------------------------------

select employees.first_name, employees.surname, employees.gender, employees.address,
employees.email, department.depart_name, roles.roles, salaries.salary_pa, 
overtime_hours.overtime_hours
from employees left join department
on employees.depart_id = department.depart_id
left join roles
on employees.role_id = roles.role_id
left join salaries
on employees.salary_id = salaries.salary_id
left join overtime_hours
on employees.overtime_id = overtime_hours.overtime_id;


 






