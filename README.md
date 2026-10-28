# Banking System using MySQL

## 1. Project Overview

The Banking System is a relational database management project developed using MySQL to store, organize, and retrieve banking information. It manages customer details, bank branches, accounts, employees, transactions, and loans. The project demonstrates database design and SQL query operations through a banking use case.

## 2. Features

- Manage customer information and bank branches.
- Store savings and current account details and balances.
- Maintain credit and debit transaction records.
- Store loan details, interest rates, and repayment periods.
- Maintain employee details, designations, salaries, and branch associations.
- Retrieve data using filtering, sorting, and subqueries.
- Analyze data using `COUNT()`, `SUM()`, `AVG()`, `MAX()`, and `MIN()`.
- Generate reports using `JOIN`, `GROUP BY`, and `HAVING`.
- Maintain relationships using primary keys and foreign key constraints.

## 3. Tech Stack

- **Database:** MySQL
- **Query Language:** SQL
- **Tools:** MySQL Workbench&#x20;
- **Version Control:** Git and GitHub

## 4. Database Schema

The database is named `banksystem_db` and contains six tables:

| Table        | Purpose                         |
| ------------ | ------------------------------- |
| Customers    | Customer personal details       |
| Branches     | Bank branch information         |
| Accounts     | Account types and balances      |
| Employees    | Employee and salary details     |
| Transactions | Credit and debit records        |
| Loans        | Loan amounts and interest rates |

## 5. Setup and Run Instructions

### Prerequisites

- Install MySQL Server.
- Install MySQL Workbench or use the MySQL command-line client.
- Clone or download this repository.

### Clone the Repository

```bash
git clone https://github.com/Madhu-Varshini-Gurram/Banking-System.git
cd Banking-System
```

### Execute the SQL Script

1. Open MySQL Workbench and connect to your MySQL server.
2. Open the project's SQL script (for example, `mini_project.sql`).
3. Execute the complete script.
4. The script creates the database, tables, sample records, and SQL queries.

Alternatively, from the terminal, run:

```bash
mysql -u root -p
```

After entering your password, execute:

```sql
SOURCE /path/to/mini_project.sql;
```

Replace `/path/to/mini_project.sql` with the actual path to the SQL file.

### Verify the Database

```sql
USE banksystem_db;
SHOW TABLES;
SELECT * FROM Customers;
SELECT * FROM Accounts;
SELECT * FROM Transactions;
SELECT * FROM Loans;
```


## 6. Database Notes

- **Database:** MySQL relational database.
- **Sample Data:** Includes customer, branch, account, employee, transaction, and loan records.
- **Relationships:** Foreign keys connect accounts to customers and branches, employees to branches, transactions to accounts, and loans to customers.
- **Queries:** Includes 20 SQL queries demonstrating data retrieval, aggregation, joins, grouping, and subqueries.

## 7. Repository

GitHub: [https://github.com/Madhu-Varshini-Gurram/Banking-System](https://github.com/Madhu-Varshini-Gurram/Banking-System)
