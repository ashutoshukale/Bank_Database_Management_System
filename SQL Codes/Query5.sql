USE bank_schema;

-- Query 5 : Select Top 5 highest account balances of Customers across all branches:

SELECT c.customer_name, SUM(a.balance) AS total_balance
FROM Customers c
JOIN Accounts a ON c.customerID = a.customerID
GROUP BY c.customer_name
ORDER BY total_balance DESC
LIMIT 5;
