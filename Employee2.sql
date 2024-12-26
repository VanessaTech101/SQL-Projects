create table employee2(
name varchar(255),
salary bigint);

insert into `employee2`(name,salary) values ("John",1200);
insert into `employee2`(name,salary) values ("Vanessa",2000);
insert into `employee2`(name,salary) values ("Amen",400);
insert into `employee2`(name,salary) values ("Abila",440);
insert into `employee2`(name,salary) values ("Stephania",456);

select * from employee2;
#Displays all records present 

#Limit
select * from employee2 LIMIT 1; #Displays 1 record
select * from employee2 LIMIT 2; #Displays 2 records

#Order BY
select * from employee2 order by salary desc;

#Find highest salary using order by and limit 
select * from employee2 order by salary desc limit 1;

#Min, max, Average
select max (salary) from employee2;
select min(salary) from employee2;
select avg(salary) from employee2; 

#Interview Question - Second highest salary from table #IMPORTANT!
select * from employee2 where salary < (select max(salary) from employee2 limit 1) limit 1;
#Another method 
select * from employee2 order by salary desc limit 1,1;

#Between 
select * from employee2 where salary between 400 AND 900;

#GroupBy 
#Please check on w3schools example - https://www.w3schools.com/sql/trysql.asp?filename=trysql_asc

#Drop table employee2; 
#(Deletes the data and structure)

#Truncate table employee2; 
#(Deletes only data and NOT the structure)


