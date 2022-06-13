/*
Drop any previously existing tables of the same name and recreate the tables.
*/

DROP TABLE department CASCADE CONSTRAINTS;
DROP TABLE employee CASCADE CONSTRAINTS;
DROP TABLE dependent CASCADE CONSTRAINTS;
DROP TABLE dept_locations CASCADE CONSTRAINTS;
DROP TABLE project CASCADE CONSTRAINTS;
DROP TABLE works_on CASCADE CONSTRAINTS;
PURGE RECYCLEBIN;
