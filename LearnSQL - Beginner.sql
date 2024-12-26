#Here I write SQL commands 
#CRUD 
#SQL is not case sensitive 

SELECT "Hello World";

#Task 1
#Create a Database - TheTestingAcademy 
#Create a Table - Student 
#Student (MTB) - ID, Name, Address
#Courses (MTB) - ID, Name, price
#Student Courses Table to identify relationships and also for queries 

SHOW DATABASES;

CREATE DATABASE THETESTINGACADEMY; 
#Execute this and proceed to execute show databases command. It can be verified that this database has been created. 

USE THETESTINGACADEMY;

#Create Student Table 
#id -> datatype of ID -> Integer
#name -> String 
#Address -> String 

# Please use `` as  needed as the colored text would help identify table names when writing complex queries 
CREATE TABLE `Student` (
`id` int NOT NULL AUTO_INCREMENT,
`name` varchar(255) NOT NULL, 
`address` text, 
PRIMARY KEY(`id`)
);

DESCRIBE `student`;
#Shows Table description

SELECT * from `student`;

#To insert into Table 
INSERT INTO `STUDENT`(NAME,ADDRESS) VALUES("Vanessa","Hamilton");
INSERT INTO `STUDENT`(NAME,ADDRESS) VALUES("Jim","Burlington");
INSERT INTO `STUDENT`(NAME,ADDRESS) VALUES("Jim","Hamilton");
INSERT INTO `STUDENT`(NAME,ADDRESS) VALUES("Stephanie","Ancaster");
INSERT INTO `STUDENT`(NAME,ADDRESS) VALUES("Jess","Oakville");

SELECT * from `student` where address="Hamilton";

SELECT DISTINCT(name) FROM `student`;

Select * from `student` where id='2';
Select * from `student` where id='2' and name='Jim';

#Order By - Can sort columns by ascending and descending (By default, it is ascending)
select * from `student` ORDER by name asc;
select * from `student` ORDER by name desc;

INSERT INTO `STUDENT`(NAME,ADDRESS) VALUES("VR",null);

#Null #Not Null
select * from `student` where `address` is null;
select * from `student` where `address` is not null;

#Update
update `student`set `address`="Toronto" where id= 6;

#Delete 
Delete from `student` where id=6;
INSERT INTO `STUDENT`(NAME,ADDRESS) VALUES("Savannah","Oakville");
#Please note next ID when new record inserted will be numbered 7 (Because it is auto incrementing, as set earlier)

#Count 
select count(*) from `student`;
select count(name) from `student`;

#Like
select * from `student` where name like "V%";
select * from `student` where name like "%sa";
#Here % stands for 0 or more characters 

# _
select * from `student` where name like "Vaness_";
# _ stands for 1 single 

#Combining _ and % for advanced search 
select * from student where name like "V_%";

#IN #NOT IN
select * from `student` where address in ("Hamilton","Oakville");
select * from `student` where address not in ("Hamilton","Oakville");


