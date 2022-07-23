SELECT *
from EMPLOYEES;

select *
from DEPARTMENTS;

select  EMPLOYEES.DEPARTMENT_ID, DEPARTMENT_NAME
from EMPLOYEES
         left join DEPARTMENTS On EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;

select MANAGER_ID,count(*)
from EMPLOYEES
where MANAGER_ID is not null
      group by MANAGER_ID
having count(*)>5;

select  FIRST_NAME || ' ' || LAST_NAME as Fullname from EMPLOYEES;

-- get me department_id where employees count bigger than 5
select DEPARTMENT_ID,count(*) from EMPLOYEES
group by DEPARTMENT_ID
having count(*)>5;


select concat(FIRST_NAME,LAST_NAME), count (*) from EMPLOYEES
group by concat(FIRST_NAME,LAST_NAME)
having count(*)>0;



