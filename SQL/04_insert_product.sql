-- DewPoint Database: Product Table Data
-- Authors: Amy Ramsay, Bea Sauve
-- Date: May, 2026
-- Course: AD350 Database Technology
-- Run AFTER DewPoint_DataBase.sql AND 04_insert_supplier.sql
-- NOTE: Existing 02_insert_data.sql inserts productIDs 1–18.
--       This file inserts products 19–130 (112 new products).
--       Includes: discontinued (active=FALSE), low inventory (<25 units),
--       and full variety of types/sizes/flavors.

USE dew_point;

-- onboard = date product was added to catalog (must be <= earliest transaction referencing it)
-- offboard = date product was discontinued (NULL if still active; must be >= onboard and <= today)
INSERT INTO product (supplierID, product_name, product_type, inventory, price_each, size_ml, flavor, active, date_added, date_discontinued) VALUES

-- ============================================================
-- ACTIVE PRODUCTS — SPARKLING (19–38)
-- Earliest transactions in file 10: product 19 -> 2024-07-01, product 20 -> 2024-12-01,
-- product 22 -> 2024-04-01, product 25 -> 2026-03-15, product 26 -> 2026-02-15,
-- product 35 -> 2024-10-01, product 39 -> 2024-10-01
-- All onboards set before the earliest transaction referencing that product
-- ============================================================
(116, 'Summit Fizz',          'Sparkling', 600, 3.25, 500, 'Lemon',        TRUE,  '2024-05-01', NULL),
(117, 'Blue Ridge Bubble',    'Sparkling', 450, 3.75, 500, 'Peach',        TRUE,  '2024-10-01', NULL),
(118, 'Cascadia Pop',         'Sparkling', 300, 2.75, 250, 'Raspberry',    TRUE,  '2025-01-01', NULL),
(119, 'Great Lakes Sparkle',  'Sparkling', 200, 3.50, 500, 'Cherry',       TRUE,  '2024-02-01', NULL),
(120, 'Sonoran Fizz',         'Sparkling', 175, 3.00, 250, 'Cactus Pear',  TRUE,  '2025-03-01', NULL),
(121, 'Appalachian Spritz',   'Sparkling', 500, 4.00, 750, 'Apple',        TRUE,  '2025-04-01', NULL),
(122, 'Ozark Spring Bubble',  'Sparkling', 350, 3.25, 500, 'Grape',        TRUE,  '2025-05-01', NULL),
(123, 'Sierra Sparkle',       'Sparkling', 700, 3.75, 500, 'Blood Orange', TRUE,  '2025-06-01', NULL),
(124, 'Bayou Fizz',           'Sparkling', 250, 2.50, 250, 'Vanilla Cream',TRUE,  '2025-07-01', NULL),
(125, 'Pacific Rim Bubble',   'Sparkling', 420, 4.50, 750, 'Passionfruit', TRUE,  '2025-08-01', NULL),
(126, 'Everglades Pop',       'Sparkling', 180, 3.00, 500, 'Key Lime',     TRUE,  '2025-09-01', NULL),
(127, 'Columbia Crisper',     'Sparkling', 800, 2.75, 250, 'Cucumber',     TRUE,  '2025-10-01', NULL),
(128, 'Rocky Fizz',           'Sparkling', 320, 3.50, 500, 'Mint',         TRUE,  '2025-11-01', NULL),
(129, 'New England Spritz',   'Sparkling', 550, 4.25, 750, 'Cranberry',    TRUE,  '2025-12-01', NULL),
(130, 'Gulf Coast Bubble',    'Sparkling', 280, 3.00, 500, 'Coconut',      TRUE,  '2026-01-01', NULL),
(131, 'Denali Crisp',         'Sparkling', 140, 5.00, 500, 'Pomegranate',  TRUE,  '2026-01-15', NULL),
(132, 'Adirondack Fizz',      'Sparkling', 600, 3.50, 500, 'Elderflower',  TRUE,  '2024-09-01', NULL),
(133, 'Mesa Pop',             'Sparkling', 390, 3.25, 250, 'Pineapple',    TRUE,  '2026-02-01', NULL),
(134, 'Great Plains Bubble',  'Sparkling', 470, 2.75, 500, 'Watermelon',   TRUE,  '2026-02-15', NULL),
(135, 'Chesapeake Fizz',      'Sparkling', 510, 3.75, 500, 'Strawberry',   TRUE,  '2026-03-01', NULL),

