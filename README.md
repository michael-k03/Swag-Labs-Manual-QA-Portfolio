# SQL Testing Project - Swag Labs

## Project Overview ##

This project demonstrates practical SQL testing skills using a self-created MySQL database based on product information publicly displayed on the Swag Labs website.
The database was independently designed and populated for testing and learning purposes. It is not connected to or representative of the website`s actual backend database.
The main objective was to validate product data, verify database constraints, execute SQL queries, and check overall data integrity.

## Database Information ##

- Datbase: qa_swag_labs
- DBMS: MySQL
- Main Table: products
- Staging Table: products_import
- Number of product records: 6

The database contains product IDs, product names, and prices based on the publicly displayed product catalog.

## Scope os Testing ## 

1. Data Validation - SQL_001-SQL_006

- Imported records count validation
- NULL Values validation in mandatory fields
- Invalid prices validation
- Duplicate Product ID validation
- Empty, NULL, or whitespace-only product names validation
- Duplicate product names validation

2. Database Constraints Testing - SQL_007-SQL_009

- PRIMARY KEY constraint validation
- NOT NULL constraint validation
- CHECK constraint validation for product prices

3. SQL Queries & Data Analysis - SQL_010-SQL_015

- Sorting products by price in descending order (ORDER BY)
- Filtering products by price (WHERE)
- Data analysis using aggregate functions (COUNT, AVG, MIN, MAX, SUM)
- Searching product names using LIKE
- Retrieving unique prices using DISTINCT
- Identifying repeated prices using GROUP BY and HAVING

4. Final Data Integrity Testing - SQL_016

- Total records validation
- Unique Product IDs validation
- Invalid product names validation
- Invalid prices validation

## Test Results ##

Total SQL Test Cases: 16
Passed: 16
Failed: 0
Pass Rate: 100%

All executed test cases passed. The database returned the expected results for the tested data validation checks, database constraints, SQL queries, and final data integrity checks.

## Tools & Technologies ##

- MySQL
- MySQL Workbench
- Visual Studio Code
- SQL

## Project Files ##

| File                              | Description                       |
| :-------------------------------- | :-------------------------------- |
| qa_swag_labs.sql                  | SQL queries used to execute the test cases                            |
| SQL_Swag_Labs_Test_Cases.xlsx     | SQL test Cases with Expected Results, Actual Results, and Status      |
| Swag_Labs_Database.csv            | Product dataset used as the basis for the database                    |

## Disclaimer ##

This is an independent portfolio project created for educational and demonstration purposes. The database was designed and populated using publicly displayed product information from Swag Labs. No access to the website`s internal database or backend systems was used.