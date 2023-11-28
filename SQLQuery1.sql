create table person( id int not null ,name varchar(20),age int not null, address char(30),salary decimal(18,9));
insert into person(id,name,age,address,salary) values (1,'vishal',27,'14 abc sa australia',5000.00);
update person set address = '14 arabiran avn' where name ='vishal';
select * from person;
insert into person(id,name,age,address,salary) values (2,'katraj',26,'14A arabire avn edwarstone sa australia aaaaaaaaaaaaaaaaaaa',6000.00);
select * from person;
insert into person(id,name,age,address,salary) values (2,'katraj',26,'14A arabire avn edwarstone sa',6000.00);
insert into person(id,name,age,address,salary) values (3,'vk1',25,'15 arabire avn edwarstone sa',9000.00);

