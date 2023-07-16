USE bank_schema;

-- Query 4 : Retrieve the branch name and the total number of customers in each branch:

 SELECT b.branch_name, COUNT(*) AS total_customers
 FROM Branches b
 JOIN Customers c ON b.branchID = c.branchID
 GROUP BY b.branch_name;