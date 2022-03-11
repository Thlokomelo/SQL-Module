----Question 1
----Create two new columns called meat_processing and poultry_processing
----in your table. Each can be of the type boolean.

ALTER TABLE meat_poultry_egg_inspect ADD COLUMN meat_processing boolean;
ALTER TABLE meat_poultry_egg_inspect ADD COLUMN poultry_processing boolean;

SELECT * FROM meat_poultry_egg_inspect;

----Question 2
----Using UPDATE, set meat_processing = TRUE on any row where the activities
----column contains the text Meat Processing. Do the same update on the 
----poultry_processing column, but this time look for the text Poultry Processing
----in activities.

----For meat processing
UPDATE meat_poultry_egg_inspect
SET meat_processing = TRUE
WHERE activities ILIKE '%meat processing%';

----For poultry processing
UPDATE meat_poultry_egg_inspect
SET poultry_processing = TRUE
WHERE activities ILIKE '%poultry processing%';

SELECT * FROM meat_poultry_egg_inspect;

----Question 3
----Use the data from the new, updated columns to count how many plants 
----perform each type of activity. For a bonus challenge, count how many 
----plants perform both activities.

SELECT count(meat_processing), count(poultry_processing)
FROM meat_poultry_egg_inspect;

----Bonus Challenge

SELECT count(*)
FROM meat_poultry_egg_inspect
WHERE meat_processing = TRUE AND
      poultry_processing = TRUE;

