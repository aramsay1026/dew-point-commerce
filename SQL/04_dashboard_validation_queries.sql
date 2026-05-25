-- Dashboard Validation Queries
-- Author: Amy Ramsay
-- Date: May 2026
-- Course: AD350 Database Technology
-- Purpose: SQL queries to validate Tableau dashboard visuals

USE dew_point;

-- =====================================================
-- SECTION: Sales & Popularity (Amy)
-- =====================================================

-- Q1: Most popular products for a given time range
-- Validates: Bar chart of top selling products
SELECT
    p.productID,
    p.product_name,
    p.product_type,
    SUM(t.quantity) AS total_units_sold,
    COUNT(t.transactionID) AS num_orders,
    SUM(t.quantity * p.inventory) AS estimated_revenue
FROM product p
JOIN transaction t ON t.productID = p.productID
WHERE t.receivedAt BETWEEN '2026-01-01' AND '2026-05-31'
GROUP BY p.productID, p.product_name, p.product_type
ORDER BY total_units_sold DESC
LIMIT 10;

-- Q2: Least popular products for a given time range
-- Validates: Bar chart of bottom selling products
SELECT
    p.productID,
    p.product_name,
    p.product_type,
    COALESCE(SUM(t.quantity), 0) AS total_units_sold,
    COUNT(t.transactionID) AS num_orders
FROM product p
LEFT JOIN transaction t 
    ON t.productID = p.productID
    AND t.receivedAt BETWEEN '2026-01-01' AND '2026-05-31'
WHERE p.active = TRUE
GROUP BY p.productID, p.product_name, p.product_type
ORDER BY total_units_sold ASC
LIMIT 10;

-- =====================================================
-- SECTION: User Behavior (Amy)
-- =====================================================

-- Q3: Users who haven't purchased in the last 3 months
-- Validates: Table/List of inactive users
SELECT
    u.userID,
    u.first_name,
    u.last_name,
    u.email,
    MAX(t.receivedAt) AS last_purchase_date,
    DATEDIFF(CURDATE(), MAX(t.receivedAt)) AS days_since_last_purchase,
    CASE 
        WHEN MAX(t.receivedAt) IS NULL THEN 'Never purchased'
        ELSE CONCAT(DATEDIFF(CURDATE(), MAX(t.receivedAt)), ' days ago')
    END AS purchase_status
FROM user u
LEFT JOIN transaction t ON t.userID = u.userID
GROUP BY u.userID, u.first_name, u.last_name, u.email
HAVING MAX(t.receivedAt) IS NULL
    OR MAX(t.receivedAt) < DATE_SUB(CURDATE(), INTERVAL 3 MONTH)
ORDER BY last_purchase_date ASC;

-- Q4: What inactive users typically purchase (for promotional emails)
-- Validates: Detail table showing favorite products of inactive users
SELECT
    u.userID,
    CONCAT(u.first_name, ' ', u.last_name) AS customer_name,
    u.email,
    p.product_name,
    p.product_type,
    SUM(t.quantity) AS total_quantity_purchased,
    COUNT(t.transactionID) AS times_ordered,
    MAX(t.receivedAt) AS last_time_bought
FROM user u
JOIN transaction t ON t.userID = u.userID
JOIN product p ON p.productID = t.productID
WHERE u.userID IN (
    SELECT u2.userID
    FROM user u2
    LEFT JOIN transaction t2 ON t2.userID = u2.userID
    GROUP BY u2.userID
    HAVING MAX(t2.receivedAt) IS NULL
        OR MAX(t2.receivedAt) < DATE_SUB(CURDATE(), INTERVAL 3 MONTH)
)
GROUP BY u.userID, u.first_name, u.last_name, u.email, 
         p.product_name, p.product_type
ORDER BY u.userID, total_quantity_purchased DESC;

-- =====================================================
-- SECTION: Product Management (Amy)
-- =====================================================

-- Q5: Newest products (recently added to catalog)
-- Validates: Table showing newest products by productID (higher = newer)
-- Note: Using productID as proxy for creation order since we don't have a created_at column
SELECT
    p.productID,
    p.product_name,
    p.product_type,
    p.size_ml,
    p.flavor,
    p.inventory,
    s.name AS supplier_name,
    CASE 
        WHEN p.product_type = 'Sparkling' THEN sw.carbonation_level
        WHEN p.product_type = 'Alkaline' THEN aw.PH_Level
        WHEN p.product_type = 'Mineral' THEN mw.mineral_source
        ELSE NULL
    END AS type_specific_info
FROM product p
JOIN supplier s ON s.supplierID = p.supplierID
LEFT JOIN sparkling_water sw ON sw.productID = p.productID
LEFT JOIN alkaline_water aw ON aw.productID = p.productID
LEFT JOIN mineral_water mw ON mw.productID = p.productID
WHERE p.active = TRUE
ORDER BY p.productID DESC
LIMIT 10;

-- Q6: Category performance (which product types sell best)
-- Validates: Pie or bar chart of sales by category
SELECT
    p.product_type,
    COUNT(DISTINCT p.productID) AS num_products_in_category,
    COUNT(t.transactionID) AS total_orders,
    COALESCE(SUM(t.quantity), 0) AS total_units_sold,
    COALESCE(AVG(t.quantity), 0) AS avg_units_per_order,
    COALESCE(SUM(t.quantity), 0) / COUNT(DISTINCT p.productID) AS units_per_product
FROM product p
LEFT JOIN transaction t ON t.productID = p.productID
WHERE p.active = TRUE
GROUP BY p.product_type
ORDER BY total_units_sold DESC;

-- =====================================================
-- BONUS: Time-based filtering for dashboard date range
-- =====================================================

-- Sales by month (for trend line chart)
SELECT
    DATE_FORMAT(t.receivedAt, '%Y-%m') AS month,
    p.product_type,
    SUM(t.quantity) AS units_sold,
    COUNT(t.transactionID) AS num_transactions
FROM transaction t
JOIN product p ON p.productID = t.productID
WHERE t.receivedAt >= '2025-01-01'
GROUP BY DATE_FORMAT(t.receivedAt, '%Y-%m'), p.product_type
ORDER BY month, p.product_type;

-- User purchase frequency distribution
SELECT
    CASE
        WHEN days_since_last <= 30 THEN '0-30 days'
        WHEN days_since_last <= 60 THEN '31-60 days'
        WHEN days_since_last <= 90 THEN '61-90 days'
        WHEN days_since_last <= 180 THEN '91-180 days'
        ELSE '180+ days'
    END AS days_since_last_purchase,
    COUNT(*) AS num_users
FROM (
    SELECT 
        u.userID,
        DATEDIFF(CURDATE(), MAX(t.receivedAt)) AS days_since_last
    FROM user u
    LEFT JOIN transaction t ON t.userID = u.userID
    GROUP BY u.userID
) user_activity
GROUP BY days_since_last_purchase
ORDER BY FIELD(days_since_last_purchase, '0-30 days', '31-60 days', '61-90 days', '91-180 days', '180+ days');
