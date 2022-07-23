SELECT *
from EMPLOYEES;

select FIRST_NAME , SALARY from EMPLOYEES
where SALARY>12000
order by lower(substr(FIRST_NAME,-3)) asc, SALARY desc