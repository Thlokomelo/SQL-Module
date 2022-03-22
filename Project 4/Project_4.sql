----Question 1

create table pricelist(
items_id serial ,
items_list varchar (20),
prices numeric,
CONSTRAINT items_id_key PRIMARY KEY (items_id)
);

insert into pricelist (items_list, prices)
values ('coke', '20'),
       ('fanta', '20'),
       ('kit_kat','15'),
       ('bar_one', '12');
	   
select * from pricelist;

------------------------------------------------------------------
----Question 2

create table users_table(
user_id serial,
first_name varchar (20),
last_name varchar (20),
email varchar (20),
phone varchar (20),
CONSTRAINT email_unique UNIQUE (email),
CONSTRAINT user_id_key PRIMARY KEY (user_id)
);

insert into users_table (first_name, last_name, email, phone)
values ('Tom', 'Matthews', 'TM@gmail.com', '082123456'),
       ('Cathy', 'Brooks', 'CB@gmail.com', '083257456'),
	   ('Mpho', 'Baloyi', 'MB@gmail.com', '081277546'),
	   ('Lerato', 'Johnson', 'LJ@gmail.com', '0841117865');

select * from users_table;

------------------------------------------------------------------
----Question 3

create table cart_table(
items_id integer REFERENCES pricelist (items_id),
user_id integer REFERENCES users_table (user_id)
);

insert into cart_table (items_id, user_id)
values (1, 3);

select * from cart_table;

---------------------------------------------------------------------
----Added table

create table shopping_cart(
user_id integer,
items_id integer,
items_list varchar (20),
prices numeric
);

select * from shopping_cart;
-----------------------------------------------------------------------
----Business Process
----Question 3

select * from pricelist;

-------------------------------------------------------------------------
----Question 4

insert into shopping_cart (user_id, items_id, items_list, prices)
select users_table.user_id, pricelist.items_id, pricelist.items_list, pricelist.prices
from users_table left join cart_table
on  users_table.user_id =cart_table.user_id
left join pricelist
on cart_table.items_id = pricelist.items_id
where cart_table.user_id = 3;

select * from cart_table;

----------------------------------------------------------------------------------------
----Question 5
select * from shopping_cart;

-----------------------------------------------------------------------------------------
----Question 6

select user_id, count (items_list), sum (prices) from shopping_cart
group by user_id;

-----------------------------------------------------------------------------------------













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







