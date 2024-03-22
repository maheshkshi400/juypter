--Problem Statement :- Write a SQL query to find all levels of Employee Manager hierarchy

Create Table Employee_Table(
EmployeeID int,
EmployeeName Varchar(30),
DepartmentID int,
ManagerID int)


Insert into Employee_Table Values(1001,'James Clarke',13,1003)
Insert into Employee_Table Values(1002,'Robert Williams',12,1005)
Insert into Employee_Table Values(1003,'Henry Brown',11,1004)
Insert into Employee_Table Values(1004,'David Wilson',13,1006)
Insert into Employee_Table Values(1005,'Michael Lee',11,1007)
Insert into Employee_Table Values(1006,'Daniel Jones',Null,1007)
Insert into Employee_Table Values(1007,'Mark Smith',14,Null)

SELECT * FROM dbo.Employee_Table;


WITH CTE_EMP AS (
    SELECT EmployeeID,EmployeeName,ManagerID,0 AS Employee_level FROM dbo.Employee_Table WHERE ManagerID IS NULL
    UNION ALL
    SELECT EMP.EmployeeID,EMP.EmployeeName,EMP.ManagerID,Employee_level+1 FROM dbo.Employee_Table AS EMP
    INNER JOIN CTE_EMP AS MGR ON EMP.ManagerID=MGR.EmployeeID
)
SELECT * FROM CTE_EMP ORDER BY Employee_level;


SELECT E1.EMP5 AS 'EMPLOYEE',E1.EMP5 AS 'MANAGER' FROM EMP5 A  JOIN  EMP5 B ON A.deptno=B.deptno


select  repoerting_date, Account_Status, Transaction_Amt,case 
when repoerting_datepart(dd,) =31 then 1  else 0 END as 'month_end_date',
ROW_NUMBER() over (partition by Cust_Name order by repoerting_date)as rank 
from Reporting_Table where rank<7




SELECT * FROM EMP5


