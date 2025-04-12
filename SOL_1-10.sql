
SELECT * FROM Worker;

-- Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.
USE ORG;
SELECT FIRST_NAME AS WORKER_NAME
FROM Worker;


-- Q-2. Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.
USE ORG;
SELECT UPPER(FIRST_NAME) AS WORKER_NAME
FROM Worker;


-- Q-3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
USE ORG;
SELECT distinct(DEPARTMENT) FROM Worker;


-- Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
USE ORG;
SELECT SUBSTRING(FIRST_NAME,1,3) FROM Worker;


-- Q-5. Write an SQL query to find the position of the alphabet (‘b’) in the first name column ‘Amitabh’ from Worker table.
USE ORG;
SELECT 
	FIRST_NAME,INSTR(FIRST_NAME,"B") 
FROM 
	Worker
WHERE 
	FIRST_NAME = "Amitabh";
    

-- Q-6. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
SELECT 
	RTRIM(FIRST_NAME)
FROM 
	Worker;
    
    
-- Q-7. Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.
SELECT 
	LTRIM(DEPARTMENT)
FROM 
	Worker;
    
    
-- Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
SELECT 
	DISTINCT (DEPARTMENT),LENGTH(DEPARTMENT)
FROM 
	Worker;
    
    
-- Q-9. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.
SELECT 
	FIRST_NAME,
	REPLACE(FIRST_NAME,"a","A")
FROM 
	Worker;
    
    
-- Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME.
-- A space char should separate them.
SELECT 
	FIRST_NAME,
    LAST_NAME,
	CONCAT(FIRST_NAME," ",LAST_NAME) AS COMPLETE_NAME
FROM 
	Worker;
    
