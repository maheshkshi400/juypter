create table EMPLOYEE2(employeeId int,Name varchar(20));

insert into EMPLOYEE2 values(1,'adnan salim shaikh')
insert into EMPLOYEE2 values(2,'sangita bijave')
insert into EMPLOYEE2 values(3,'anand prakut sagar')
insert into EMPLOYEE2 values(4,'kritika')
insert into EMPLOYEE2 values(5,'prachi madhav inamdar')
insert into EMPLOYEE2 values(6,'kalpana barmukh')
insert into EMPLOYEE2 values(7,'sitara')

SELECT * FROM EMPLOYEE2;


WITH cte_space AS
    (
    SELECT *
    ,len(name)-len(REPLACE(Name,' ','')) as no_of_spaces
    ,CHARINDEX(' ', Name) as first_space
    ,CHARINDEX(' ', Name, CHARINDEX(' ', Name)+1) as second_space
    FROM EMPLOYEE2
    )
    SELECT *
    ,CASE WHEN no_of_spaces = 0 THEN Name
    ELSE SUBSTRING(Name, 1, first_space-1)
    end as first_name
    ,CASE WHEN no_of_spaces <= 1 THEN NULL
    ELSE SUBSTRING(Name, first_space+1, second_space-first_space-1)
    end as middle_name
    ,CASE WHEN no_of_spaces = 0 THEN NULL
    WHEN no_of_spaces = 1 THEN SUBSTRING(Name, first_space+1, len(Name)-first_space)
    WHEN no_of_spaces = 2 THEN SUBSTRING(Name, second_space+1, len(Name)-second_space)
    ELSE SUBSTRING(Name, second_space+1, len(Name)-second_space)
    end as last_name
    FROM cte_space


 