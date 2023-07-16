USE bank_schema;

-- Query 3 : Select the names and contact_no of all employees in a specific branch(e.g IFSC=MAHB0000043):

SELECT employee_name, contact_no
FROM Employees
WHERE branchID IN (
  SELECT branchID
  FROM Branches
  WHERE IFSC = 'MAHB0000043'
);