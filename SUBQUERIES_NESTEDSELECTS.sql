CREATE TABLE EMPLOYEES (
                            EMP_ID CHAR(9) NOT NULL, 
                            F_NAME VARCHAR(15) NOT NULL,
                            L_NAME VARCHAR(15) NOT NULL,
                            SSN CHAR(9),
                            B_DATE DATE,
                            SEX CHAR,
                            ADDRESS VARCHAR(30),
                            JOB_ID CHAR(9),
                            SALARY DECIMAL(10,2),
                            MANAGER_ID CHAR(9),
                            DEP_ID CHAR(9) NOT NULL,
                            PRIMARY KEY (EMP_ID));
CREATE TABLE DEPARTMENTS (
                            DEPT_ID_DEP CHAR(9) NOT NULL, 
                            DEP_NAME VARCHAR(15) ,
                            MANAGER_ID CHAR(9),
                            LOC_ID CHAR(9),
                            PRIMARY KEY (DEPT_ID_DEP));
                            
SELECT EMP_ID,F_NAME,L_NAME,SALARY FROM EMPLOYEES 
WHERE SALARY < (SELECT AVG(SALARY) FROM EMPLOYEES);

SELECT F_NAME,L_NAME,EMP_ID,SALARY FROM EMPLOYEES 
WHERE SALARY = (SELECT MAX(SALARY) FROM EMPLOYEES);

SELECT F_NAME,L_NAME,SALARY,EMP_ID FROM EMPLOYEES 
WHERE SALARY = (SELECT MIN(SALARY) FROM EMPLOYEES);

SELECT EMP_ID,F_NAME,L_NAME,B_DATE FROM EMPLOYEES 
WHERE B_DATE LIKE '197%';

SELECT * FROM EMPLOYEES WHERE DEP_ID IN
(SELECT DEPT_ID_DEP FROM DEPARTMENTS);

SELECT DEP_NAME FROM DEPARTMENTS;

SELECT * FROM EMPLOYEES WHERE DEP_ID IN 
(SELECT DEPT_ID_DEP FROM DEPARTMENTS WHERE DEP_NAME = 'Design Team');

SELECT DEPT_ID_DEP,DEP_NAME FROM DEPARTMENTS WHERE DEPT_ID_DEP IN 
(SELECT DEP_ID FROM EMPLOYEES WHERE SALARY >70000);
