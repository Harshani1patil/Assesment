create database worker;
use worker;
create table worker
(
worker_id int not null auto_increment,
first_name varchar (50),
last_name varchar(50),
salary int,
joining_date int,
department varchar(50),
primary key (worker_id)
);

insert into worker (worker_id,first_name,last_name,salary,joining_date,department)
values
	(1,"Monika","Arora",100000,2/20/2014,"HR"),
    (2,"Niharika","Varma",80000,6/11/2014,"Admin"),
    (3,"Vishal","Singhal",300000,2/20/2014,"HR"),
    (4,"Amitabh","Singh",500000,2/20/2014,"Admin"),
    (5,"Vivek","Bhati",500000,6/11/2014,"Admin"),
    (6,"Vipul","Diwan",200000,6/11/2014,"Account"),
    (7,"Satish","Kumar",75000,01/20/2014,"Account"),
    (8,"Gitika","Chauhan",900000,4/11/2014,"Admin");
    
-- 1 Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME
-- Ascending and DEPARTMENT Descending. 
select first_name,department from worker order by department desc;

-- 2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish”
-- from the Worker table.
select * from worker where first_name in ("Vipul","Satish");

-- 3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and
-- contains six alphabets. 
select * from worker where first_name like"_____H";

-- 4. Write an SQL query to print details of the Workers whose SALARY lies between 1.
select * from worker where salary between 5000 and 100000;

-- 5. Write an SQL query to fetch duplicate records having matching data in some fields of a table. 
SELECT first_name, last_name, COUNT(*)FROM Worker
GROUP BY first_name, last_name
HAVING COUNT(*) > 1;

-- 6. Write an SQL query to show the top 6 records of a table. 
SELECT * FROM Worker ORDER BY salary DESC limit 6;

-- 7. Write an SQL query to fetch the departments that have less than five people in them. 
select department_id from worker group by department_id having count(*) < 5;

-- 8. Write an SQL query to show all departments along with the number of people in there.
SELECT department_id, COUNT(employee_id) AS number_of_people
FROM employees
GROUP BY department_id;

-- 9. Write an SQL query to print the name of employees having the highest salary in each
-- department. 





    
    


