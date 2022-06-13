
/*
Drop any previously existing tables of the same name and recreate the tables.
*/

DROP TABLE customers CASCADE CONSTRAINTS;
DROP TABLE sales CASCADE CONSTRAINTS;
DROP TABLE products CASCADE CONSTRAINTS;
DROP TABLE teams CASCADE CONSTRAINTS;
DROP TABLE members CASCADE CONSTRAINTS;

PURGE RECYCLEBIN;
