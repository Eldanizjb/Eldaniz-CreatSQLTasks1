SELECT 'This is SQL Exercise, Practice and Solution';




----CREATE DATABASE Task1;
USE Task1
SELECT Id AS customer_id, [Name] AS cust_name, city, grade, salesmanId AS salesman_id FROM customer
ORDER BY salesman_id, city, [Name]

----CREATE TABLE salesman(
----Id int Primary key Identity (5001,1),
----[Name] nvarchar (50) not null,
----);

----INSERT INTO salesman
----VALUES('5001'),('5002'),('5003'),('5004'),('5005'),('5006'),('5007') 
----SELECT * FROM salesman

----CREATE TABLE customer(
----Id int Primary key Identity (3001,1),
----[Name] nvarchar (50) not null,
----city nvarchar (50) not null,
----grade int not null,
----salesmanId int FOREIGN KEY REFERENCES salesman(Id) 	 
----);

----INSERT INTO customer([Name], city, grade, salesmanId)
----VALUES('Brad Guzan', 'London', '', 5005),
----('Nick Rimando', 'New York', 100, 5001),
----('Jozy Altidor', 'Moscow', 200, 5007),
----('Fabian Jhonson', 'Paris', 300, 5006),
----('Graham Zusi', 'California', 200, 5002),
----('Almardan', 'London', 111, 5005),
----('Brad Davids', 'New York', 200, 5001),
----('Julian Green', 'London', 300, 5002),
----('Geoff Cameron', 'Berlin', 100, 5003)


----WHERE grade IS NOT NULL
 
----DELETE FROM customer
----WHERE [Id]=3006

----ALTER TABLE customer 
----ALTER COLUMN grade int NULL




----CREATE DATABASE Task2;
USE Task2
SELECT * FROM customer
WHERE [Name] LIKE 'A%' OR [Name] LIKE 'L%';


----CREATE TABLE customer(
----Id int Primary key Identity (5001,1),
----[Name] nvarchar (50) not null,
----city nvarchar (50) not null,
----commission decimal (3,2)
----);

----INSERT INTO customer([Name], city, commission)
----VALUES('James Hong', 'New York', 0.15),
----('Nail Knite', 'Paris', 0.13),
----('Lauson Hen', 'San Jose', 0.12),
----('Ali', 'Jose', 0.25),
----('Pit Alex', 'London', 0.11),
----('Mc Lyon', 'Paris', 0.14),
----('Paul Adam', 'Rome', 0.13)

----ALTER TABLE customer 
----ALTER COLUMN commission DECIMAL (3,2)
------ADD COLUMN commission decimal
------SELECT * FROM customer



----CREATE DATABASE Task3;
USE Task3
SELECT Id AS customer_id, [Name] AS cust_name, city, grade, salesmanId AS salesman_id FROM customer
WHERE [Name] LIKE '%n'

----CREATE TABLE salesman(
----Id int Primary key Identity (5001,1),
----[Name] nvarchar (50) not null,
----);

----INSERT INTO salesman
----VALUES('5001'),('5002'),('5003'),('5004'),('5005'),('5006'),('5007') 
----SELECT * FROM salesman

----CREATE TABLE customer(
----Id int Primary key Identity (3001,1),
----[Name] nvarchar (50) not null,
----city nvarchar (50) not null,
----grade int not null,
----salesmanId int FOREIGN KEY REFERENCES salesman(Id) 	 
----);
----UPDATE  customer
----SET grade = NULL
----WHERE [Id]=3002

----ALTER TABLE customer 
----ALTER COLUMN grade int NULL
----SELECT * FROM customer

----INSERT INTO customer([Name], city, grade, salesmanId)
----VALUES('Brad Guzan', 'London', ' ', 5005),
----('Nick Rimando', 'New York', 100, 5001),
----('Jozy Altidor', 'Moscow', 200, 5007),
----('Fabian Jhonson', 'Paris', 300, 5006),
----('Graham Zusi', 'California', 200, 5002),
----('Almardan', 'London', 111, 5005),
----('Brad Davids', 'New York', 200, 5001),
----('Julian Green', 'London', 300, 5002),
----('Geoff Cameron', 'Berlin', 100, 5003)


 
----CREATE DATABASE Task4;
USE Task4
SELECT * FROM customer
WHERE city='Paris' OR city='Rome'

