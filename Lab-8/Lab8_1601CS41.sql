DROP DATABASE IF EXISTS lab8;
CREATE DATABASE lab8;

USE lab8;

CREATE TABLE LOCATION
(
	Location_id INT PRIMARY KEY,
	Regional_Group VARCHAR(20)
);

CREATE TABLE DEPARTMENT
(
	Department_id INT PRIMARY KEY,
	Name VARCHAR(20),
	Location_id INT,
	FOREIGN KEY (Location_id) REFERENCES LOCATION(Location_id)
); 

CREATE TABLE JOB
(
	Job_Id INT PRIMARY KEY,
	Function ENUM('CLERK', 'STAFF', 'ANALYST', 'SALESPERSON', 'MANAGER', 'PRESIDENT')
);

CREATE TABLE EMPLOYEE
(
	Employee_Id INT PRIMARY KEY,
	Last_Name VARCHAR(20) NOT NULL,
	First_Name VARCHAR(20),
	Middle_Name VARCHAR(20),
	Job_Id INT ,
	FOREIGN KEY (Job_Id) REFERENCES JOB(Job_Id),
	Manager_Id INT,
	Hire_Date DATE,
	Salary INT,
	Comm VARCHAR(20),
	Department_id INT, 
	FOREIGN KEY (Department_id) REFERENCES DEPARTMENT(Department_id)
);

INSERT INTO LOCATION VALUES(1, 'Asia');
INSERT INTO LOCATION VALUES(2, 'Asia');
INSERT INTO LOCATION VALUES(3, 'Asia');
INSERT INTO LOCATION VALUES(4, 'Asia');
INSERT INTO LOCATION VALUES(5, 'Africa');
INSERT INTO LOCATION VALUES(6, 'Australia');
INSERT INTO LOCATION VALUES(7, 'US');
INSERT INTO LOCATION VALUES(8, 'Asia');

INSERT INTO DEPARTMENT VALUES(1, 'Research', 1);
INSERT INTO DEPARTMENT VALUES(2, 'Accounting', 2);
INSERT INTO DEPARTMENT VALUES(3, 'Sports', 3);
INSERT INTO DEPARTMENT VALUES(4, 'Academics', 4);
INSERT INTO DEPARTMENT VALUES(5, 'Machine learning', 5);
INSERT INTO DEPARTMENT VALUES(6, 'Algorithms', 6);
INSERT INTO DEPARTMENT VALUES(7, 'Big Data', 7);
INSERT INTO DEPARTMENT VALUES(8, 'Databases', 8);

INSERT INTO JOB VALUES(1, 'CLERK');
INSERT INTO JOB VALUES(2, 'STAFF');
INSERT INTO JOB VALUES(3, 'ANALYST');
INSERT INTO JOB VALUES(4, 'SALESPERSON');
INSERT INTO JOB VALUES(5, 'MANAGER');
INSERT INTO JOB VALUES(6, 'PRESIDENT');
INSERT INTO JOB VALUES(7, 'CLERK');
INSERT INTO JOB VALUES(8, 'PRESIDENT');
INSERT INTO JOB VALUES(9, 'CLERK');
INSERT INTO JOB VALUES(10, 'STAFF');
INSERT INTO JOB VALUES(11, 'ANALYST');
INSERT INTO JOB VALUES(12, 'SALESPERSON');
INSERT INTO JOB VALUES(13, 'MANAGER');
INSERT INTO JOB VALUES(14, 'PRESIDENT');
INSERT INTO JOB VALUES(15, 'CLERK');
INSERT INTO JOB VALUES(16, 'PRESIDENT');

