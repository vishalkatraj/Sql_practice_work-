use AdventureWorks2016
select  * from [Sales].[Customer]
select distinct 'T' + replicate( '0',5-len(convert(varchar,[TerritoryID]))) + convert(varchar,[TerritoryID])
from [Sales].[Customer]
select 'T' from [Sales].[Customer]
select 'T'
replicate( '0',5-len(convert(varchar,[TerritoryID])))  from [Sales].[Customer]
select convert(varchar ,[TerritoryID]) from [Sales].[Customer]
select [TerritoryID] from [Sales].[Customer]
select  * from [Sales].[Customer]
select distinct 'T'
+ replicate( '0',5-len(convert(varchar,[TerritoryID])))+
convert (varchar,[TerritoryID]) 
from [Sales].[Customer]
select convert(int,SUBSTRING([AccountNumber],3,len( [AccountNumber]) ))
from [Sales].[Customer]
select SUBSTRING([AccountNumber],3,len ( [AccountNumber]))
from [Sales].[Customer]

select len( [AccountNumber])  from [Sales].[Customer]
select convert(int,SUBSTRING([AccountNumber],3,len( [AccountNumber]))) from [Sales].[Customer]
select substring('Vishal katraj', 3,LEN('Vishal katraj'))
select len('vishal katraj')
select SUBSTRING([EmailAddress],1,4)
select SUBSTRING(CHARINDEX([EmailAddress],'@',1),,LEN([EmailAddress])))
from [Person].[EmailAddress]
 select * from [Person].[EmailAddress]
 select instr([EmailAddress],@,)  from [Person].[EmailAddress]
 select CHARINDEX([EmailAddress], string, start) from [Person].[EmailAddress]
 select RTRIM([EmailAddress]  from [Person].[EmailAddress]
 select SUBSTRING([EmailAddress],
 select LEFT( [EmailAddress])
 select SUBSTRING
 ([EmailAddress], CHARINDEX('@',[EmailAddress],1) + 1,3)  from [Person].[EmailAddress]
 SELECT SUBSTRING('ABCDEFGH',CHARINDEX ('F','ABCDEFGH'),LEN('ABCDEFGH'))
 SELECT SUBSTRING([EmailAddress],1
 CHARINDEX('@',[EmailAddress])-1,LEN([EmailAddress])
 FROM [Person].[EmailAddress]
 SELECT * FROM [Person].[Person]
 SELECT  [FirstName]+' '+[LastName]+ ' ' +[MiddleName]  FROM [Person].[Person]


select emailaddress from  [Person].[EmailAddress]

select emailaddress,CHARINDEX('@', EmailAddress,1),CHARINDEX('@', EmailAddress,1)-1, substring( emailaddress,1,CHARINDEX('@', EmailAddress)-1) as a
from  [Person].[EmailAddress]


select emailaddress, substring( emailaddress,1,CHARINDEX('@', EmailAddress)-1) as a
from  [Person].[EmailAddress]


 SELECT  [FirstName]+' '+[LastName]+ ' ' +CASE when [MiddleName] is null then '' else MiddleName  end, [FirstName],[LastName],[MiddleName] FROM [Person].[Person]


 
 SELECT  [FirstName]+' '+[LastName]+ ' ' + COALESCE(NULL,'',Middlename), [FirstName],[LastName],[MiddleName] FROM [Person].[Person]


  
 SELECT  [FirstName]+' '+[LastName]+ ' ' + ISNULL(Middlename,''), [FirstName],[LastName],[MiddleName] FROM [Person].[Person]

 SELECT SUBSTRING([EmailAddress],1,
 (CHARINDEX('@',[EmailAddress])-1))
 FROM [Person].[EmailAddress]
 SELECT * FROM [Person].[EmailAddress]
 SELECT SUBSTRING(EMAILADDRESS, 
 CHARINDEX('@',EmailAddress)+1,LEN(EmailAddress)) AS EMAILID ,COUNT(EMAILADDRESS)
 FROM [Person].[EmailAddress]
 GROUP BY  SUBSTRING(EMAILADDRESS, 
 CHARINDEX('@',EmailAddress)+1,LEN(EmailAddress))


