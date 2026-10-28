create database banksystem_db;

use banksystem_db;


create table Customers( 
	customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    address VARCHAR(255),
    phone VARCHAR(15),
    email VARCHAR(100),
    dob DATE
);

DESC Customers;

create table Branches(
	branch_id INT PRIMARY KEY,
    branch_name VARCHAR(100),
    location VARCHAR(255)
);

DESC Branches;

create table Accounts( 
	account_id INT PRIMARY KEY,
    customer_id INT,
    branch_id INT,
    account_type VARCHAR(20),
    balance DECIMAL(12,2),
    created_at DATETIME,
    FOREIGN KEY (customer_id) references Customers (customer_id),
	FOREIGN KEY (branch_id) references Branches (branch_id) 
);

DESC Accounts;


create table Employees( 
	employee_id INT PRIMARY KEY,
    branch_id INT,
    name VARCHAR(100),
    designation VARCHAR(50),
    salary DECIMAL(10,2),
	FOREIGN KEY (branch_id) references Branches (branch_id)
);

DESC Employees;

create table Transactions(
	transaction_id INT PRIMARY KEY,
    account_id INT,
    amount DECIMAL(12,2),
    type ENUM('credit','debit'),
    date DATETIME,
	FOREIGN KEY (account_id) references Accounts (account_id)
);

DESC Transactions;


create table Loans(
	loan_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(12,2),
    loan_type VARCHAR(50),
    interest_rate DECIMAL(5,2),
    start_date DATE,
    end_date DATE,
	FOREIGN KEY (customer_id) references Customers (customer_id)
);

DESC Loans;

INSERT INTO Customers
(customer_id, name, address, phone, email, dob)
VALUES
(1, 'Ravi Kumar', 'Hyderabad', '9876543210', 'ravi@gmail.com', '2000-05-15'),
(2, 'Priya Sharma', 'Vijayawada', '9876543211', 'priya@gmail.com', '1997-08-20'),
(3, 'Arjun Reddy', 'Hyderabad', '9876543212', 'arjun@gmail.com', '2001-03-10'),
(4, 'Sneha Rao', 'Guntur', '9876543213', 'sneha@gmail.com', '1999-11-25'),
(5, 'Kiran Kumar', 'Chennai', '9876543214', 'kiran@gmail.com', '1996-02-12'),
(6, 'Ananya Das', 'Hyderabad', '9876543215', 'ananya@gmail.com', '2002-07-18'),
(7, 'Vikram Singh', 'Bengaluru', '9876543216', 'vikram@gmail.com', '1998-12-05'),
(8, 'Meera Patel', 'Mumbai', '9876543217', 'meera@gmail.com', '2000-09-30'),
(9, 'Rahul Verma', 'Vijayawada', '9876543218', 'rahul@gmail.com', '1995-04-22'),
(10, 'Divya Reddy', 'Hyderabad', '9876543219', 'divya@gmail.com', '2003-01-14');

SELECT * FROM Customers;

INSERT INTO Branches
(branch_id, branch_name, location)
VALUES
(101, 'Hyderabad Main Branch', 'Hyderabad'),
(102, 'Vijayawada Branch', 'Vijayawada'),
(103, 'Guntur Branch', 'Guntur'),
(104, 'Chennai Branch', 'Chennai'),
(105, 'Mumbai Branch', 'Mumbai');

SELECT * FROM Branches;


INSERT INTO Accounts
(account_id, customer_id, branch_id, account_type, balance, created_at)
VALUES
(1001, 1, 101, 'Savings', 75000.00, '2024-01-10 10:00:00'),
(1002, 2, 102, 'Current', 45000.00, '2024-02-15 11:30:00'),
(1003, 3, 101, 'Savings', 95000.00, '2024-03-20 09:15:00'),
(1004, 4, 103, 'Savings', 30000.00, '2024-04-05 12:00:00'),
(1005, 5, 104, 'Current', 120000.00, '2024-05-12 14:20:00'),
(1006, 6, 101, 'Savings', 65000.00, '2024-06-18 10:45:00'),
(1007, 7, 105, 'Current', 25000.00, '2024-07-22 15:00:00'),
(1008, 8, 105, 'Savings', 85000.00, '2024-08-09 09:30:00'),
(1009, 9, 102, 'Savings', 40000.00, '2024-09-14 13:10:00'),
(1010, 10, 101, 'Current', 150000.00, '2024-10-25 16:00:00'),
(1011, 1, 101, 'Current', 55000.00, '2025-01-05 10:30:00'),
(1012, 3, 103, 'Savings', 20000.00, '2025-02-11 11:00:00');

SELECT * FROM Accounts;


INSERT INTO Employees
(employee_id, branch_id, name, designation, salary)
VALUES
(201, 101, 'Suresh Rao', 'Branch Manager', 75000.00),
(202, 101, 'Kavya Reddy', 'Cashier', 32000.00),
(203, 102, 'Manoj Kumar', 'Loan Officer', 48000.00),
(204, 102, 'Pooja Sharma', 'Accountant', 42000.00),
(205, 103, 'Ramesh Babu', 'Branch Manager', 68000.00),
(206, 104, 'Neha Singh', 'Cashier', 35000.00),
(207, 105, 'Amit Verma', 'Loan Officer', 45000.00),
(208, 103, 'Swathi Das', 'Accountant', 38000.00);

