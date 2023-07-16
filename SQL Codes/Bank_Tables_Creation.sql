USE bank_schema;

CREATE TABLE Banks (
  IFSC VARCHAR(11) NOT NULL,
  bank_name VARCHAR(100) NOT NULL PRIMARY KEY,
  email VARCHAR(255) NOT NULL UNIQUE,
  main_address VARCHAR(255) NOT NULL,
  contact_no VARCHAR(11) NOT NULL UNIQUE
);

CREATE TABLE Branches (
  IFSC VARCHAR(11) NOT NULL ,
  bank_name VARCHAR(100) NOT NULL,
  branchID INT PRIMARY KEY,
  branch_name VARCHAR(100) NOT NULL,
  address VARCHAR(255) NOT NULL,
  contact_no VARCHAR(11) NOT NULL UNIQUE,
  FOREIGN KEY (bank_name) REFERENCES Banks(bank_name)
);

CREATE TABLE Employees (
  employeeID INT PRIMARY KEY,
  branchID INT,
  employee_name VARCHAR(100) NOT NULL,
  designation VARCHAR(100) NOT NULL,
  contact_no VARCHAR(11) NOT NULL UNIQUE,
  email VARCHAR(255) NOT NULL UNIQUE,
  FOREIGN KEY (branchID) REFERENCES Branches(branchID)
);

CREATE TABLE Customers (
  customerID INT PRIMARY KEY,
  branchID INT,
  customer_name VARCHAR(100) NOT NULL,
  dob DATE NOT NULL,
  address VARCHAR(255) NOT NULL,
  contact_no VARCHAR(11) NOT NULL UNIQUE,
  email VARCHAR(255) NOT NULL UNIQUE,
  FOREIGN KEY (branchID) REFERENCES Branches(branchID)
);

CREATE TABLE Accounts (
  customerID INT,
  branchID INT,
  account_number VARCHAR(20) NOT NULL PRIMARY KEY,
  account_type VARCHAR(50) NOT NULL,
  account_status BOOL,
  balance DECIMAL(10, 2) NOT NULL,
  FOREIGN KEY (customerID) REFERENCES Customers(customerID),
  FOREIGN KEY (branchID) REFERENCES Branches(branchID)
);

CREATE TABLE Transactions (
  transactionID VARCHAR(20) PRIMARY KEY NOT NULL,
  account_number VARCHAR(20) NOT NULL,
  transaction_type VARCHAR(50) NOT NULL,
  transaction_amount DECIMAL(10, 2) NOT NULL,
  transaction_date DATETIME NOT NULL,
  FOREIGN KEY (account_number) REFERENCES Accounts(account_number)
);

CREATE TABLE Loans (
  loanID INT PRIMARY KEY,
  account_number VARCHAR(20) NOT NULL,
  customerID INT,
  loan_type VARCHAR(50) NOT NULL,
  loan_amount DECIMAL(10, 2) NOT NULL,
  interest_rate DECIMAL(5, 2) NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  FOREIGN KEY (account_number) REFERENCES Accounts(account_number),
  FOREIGN KEY (customerID) REFERENCES Customers(customerID)
);

CREATE TABLE Loan_Payments (
  paymentID INT PRIMARY KEY,
  loanID INT,
  customerID INT,
  amount DECIMAL(10, 2) NOT NULL,
  payment_date DATETIME NOT NULL,
  FOREIGN KEY (loanID) REFERENCES Loans(loanID),
  FOREIGN KEY (customerID) REFERENCES Customers(customerID)
);

CREATE TABLE Bank_Cards (
  account_number VARCHAR(20) NOT NULL,
  card_number VARCHAR(16) NOT NULL PRIMARY KEY,
  card_type VARCHAR(50) NOT NULL,
  expiry_date DATE NOT NULL,
  cvv VARCHAR(10) NOT NULL,
  FOREIGN KEY (account_number) REFERENCES Accounts(account_number)
);

CREATE TABLE BANK_ATMs (
  atmID INT PRIMARY KEY,
  branchID INT,
  bank_name VARCHAR(100) NOT NULL,
  location VARCHAR(255) NOT NULL,
  FOREIGN KEY (branchID) REFERENCES Branches(branchID)
);

