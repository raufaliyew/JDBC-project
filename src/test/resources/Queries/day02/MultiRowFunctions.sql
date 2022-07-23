SELECT count(*) as Total FROM Locations;

select JOB_ID, count(FIRST_NAME) from EMPLOYEES
group by JOB_ID;

select FIRST_NAME,SALARY from EMPLOYEES
where SALARY=(select max(SALARY)from EMPLOYEES);


select JOB_ID, max(SALARY) from EMPLOYEES
group by JOB_ID;