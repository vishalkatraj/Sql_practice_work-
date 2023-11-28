DECLARE @VAL INT,
		@VAL2 VARCHAR(100)
BEGIN
SET @VAL=100
SET @VAL2='VISHAL'
PRINT 'THE VALUES ASSIGNED TO THE VARIABLE VAL IS ' + CONVERT(VARCHAR,@VAL)
PRINT 'THE VALUES ASSIGNED TO THE VARIABLE VAL IS ' +@VAL2
IF @VAL > 100
	PRINT 'VALUEIS GREATER THAN 100'
 ELSE
	IF @VAL =100 
	PRINT 'VALUE IS 100'
 ELSE 
  IF @VAL<100
	 PRINT'VALUES LESS THAN 100'
END


-------------------------------------
----- If the Gender is Female and within 30 yrs and exp >3 , eligible for Night shift
-- If gender male and age less than 35 yrs and exp >2 than eligible for Night shift
--Else-- not eligible for night shift.

DECLARE @vBusEntCode int
DECLARE @vJobTitle varchar(100)
DECLARE @Gender as varchar(1)
BEGIN
set @vBusEntCode=100

SELECT @vJobTitle=Jobtitle,@vGender=Gender
  from [HumanResources].[Employee] 
 where BusinessEntityID =@vBusEntCode
 IF @vGender = 'F' AND [BirthDate] -GETDATE

print @vJobTitle
print @vGender
END

SELECT * FROM [HumanResources].[Employee]
SELECT * FROM  [HumanResources].[EmployeeDepartmentHistory]
SELECT * FROM [HumanResources].[Shift]

DECLARE @age int 
DECLARE @expr int
DECLARE @vgen nchar(1)
DECLARE @vshift varchar(50)
begin 
select @age = age
select @vshift= Name 
FROM [HumanResources].[Shift] 
select @vgen=Gender
FROM [HumanResources].[Employee] 
--select  datediff(yy,BirthDate,getdate()) from [HumanResources].[Employee]  as age 
--select DATEDIFF(yy,HireDate,GETDATE()) from  [HumanResources].[Employee] as expr
if @vgen = 'F'and  @age= BirthDate - getdate() and @expr>=HireDate-GETDATE()

	print 'eligible for Night shift'
else
	print ' than eligible for Night shift'

end

-----
DECLARE @AGENDER NCHAR(1)
DECLARE @AAGE INT 
DECLARE @AEXP INT

BEGIN 
SET @AAGE =30
SET @AEXP =4
SET @AGENDER ='F'
SELECT @AGENDER= Gender
FROM  [HumanResources].[Employee]
WHERE @AAGE = DATEDIFF(YY,BirthDate,GETDATE()) 
AND @AEXP =DATEDIFF(YY,HireDate,GETDATE())
IF @AGENDER ='F' AND @AAGE<=30 AND @AEXP>3
	PRINT 'eligible for Night shift'
ELSE
	IF @AGENDER ='MALE' AND @AAGE<=35 AND @AEXP >2
	PRINT 'eligible for Night shift'
ELSE 
	PRINT'not eligible for night shift'
END 


----- If the Gender is Female and within 30 yrs and exp >3 , eligible for Night shift
-- If gender male and age less than 35 yrs and exp >2 than eligible for Night shift
--Else-- not eligible for night shift.
-----------------------------------------------------------------------------------------
-- From the following table write a query in SQL to retrieve all rows and columns from the employee table using table aliasing in the Adventureworks database.
--Sort the output in ascending order on lastname
select * from [Person].[Person] order by  LastName  asc
---3. From the following table write a query in SQL to return all rows and a subset of the columns 
--(FirstName, LastName, businessentityid) from the person table in the AdventureWorks database.
--The third column heading is renamed to Employee_id. Arranged the output in ascending order by lastname
select FirstName, LastName, (businessentityid) as Employee_id from [Person].[Person]  order by LastName  asc
--From the following table write a query in SQL to return only the rows for product that have a sellstartdate that is not NULL and a productline of 'T'.
--Return productid, productnumber, and name. Arranged the output in ascending order on name
select ProductID, ProductNumber,Name 
from  production.Product 
where SellStartDate is not NULL and ProductLine ='T'
order by Name
--5. From the following table write a query in SQL to return all rows from the salesorderheader table
--in Adventureworks database and calculate the percentage of tax on the subtotal have decided.
--Return salesorderid, customerid, orderdate, subtotal, percentage of tax column. Arranged the result set in ascending order on subtotal.
select SalesOrderID,CustomerID,OrderDate,SubTotal,((TaxAmt *100)/SubTotal) as ' percrntage tax' 
from  sales.salesorderheader 
order by SubTotal desc
--6. From the following table write a query in SQL to create a list of unique jobtitles 
--in the employee table in Adventureworks database.
--Return jobtitle column and arranged the resultset in ascending order.
select distinct  JobTitle from  HumanResources.Employee order by JobTitle asc
--7. From the following table write a query in SQL to calculate the total freight paid by each customer.
--Return customerid and total freight. Sort the output in ascending order on customerid.
select CustomerID,(SUM(Freight))AS FD from sales.salesorderheader 
GROUP BY CustomerID
ORDER BY CustomerID ASC
SELECT * FROM sales.salesorderheader WHERE CustomerID =11000
--8. From the following table write a query in SQL to find the average and the sum of the subtotal for every customer.
--Return customerid, average and sum of the subtotal.
--Grouped the result on customerid and salespersonid. Sort the result on customerid column in descending order.
SELECT CustomerID,SalesPersonID, AVG(SubTotal) AS 'AVG',SUM(SubTotal) AS 'SUM' FROM sales.salesorderheader
GROUP BY CustomerID,SalesPersonID
ORDER BY CustomerID DESC
-----------------------------------------------------------------------------------------
SELECT * FROM [HumanResources].[Employee]
----- If the Gender is Female and within 30 yrs and exp >3 , eligible for Night shift
-- If gender male and age less than 35 yrs and exp >2 than eligible for Night shift
--Else-- not eligible for night shift.

DECLARE @VGender CHAR(1),
	 @VAGE INT,
	 @VEXP INT,
	 @VBIRTHDAY DATE,
	 @VHIREDAY DATE,
	 @VBID INT

BEGIN 
SET  @VBID = 222
SELECT @vGender= Gender,
	   @VBIRTHDAY=BirthDate,
	   @VHIREDAY=HireDate,
       @VAGE=DATEDIFF(YY,BirthDate,GETDATE()),
	  @VEXP=DATEDIFF(YY,HireDate,GETDATE())
FROM [HumanResources].[Employee]
WHERE BusinessEntityID= @VBID

--SET  @VAGE=DATEDIFF(YY,@VBIRTHDAY,GETDATE())
 --SET @VEXP=DATEDIFF(YY,@VHIREDAY,GETDATE())
 PRINT @VGENDER
 PRINT @VAGE
 PRINT @VEXP
 IF @VGENDER ='F' AND @VAGE<=30 AND @VEXP>3
	PRINT 'eligible for Night shift'
ELSE
	IF @vGender ='MALE' AND @VAGE<=35 AND @VEXP >2
	PRINT 'eligible for Night shift'
ELSE 
	PRINT'not eligible for night shift'
END 