CREATE TABLE salesman(
 salesman_id  int ,    name varchar(50)   ,   city   varchar(50), commission numeric(10,2) 
)
insert into salesman values(
	    5001 , 'James Hoog' , 'New York' ,       0.15),
, (5002 , 'Nail Knite' , 'Paris'    ,       0.13),
,(5005 ,'Pit Alex'   , 'London'  ,       0.11),
        (5006 , 'Mc Lyon'    , 'Paris'    ,       0.14),
        (5007 , 'Paul Adam' , 'Rome'     ,       0.13),
        (5003 , 'Lauson Hen' , 'San Jose' ,       0.12)

CREATE TABLE Orders(
ord_no int,      purch_amt numeric(10,2),   ord_date date,    customer_id int,  salesman_id int)
insert into Orders values( 70001  ,     150.5  ,   '2012-10-05' , 3005   ,      5002),
(70009,270.65 ,'2012-09-10'  ,3001,  5005),
(70002,65.26,'2012-10-05',  3002,  5001),
(70004,110.5,'2012-08-17',  3009,  5003),
(70007,948.5,'2012-09-10',  3005,  5002),
(70005,2400.6 ,' 2012-07-27',  3007,  5001),
(70008,5760,' 2012-09-10',  3002,  5001),
(70010,1983.43 , '2012-10-10',  3004,  5006),
(70003,2480.4  ,    '2012-10-10',  3009,  5003),
(70012,250.45 ,'2012-06-27'  ,3008,  5002),
(70011,75.29,'2012-08-17' , 3003 , 5007),
(70013 , 3045.6  ,'2012-04-25'  ,3002  ,5001)
select * from Orders
select * from salesman


create table customer(
customer_id int,   cust_name varchar(50)   ,    city varchar(50)   , grade int , salesman_id int)
insert into customer values
      (3002 , 'Nick Rimando'   , 'New York'   ,   100 ,        5001),
        (3007 , 'Brad Davis'     , 'New York'   ,   200 ,        5001),
        (3005 ,'Graham Zusi'    , 'California' ,   200 ,        5002), 
		(3008 , 'Julian Green'  , 'London'     ,   300 ,        5002),
        (3004 , 'Fabian Johnson' , 'Paris'      ,   300 ,        5006),
        (3009 , 'Geoff Cameron'  , 'Berlin'     ,   100 ,        5003),
        (3003 , 'Jozy Altidor'   , 'Moscow'     ,   200 ,        5007),
        (3001 , 'Brad Guzan'     , 'London'     ,    NULL   ,        5005)
		select * from customer

		create table  nobel_win  (YEAR numeric(10) ,  SUBJECT varchar(50) , WINNER varchar(50),  COUNTRY varchar(50) ,CATEGORY varchar(50))
		insert into nobel_win values
