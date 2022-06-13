
-------------------------------------------------------------------------------

CREATE OR REPLACE PACKAGE Supervisor AS

  --Define new Type
  TYPE SSNarray IS TABLE OF employee.ssn%TYPE
  INDEX BY SIMPLE_INTEGER;

  --Define variables using the new Type
  DeleteList   SSNarray;
  EmptyArray   SSNarray;
  DeleteIndex  SIMPLE_INTEGER DEFAULT 0;

  --Define public procedure
  PROCEDURE ReplaceSupervisor;

END Supervisor;
/

-------------------------------------------------------------------------------

CREATE OR REPLACE PACKAGE BODY Supervisor AS

  --Define procedure to handle the supervisor replacement
  PROCEDURE ReplaceSupervisor IS
  BEGIN
  
    --Perform loop using the DeleteList object defined in the
    --package specification
    FOR i IN supervisor.DeleteList.FIRST .. supervisor.DeleteList.LAST LOOP
    
      --Update the employee table
      UPDATE employee
      SET superssn = (SELECT DISTINCT ssn
                      FROM employee
                      WHERE superssn IS NULL)
      WHERE superssn = supervisor.DeleteList (i);
      
    END LOOP;
    
  END ReplaceSupervisor;

END Supervisor;