-- ============================================================
-- ACTIVE PRODUCTS — ALKALINE (39–58)
-- Earliest transactions: product 39 -> 2024-10-01, product 40 -> 2025-10-15,
-- product 44 -> 2026-02-15, product 46 -> 2026-03-01, product 47 -> 2025-07-01,
-- product 49 -> 2024-01-01, product 57 -> 2026-02-15, product 58 -> 2025-10-15
-- ============================================================
(136, 'Volcanic Rise 9.0',    'Alkaline',  900,  4.50, 500,  'Original',    TRUE,  '2024-09-01', NULL),
(137, 'Teton Peak 9.5',       'Alkaline',  650,  5.50, 750,  'Original',    TRUE,  '2025-09-01', NULL),
(138, 'Olympic Elevate 8.5',  'Alkaline',  400,  4.00, 500,  'Lemon',       TRUE,  '2025-10-01', NULL),
(139, 'Black Hills Alkali',   'Alkaline',  300,  4.25, 500,  'Original',    TRUE,  '2025-11-01', NULL),
(140, 'Flint Ion Water',      'Alkaline',  200,  3.75, 500,  'Original',    TRUE,  '2025-12-01', NULL),
(141, 'Rio Grande Rise',      'Alkaline',  750,  5.00, 1000, 'Original',    TRUE,  '2026-01-15', NULL),
(142, 'Piedmont pH 9',        'Alkaline',  480,  4.50, 500,  'Cucumber',    TRUE,  '2026-02-01', NULL),
(143, 'Catskill Alkali',      'Alkaline',  620,  5.25, 750,  'Original',    TRUE,  '2026-02-15', NULL),
(144, 'Cascade Ion 10',       'Alkaline',  1100, 6.00, 1000, 'Original',    TRUE,  '2025-06-01', NULL),
(145, 'Prairie Elevate',      'Alkaline',  560,  4.00, 500,  'Lemon',       TRUE,  '2026-03-01', NULL),
(146, 'Blue Hole pH Plus',    'Alkaline',  830,  5.50, 1000, 'Original',    TRUE,  '2026-03-15', NULL),
(147, 'Smoky Rise',           'Alkaline',  370,  4.25, 500,  'Original',    TRUE,  '2026-03-20', NULL),
(148, 'Willamette Ion',       'Alkaline',  490,  4.75, 750,  'Mint',        TRUE,  '2026-04-01', NULL),
(149, 'Puget Alkali 9',       'Alkaline',  310,  4.50, 500,  'Original',    TRUE,  '2026-04-05', NULL),
(150, 'Salt Flat pH 8',       'Alkaline',  250,  3.75, 500,  'Original',    TRUE,  '2026-04-10', NULL),
(151, 'High Desert Rise',     'Alkaline',  700,  4.00, 500,  'Grapefruit',  TRUE,  '2026-04-15', NULL),
(152, 'Finger Lakes Alkali',  'Alkaline',  420,  5.00, 750,  'Original',    TRUE,  '2026-04-20', NULL),
(153, 'Bayou Artesian Ion',   'Alkaline',  580,  4.25, 500,  'Original',    TRUE,  '2025-07-01', NULL),
(154, 'Olympic pH Balance',   'Alkaline',  660,  5.50, 1000, 'Original',    TRUE,  '2025-11-15', NULL),
(155, 'Minnesota Ice Alkali', 'Alkaline',  940,  4.75, 500,  'Peppermint',  TRUE,  '2025-09-15', NULL),

