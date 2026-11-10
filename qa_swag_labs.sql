USE qa_swag_labs;


-- SQL_001
-- Data Validation: Imported Records Count

SELECT
    (SELECT COUNT(*) FROM products_import) AS imported_records,
    (SELECT COUNT(*) FROM products) AS products_records;



-- SQL_002
-- Data Validation: Mandatory Fields NULL Validation

SELECT *
FROM products_import
WHERE product_id IS NULL
    OR product_name IS NULL
    OR price IS NULL;



-- SQL_003
-- Data Validation: Invalid Prices Validation

SELECT *
FROM products_import
WHERE price <= 0;



-- SQL_004
-- Data Validation: Duplicate Product ID Validation

SELECT
    product_id,
    COUNT(*) AS occurences
FROM products_import
GROUP BY product_id
HAVING COUNT(*) > 1;



-- SQL_005
-- Data Validation: Empty or Whitespace Product Names

SELECT *
FROM products_import
WHERE product_name IS NULL
    OR TRIM(product_name) = '';




-- SQL_006
-- Data Validation: Duplicate Product Names

SELECT
    product_name,
    COUNT(*) AS occurences
FROM products_import
GROUP BY product_name
HAVING COUNT(*) > 1;



-- SQL_007
-- Database Constraints Testing: Primary Key Validation

START TRANSACTION;

INSERT INTO products (product_id, product_name, price)
VALUES (1, 'Duplicate ID Test', 10.00);

ROLLBACK;



-- SQL_008
-- Database Constraints Testing: NOT NULL Constraint

START TRANSACTION; 

INSERT INTO products (product_id, product_name, price)
VALUES (1001, NULL, 10.00);

ROLLBACK;



-- SQL_009
-- Database Constraints Testing: CHECK Constraint

START TRANSACTION;

INSERT INTO products (product_id, product_name, price)
VALUES (1002, 'Invalid Price Test', 0);

ROLLBACK;



-- SQL_010
-- SQL Queries & Data Analysis: Aggregate Functions

SELECT *
FROM products
ORDER BY price DESC;



-- SQL_011
-- SQL Queries & Data Analysis: Products with Price Greater Than 15

SELECT *
FROM products
WHERE price > 15;



-- SQL_012
-- SQL Queries & Data Analysis: Aggregate Functions

SELECT
    COUNT(*) AS total_products,
    AVG(price) AS average_price,
    MIN(price) AS minimum_price,
    MAX(price) AS maximum_price,
    SUM(price) AS total_price
FROM products;


-- SQL_013
-- SQL Queries & Data Analysis: Product Names Containing 'Sauce'

SELECT *
FROM products
WHERE product_name LIKE '%Sauce%';



-- SQL_014
-- SQL Queries & Data Analysis: Unique Product Prices

SELECT DISTINCT price
FROM products
ORDER BY price ASC;



-- SQL_015
-- SQL Queries & Data Analysis: Products with Repeated Prices

SELECT 
    price, 
    COUNT(*) AS products_count
FROM products
GROUP BY price
HAVING COUNT(*) > 1;



-- SQL_016
-- Final Data Integrity Testing

SELECT
    COUNT(*) AS total_products,
    COUNT(DISTINCT product_id) AS unique_product_ids,
    SUM(CASE WHEN product_id IS NULL THEN 1 ELSE 0 END) AS null_product_ids,
    SUM(CASE WHEN product_name IS NULL OR TRIM(product_name) = '' THEN 1 ELSE 0 END) AS invalid_product_names,
    SUM(CASE WHEN price IS NULL OR price <= 0 THEN 1 ELSE 0 END) AS invalid_prices
FROM products;