INSERT INTO EMPLOYEE VALUES(1, 'ln1', 'fn1', 'mn1', 1, NULL, '1985-04-25', 1000, 5, 1);
INSERT INTO EMPLOYEE VALUES(2, 'ln2', 'fn2', 'mn2', 2, NULL, '1985-04-25', 1000, 5, 2);
INSERT INTO EMPLOYEE VALUES(3, 'ln3', 'fn3', 'mn3', 3, NULL, '1985-04-25', 1000, 5, 3);
INSERT INTO EMPLOYEE VALUES(4, 'ln4', 'fn4', 'mn4', 4, NULL, '1985-04-25', 1000, 5, 4);
INSERT INTO EMPLOYEE VALUES(5, 'ln5', 'fn5', 'mn5', 5, NULL, '1985-04-25', 1000, 5, 5);
INSERT INTO EMPLOYEE VALUES(6, 'ln6', 'fn6', 'mn6', 6, NULL, '1985-04-25', 1000, 5, 6);
INSERT INTO EMPLOYEE VALUES(7, 'ln7', 'fn7', 'mn7', 7, NULL, '1985-04-25', 1000, 5, 7);
INSERT INTO EMPLOYEE VALUES(8, 'ln8', 'fn8', 'mn8', 8, NULL, '1985-04-25', 1000, 5, 8);
INSERT INTO EMPLOYEE VALUES(9, 'ln1', 'fn1', 'mn1', 1, NULL, '1985-04-25', 1000, 5, 1);
INSERT INTO EMPLOYEE VALUES(10, 'ln2', 'fn2', 'mn2', 2, NULL, '1989-04-25', 1000, 5, 2);
INSERT INTO EMPLOYEE VALUES(11, 'ln3', 'fn3', 'mn3', 3, NULL, '1989-04-25', 1000, 5, 3);
INSERT INTO EMPLOYEE VALUES(12, 'ln4', 'fn4', 'mn4', 4, NULL, '1995-04-25', 1000, 5, 4);
INSERT INTO EMPLOYEE VALUES(13, 'ln5', 'fn5', 'mn5', 5, NULL, '1985-01-13', 1000, 5, 5);
INSERT INTO EMPLOYEE VALUES(14, 'ln6', 'fn6', 'mn6', 6, NULL, '1985-04-25', 1000, 5, 6);
INSERT INTO EMPLOYEE VALUES(15, 'ln7', 'fn7', 'mn7', 7, NULL, '1985-04-15', 1000, 5, 7);
INSERT INTO EMPLOYEE VALUES(16, 'ln8', 'fn8', 'mn8', 8, NULL, '1985-04-15', 1000, 5, 8);
INSERT INTO EMPLOYEE VALUES(17, 'ln1', 'fn1', 'mn1', 1, NULL, '1985-04-15', 1000, 5, 1);
INSERT INTO EMPLOYEE VALUES(18, 'ln2', 'fn2', 'mn2', 2, NULL, '1985-07-15', 1000, 5, 2);
INSERT INTO EMPLOYEE VALUES(19, 'ln3', 'fn3', 'mn3', 3, NULL, '1985-07-25', 1000, 5, 3);
INSERT INTO EMPLOYEE VALUES(20, 'ln4', 'fn4', 'mn4', 4, NULL, '1985-08-25', 1000, 5, 4);
INSERT INTO EMPLOYEE VALUES(21, 'ln5', 'fn5', 'mn5', 5, NULL, '1985-09-25', 1000, 5, 5);
INSERT INTO EMPLOYEE VALUES(22, 'ln6', 'fn6', 'mn6', 6, NULL, '1985-09-25', 1000, 5, 6);
INSERT INTO EMPLOYEE VALUES(23, 'ln7', 'fn7', 'mn7', 7, NULL, '1985-06-25', 1000, 5, 7);
INSERT INTO EMPLOYEE VALUES(24, 'ln8', 'fn8', 'mn8', 8, NULL, '1985-09-25', 1000, 5, 8);
INSERT INTO EMPLOYEE VALUES(25, 'ln1', 'fn1', 'mn1', 1, NULL, '1985-03-25', 1000, 5, 1);
INSERT INTO EMPLOYEE VALUES(26, 'ln2', 'fn2', 'mn2', 2, NULL, '1985-05-25', 1000, 5, 2);
INSERT INTO EMPLOYEE VALUES(27, 'ln3', 'fn3', 'mn3', 3, NULL, '1985-04-25', 1000, 5, 3);
INSERT INTO EMPLOYEE VALUES(28, 'ln4', 'fn4', 'mn4', 4, NULL, '1985-04-25', 1000, 5, 4);
INSERT INTO EMPLOYEE VALUES(29, 'ln5', 'fn5', 'mn5', 5, NULL, '1985-04-25', 1000, 5, 5);
INSERT INTO EMPLOYEE VALUES(30, 'ln6', 'fn6', 'mn6', 6, NULL, '1985-04-25', 1000, 5, 6);
INSERT INTO EMPLOYEE VALUES(31, 'ln7', 'fn7', 'mn7', 7, NULL, '1985-04-25', 1000, 5, 7);
INSERT INTO EMPLOYEE VALUES(32, 'ln8', 'fn8', 'mn8', 8, NULL, '1985-04-25', 1000, 5, 8);

