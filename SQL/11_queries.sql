-- DewPoint Database: Required Task Queries
-- Authors: Amy Ramsay, Bea Sauve
-- Date: May, 2026
-- Course: AD350 Database Technology
-- Run AFTER DewPoint_DataBase.sql and 02_insert_data.sql

USE dew_point;

-- Task 1: show all products we currently have in stock
-- only showing active ones, sorted by type and name so its easy to read
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

-- Task 2: add a new product to the database
-- we also need to insert into the sparkling_water subtype table
-- used LAST_INSERT_ID() to grab the productID that was just created
INSERT INTO product (supplierID, product_name, product_type, inventory, price_each,size_ml, flavor, active)
VALUES (101, 'Pomegranate Pop', 'Sparkling', 100,3.50, 500, 'Pomegranate', TRUE);

INSERT INTO sparkling_water (productID, carbonation_level)
VALUES (LAST_INSERT_ID(), 'Medium');

-- Task 3: update the inventory count for a specific product
-- adding 50 units to Citrus Sparkle (productID 1)
UPDATE product
SET inventory = inventory + 50
WHERE productID = 1;

-- Task 4: delete a product from inventory
-- we have two ways to do this depending on the situation:
--   a) soft delete - just mark it inactive so we don't lose order history
--   b) hard delete - actually remove it, only works if nothing references it

-- a) soft delete for Deep Earth Mineral (productID 29) since it has transactions
UPDATE product
SET active = FALSE
WHERE productID = 29;

-- b) hard delete for Pomegranate Pop (productID 31) which we just added in task 2
-- have to delete from sparkling_water first because of the foreign key
DELETE FROM sparkling_water WHERE productID = 31;
DELETE FROM product       WHERE productID = 31;

-- Task 5: get the most popular products between two dates
-- using SUM of quantity to see total units sold, ordered highest to lowest
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

-- Task 6: get the least popular products for the same time range
-- using LEFT JOIN so products with zero sales still show up
-- COALESCE handles the NULLs from the left join so they show as 0
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

-- Task 7: find users who haven't bought anything in the last 3 months
-- also including users who have never ordered at all 
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

-- Task 7 continued: for those inactive users, show what products they usually buy
-- this is so we can include their favorite products in the promo email
-- the subquery finds the same inactive users from above
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

