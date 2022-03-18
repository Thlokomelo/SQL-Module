--- Quesion 1: Finding duplicate rows

--tables used
select * from profession;          ----displays the profession table
select * from contact_profession;  ----displays the contact_profession table

select prof_id, count (prof_id)  ----counts the prof_id
from contact_profession          -----selects from this table
group by prof_id                 
having count (prof_id)>1     --similar to the where clause, sets a condition that looks for prof_id duplicate
order by prof_id;

------------------------------------------------------------------------------------------------------------
--- Quesion 2: Deleting duplicate rows

--table used
select * from contact_profession;   --displays the contact profession table

delete from contact_profession
where prof_id IN
(select prof_id 
from 
(select prof_id,
row_number() over(partition by prof_id
order by prof_id) as row_num
From contact_profession) t
where t.row_num > 1);

--to check, run table used
--------------------------------------------------------------------------------------------------------------
--- Quesion 7: Expert Inner Join Query in PostgreSQL 

--fetching 2 tables and using the PK of the 1st to fetch matches from the 2nd. 
--The following will return a list of contacts last_name and their interests_id,
--We added the ORDER BY clause to sort the result by interest_id.

--tables used
select * from contact_interest; --displays the_contact interest table
select * from my Contacts; --displays the my_contacts table

SELECT contact_interest.interest_id, last_name
FROM contact_interest
INNER JOIN my_contacts ON my_contacts.interest_id = contact_interest.interest_id
ORDER BY contact_interest.interest_id; 

----------------------------------------------------------------------------------------------------------------
-- Quesion 5 (24): triggers

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
 
--Inserts the row into Table1 which activates the trigger and inserts the records into Table2. 
INSERT INTO my_contacts (last_name, first_name, phone, email, gender, birthday, prof_id, postal_code, status_id, interest_id, seeking_id)
VALUES ('Arnold', 'Maddie', '071 000 4567', 'HTJ@gmail.com', 'female', '1/9/1999', '1', '1111', '1', '1','1');

---------------------------------------------------------------------------------------------------------------------------------------------
--- Quesion 6 (25): Missing Values

--table used
select * from my_contacts; ---displays the my_contacts table

------ Find missing values in my_contacts b (based on 'contact_id' field)
---increments the end of a missing value (Contact_id) by 1, eliminates successful matches leaving the missing numbers

SELECT contact_id + 1            
From my_contacts a
WHERE NOT EXISTS 
( 
SELECT NULL 
from my_contacts b
WHERE a.contact_id = b.contact_id + 1  
)                                      
ORDER BY contact_id; 


-----------------------------------------------------------------------------------------------------------------------------------
--- Quesion 12 (31): Create Role

--creates a role
create role my_contacts_admin; -----rolename
create role Thlokomelo;



--shows pgadmin role names
SELECT rolname FROM pg_roles; 

------------------------------------------------------------------------------------------------------------------------