SELECT * FROM Employees;


INSERT INTO Transactions
(transaction_id, account_id, amount, type, date)
VALUES
(3001, 1001, 10000.00, 'credit', '2025-01-05 09:00:00'),
(3002, 1001, 2500.00, 'debit', '2025-01-06 10:30:00'),
(3003, 1002, 15000.00, 'credit', '2025-01-07 11:00:00'),
(3004, 1003, 5000.00, 'debit', '2025-01-08 12:15:00'),
(3005, 1004, 8000.00, 'credit', '2025-01-09 14:00:00'),
(3006, 1005, 20000.00, 'credit', '2025-01-10 15:30:00'),
(3007, 1006, 3500.00, 'debit', '2025-01-11 09:45:00'),
(3008, 1007, 12000.00, 'credit', '2025-01-12 10:00:00'),
(3009, 1008, 4500.00, 'debit', '2025-01-13 13:30:00'),
(3010, 1009, 7000.00, 'credit', '2025-01-14 16:00:00'),
(3011, 1010, 25000.00, 'credit', '2025-01-15 11:30:00'),
(3012, 1011, 6000.00, 'debit', '2025-01-16 12:00:00'),
(3013, 1012, 9000.00, 'credit', '2025-01-17 14:45:00');

SELECT * FROM Transactions;


INSERT INTO Loans
(loan_id, customer_id, amount, loan_type, interest_rate, start_date, end_date)
VALUES
(4001, 1, 500000.00, 'Home Loan', 8.50, '2024-01-01', '2044-01-01'),
(4002, 2, 200000.00, 'Personal Loan', 12.00, '2024-03-15', '2029-03-15'),
(4003, 3, 750000.00, 'Home Loan', 8.25, '2024-05-10', '2044-05-10'),
(4004, 4, 150000.00, 'Vehicle Loan', 9.50, '2024-07-01', '2029-07-01'),
(4005, 5, 300000.00, 'Business Loan', 11.00, '2024-09-20', '2031-09-20'),
(4006, 6, 100000.00, 'Personal Loan', 12.50, '2025-01-10', '2030-01-10'),
(4007, 8, 400000.00, 'Vehicle Loan', 9.00, '2025-02-01', '2030-02-01'),
(4008, 10, 900000.00, 'Home Loan', 8.00, '2025-03-15', '2045-03-15');


SELECT * FROM Loans;


--  1.Display all records from the Customers table. 

select * from Customers;

--  2.Display the name, phone number, and email of all customers.

select name,phone,email
from Customers;

--  3.Display all customers who are from Hyderabad.  

select name 
from Customers
where address='Hyderabad';

-- 4.Display all accounts whose account_type is Savings. 

select * from Accounts
where account_type='Savings';

-- 5.Display all accounts having a balance greater than ₹50,000. 

select * from Accounts
where balance>50000;

-- 6.Display all transactions where the transaction type is credit. 

select * from Transactions
where type='credit';

-- 7.Display all employees whose salary is greater than ₹40,000. 
select * from Employees 
where salary>40000;

-- 8.Display all customers born after 1998-01-01. 

select * from Customers
where dob>'1998-01-01';

-- 9.Display all accounts in descending order of their balance. 

select * from Accounts
order by balance desc;

--  10.Find the total number of customers in the bank. 

select COUNT(*) As total_customers
FROM Customers;

-- 11.Find the total balance of all accounts. 

select sum(balance) AS total_balance
from Accounts; 

-- 12.Find the average account balance. 

select avg(balance) AS Avg_balance
from Accounts;

-- 13.Find the highest and lowest account balance. 

select max(balance) as Highest_balance,min(balance) as Lowest_balance
from Accounts;

-- 14.Display the number of accounts for each account_type. 

select account_type,count(*) as No_of_accounts
from Accounts
group by account_type; 
 
 
-- 15.Display each account type and its total balance, but show only account types whose total balance is greater than ₹80,000. 
 
 
select account_type,sum(balance) as total_balance
from Accounts
group by account_type
having total_balance>80000; 


-- 16.Display the customer name, account ID, account type, and balance using Customers and Accounts.

select c.name,a.account_id,a.account_type,balance
from Customers c
JOIN Accounts a
ON c.customer_id=a.customer_id;
 
-- 17.Display the customer name, transaction ID, transaction amount, and transaction type using Customers, Accounts, and Transactions. 

select c.name,t.transaction_id,t.amount,t.type
from Customers c
JOIN Accounts a
ON c.customer_id=a.customer_id
JOIN Transactions t
ON t.account_id=a.account_id;


-- 18.Display the customer name, loan type, loan amount, and interest rate using Customers and Loans.

select c.name,l.loan_type,l.amount,l.interest_rate
from Customers c
JOIN Loans l
ON c.customer_id=l.customer_id;

-- 19.Display the employee name, designation, branch name, and branch location using Employees and Branches. 

select e.name,e.designation,b.branch_name,b.location
from Employees e
JOIN Branches b
ON e.branch_id=b.branch_id;


-- 20.Display the names of customers whose account balance is greater than the average balance of all accounts. 

SELECT DISTINCT c.name
FROM Customers c
JOIN Accounts a
ON c.customer_id = a.customer_id
WHERE a.balance > (
    SELECT AVG(balance)
    FROM Accounts
);
 