CREATE VIEW q1 AS
SELECT First_Name, Last_Name, Salary, Comm
FROM EMPLOYEE;

SELECT * FROM q1;


CREATE VIEW q2 AS
SELECT Salary, Last_Name
FROM EMPLOYEE;

SELECT * FROM q2;


CREATE VIEW q3 AS
SELECT *
FROM EMPLOYEE
WHERE Department_id = 20;

SELECT * FROM q3;

CREATE VIEW q4 AS
SELECT *
FROM EMPLOYEE
WHERE salary >= 3000 AND Salary <= 4500;

SELECT * FROM q4;

CREATE VIEW q5 AS
SELECT *
FROM EMPLOYEE
WHERE Department_id = 10 OR Department_id = 20;

SELECT * FROM q5;

CREATE VIEW q6 AS
SELECT *
FROM EMPLOYEE
WHERE First_Name like 'S%';

SELECT * FROM q6;

CREATE VIEW q7 AS
SELECT *
FROM EMPLOYEE
WHERE First_Name like 'S%' 
	AND LENGTH(CONCAT(First_Name, Middle_Name, Last_Name)) = 4;

SELECT * FROM q7;

CREATE VIEW q8 AS
SELECT *
FROM EMPLOYEE
ORDER BY Last_Name AND First_Name DESC;

SELECT * FROM q8;

CREATE VIEW q9 AS
SELECT MAX(salary), MIN(Salary), AVG(Salary)
FROM EMPLOYEE
GROUP BY Department_id;

SELECT * FROM q9;

CREATE VIEW q10 AS
SELECT MONTH(Hire_Date)  AS 'Month',
	YEAR(Hire_Date) AS 'Year', COUNT(*)
FROM EMPLOYEE
GROUP BY MONTH(Hire_Date) 
	AND YEAR(Hire_Date)
ORDER BY YEAR(Hire_Date) 
	AND MONTH(Hire_Date);

SELECT * FROM q10;

CREATE VIEW q11 AS
SELECT Department_id
FROM EMPLOYEE
GROUP BY Department_id
HAVING COUNT(*) >= 4;

SELECT * FROM q11;

CREATE VIEW q12 AS
SELECT COUNT(*) AS 'EMPLOYEES IN JAN' 
FROM EMPLOYEE
WHERE MONTH(Hire_Date) = 1;

SELECT * FROM q12;

CREATE VIEW q13 AS
SELECT Department_id
FROM EMPLOYEE
WHERE MONTH(Hire_Date) = 4
	AND YEAR(Hire_Date) = 1985 
GROUP BY Department_id
HAVING COUNT(*) >= 3;

SELECT * FROM q13;

CREATE VIEW q14 AS
SELECT J1.Function
FROM EMPLOYEE AS E1
JOIN EMPLOYEE AS E2 ON E1.Job_Id = E2.Job_Id
JOIN JOB AS J1 ON J1.Job_Id = E1.Job_Id
JOIN JOB AS J2 ON J2.Job_Id = E2.Job_Id
JOIN DEPARTMENT AS D1 ON D1.Department_id = E1.Department_id
JOIN DEPARTMENT AS D2 ON D2.Department_id = E2.Department_id
WHERE D1.Name = 'Research' AND D2.Name = 'Accounting' AND J1.Function = J2.Function;

SELECT * FROM q14;