----CREATE TABLE customer(
----Id int Primary key Identity (5001,1),
----[Name] nvarchar (50) not null,
----city nvarchar (50) not null,
----commission decimal (3,2)
----);

----INSERT INTO customer([Name], city, commission)
----VALUES('James Hong', 'New York', 0.15),
----('Nail Knite', 'Paris', 0.13),
----('Lauson Hen', 'San Jose', 0.12),
----('Ali', 'Jose', 0.25),
----('Pit Alex', 'London', 0.11),
----('Mc Lyon', 'Paris', 0.14),
----('Paul Adam', 'Rome', 0.13)



----update customer 
----set commission = 0.13
----WHERE Id=5007

----DELETE FROM customer
----WHERE [Id]=5004
----DROP TABLE customer


-- --CREATE DATABASE Task5
  USE Task5
 SELECT * FROM winner
WHERE [SUBJECT]='Chemstry' OR [SUBJECT]='Economics'



--   --CREATE TABLE winner(
-- --[YEAR] int not null,
-- --[SUBJECT] nvarchar (50) not null,
-- --WINNER nvarchar (50) not null,
-- --COUNTRY nvarchar (50) not null,
-- --CATEGORY nvarchar (50) not null);


---- INSERT INTO winner ([YEAR],[SUBJECT], WINNER, COUNTRY, CATEGORY)
----VALUES (1970, 'Physics', 'Hannes Alfen', 'Sweden', 'Scientist'),
---- (1970, 'Physics', 'Louis Neel', 'France', 'Scientist'),  
---- (1970, 'Chemstry', 'Lois Federico Leloir', 'France', 'Scientist'),
---- (1970, 'Physiology', 'Ulf von Euler', 'Sweden', 'Scientist'),
---- (1970, 'Physiology', 'Bernard Katz', 'Sweden', 'Scientist'),
---- (1970, 'Literature', 'Aleksandr Solzhenitsyn', 'Russia', 'Linguist'),
---- (1970, 'Economics', 'Paul Samuelson', 'USA', 'Economicst'),
---- (1970, 'Physiology', 'Julius Axelrod', 'USA', 'Scientist'),
---- (1971, 'Physics', 'Dennis Gabor', 'Hungary', 'Scientist'),
----(1971, 'Chemstry', 'Gerhard Herzberg', 'Germany', 'Scientist'),
---- (1971, 'Peace', 'Willy Brandt', 'Germany', 'Chancellor'),
---- (1971, 'Literature', 'Pablo Neruda', 'Chile', 'Linguist'),
---- (1971, 'Economics', 'Simon Kuznets', 'Russia', 'Economicst'),
---- (1978, 'Peace', 'Anwar al-Sadat', 'Egypt', 'Presindent'),
---- (1978, 'Peace', 'Menachem Begin', 'Israel', 'Prime Minister'),
---- (1987, 'Chemstry', 'Donald J. Cram', 'USA', 'Scientist'),
---- (1987, 'Chemstry', 'Jean-Marie Lehn', 'France', 'Scientist'),
---- (1987, 'Physiology', 'Susumu Tonegawa', 'Japan', 'Scientist'),
----(1994, 'Physics', 'Reinhard Selten', 'Germany', 'Economicst'),
---- (1994, 'Peace', 'Yitzhak Raabin', 'Israel', 'Prime Minister'),
------ (1987, 'Physics', 'Johannes Georg Bednorz', 'Germany', 'Scientist'),
------ (1987, 'Literature', 'Joseph Brodsky', 'Russia', 'Linguist'),
------ (1987, 'Physics', 'Robert Solow', 'USA', 'Economicst'),
------ (1994, 'Literature', 'Kenzaburo Oe', 'Japan', 'Linguist')
 



----CREATE DATABASE Task6;
USE Task6
SELECT Id AS customer_id, [Name] AS cust_name, city, grade, salesmanId AS salesman_id FROM customer
WHERE Id BETWEEN 3007 AND 3009;

----CREATE TABLE salesman(
----Id int Primary key Identity (5001,1),
----[Name] nvarchar (50) not null,
----);

----INSERT INTO salesman
----VALUES('5001'),('5002'),('5003'),('5004'),('5005'),('5006'),('5007') 
----SELECT * FROM salesman

