CREATE DATABASE college;
USE college;

CREATE TABLE student(id INT PRIMARY KEY,
NAME VARCHAR(50),
age INT  NOT NULL
);

insert into  student values(25,"vazid",21);
insert into  student values(50,"nikhil",23);

SELECT * from student;

CREATE DATABASE library;
USE  library;

create table person(regno int primary key,
name  varchar(10),
date int not null
);

INSERT INTO person values(1325,"vazid",18);
INSERT INTO person values(1350,"pawan",12);


SELECT*FROM person;

USE DHONI;
CREATE TABLE EMP(id INT NOT NULL,
salary INT DEFAULT 25000);

INSERT INTO EMP(id) VALUES(13245);
SELECT*FROM EMP;

CREATE DATABASE collage;
USE collage;

CREATE TABLE student(
Rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

INSERT INTO student(Rollno,name,marks,grade,city) VALUES 
(105,"VAZID",95,"A","NELLORE"),
(1005,"KARTHIK",80,"B","RJY"),
(1320,"NIKHIL",60,"C","RAJAMPETA"),
(1319,"SATISH",90,"C","RAJAMUNDRY"),
(1355,"karthikeya",90,"A","NELLORE");

SELECT*FROM STUDENT;
SELECT name,marks FROM STUDENT;

SELECT*
FROM STUDENT
WHERE marks+10 <100;

SELECT*
FROM STUDENT
WHERE marks>80 AND city="NELLORE";

SELECT*
FROM STUDENT
WHERE marks BETWEEN 80 AND 90;

SELECT*
FROM STUDENT
WHERE  city IN ("NELLORE","RJY");

SELECT MAX(marks)
FROM STUDENT;

SELECT SUM(marks)
FROM STUDENT;

SELECT AVG(marks)
FROM STUDENT;


CREATE TABLE student_info(
Rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

INSERT INTO student_info(Rollno,name,marks,grade,city) VALUES 
(1325,"VAZID",95,"A","NELLORE"),
(1320,"VENKATESH",90,"B","NELLORE"),
(1005,"KARTHIK",80,"B","RJY"),
(1311,"SAMPATH",85,"B","BANGLORE"),
(1350,"NIKHIL",60,"C","RAJAMPETA"),
(1319,"SATISH",90,"C","RAJAMUNDRY"),
(1310,"KALYAN",70,"C","BANGLORE"),
(1355,"karthikeya",90,"A","NELLORE");

select * from student_info;

SELECT CITY,NAME,COUNT(NAME) ,MAX(marks) FROM  student_info 
GROUP BY CITY,NAME
ORDER BY NAME;

SELECT CITY,name, max(marks) FROM student_info
GROUP BY CITY,name
ORDER BY NAME;

select city,count(Rollno)
FROM student_info
group by city
having max(marks)>90;

UPDATE  student_info
SET grade="F"
WHERE grade="C";

UPDATE student_info
SET marks=20
WHERE  Rollno=1325;

UPDATE student_info
SET marks=marks+1;

SET SQL_SAFE_UPDATES=0;

DELETE FROM student_info
WHERE marks<30;

SELECT * from student_info;

CREATE TABLE dept (
id INT PRIMARY KEY,
name VARCHAR(60)
);

CREATE  TABLE TEACHER(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id  INT,FOREIGN KEY(dept_id) REFERENCES dept(id)
);











