
create schema Coded;
go 
use DbQuiz1
create table Coded.Employes
(
Id int primary key identity (1,1) not null,
EmployeeName nvarchar(100) not null ,
Postion nvarchar (100) not null,
Salary decimal (20,2) not null,
DepartmentId int  not null ,
date_of_joining Datetime,
)


create table Coded.Departments
(
id int primary key identity (1,1) not null,
Name nvarchar(100) not null,
location nvarchar(100) not null,
)

insert into Coded.Employes
values ('John Doe','Manager',6000,1,GETDATE()),
       ('Jane Smith','Developer',4500,2,GETDATE()),
	   ('Alan Turing','Analyst',4000 ,3,GetDATE()),
	   ('Grace Hopper','Scientist',7000,1,GETDATE()),
	   ('Ada Lovelace','Developer',5000,2,GETDATE())

	   insert into Coded.Departments
values ('HR','New York'),
       ('IT','San Francisco'),
	   ('Finance','Chicago')
	 
	 INSERT INTO Coded.Employes( EmployeeName, Postion, Salary, DepartmentId,date_of_joining)
VALUES ( 'Mohammad Refaa', 'Engineer', 8000, 2,GETDATE())

--2
UPDATE Coded.Employes
SET Salary = 5000
WHERE EmployeeName = 'Jane Smith';

--3
DELETE FROM Coded.Employes
WHERE DepartmentId= 3;

--4
SELECT *
FROM Coded.Employes
WHERE DepartmentId = (
    SELECT id
    FROM Coded.Departments
    where Name = 'IT'
)

--5 
INSERT INTO Coded.Departments
VALUES ('Marketing', 'Los Angeles')

--6
SELECT *
FROM Coded.Departments
WHERE location = 'New York';


--7
UPDATE Coded.Departments
SET location = 'Boston'
WHERE Name = 'HR';

--8
UPDATE Coded.Employes
SET salary = salary * 1.10;

--9
DELETE FROM Coded.Employes
WHERE DepartmentId = (
    SELECT id
    FROM Coded.Departments
    WHERE Name = 'Finance'
)
--10
insert into Coded.Employes
values('Rami jalal', 'Developer', 5500, 2,GETDATE())

select * from Coded.Employes