-- ============================================================
-- ACTIVE PRODUCTS — MINERAL (59–78)
-- Earliest transactions: product 61 -> 2025-09-01, product 64 -> 2025-07-01,
-- product 65 -> 2025-08-01, product 74 -> 2026-02-01, product 76 -> 2025-10-15,
-- product 78 -> 2026-02-01
-- ============================================================
(156, 'Absaroka Deep Mineral',   'Mineral', 380, 6.50, 1000, 'Original', TRUE,  '2025-06-01', NULL),
(157, 'Coastal Fog Reserve',     'Mineral', 260, 5.75, 750,  'Original', TRUE,  '2025-07-01', NULL),
(158, 'High Country Pure',       'Mineral', 510, 4.50, 1000, 'Original', TRUE,  '2025-08-01', NULL),
(159, 'Salish Sea Mineral',      'Mineral', 190, 7.00, 750,  'Original', TRUE,  '2025-09-01', NULL),
(160, 'Loess Hills Spring',      'Mineral', 320, 3.75, 500,  'Original', TRUE,  '2025-10-01', NULL),
(161, 'Tahoe Blue Mineral',      'Mineral', 440, 8.00, 1500, 'Original', TRUE,  '2025-06-15', NULL),
(162, 'Hilina Volcanic Mineral', 'Mineral', 230, 9.00, 750,  'Original', TRUE,  '2025-07-15', NULL),
(163, 'Iron Range Select',       'Mineral', 550, 4.00, 1000, 'Original', TRUE,  '2025-11-01', NULL),
(164, 'Longleaf Spring Pure',    'Mineral', 310, 3.50, 500,  'Original', TRUE,  '2025-12-01', NULL),
(165, 'Centennial Reserve',      'Mineral', 600, 5.25, 1500, 'Original', TRUE,  '2026-01-01', NULL),
(116, 'Summit Peak Mineral',     'Mineral', 280, 6.00, 1000, 'Original', TRUE,  '2025-02-01', NULL),
(117, 'Blue Ridge Reserve',      'Mineral', 420, 5.50, 750,  'Original', TRUE,  '2025-03-01', NULL),
(118, 'Cascadia Wild Mineral',   'Mineral', 350, 4.25, 1000, 'Original', TRUE,  '2025-04-01', NULL),
(119, 'Great Lakes Reserve',     'Mineral', 490, 4.75, 1500, 'Original', TRUE,  '2025-05-01', NULL),
(120, 'Sonoran Deep Spring',     'Mineral', 200, 5.00, 750,  'Original', TRUE,  '2025-06-01', NULL),
(121, 'Appalachian Source',      'Mineral', 360, 4.50, 1000, 'Original', TRUE,  '2025-12-01', NULL),
(122, 'Ozark Heritage Mineral',  'Mineral', 280, 5.25, 750,  'Original', TRUE,  '2026-01-15', NULL),
(123, 'Sierra Nevada Reserve',   'Mineral', 520, 7.50, 2000, 'Original', TRUE,  '2025-09-15', NULL),
(124, 'Bayou Deep Mineral',      'Mineral', 170, 4.00, 500,  'Original', TRUE,  '2026-02-01', NULL),
(125, 'Pacific Rim Reserve',     'Mineral', 310, 8.50, 1500, 'Original', TRUE,  '2025-12-15', NULL),

-- ============================================================
-- LOW INVENTORY — ACTIVE (under 25 units) (productIDs 79–90)
-- No transactions in file 10 reference these directly, so onboard set conservatively recent
-- ============================================================
(126, 'Everglades Reserve Mineral',  'Mineral',   8,  9.50,  750,  'Original',  TRUE,  '2026-02-01', NULL),
(127, 'Columbia Rare Spring',        'Sparkling', 12, 6.00,  500,  'Rose',      TRUE,  '2026-02-15', NULL),
(128, 'Rocky Reserve 10.0',          'Alkaline',  5,  9.00,  1000, 'Original',  TRUE,  '2026-03-01', NULL),
(129, 'New England Wild Berry',      'Sparkling', 17, 5.50,  500,  'Wild Berry',TRUE,  '2026-03-15', NULL),
(130, 'Gulf Deep Mineral',           'Mineral',   3,  11.00, 2000, 'Original',  TRUE,  '2026-04-01', NULL),
(131, 'Denali Black Label',          'Alkaline',  20, 12.00, 750,  'Original',  TRUE,  '2026-04-05', NULL),
(132, 'Adirondack Reserve',          'Mineral',   14, 10.00, 1500, 'Original',  TRUE,  '2026-04-10', NULL),
(133, 'Mesa Rare Cactus Mineral',    'Mineral',   9,  8.50,  750,  'Original',  TRUE,  '2026-04-15', NULL),
(134, 'Great Plains Deep',           'Alkaline',  22, 7.00,  1000, 'Original',  TRUE,  '2026-04-20', NULL),
(135, 'Chesapeake Bay Reserve',      'Mineral',   6,  13.00, 2000, 'Original',  TRUE,  '2026-04-25', NULL),
(136, 'Volcanic Obsidian Sparkling', 'Sparkling', 11, 8.00,  500,  'Yuzu',      TRUE,  '2026-05-01', NULL),
(137, 'Teton Black Label Mineral',   'Mineral',   18, 14.00, 1500, 'Original',  TRUE,  '2026-05-05', NULL),

