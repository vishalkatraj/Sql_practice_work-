USE [AdventureWorks2016]
select count(*) from [HumanResources].[EmployeeDepartmentHistory]
where ShiftID=(select ShiftID from [HumanResources].[Shift] where Name='Night')

select * from [HumanResources].[Department]

select 
(select firstname+' '+  ISNULL(middlename,'') +' '+lastname from [Person].[Person] where 
[BusinessEntityID]=EDH.BusinessEntityID) as Employee
,(select Name from [HumanResources].[Department] where DepartmentId =EDH.DepartmentID) as Dept_Desc
,(select Name from HumanResources.Shift where ShiftID =EDH.ShiftID) as Shift_Desc,
(SELECT [EmailAddress] FROM [Person].[EmailAddress] WHERE [BusinessEntityID] = EDH.BusinessEntityID)  as EMAILID 
 from [HumanResources].[EmployeeDepartmentHistory] as EDH
 where ShiftID=(select ShiftID from [HumanResources].[Shift] where Name='Night')


 USE AdventureWorks2016;
GO
SELECT Ord.SalesOrderID, Ord.OrderDate,
    (SELECT MAX(OrdDet.UnitPrice)
     FROM Sales.SalesOrderDetail AS OrdDet
     WHERE Ord.SalesOrderID = OrdDet.SalesOrderID) AS MaxUnitPrice
FROM Sales.SalesOrderHeader AS Ord;

select SalesOrderID,UnitPrice from Sales.SalesOrderDetail
select * from Sales.SalesOrderHeader
select max(unitprice),SalesOrderID from Sales.SalesOrderDetail 
group by SalesOrderID

SELECT [Name], listprice
FROM Production.Product
WHERE ListPrice =
    (SELECT ListPrice
     FROM Production.Product
     WHERE [Name] = 'Chainring Bolts' );
	 select listprice from Production.Product
	 select * from Production.Product

	 select name ,ListPrice
	 from Production.product where name  = 'Chainring Bolts'

	 select * from [Sales].[PersonCreditCard]
	  select * from [Sales].[SalesPerson]
	  select * from [HumanResources].[Employee]
	  select * from person.Person

	  select FirstName,LastName,MiddleName 
	  from  person.Person where FirstName = ( select * from sales.SalesPerson where SalesYTD=  4251368.5497)
	  --(select max(salesYTD)
	--  from sales.SalesPerson) 





	create table department
(
	dept_id		int ,
	dept_name	varchar(50) PRIMARY KEY,
	location	varchar(100)
);
insert into department values (1, 'Admin', 'Bangalore');
insert into department values (2, 'HR', 'Bangalore');
insert into department values (3, 'IT', 'Bangalore');
insert into department values (4, 'Finance', 'Mumbai');
insert into department values (5, 'Marketing', 'Bangalore');
insert into department values (6, 'Sales', 'Mumbai');

CREATE TABLE EMPLOYEE
(
    EMP_ID      INT PRIMARY KEY,
    EMP_NAME    VARCHAR(50) NOT NULL,
    DEPT_NAME   VARCHAR(50) NOT NULL,
    SALARY      INT,
    constraint fk_emp foreign key(dept_name) references department(dept_name)
);
insert into employee values(101, 'Mohan', 'Admin', 4000);
insert into employee values(102, 'Rajkumar', 'HR', 3000);
insert into employee values(103, 'Akbar', 'IT', 4000);
insert into employee values(104, 'Dorvin', 'Finance', 6500);
insert into employee values(105, 'Rohit', 'HR', 3000);
insert into employee values(106, 'Rajesh',  'Finance', 5000);
insert into employee values(107, 'Preet', 'HR', 7000);
insert into employee values(108, 'Maryam', 'Admin', 4000);
insert into employee values(109, 'Sanjay', 'IT', 6500);
insert into employee values(110, 'Vasudha', 'IT', 7000);
insert into employee values(111, 'Melinda', 'IT', 8000);
insert into employee values(112, 'Komal', 'IT', 10000);
insert into employee values(113, 'Gautham', 'Admin', 2000);
insert into employee values(114, 'Manisha', 'HR', 3000);
insert into employee values(115, 'Chandni', 'IT', 4500);
insert into employee values(116, 'Satya', 'Finance', 6500);
insert into employee values(117, 'Adarsh', 'HR', 3500);
insert into employee values(118, 'Tejaswi', 'Finance', 5500);
insert into employee values(119, 'Cory', 'HR', 8000);
insert into employee values(120, 'Monica', 'Admin', 5000);
insert into employee values(121, 'Rosalin', 'IT', 6000);
insert into employee values(122, 'Ibrahim', 'IT', 8000);
insert into employee values(123, 'Vikram', 'IT', 8000);
insert into employee values(124, 'Dheeraj', 'IT', 11000);


CREATE TABLE employee_history
(
    emp_id      INT PRIMARY KEY,
    emp_name    VARCHAR(50) NOT NULL,
    dept_name   VARCHAR(50),
    salary      INT,
    location    VARCHAR(100),
    constraint fk_emp_hist_01 foreign key(dept_name) references department(dept_name),
    constraint fk_emp_hist_02 foreign key(emp_id) references employee(emp_id)
);

create table sales
(
	store_id  		int,
	store_name  	varchar(50),
	product_name	varchar(50),
	quantity		int,
	price	     	int
);
insert into sales values
(1, 'Apple Store 1','iPhone 13 Pro', 1, 1000),
(1, 'Apple Store 1','MacBook pro 14', 3, 6000),
(1, 'Apple Store 1','AirPods Pro', 2, 500),
(2, 'Apple Store 2','iPhone 13 Pro', 2, 2000),
(3, 'Apple Store 3','iPhone 12 Pro', 1, 750),
(3, 'Apple Store 3','MacBook pro 14', 1, 2000),
(3, 'Apple Store 3','MacBook Air', 4, 4400),
(3, 'Apple Store 3','iPhone 13', 2, 1800),
(3, 'Apple Store 3','AirPods Pro', 3, 750),
(4, 'Apple Store 4','iPhone 12 Pro', 2, 1500),
(4, 'Apple Store 4','MacBook pro 16', 1, 3500);


select * from employee 
select * from department;
select * from employee_history;
select * from sales;

/* QUESTION: Find the employees who's salary is more than the average salary earned by all employees. */

select avg(salary)  from EMPLOYEE 
select * 
from EMPLOYEE where SALARY > (select avg(salary) from EMPLOYEE)


/* QUESTION: Find the employees who earn the highest salary in each department. */
select max(salary),DEPT_NAME from EMPLOYEE group by DEPT_NAME

select *
from EMPLOYEE
where SALARY in ( select max(salary),DEPT_NAME 
								 from EMPLOYEE group by DEPT_NAME)


select DEPT_NAME from EMPLOYEE 