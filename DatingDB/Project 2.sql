create database DatingDB;

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
VALUES ('1', '1'),
       ('2', '2'),
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
interest varchar (50),
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
----------------------------------------------
create table seeking (
seeking_id serial,
seeking varchar (50),
CONSTRAINT seek_key PRIMARY KEY (seeking_id)
);

INSERT INTO seeking (seeking)
VALUES ('male'),
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


---------------------------------------------------------------------------------------------------------------	   
---LEFT JOIN query displaying the profession, zip_code (postal_code, city and province), status, interests and seeking.
	
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

	
	
	
	
	
	
	
	
	
	