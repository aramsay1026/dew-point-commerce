-- DewPoint Database: Required Task Queries
-- Authors: Amy Ramsay, Bea Sauve
-- Date: May, 2026
-- Course: AD350 Database Technology
-- Run AFTER DewPoint_DataBase.sql and 02_insert_data.sql

USE dew_point;

-- TASK 1: List which products we currently have in inventory
SELECT
    p.productID,
    p.product_name,
    p.product_type,
    p.size_ml,
    p.flavor,
    p.inventory,
    s.name AS supplier
FROM product p
JOIN supplier s ON s.supplierID = p.supplierID
WHERE p.active = TRUE
ORDER BY p.product_type, p.product_name;

-- TASK 2: Create a new product
INSERT INTO product (supplierID, product_name, product_type, inventory, size_ml, flavor, active)
VALUES (101, 'Pomegranate Pop', 'Sparkling', 100, 500, 'Pomegranate', TRUE);

-- Use LAST_INSERT_ID() to link the subtype row to the new product
INSERT INTO sparkling_water (productID, carbonation_level)
VALUES (LAST_INSERT_ID(), 'Medium');

-- TASK 3: Modify the amount of a particular product in inventory
UPDATE product
SET inventory = inventory + 50
WHERE productID = 1;

-- TASK 4: Delete a product from inventory
-- Two patterns shown:
--   (a) SOFT DELETE 
--   (b) HARD DELETE 
UPDATE product
SET active = FALSE
WHERE productID = 29;

-- TASK 5: Most popular products for a given time range
SELECT
    p.productID,
    p.product_name,
    p.product_type,
    SUM(t.quantity)        AS units_sold,
    COUNT(t.transactionID) AS num_orders
FROM product p
JOIN transaction t ON t.productID = p.productID
WHERE t.receivedAt BETWEEN '2026-03-01' AND '2026-05-21'
GROUP BY p.productID, p.product_name, p.product_type
ORDER BY units_sold DESC, num_orders DESC
LIMIT 10;

-- TASK 6: Least popular products for a given time range
SELECT
    p.productID,
    p.product_name,
    p.product_type,
    COALESCE(SUM(t.quantity), 0)        AS units_sold,
    COUNT(t.transactionID)              AS num_orders
FROM product p
LEFT JOIN transaction t
       ON t.productID  = p.productID
      AND t.receivedAt BETWEEN '2026-03-01' AND '2026-05-21'
WHERE p.active = TRUE
GROUP BY p.productID, p.product_name, p.product_type
ORDER BY units_sold ASC, num_orders ASC
LIMIT 10;

-- TASK 7: Users who haven't purchased in a few months
SELECT
    u.userID,
    u.first_name,
    u.last_name,
    u.email,
    MAX(t.receivedAt) AS last_purchase
FROM user u
LEFT JOIN transaction t ON t.userID = u.userID
GROUP BY u.userID, u.first_name, u.last_name, u.email
HAVING MAX(t.receivedAt) IS NULL
    OR MAX(t.receivedAt) < DATE_SUB(CURDATE(), INTERVAL 3 MONTH)
ORDER BY last_purchase ASC;

-- 7b) For each inactive user, the products they NORMALLY buy
SELECT
    u.userID,
    u.first_name,
    u.last_name,
    u.email,
    p.productID,
    p.product_name,
    p.product_type,
    SUM(t.quantity)        AS total_units_purchased,
    COUNT(t.transactionID) AS times_ordered,
    MAX(t.receivedAt)      AS last_time_bought
FROM user u
JOIN transaction t ON t.userID    = u.userID
JOIN product     p ON p.productID = t.productID
WHERE u.userID IN (
    -- subquery: inactive users (no purchase in last 3 months)
    SELECT u2.userID
    FROM user u2
    LEFT JOIN transaction t2 ON t2.userID = u2.userID
    GROUP BY u2.userID
    HAVING MAX(t2.receivedAt) IS NULL
        OR MAX(t2.receivedAt) < DATE_SUB(CURDATE(), INTERVAL 3 MONTH)
)
GROUP BY u.userID, u.first_name, u.last_name, u.email,
         p.productID, p.product_name, p.product_type
ORDER BY u.userID, total_units_purchased DESC;
