
--Create the Directory reference 
CREATE OR REPLACE DIRECTORY TextDirectory AS 'C:\Test';

--Query the Data Dictionary
SELECT * FROM DBA_DIRECTORIES;