-- ============================================================
-- DISCONTINUED PRODUCTS (active=FALSE) (productIDs 91–118)
-- No transactions reference these in file 10.
-- onboard: staggered realistically across 2023–2025
-- offboard: after onboard, spread across 2025–2026, all before today (2026-05-30)
-- ============================================================
(138, 'Olympic Sunset Blend',         'Sparkling', 0, 3.25, 500,  'Sunset Berry',    FALSE, '2023-03-01', '2025-04-01'),
(139, 'Black Hills Lemon pH',         'Alkaline',  0, 4.00, 500,  'Lemon',           FALSE, '2023-04-01', '2025-05-01'),
(140, 'Flint Creek Tropical Fizz',    'Sparkling', 0, 3.00, 500,  'Tropical',        FALSE, '2023-05-01', '2025-06-01'),
(141, 'Rio Lime Sparkling',           'Sparkling', 5, 2.75, 250,  'Lime',            FALSE, '2023-06-01', '2025-03-01'),
(142, 'Piedmont Grapefruit Alkali',   'Alkaline',  0, 3.50, 500,  'Grapefruit',      FALSE, '2023-07-01', '2025-07-01'),
(143, 'Catskill Blackberry',          'Sparkling', 0, 3.75, 500,  'Blackberry',      FALSE, '2023-08-01', '2025-08-01'),
(144, 'Cascade Reserve 8',            'Alkaline',  0, 5.00, 750,  'Original',        FALSE, '2023-09-01', '2025-09-01'),
(145, 'Prairie Peach Pop',            'Sparkling', 8, 2.50, 250,  'Peach',           FALSE, '2023-10-01', '2025-04-15'),
(146, 'Blue Hole Classic Mineral',    'Mineral',   0, 4.00, 750,  'Original',        FALSE, '2023-11-01', '2025-10-01'),
(147, 'Smoky Mountain Cherry',        'Sparkling', 0, 3.50, 500,  'Cherry',          FALSE, '2023-12-01', '2025-11-01'),
(148, 'Willamette Pear Spring',       'Sparkling', 3, 4.00, 500,  'Pear',            FALSE, '2024-01-01', '2025-12-01'),
(149, 'Puget Mango pH',              'Alkaline',  0, 4.50, 500,  'Mango',           FALSE, '2024-02-01', '2025-09-15'),
(150, 'Salt Flat Classic',            'Mineral',   0, 3.25, 500,  'Original',        FALSE, '2024-03-01', '2025-08-15'),
(151, 'High Desert Orange',           'Sparkling', 0, 3.00, 250,  'Orange',          FALSE, '2024-04-01', '2025-07-15'),
(152, 'Finger Lakes Classic',         'Mineral',   0, 5.50, 1000, 'Original',        FALSE, '2024-05-01', '2025-06-15'),
(153, 'Bayou Vanilla Sparkle',        'Sparkling', 0, 3.25, 500,  'Vanilla',         FALSE, '2024-06-01', '2025-05-15'),
(154, 'Olympic Heritage Mineral',     'Mineral',   0, 7.00, 1500, 'Original',        FALSE, '2024-07-01', '2025-04-15'),
(155, 'Minnesota Birch pH',           'Alkaline',  0, 4.25, 500,  'Birch',           FALSE, '2024-08-01', '2026-01-01'),
(156, 'Absaroka Classic Spring',      'Mineral',   0, 5.00, 750,  'Original',        FALSE, '2024-09-01', '2026-02-01'),
(157, 'Coastal Morning Dew',          'Sparkling', 0, 3.50, 500,  'Dew Drop',        FALSE, '2024-10-01', '2026-03-01'),
(158, 'High Country Lavender',        'Sparkling', 0, 4.00, 500,  'Lavender',        FALSE, '2024-11-01', '2026-04-01'),
(159, 'Salish Cucumber Mineral',      'Mineral',   0, 6.50, 750,  'Cucumber',        FALSE, '2024-12-01', '2026-04-15'),
(160, 'Loess Hills Mint',             'Sparkling', 0, 3.25, 250,  'Mint',            FALSE, '2025-01-01', '2026-05-01'),
(161, 'Tahoe pH 10',                  'Alkaline',  0, 6.00, 1000, 'Original',        FALSE, '2025-02-01', '2026-05-10'),
(162, 'Hilina Tropical Mineral',      'Mineral',   0, 8.50, 750,  'Tropical',        FALSE, '2025-03-01', '2026-05-15'),
(163, 'Iron Range Classic',           'Mineral',   0, 4.25, 1000, 'Original',        FALSE, '2025-04-01', '2026-05-20'),
(164, 'Longleaf Pecan Spring',        'Sparkling', 0, 3.50, 500,  'Pecan',           FALSE, '2025-05-01', '2026-05-22'),
(165, 'Centennial Anniversary Blend', 'Sparkling', 0, 4.75, 750,  'Anniversary Berry',FALSE,'2025-06-01', '2026-05-25');
