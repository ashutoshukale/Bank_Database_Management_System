USE bank_schema;

-- Query 1 : Select all Employees whose Designation is Manager or Cashier :

SELECT *
FROM Employees
WHERE designation IN ('Manager', 'Cashier');