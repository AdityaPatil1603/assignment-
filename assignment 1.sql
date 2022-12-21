create database assignment;

use assignment;

create table salespeople(Snum int primary key ,Sname varchar(40) unique,City varchar(40),comm int);

insert salespeople values(1001,'Peel','London',12),
(1002,'Serres','Sanjose',13),
(1004,'Motika','London',11),
(1007,'Rifkin','Barcelona',15),
(1003,'Axelrod','Newyork',10);

select * from assignment.salespeople;

create table customers(Cnum int primary key,Cname varchar(40),city varchar(40) not null,Snum int,
    FOREIGN KEY (Snum) REFERENCES salespeople(Snum));
    
insert customers values(2001,'Hoffman','London',1001),(2002,'Giovanni','Rome',1003),(2003,'Liu','Sanjose',1002),
(2004,'Grass','Berlin',1002),(2006,'Clemens','London',1001),(2008,'Cisneros','Sanjose',1007),(2007,'Pereira','Rome',1004);

select* from customers;

create table orders(Onum int primary key,Amt int,Odate date,Cnum int,FOREIGN KEY (Cnum) REFERENCES customers(Cnum),Snum int,
FOREIGN KEY (Snum) REFERENCES salespeople(Snum));

insert orders value(3001,18.69,'1999-10-03',2008,1007),(3003,767.19,'1990-10-03',2001,1001),(3002,1900.10,'1990-10-03',2007,1004),
(3005,5160.45,'1990-10-03',2003,1002),(3006,1098.16,'1990-10-03',2008,1007),(3009,1713.23,'1990-10-04',2002,1003),(3007,75.75,'1990-10-04',2004,1002),
(3008,4273.00,'1990-10-05',2006,1001),(3010,1309.95,'1990-10-06',2004,1002),(3011,9891.88,'1990-10-06',2006,1001);

select* from orders;

SELECT count(*) FROM salespeople WHERE Sname LIKE 'A%';

SELECT *
FROM orders
WHERE amt>2000;

SELECT count(*) FROM salespeople WHERE City LIKE 'Newyork';

SELECT Sname,city
FROM salespeople
WHERE city='London' or city='Paris';
 
SELECT Odate,Snum
FROM orders 
GROUP BY Odate,Snum;