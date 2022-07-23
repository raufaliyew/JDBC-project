select max(SALARY)
from EMPLOYEES
where SALARY<(select max(SALARY) from EMPLOYEES);


select *
from EMPLOYEES
where SALARY=(select max(SALARY)
from EMPLOYEES
where SALARY<(select max(SALARY) from EMPLOYEES));

select * from(
                 select FIRST_NAME, SALARY, dense_rank()
                         over(order by SALARY desc)r from employees)
where r=9;

select * from EMPLOYEES
    where SALARY>(select avg(salary) from EMPLOYEES);


