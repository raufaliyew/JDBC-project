SELECT *
from EMPLOYEES;

-- creating table
create table CURRENCIES(
    id INTEGER PRIMARY KEY,
    currency_name varchar(30) not null
);

select * from currency_rates;

-- inserting data to table
INSERT INTO CURRENCIES
    (id, currency_name)
    VALUES (2,'Euro');


-- updating table
UPDATE CURRENCIES
set rate=0.59;

-- deleting from table
delete from CURRENCIES
where id=2;

-- to save changes
commit ;

--adding new column
alter table CURRENCIES
add rate double precision;

--rename column
alter table CURRENCIES
rename column rate to rate_dollar;

--drop column
alter table CURRENCIES
drop column rate_dollar;

--rename table
alter table CURRENCIES
rename to currency_rates;

-- truncate deletes all content from table
truncate table currency_rates;


-- deletes table from db
drop table currency_rates;