(1970 ,'Physics','Hannes Alfven','Sweden','Scientist')
,(1970 ,'Physics','Louis Neel' ,'France' ,'Scientist')
,(1970 ,'Chemistry','Luis Federico Leloir' ,'France','Scientist')
,(1970 ,'Physiology',' Ulf von Euler','Sweden','Scientist')
,(1970 ,'Physiology','Bernard Katz' ,'Germany' ,'Scientist')
,(1970 ,'Literature','Aleksandr Solzhenitsyn','Russia','Linguist')
,(1970 ,'Economics','Paul Samuelson' ,'USA' ,'Economist')
,(1970,'Physiology','Julius Axelrod'             ,'USA' ,'Scientist')
,(1971 ,'Physics','Dennis Gabor','Hungary','Scientist')
,(1971 ,'Chemistry','Gerhard Herzberg','Germany','Scientist')
,(1971 ,'Peace','  Willy Brandt','Germany','Chancellor')
,(1971 ,'Literature','Pablo Neruda','Chile','Linguist')
,(1971 ,'Economics','Simon Kuznets','Russia' ,'Economist')
,(1978 ,'Peace','  Anwar al-Sadat','Egypt','President')
,(1978 ,'Peace',' Menachem Begin','Israel','Prime Minister')
,(1987 ,'Chemistry',' Donald J. Cram','USA' ,'Scientist')
,(1987 ,'Chemistry','Jean-Marie Lehn','France','Scientist')
,(1987, 'Physiology','Susumu Tonegawa','Japan','Scientist')
,(1994 ,'Economics','Reinhard Selten','Germany','Economist')
,(1994 ,'Peace','Yitzhak Rabin','Israel','Prime Minister')
,(1987 ,'Physics','Johannes Georg Bednorz','Germany','Scientist')
,(1987 ,'Literature', 'Joseph Brodsky','Russia','Linguist')
,(1987 ,'Economics','Robert Solow','USA' ,'Economist')
,(1994 ,'Literature','Kenzaburo Oe','Japan','Linguist')
select * from nobel_win
create table emp_details (EMP_IDNO int , EMP_FNAME varchar(50) ,   EMP_LNAME varchar(50) , EMP_DEPT int)
insert into emp_details values (   127323, 'Michale', 'Robbin',  57),
  (526689 ,'Carlos',  'Snares',  63),
   (843795, 'Enric','Dosio',   57),
  (328717 ,'Jhon', 'Snares',  63),
  ( 444527 ,'Joseph', ' Dosni', 47),
  ( 659831 ,'Zanifer', 'Emily', 47),
  ( 847674 ,'Kuleswar','Sitaraman',  57),
   (748681 ,'Henrey',  'Gabriel', 47),
  ( 555935 ,'Alex',    'Manuel',  57),
   (539569 ,'George',  'Mardy',   27),
  ( 733843 ,'Mario',   'Saule',   63),
  ( 631548 ,'Alan',    'Snappy',  27),
   (839139 ,'Maria',   'Foster',  57)
   CREATE TABLE  item_mast(PRO_ID int,  PRO_NAME varchar(50),PRO_PRICE numeric(10,2),PRO_COM int)
   insert into item_mast values
    (101,'Mother Board',3200.00,15),
    (102,' Key Board',450.00,16),
    (103,' ZIP drive',250.00,14),
    (104,' Speaker',550.00,16),
    (105,' Monitor',5000.00,11),
    (106,' DVD drive',900.00,12),
    (107,' CD drive',800.00,12),
    (108, 'Refill cartridge',350.00 ,13),
    (110,' Mouse',250.00,12)
	select * from salesman
	select name,commission  from salesman

	select * from Orders
	select ord_no,purch_amt,ord_date,salesman_id from Orders
	select distinct(salesman_id) from Orders
	select name ,city from salesman where city ='paris'
	select * from customer
	select cust_name,customer_id,city,salesman_id
	from customer where grade =200
-- From the following table, write a SQL query to find orders that are delivered by a salesperson with ID. 5001. Return ord_no, ord_date, purch_amt. 
select ord_no, ord_date, purch_amt from Orders where salesman_id =5001
--From the following table, write a SQL query to find the Nobel Prize winner(s) for the year 1970. Return year, subject and winner
select [YEAR] ,[SUBJECT],[WINNER]
from nobel_win where YEAR=1970 
--. From the following table, write a SQL query to find the Nobel Prize winner in ‘Literature’ for 1970. Return winner.
select * from  nobel_win

select [YEAR] ,[SUBJECT],[WINNER]
from nobel_win
where YEAR=1970 
 and [SUBJECT] ='Literature'
 -- From the following table, write a SQL query to find the Nobel Prize winners in the field of ‘Physics’ since 1950. Return winner.  
 select [WINNER]
 from nobel_win where YEAR>=1950 and SUBJECT= 'Physics'
 -- From the following table, write a SQL query to find the Nobel Prize winners in ‘Chemistry’ between the years 1965 and 1975.
 --Begin and end values are included. Return year, subject, winner, and country
 select [YEAR],[SUBJECT],[WINNER],[COUNTRY]
 from nobel_win
 where YEAR between  1965 and 1975 and SUBJECT= 'Chemistry'
 -- Write a SQL query to display all details of the Prime Ministerial winners after 1972 of Menachem Begin and Yitzhak Rabin
 select * from  nobel_win
 select *
 from nobel_win where YEAR>1972 and WINNER in ('Menachem Begin' , 'Yitzhak Rabin')
 SELECT * FROM nobel_win WHERE year >1972 AND winner IN ('Menachem Begin','Yitzhak Rabin')
 -- From the following table, write a SQL query to retrieve the details of the winners whose first names match with the string ‘Louis’. Return year, subject, winner, country, and category.
 select * from nobel_win where WINNER like 'Louis %'
 -- From the following table, write a SQL query that combines the winners in Physics, 1970 and in Economics, 1971. Return year, subject, winner, country, and category
 select * from nobel_win where (SUBJECT = 'Physics' and YEAR=1970) union select * from nobel_win where (SUBJECT = 'Economics' and YEAR=1971)
 -- From the following table, write a SQL query to find the Nobel Prize winners in 1970 excluding the subjects of Physiology and Economics. Return year, subject, winner, country, and category.  