----CREATE TABLE customer(
----Id int Primary key Identity (3001,1),
----[Name] nvarchar (50) not null,
----city nvarchar (50) not null,
----grade int not null,
----salesmanId int FOREIGN KEY REFERENCES salesman(Id) 	 
----);

----INSERT INTO customer([Name], city, grade, salesmanId)
----VALUES('Brad Guzan', 'London', '', 5005),
----('Nick Rimando', 'New York', 100, 5001),
----('Jozy Altidor', 'Moscow', 200, 5007),
----('Fabian Jhonson', 'Paris', 300, 5006),
----('Graham Zusi', 'California', 200, 5002),
----('Almardan', 'London', 111, 5005),
----('Brad Davids', 'New York', 200, 5001),
----('Julian Green', 'London', 300, 5002),
----('Geoff Cameron', 'Berlin', 100, 5003)


----WHERE grade IS NOT NULL
 
----DELETE FROM customer
----WHERE [Id]=3006

----ALTER TABLE customer 
----ALTER COLUMN grade int NULL



----CREATE DATABASE Task7
USE Task7
 SELECT idnumber AS EMP_IDNO, [Number] AS EMP_FNAME, Surname AS EMP_LNAME, Dept AS EMP_DEPT FROM emp_details
WHERE Surname='Dosni' OR Surname='Emily'


---- CREATE TABLE emp_details(
---- idnumber int not null,
---- [Number] nvarchar (50) not null,
---- Surname nvarchar (50) not null,
---- Dept smallint not null);

---- INSERT INTO emp_details (idnumber,[Number], Surname, Dept)
----VALUES (127323, 'Michale', 'Robbin', 57),
---- (526689, 'Carlos', 'Snares', 63),
---- (843795, 'Enric', 'Dosio', 57),
---- (328717, 'Jhon', 'Snares', 63),
---- (444527, 'Joseph', 'Dosni', 47),
---- (659831, 'Zanifer', 'Emily', 47),
---- (847647, 'Kuleswar', 'Sitaraman', 57),
---- (748681, 'Henrey', 'Gabriel', 47),
---- (555935, 'Alex', 'Manuel', 57)
 



----CREATE DATABASE Task8;
USE Task8
SELECT * FROM salesman


----CREATE TABLE salesman(
----Id int Primary key Identity (5001,1),
----[Name] nvarchar (50) not null,
----city nvarchar (50) not null,
----commission decimal (3,2)
----);

----INSERT INTO salesman([Name], city, commission)
----VALUES('James Hong', 'New York', 0.15),
----('Nail Knite', 'Paris', 0.13),
----('Lauson Hen', 'San Jose', 0.12),
----('Ali', 'Jose', 0.25),
----('Pit Alex', 'London', 0.11),
----('Mc Lyon', 'Paris', 0.14),
----('Paul Adam', 'Rome', 0.13)


----DELETE FROM salesman
----WHERE [Id]=5004


----CREATE DATABASE Task9;
USE Task9
SELECT Id AS customer_id, [Name] AS cust_name, city, grade, salesmanId AS salesman_id FROM customer
WHERE grade IS NOT NULL

----CREATE TABLE salesman(
----Id int Primary key Identity (5001,1),
----[Name] nvarchar (50) not null,
----);

----INSERT INTO salesman
----VALUES('5001'),('5002'),('5003'),('5004'),('5005'),('5006'),('5007') 
----SELECT * FROM salesman

----CREATE TABLE customer(
----Id int Primary key Identity (3001,1),
----[Name] nvarchar (50) not null,
----city nvarchar (50) not null,
----grade int null,
----salesmanId int FOREIGN KEY REFERENCES salesman(Id) 	 
----);

----INSERT INTO customer([Name], city, grade, salesmanId)
----VALUES('Brad Guzan', 'London', '', 5005),
----('Nick Rimando', 'New York', 100, 5001),
----('Jozy Altidor', 'Moscow', 200, 5007),
----('Fabian Jhonson', 'Paris', 300, 5006),
----('Graham Zusi', 'California', 200, 5002),
----('Almardan', 'London', 111, 5005),
----('Brad Davids', 'New York', 200, 5001),
----('Julian Green', 'London', 300, 5002),
----('Geoff Cameron', 'Berlin', 100, 5003)


 


