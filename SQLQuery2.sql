-- Find the age of the employees
--examples for derived columns
select
BusinessEntityID,  LoginID,  OrganizationLevel, JobTitle, BirthDate, MaritalStatus, Gender,
HireDate, 
(case  when SalariedFlag=1 then 'Employee'
else 'Contractor'
end) as EmplStatus, 
VacationHours, SickLeaveHours, 
datediff(year, birthdate, getdate()) as EmployeeAge,
datediff(year, Hiredate, getdate()) as EmployeeExp

from [HumanResources].[Employee]
where currentflag=1

-- Night Shift eligibility

-- if Single, Male  and age <45 then the employee is eligible for night shift, 

select
BusinessEntityID,  LoginID,  OrganizationLevel, JobTitle, BirthDate, MaritalStatus, Gender,
HireDate, 
(case  when MaritalStatus='S'
        and Gender= 'M'
		and datediff(year, birthdate, getdate()) <45	
then 'Yes'
else 'No'
end) as "Nightshift Eligibility", 
VacationHours, SickLeaveHours, 
datediff(year, birthdate, getdate()) as EmployeeAge,
datediff(year, Hiredate, getdate()) as EmployeeExp
from [HumanResources].[Employee]
where currentflag=1


/*
<=30  "youth"
>30 to<= 40 - mid age
>40 to <=50  Seniors

>50+ Super seniors
*/
select
BusinessEntityID,  LoginID,  OrganizationLevel, JobTitle, BirthDate, MaritalStatus, Gender,
HireDate, 
   (case when datediff(year, birthdate, getdate())<= 30 then 'youth'
    when datediff(year, birthdate, getdate()) >30 and  datediff(year, birthdate, getdate())<=40 then 'mid age'
    when datediff(year, birthdate, getdate()) >40 and  datediff(year, birthdate, getdate()) <=50 then 'Seniors'
	when datediff(year, birthdate, getdate()) >=50 then 'Seniors'
	end) as "status" from [HumanResources].[Employee]



SELECT   ProductNumber, Category =  
      CASE ProductLine  
         WHEN 'R' THEN 'Road'  
         WHEN 'M' THEN 'Mountain'  
         WHEN 'T' THEN 'Touring'  
         WHEN 'S' THEN 'Other sale items'  
         ELSE 'Not for sale'  
      END,  
   Name  
FROM Production.Product  
ORDER BY ProductNumber;  
GO
 select * from Production.Product 


 SELECT   ProductNumber, Name, "Price Range" =   
      CASE   
         WHEN ListPrice =  0 THEN 'Mfg item - not for resale'  
         WHEN ListPrice < 50 THEN 'Under $50'  
         WHEN ListPrice >= 50 and ListPrice < 250 THEN 'Under $250'  
         WHEN ListPrice >= 250 and ListPrice < 1000 THEN 'Under $1000'  
         ELSE 'Over $1000'  
      END  
FROM Production.Product  
ORDER BY ProductNumber ;
/*
<=30  "youth"
>30 to<= 40 - mid age
>40 to <=50  Seniors

>50+ Super seniors
*/
			


aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
SELECT BusinessEntityID, LastName, TerritoryName, CountryRegionName  
FROM Sales.vSalesPerson  
WHERE TerritoryName IS NOT NULL  
ORDER BY CASE CountryRegionName WHEN 'United states' THEN TerritoryName
        ELSE CountryRegionName END;


SELECT * FROM 

select * from [Production].[ProductInventory] 

select ProductID,LocationID,Shelf from [Production].[ProductInventory] 
ORDER BY CASE Shelf WHEN 'A' THEN LocationID
          ELSE ProductID END 
select * from [Person].[Address]


select * from [Sales].[SalesOrderDetail]
select SalesOrderID,SalesOrderDetailID,OrderQty,
case when OrderQty>2 then  OrderQty
else cast('nodata'as int ) end ) as new
end 
from [Sales].[SalesOrderDetail]