select * from nobel_win
select *
from nobel_win where year=1970 and  subject not in (' Physiology','Economics')
-- From the following table, write a SQL query to combine the winners in 'Physiology' before 1971 and winners in 'Peace' on or after 1974.
--Return year, subject, winner, country, and category
select * from nobel_win where (SUBJECT='Physiology' and YEAR < 1971) union ( select * from nobel_win where SUBJECT= 'Peace' and year >= 1974)
-- From the following table, write a SQL query to find the details of the Nobel Prize winner 'Johannes Georg Bednorz'.
--Return year, subject, winner, country, and category. 
select * from nobel_win where WINNER='Johannes Georg Bednorz'
--From the following table, write a SQL query to find Nobel Prize winners for the subject that does not begin with the letter 'P'.
--Return year, subject, winner, country, and category. 
--Order the result by year, descending and winner in ascending
select * from nobel_win where SUBJECT not like 'p%'
order by YEAR desc and winner asc
-- From the following table, write a SQL query to find the details of 1970 Nobel Prize winners. 
--Order the results by subject, ascending except for 'Chemistry' and ‘Economics’ 
--which will come at the end of the result set. Return year, subject, winner, country, and category. f(find the difference between != and not in ) (used case statement )
select * from nobel_win where YEAR =1970 and SUBJECT not in  ('Chemistry' ,'Economics')
order by SUBJECT asc 

SELECT *
FROM nobel_win
WHERE year=1970 
ORDER BY
 CASE
    WHEN subject  IN ('Economics','Chemistry') THEN 1
    ELSE 0
 END ASC,
 subject,
 winner
 --25. From the following table, write a SQL query to select a range of products whose price is in the range Rs.200 to Rs.600.
 --Begin and end values are included. Return pro_id, pro_name, pro_price, and pro_com.
 select * from item_mast
 select * from item_mast where [PRO_PRICE] between  200  and 600
 --26. From the following table, write a SQL query to calculate the average price for a manufacturer code of 16. Return avg.  
 select AVG(PRO_PRICE)
 from [dbo].[item_mast] where PRO_COM =16
 --27. From the following table, write a SQL query to display the pro_name as 'Item Name' and pro_priceas 'Price in Rs.
 select PRO_NAME as 'item name',(PRO_PRICE) as 'price in rs'
 from [dbo].[item_mast]
 -- From the following table, write a SQL query to find the items whose prices are higher than or equal to $250. 
 --Order the result by product price in descending, then product name in ascending. Return pro_name and pro_price.

 select PRO_NAME,PRO_PRICE,PRO_COM
 from item_mast where PRO_PRICE>= 250
 order by PRO_PRICE desc,PRO_NAME asc
 --29. From the following table, write a SQL query to calculate average price of the items for each company. Return average price and company code.
 select AVG([PRO_PRICE]),[PRO_COM]
from [dbo].[item_mast]
group by [PRO_COM] -- if i use any aggregate function do i have to use group by is that mandiatory
 -- From the following table, write a SQL query to find the cheapest item(s). Return pro_name and, pro_price
 select min([PRO_PRICE]),PRO_NAME
 from [dbo].[item_mast]
 group by PRO_NAME
  select * from item_mast
  select [PRO_NAME],[PRO_PRICE]
  from [dbo].[item_mast] where PRO_PRICE= (select min (PRO_PRICE) from item_mast)
  --31. From the following table, write a SQL query to find the unique last name of all employees. Return emp_lname.
  select * from [dbo].[emp_details]
  select distinct EMP_LNAME 
  from [dbo].[emp_details]
--32. From the following table, write a SQL query to find the details of employees whose last name is 'Snares'. Return emp_idno, emp_fname, emp_lname, and emp_dept.
select * from emp_details where EMP_LNAME   like ' s%'
select * from emp_details where EMP_LNAME = 'snares'--wrong 
-- From the following table, write a SQL query to retrieve the details of the employees who work in the department 57. Return emp_idno, emp_fname, emp_lname and emp_dept..
select * from emp_details where EMP_DEPT = 57
