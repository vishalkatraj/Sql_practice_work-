USE VISHAL 
SELECT * FROM salesman
SELECT * FROM [dbo].[Orders]
SELECT *  FROM [dbo].[customer]
SELECT * FROM salesman
SELECT * FROM [dbo].[emp_details]
SELECT * FROM [dbo].[item_mast]
SELECT * FROM [dbo].[Orders]
--1. From the following tables write a SQL query to find the salesperson and customer who reside in the same city. 
--Return Salesman, cust_name and city.
SELECT  salesman.city,[cust_name],salesman.name
FROM salesman
INNER JOIN  [dbo].[customer]  on   [dbo].[customer].city=salesman.city

--2. From the following tables write a SQL query to find those orders where the order amount exists between 500 and 2000.
--Return ord_no, purch_amt, cust_name, city.
select [ord_no],[purch_amt], [cust_name],[city]
from [dbo].[Orders] as ord
left join [dbo].[customer] as cust on cust.[customer_id] = ord.[customer_id]
where [purch_amt] between 500 and 2000
--3. From the following tables write a SQL query to find the salesperson(s) and the customer(s) he represents. 
--Return Customer Name, city, Salesman, commission. --" doubt ask tutor "
select [cust_name],cust.[city],cust.[salesman_id],[commission],[name]
from [dbo].[customer] as cust 
inner join [dbo].[salesman] as sm
on cust.[salesman_id] = sm.salesman_id
--4. From the following tables write a SQL query to find salespeople who received commissions of more 
--than 12 percent from the company.
--Return Customer Name, customer city, Salesman, commission.
select [name],[commission],sa.[city],[cust_name]
from salesman as sa
left join [dbo].[customer] as cust
on sa.salesman_id =cust.salesman_id
where sa.commission > 0.12
--5. From the following tables write a SQL query to locate those salespeople who do not live in the same city
--where their customers live and have received a commission of more than 12% from the company. 
--Return Customer Name, customer city, Salesman, salesman city, commission.(not in fuctions)
select [name],[commission],sa.city,[cust_name],cust.[city]
from  salesman as sa 
inner join  [dbo].[customer] as cust
on cust.salesman_id = sa.salesman_id
where commission>.12
and cust.city != sa.city
--6. From the following tables write a SQL query to find the details of an order.
--Return ord_no, ord_date, purch_amt, Customer Name, grade, Salesman, commission
select  ord_no,ord_date,purch_amt,cust_name,grade
from Orders as ord
left join customer as cust
on ord.customer_id = cust.customer_id
left join salesman as sa
on ord.salesman_id=sa.salesman_id
select salesman_id from Orders
--7. Write a SQL statement to join the tables salesman,
--customer and orders so that the same column of each table appears once and only the relational rows are returned.
select *from salesman--equi join
select *from Orders
select * from customer

select 
from orders


