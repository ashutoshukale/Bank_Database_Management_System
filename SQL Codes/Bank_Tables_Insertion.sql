USE bank_schema;

INSERT INTO Banks(IFSC, bank_name, email, main_address, contact_no)
VALUES 
  ('MAHB0000043', 'Bank of Maharashtra', 'bomneft@mahabank.co.in', 'ShivajiNagar, Pune', '02025533462'),
  ('SBIN0003971', 'State Bank of India', 'sbi.03971@sbi.co.in', 'Bandra, Mumbai', '22026445211'),
  ('HDFC0000501', 'HDFC', 'support@hdfcbank.com', 'Lower Parel, Mumbai', '2266316000'),
  ('BKID0000122', 'Bank of India', 'BKC.MumbaiNorth@bankofindia.co.in', 'Bandra-Kurla, Mumbai', '02266684418'),
  ('ICIC0000005', 'ICICI', 'customer.care@icicibank.com', 'Bund Garden, Pune', '18601207777');

INSERT INTO Branches (IFSC, bank_name, branchID, branch_name, address, contact_no)
VALUES
  ('MAHB0000032', 'Bank of Maharashtra', 000032, 'Bank of Maharashtra Aurangabad', 'Suresh Bhavan, Chauraha Road, Aurangabad', '2402334067'),
  ('SBIN0000454', 'State Bank of India', 000454, 'SBI Pune Main', 'Collector Office, Ambedkar Road, Pune', '2026113182'),
  ('MAHB0000043', 'Bank of Maharashtra', 000043,'Bank of Maharashtra Shivajinagar', 'ShivajiNagar, Pune', '02025533462'),
  ('SBIN0003971', 'State Bank of India', 003971, 'SBI Bandra', 'Bandra, Mumbai', '22026445211'), 
  ('BKID0000122', 'Bank of India', 000122, 'Bank of India Bandra-Kurla', 'Bandra-Kurla, Mumbai', '02266684418'),
  ('HDFC0004122', 'HDFC', 004122, 'HDFC Bank Deola', 'Deola, Nashik', '7573919585'),
  ('ICIC0000428', 'ICICI', 000428, 'ICICI Amravati', 'Vimaco Towers, Amravati', '18601207777'),
  ('ICIC0000005', 'ICICI', 000005, 'ICICI Bund Garden','Bund Garden, Pune', '18601206699'),
  ('BKID0000650', 'Bank of India', 000650, 'Bank of India Nanded', 'Vazirabad, Nanded', '02462235470'),
  ('HDFC0000501', 'HDFC', 000501, 'HDFC', 'Lower Parel, Mumbai', '2266316000'); 

INSERT INTO Employees (employeeID, branchID, employee_name, designation, contact_no, email)
VALUES
  (2101, 000043, 'Aarav Patel', 'Manager', '09874153268', 'aarav.2101@gmail.com'),
  (2102, 000043, 'Kavya Sharma', 'Cashier', '09874153270', 'kavya.2102@gmail.com'),
  (2103, 000043, 'Siddharth Singh', 'Teller', '09874153269', 'siddharth.2103@gmail.com'),
  (2104, 000043, 'Aanya Gupta', 'Loan Officer', '09874153271', 'aanya.2104@gmail.com'),
  (5913, 003971, 'Alisha Mehta', 'Teller', '09547821435', 'alisha.5913@gmail.com'),
  (5912, 003971, 'Arjun Verma', 'Cashier', '09547821434', 'arjun.5912@gmail.com'),
  (5914, 003971, 'Jatin Malhotra', 'Loan Officer', '09547821433', 'jatin.5914@gmail.com'),
  (5911, 003971, 'Divya Reddy', 'Manager', '09547821432', 'divya.5911@gmail.com'),
  (1422, 000501, 'Advait Joshi', 'Cashier', '08745623850', 'advait.1422@gmail.com'),
  (1424, 000501, 'Virat Shah', 'Loan Officer', '08745623849', 'virat.1424@egmail.com'),
  (1423, 000501, 'Arnav Khanna', 'Teller', '08745623848', 'arnav.1423@gmail.com'),
  (1421, 000501, 'Rohan Malhotra', 'Manager', '08745623847', 'rohan.1421@gmail.com'),
  (1923, 000122, 'Kishan Khanna', 'Manager', '08745647827', 'kishan.1923@gmail.com');

 INSERT INTO Customers (customerID, branchID, customer_name, dob, address, contact_no, email)
 VALUES
  (943215, 003971, 'Ravi Sharma', '1998-07-12', 'Bandra East, Mumbai', '8745369012', 'ravi123@gmail.com'),
  (578964, 000501, 'Pooja Desai', '2005-03-28', 'Goregaon West, Mumbai', '3258916074', 'pooja235@gmail.com'),
  (726810, 000501, 'Aishwarya Reddy', '2002-11-05', 'Vile Parle South, Mumbai', '7810642953', 'reddy124@gmail.com'),
  (135790, 000122, 'Neha Kumar', '1999-04-23', 'Vasai, Mumbai', '9265738104', 'nehak782@gmail.com'),
  (482609, 003971, 'Rohit Chatterjee', '2007-09-14', 'Thane, Mumbai', '9478289404', 'rohit3452@gmail.com'),
  (639418, 000043, 'Vikram Singh', '2004-10-30', 'Aundh, Pune', '4021687539', 'virams9872@gmail.com'),
  (207536, 000122, 'Rajiv Khanna', '2003-12-09', 'Dadar, Mumbai', '6092578439', 'khannar0972@gmail.com'),
  (865743, 003971, 'Arjun Das', '2008-02-02', 'Kurla, Mumbai', '6483029157', 'dasarjun782@gmail.com'),
  (314672, 003971, 'Deepika Kapoor', '2001-06-17', 'Parel,Mumbai', '1534972860', 'kapoordeep2124@gmail.com'),
  (597123, 000043, 'Priya Patel', '2006-08-19', 'Chinchwad, Pune', '7394251806', 'patelp2145@gmail.com');


