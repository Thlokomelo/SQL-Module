create database try_it_yourself_page_37;

Question 1
Your company delivers fruit and vegetables to local grocery stores, and 
you need to track the mileage driven by each driver each day to a tenth 
of a mile. Assuming no driver would ever travel more than 999 miles in a 
day, what would be an appropriate data type for the mileage column in 
your table? Why?
- Numeric (3,1), 3 caters for the  mileage, 1 caters for the value in case it gets to 999.9

Question 2
In the table listing each driver in your company, what are appropriate 
data types for the drivers’ first and last names? Why is it a good idea to 
separate first and last names into two columns rather than having one 
larger name column?
- Varchar (50) stores charactors and allows you to specify a precision (n)
- It come in handy when you need to sort by first or last name only.

Question 3
Assume you have a text column that includes strings formatted as dates.
One of the strings is written as '4//2017'. What will happen when you try 
to convert that string to the timestamp data type?
- It will give an error because the string '4//2017' doesnt conform to timestamp (date and time zone) data type.

