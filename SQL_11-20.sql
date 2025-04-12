SELECT * FROM Worker;
-- Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
USE ORG;
SELECT * FROM Worker
ORDER BY FIRST_NAME ASC;


-- Q-12. Write an SQL query to print all Worker details from the Worker table order by 
-- FIRST_NAME Ascending and DEPARTMENT Descending.
USE ORG;
SELECT * FROM Worker
ORDER BY DEPARTMENT DESC, FIRST_NAME ASC;
-- Sorts the results first by FIRST_NAME in ascending order (A to Z).
-- If two workers have the same FIRST_NAME, it then sorts them by DEPARTMENT in descending order (Z to A).


-- Q-13. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.
USE ORG;
SELECT * FROM Worker
WHERE FIRST_NAME IN ("Vipul", "Satish");


-- Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.
USE ORG;
SELECT * FROM Worker
WHERE FIRST_NAME NOT IN ('Vipul', 'Satish');

-- Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin*”.
USE ORG;
SELECT * FROM Worker
WHERE DEPARTMENT = 'ADMIN';
-- select * from worker where department LIKE 'Admin%';


-- Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
USE ORG;
SELECT * FROM Worker
WHERE FIRST_NAME LIKE '%A%';

-- Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
USE ORG;
SELECT * FROM Worker
WHERE FIRST_NAME LIKE '%A';


-- Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
USE ORG;
SELECT * FROM Worker
WHERE FIRST_NAME LIKE '_____H';


-- Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
USE ORG;
SELECT * FROM Worker
WHERE SALARY  BETWEEN 100000 AND 500000;


-- Q-20. Write an SQL query to print details of the Workers who have joined in Feb’2014.
USE ORG;
SELECT * FROM Worker
WHERE YEAR(JOINING_DATE) = 2014 AND MONTH(JOINING_DATE) = 02;