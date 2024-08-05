create database sstudent;
use sstudent;
create table sstudent
(
std_id int not null auto_increment,
std_name varchar (50),
sex varchar (50),
percentage int,
class int,
sec varchar (10),
stream varchar (50),
DOB date,
primary key(std_id)
);

insert into sstudent (std_id,std_name,sex,percentage,class,sec,stream,BOB)
values
	(1001,"surekha joshi","female",82,12,"A","science",3-8-1998),
    (1002,"maahi agrawal","female",56,11,"c","commerce",11-23-2008),
    (1003,"sanam varma","male",59,11,"c","commerce",6-29-2006),
    (1004,"Ronit kumar","male",63,11,"c","commerce",11-5-1997),
    (1005,"dipesh pulkit","male",78,11,"B","science",14-9-2003),
    (1006,"jahanavi puri","female",60,11,"B","commerce",11-7-2008),
    (1007,"sanam kumar","male",23,12,"F","commerce",3-8-1998),
    (1008,"sahil saras","male",56,11,"c","commerce",11-7-2008),
    (1009,"Akshra agrawal","female",72,12,"B","commerce",10-1-1996),
    (1010,"stuti mishra","female",39,11,"c","science",11-23-2008),
    (1011,"Harsh agrwal","male",42,11,"c","science",3-8-1998),
    (1012,"nikunj agrwal","male",49,12,"c","commerce",28-6-1998),
    (1013,"Akriti saxena","female",89,12,"A","science",11-23-2008),
    (1014,"Tani rastogi","female",82,12,"A","science",11-23-2008);
    
-- 1 To display all the records form STUDENT table. SELECT * FROM student ; 
select * from sstudent;

-- 2. To display any name and date of birth from the table STUDENT. SELECT StdName, DOB
-- FROM student 
SELECT Std_Name, BOB FROM sstudent;  

-- 3. To display all students record where percentage is greater of equal to 80 FROM student table.
SELECT * FROM sstudent WHERE percentage >= 80;

-- 4. To display student name, stream and percentage where percentage of student is more than 80
SELECT StdName, Stream, Percentage WHERE percentage > 80; 

-- -- 5. To display all records of science students whose percentage is more than 75 form student table.
SELECT * from sstudent WHERE stream = ‘Science’ AND percentage > 75; 