INSERT INTO Accounts (customerID, branchID, account_number, account_type, account_status, balance)
VALUES
  (865743, 003971, '23717489632', 'Savings', 1, 15487.00),
  (726810, 000501, '50314712486', 'Current', 1, 205000.00),
  (578964, 000501, '50316784592', 'Savings', 1, 18974.00),
  (943215, 003971, '23719784634', 'Savings', 1, 74582.00),
  (207536, 000122, '31527984650', 'Current', 1, 41578.00),
  (135790, 000122, '31524712893', 'Savings', 1, 48971.00),
  (482609, 003971, '23741728649', 'Savings', 1, 25684.00),
  (314672, 003971, '23785691234', 'Current', 1, 145000.00),
  (639418, 000043, '67148796321', 'Savings', 1, 36487.00),
  (597123, 000043, '67129438502', 'Savings', 1, 47182.00);

INSERT INTO Transactions (transactionID, account_number, transaction_type, transaction_amount, transaction_date)
VALUES
  ('98325647', '67129438502', 'Deposit', 5100.00, '2023-01-01 10:00:00'),
  ('71046923', '31524712893', 'Withdrawal', 10000.00, '2023-04-02 18:30:00'),
  ('14983652', '23785691234', 'Withdrawal', 2000.00, '2023-02-02 21:45:05'),
  ('62501489', '50314712486', 'Withdrawal', 15200.00, '2022-12-18 17:30:25'),
  ('82615473', '50314712486', 'Deposit', 1475.00, '2022-12-10 08:30:00'),
  ('54283719', '23719784634', 'Withdrawal', 10050.00, '2023-01-16 10:30:14'),
  ('39751862', '23741728649', 'Deposit', 21000.00, '2023-05-06 06:35:00'),
  ('47392815', '31527984650', 'Withdrawal', 14952.00, '2023-04-28 12:30:00'),
  ('59628347', '50314712486', 'Withdrawal', 5687.00, '2023-03-15 09:45:15'),
  ('31864752', '67148796321', 'Deposit', 25000.00, '2023-01-10 15:55:40');

INSERT INTO Loans (loanID, account_number, customerID, loan_type, loan_amount, interest_rate, start_date, end_date)
VALUES
  (1974, '50314712486', 726810, 'Home Loan', 1000000.00, 9.5, '2022-01-01', '2030-12-01'),
  (2214, '23785691234', 314672, 'Car Loan', 500000.00, 7.1, '2021-03-15', '2027-09-27'),
  (2987, '31524712893', 135790, 'Education Loan', 350000.00, 5.5, '2021-08-03', '2028-05-14'),
  (4517, '31527984650', 207536, 'Gold Loan', 195000.00, 8.23, '2020-05-21', '2027-09-24');

INSERT INTO Loan_Payments (paymentID, loanID, customerID, amount, payment_date)
VALUES
  (15478, 4517, 207536, 15000.00, '2023-04-25 09:15:00'),
  (24712, 2987, 135790, 6534.00, '2023-01-30 15:45:00'),
  (96471, 2214, 314672, 31500.00, '2023-05-16 12:35:10'),
  (45621, 1974, 726810, 21154.00, '2023-02-09 10:25:30');
  
INSERT INTO Bank_Cards (account_number, card_number, card_type, expiry_date, cvv)
VALUES
  ('50314712486', '8923654012875632', 'VISA Debit', '2028-12-15', '168'),
  ('31524712893', '3251904738652914', 'RuPay', '2026-12-11', '447'),
  ('67148796321', '4369027158934721', 'VISA Credit', '2027-06-01', '789'),
  ('23717489632', '9265481037256341', 'MasterCard', '2025-09-18', '012'),
  ('67129438502', '3095874610329567', 'American Express', '2026-10-21', '375');
  
  
INSERT INTO BANK_ATMs (atmID, branchID, bank_name, location)
VALUES
  (1123, 000043, 'Bank of Maharashtra', 'ShivajiNagar, Pune'),
  (1233, 003971, 'State Bank of India', 'Bandra, Mumbai'),
  (2122, 000501, 'HDFC', 'Lower Parel, Mumbai'),
  (1471, 000122, 'Bank of India', 'Bandra-Kurla, Mumbai'),
  (3214, 000005, 'ICICI', 'Bund Garden, Pune');


  

  