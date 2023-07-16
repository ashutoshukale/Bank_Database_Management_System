USE bank_schema;

-- Query 2 : Retrieve the account numbers and current balances of all active accounts in a specific branch (e.g IFSC=SBIN0003971) :
 
SELECT a.account_number, a.balance
FROM Accounts a
JOIN Branches b ON a.branchID = b.branchID
WHERE b.IFSC = 'SBIN0003971' AND a.account_status = 1;