select * from [Production].[Product]
select * from[Sales].[SalesOrderDetail]
select * from [Production].[ProductCategory]
--ProductCategory, ProductName, productid,Unitprice,Orderqty
--FirstName,LastName,Emailid,Addresss,department,shift,country,dateofbirth,maritalstatus,gender of the Employees
select [ProductID],[Name]
from [Production].[Product]


select * from [HumanResources].[Employee] -- dateofbirth,maritalstatus,gender of the Employees 
select  * from [Person].[Person] -- first name ,last,
select * from [HumanResources].[Shift]-- shiftid,shiftname
select * from [Person].[EmailAddress] --email add
select * from[Person].[CountryRegion] ---country name
select * from [Person].[Address] -- addressline1
select * from[HumanResources].[Department] -- department name 




select [FirstName],[LastName],[BusinessEntityID]
from [Person].[Person] as ppt  inner join
(select [BirthDate],[Gender],[MaritalStatus],[BusinessEntityID] from [HumanResources].[Employee] as he  
on ppt .[BusinessEntityID]  = he.[BusinessEntityID]

select 
from [Person].[Person] as ppt inner join (select [BirthDate],[Gender],[MaritalStatus],[BusinessEntityID]  from [HumanResources].[Employee] as het
on  ppt .[BusinessEntityID] = het. [BusinessEntityID])

select * from [Person].[Person]
inner join [HumanResources].[Employee]
on [BusinessEntityID].[Person].[Person] =[BusinessEntityID].[HumanResources].[Employee]

select * from [HumanResources].[Department]

select * from [HumanResources].[Employee] where
[BusinessEntityID] in (4,16,224,234,250)

select * from person.person where
[BusinessEntityID] in (4,16,224,234,250)


 
select * from [HumanResources].[EmployeeDepartmentHistory] where
[BusinessEntityID] in (4,16,224,234,250)
order by BusinessEntityID,StartDate

--delete from [HumanResources].[EmployeeDepartmentHistory] where [BusinessEntityID]=224 and DepartmentID=8

select ppt.[FirstName],ppt.[LastName],ppt.[BusinessEntityID],[BirthDate],[Gender],[MaritalStatus],ShiftID, pe.EmailAddress,hd.[Name] as 'deparment name' ,pa.AddressLine1,hve.CountryRegionName
from person.Person as ppt inner join [HumanResources].[Employee] as hr
on ppt.BusinessEntityID =hr.BusinessEntityID left join  [HumanResources].[EmployeeDepartmentHistory] as heh on heh.BusinessEntityID= hr.BusinessEntityID
LEFT join [Person].[EmailAddress] as pe on pe.BusinessEntityID=hr.BusinessEntityID
left join [HumanResources].[Department] as hd on  hr.BusinessEntityID =hd.DepartmentID 
left join [Person].[Address] as pa on pa.[AddressID] = hr.BusinessEntityID 
left join [HumanResources].[vEmployee] as hve on hve.BusinessEntityID =  hr.BusinessEntityID

where heh.enddate is null   --- for active employees only


group by tmp. [BusinessEntityID] 


SELECT TABLE_NAME,COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS where COLUMN_NAME like '%country%'
select * from [HumanResources].[vEmployee] 
--ProductCategory, ProductName, productid,Unitprice,Orderqty
select TABLE_NAME,COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS where COLUMN_NAME like '%ProductCategory%'--ProductCategory
select TABLE_NAME,COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS where COLUMN_NAME like '%Productid%'--Product
select * from Product
--ProductCategory, ProductName, productid,Unitprice,Orderqty ([Production].[WorkOrder])
select * from [Production].[Product]
select * from[Production].[ProductCategory]
select * from [Production].[ProductDescription]
select  TABLE_NAME,COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS where COLUMN_NAME like '%Unitprice%'-- purchaseorderdetails
select * from [Purchasing].[PurchaseOrderDetail]
select 