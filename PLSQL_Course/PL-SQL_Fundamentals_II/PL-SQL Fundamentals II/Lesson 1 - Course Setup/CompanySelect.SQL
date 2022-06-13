/*
Optional formatting commands to assist output readability, 
especially of the EMPLOYEE table data
*/
COLUMN minit FORMAT A5;
COLUMN salary FORMAT $99,999;
COLUMN address FORMAT A19 word_wrap;
COLUMN sex FORMAT A6;
COLUMN dno FORMAT b99;
COLUMN relationship FORMAT A12;

/*
Additional formatting if you have chosen to include these columns.
*/

COLUMN bonus FORMAT $9,999
COLUMN officephone FORMAT a11;

/*
Fetch all the sample data.
*/

SET ECHO ON;

SELECT * FROM department ORDER BY dnumber;
SELECT * FROM dept_locations ORDER BY dnumber;
SELECT * FROM employee ORDER BY ssn;
SELECT * FROM dependent ORDER BY essn;
SELECT * FROM project ORDER BY pnumber;
SELECT * FROM works_on ORDER BY essn;

CLEAR COLUMNS;
SET ECHO OFF;