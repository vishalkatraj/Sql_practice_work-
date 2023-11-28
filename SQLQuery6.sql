USE [AdventureWorks2016]
GO

SELECT [BusinessEntityID]
      ,[DepartmentID]
      ,[ShiftID]
      ,[StartDate]
      ,[EndDate]
      ,[ModifiedDate]
  FROM [HumanResources].[EmployeeDepartmentHistory]

GO


 select * from [HumanResources].[EmployeeDepartmentHistory]
 select * from [HumanResources].[EmployeeDepartmentHistory] where EndDate is null
 select* from HumanResources.EmployeeDepartmentHistory where EndDate is not null
 select count(*) from HumanResources.EmployeeDepartmentHistorehere ShiftID in (1,2,3)

  list the records from  employeedepartmenthistory where the shift id is 2 and 3
  select * from [HumanResources].[EmployeeDepartmentHistory] where ShiftID in (2,3)
 -- select * from [HumanResources].[EmployeeDepartmentHistory] where ShiftID = 2 and  ShiftID=3
   select * from [HumanResources].[EmployeeDepartmentHistory] where ShiftID = 2 or  ShiftID=3


  select * from [HumanResources].[EmployeeDepartmentHistory where ShiftID in (1,2)
  select count(*) from [HumanResources].[EmployeeDepartmentHistory] where ShiftID in (1,2)
   select * from [HumanResources].[EmployeeDepartmentHistory] where ShiftID not in (1,2)
   select * from HumanResources.EmployeeDepartmentHistory where BusinessEntityID between '100' and '200'
      select count(*) from HumanResources.EmployeeDepartmentHistory where BusinessEntityID between '100' and '200'
	  select * from HumanResources.EmployeeDepartmentHistory where DepartmentID in (3)
	select   ASCII('a') 
	select ASCII (1)
	select ASCII('b')
	select ASCII('bc') /*it is taking only first letter*/
	select CHAR(47)
	select CHAR(99)--returns ASCII 
	select CHAR(147)
	select CHAR(199)
	select CHARINDEX('k','vishalkatraj')/*which gives the index value of letter */
	select DIFFERENCE('vishal','katraj')/* gives the number of letters(in integers) that are matching =1*/
	select DIFFERENCE('vishal','vishal')/*when it gives 4 as an output it means it is an exact match */
	select DIFFERENCE('king kong ','vishal')/* here it is 2 */
	select left('vishalkatraj',6)
	select LEN('vishal')
	select LOWER('vk')
	select LOWER('vishal katraj')
	select LOWER('VISHALKATRAJ')
	select LTRIM('                         vishal')
	select RTRIM('katraj  k            ') 


	SELECT NCHAR(7373646); /* why...? * null */
	select PATINDEX('%l%','vishal')
	select QUOTENAME('vishalkatrj','<')
		select QUOTENAME('vishal[katrj','[')
		select REPLACE('vishalafaf','afaf','katraj')
		select REPLICATE('vishal',12)
		select REVERSE('katraj vishal')


	
	



	select * from [Person].[Address]

