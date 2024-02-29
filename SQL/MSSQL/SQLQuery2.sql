use MK_DB;
GO

SELECT * FROM employee;

select max(salary) from employee;

select max(salary) from employee where salary < (select max(salary) from employee);

select top 1 * from employee order by salary desc;


with salary_cte as
(select employee .*,DENSE_RANK() over (order by salary desc) as sal_order from employee)

select * from salary_cte where sal_order <5

