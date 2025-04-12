SELECT * FROM Worker;
-- Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’.
USE ORG; 
SELECT COUNT(WORKER_ID) FROM worker
WHERE DEPARTMENT = 'ADMIN';
-- select department, count(*) from worker where department = 'Admin';


-- Q-22. Write an SQL query to fetch worker full names with salaries >= 50000 and <= 100000.
USE ORG; 
SELECT concat(first_name,' ',last_name) FROM Worker
WHERE SALARY BETWEEN 50000 AND 100000;


-- Q-23. Write an SQL query to fetch the no. of workers for each department in the descending order.
SELECT DEPARTMENT, COUNT(WORKER_ID) AS ID FROM Worker
GROUP BY DEPARTMENT
ORDER BY ID ;


-- JOINS
-- Q-24. Write an SQL query to print details of the Workers who are also Managers.
SELECT W.* FROM Worker AS W
INNER JOIN
	title AS T
ON 
	W.WORKER_ID = T.WORKER_REF_ID
WHERE T.WORKER_TITLE = 'MANAGER';


-- Q-25. Write an SQL query to fetch number (more than 1) of same titles in the ORG of different types.
