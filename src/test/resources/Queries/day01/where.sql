SELECT FIRST_NAME, LAST_NAME, SALARY as payment
from EMPLOYEES
where FIRST_NAME = 'David'
AND SALARY='4800';



--  Display all information  where job title President ,Sales Manager, Finance manager

SELECT * from JOBS where JOB_TITLE in ('President','Sales Manager','Finance Manager');

-- Display all Department that does not have manager_id in departments table
SELECT * from DEPARTMENTS where MANAGER_ID is null;


--  Display all Locations in US or UK from Locations table

SELECT * from LOCATIONS where COUNTRY_ID in ('US','UK');
SELECT * from LOCATIONS where COUNTRY_ID='UK' or COUNTRY_ID='US';



--  Display all Locations except US or UK from Locations table
SELECT * from LOCATIONS where COUNTRY_ID not in ('US','UK');

--  Display all Countries where Region_ID is 1 and Country_Name not Belgium

select * from COUNTRIES where REGION_ID=1 and COUNTRY_NAME not in('Belgium');