----CREATE DATABASE Task10;
USE Task10
SELECT Id AS customer_id, [Name] AS cust_name, city, grade, salesmanId AS salesman_id FROM customer
WHERE city='New York' AND grade>100

----CREATE TABLE salesman(
----Id int Primary key Identity (5001,1),
----[Name] nvarchar (50) not null,
----);

----INSERT INTO salesman
----VALUES('5001'),('5002'),('5003'),('5004'),('5005'),('5006'),('5007') 
----SELECT * FROM salesman

----CREATE TABLE customer(
----Id int Primary key Identity (3001,1),
----[Name] nvarchar (50) not null,
----city nvarchar (50) not null,
----grade int null,
----salesmanId int FOREIGN KEY REFERENCES salesman(Id) 	 
----);

----INSERT INTO customer([Name], city, grade, salesmanId)
----VALUES('Brad Guzan', 'London', NULL, 5005),
----('Nick Rimando', 'New York', 100, 5001),
----('Jozy Altidor', 'Moscow', 200, 5007),
----('Fabian Jhonson', 'Paris', 300, 5006),
----('Graham Zusi', 'California', 200, 5002),
----('Almardan', 'London', 111, 5005),
----('Brad Davids', 'New York', 200, 5001),
----('Julian Green', 'London', 300, 5002),
----('Geoff Cameron', 'Berlin', 100, 5003)



----CREATE DATABASE Task11;
USE Task11
SELECT Id AS customer_id, [Name] AS cust_name, city, grade, salesmanId AS salesman_id FROM customer
WHERE grade=200

----CREATE TABLE salesman(
----Id int Primary key Identity (5001,1),
----[Name] nvarchar (50) not null,
----);

----INSERT INTO salesman
----VALUES('5001'),('5002'),('5003'),('5004'),('5005'),('5006'),('5007') 
----SELECT * FROM salesman

----CREATE TABLE customer(
----Id int Primary key Identity (3001,1),
----[Name] nvarchar (50) not null,
----city nvarchar (50) not null,
----grade int null,
----salesmanId int FOREIGN KEY REFERENCES salesman(Id) 	 
----);

----INSERT INTO customer([Name], city, grade, salesmanId)
----VALUES('Brad Guzan', 'London', NULL, 5005),
----('Nick Rimando', 'New York', 100, 5001),
----('Jozy Altidor', 'Moscow', 200, 5007),
----('Fabian Jhonson', 'Paris', 300, 5006),
----('Graham Zusi', 'California', 200, 5002),
----('Almardan', 'London', 111, 5005),
----('Brad Davids', 'New York', 200, 5001),
----('Julian Green', 'London', 300, 5002),
----('Geoff Cameron', 'Berlin', 100, 5003)





----CREATE DATABASE Task12;
USE Task12
SELECT Id AS salesman_id, [Name] AS name, city, commission FROM salesman
WHERE commission>0.10 AND commission<0.12


----CREATE TABLE salesman(
----Id int Primary key Identity (5001,1),
----[Name] nvarchar (50) not null,
----city nvarchar (50) not null,
----commission decimal (3,2)
----);

----INSERT INTO salesman([Name], city, commission)
----VALUES('James Hong', 'New York', 0.15),
----('Nail Knite', 'Paris', 0.13),
----('Lauson Hen', 'San Jose', 0.12),
----('Ali', 'Jose', 0.25),
----('Pit Alex', 'London', 0.11),
------('Mc Lyon', 'Paris', 0.14),
------('Paul Adam', 'Rome', 0.13)




----CREATE DATABASE Task13;
USE Task13
SELECT Id AS salesman_id, [Name] AS name, city, commission FROM salesman
ORDER BY [Name], commission

----CREATE TABLE salesman(
----Id int Primary key Identity (5001,1),
----[Name] nvarchar (50) not null,
----city nvarchar (50) not null,
----commission decimal (3,2)
----);

----INSERT INTO salesman([Name], city, commission)
----VALUES('James Hong', 'New York', 0.15),
----('Nail Knite', 'Paris', 0.13),
----('Lauson Hen', 'San Jose', 0.12),
----('Ali', 'Jose', 0.25),
----('Pit Alex', 'London', 0.11),
----('Mc Lyon', 'Paris', 0.14),
----('Paul Adam', 'Rome', 0.13)



