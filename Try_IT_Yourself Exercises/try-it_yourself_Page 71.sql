----Question 1

----pi*radius squared

SELECT 3.14 * 5 ^ 2;

----No parentheses required. 


----Question 2

SELECT geo_name,
       state_us_abbreviation,
       p0010001 AS total_population,
       p0010005 AS american_indian_alaska_native_alone,
       (CAST (p0010005 AS numeric(8,1)) / p0010001) * 100
           AS percent_american_indian_alaska_native_alone
FROM us_counties_2010
WHERE state_us_abbreviation = 'NY'
ORDER BY percent_american_indian_alaska_native_alone DESC;

---- Franklin County comprises the Malone, NY Micropolitan Statistical Area. 
----Much of Franklin County is within Adirondack Park. 
----Within the border of the county is the St. Regis Mohawk Reservation, or Akwesasne in the Mohawk language. 
----Its population was nearly 3300 in the 2010 census. 
----The people are linked by community and history with the Mohawk of the Akwesasne reserve across the river, spanning the border of Quebec and Ontario. 
----The Mohawk have had authority under the Jay Treaty to freely cross this international border.

----Question 3

SELECT percentile_cont(.5)
WITHIN GROUP (ORDER BY p0010001)
FROM us_counties_2010
WHERE state_us_abbreviation = 'NY';

----Answer for NY: 91301

SELECT percentile_cont(.5)
WITHIN GROUP (ORDER BY p0010001)
FROM us_counties_2010
WHERE state_us_abbreviation = 'CA';

----Answer for CA: 179140.5

---- It was higher in Califonia



