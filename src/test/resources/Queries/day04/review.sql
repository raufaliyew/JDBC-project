SELECT *
from EMPLOYEES;


-- find 3rd max salary with ROWNUM
SELECT * FROM EMPLOYEES
    where SALARY = (select min (salary) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
        where ROWNUM<4);





-- find 3rd min salary with ROWNUM
select * from  EMPLOYEES
    where SALARY = (select max(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY asc )
    where ROWNUM<4);


-- finding 3rd max salary employee by using dense_rank
select * from EMPLOYEES
    where SALARY= (select distinct salary from (select SALARY, dense_rank()
        over(order by SALARY desc) as rank from employees)
where rank=3);

-- finding 2 max salary employee in each department


SELECT a.FIRST_NAME, a.DEPARTMENT_ID, a.salary
FROM EMPLOYEES a
WHERE 1 = (SELECT COUNT(DISTINCT salary)
           FROM EMPLOYEES b
           WHERE b.salary > a.salary AND a.DEPARTMENT_ID = b.DEPARTMENT_ID)
group by a.DEPARTMENT_ID, a.FIRST_NAME, a.salary;


