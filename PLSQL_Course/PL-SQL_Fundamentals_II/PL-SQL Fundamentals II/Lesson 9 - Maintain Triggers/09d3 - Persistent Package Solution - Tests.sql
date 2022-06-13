

-------------------------------------------------------------------------------

SELECT supervisor.LName AS SuperLName, supervisor.ssn AS SuperSSN,
       subordinate.LName AS SubLName, subordinate.ssn AS SubSSN
FROM employee supervisor
INNER JOIN employee subordinate ON subordinate.superssn = supervisor.ssn
ORDER BY supervisor.LName, subordinate.LName;

-------------------------------------------------------------------------------

DELETE FROM employee
WHERE LName = 'Wong';

-------------------------------------------------------------------------------

ROLLBACK;

-------------------------------------------------------------------------------

DELETE FROM employee
WHERE LName IN ('Wallace', 'Wong');

-------------------------------------------------------------------------------

SELECT supervisor.LName AS SuperLName, supervisor.ssn AS SuperSSN,
       subordinate.LName AS SubLName, subordinate.ssn AS SubSSN
FROM employee supervisor
INNER JOIN employee subordinate ON subordinate.superssn = supervisor.ssn
ORDER BY supervisor.LName, subordinate.LName;

-------------------------------------------------------------------------------

ROLLBACK;

-------------------------------------------------------------------------------

ALTER TRIGGER EmployeeIntegrityRow DISABLE;
ALTER TRIGGER EmployeeIntegrityStatement DISABLE;