-- DewPoint Database: Water Subtype Tables Data
-- Authors: Amy Ramsay, Bea Sauve
-- Date: May, 2026
-- Course: AD350 Database Technology
-- Run AFTER 05_insert_product.sql
-- Covers: sparkling_water, mineral_water, and alkaline_water tables.
-- NOTE: Existing 02_insert_data.sql does not include these subtype inserts.
--       ProductIDs referenced here align with products from BOTH 02_insert_data.sql (1–18)
--       and 05_insert_product.sql (19–130).

USE dew_point;

-- ==========================================
-- SPARKLING WATER TABLE
-- carbonation_level: 'Light', 'Medium', 'Heavy'
-- ==========================================

INSERT INTO sparkling_water (productID, carbonation_level) VALUES

-- New sparkling products from 05_insert_product.sql (productIDs 19–38)
(19, 'Medium'),   -- Summit Fizz Lemon
(20, 'Light'),    -- Blue Ridge Bubble Peach
(21, 'Heavy'),    -- Cascadia Pop Raspberry
(22, 'Medium'),   -- Great Lakes Sparkle Cherry
(23, 'Light'),    -- Sonoran Fizz Cactus Pear
(24, 'Medium'),   -- Appalachian Spritz Apple
(25, 'Heavy'),    -- Ozark Spring Bubble Grape
(26, 'Medium'),   -- Sierra Sparkle Blood Orange
(27, 'Light'),    -- Bayou Fizz Vanilla Cream
(28, 'Heavy'),    -- Pacific Rim Bubble Passionfruit
(29, 'Medium'),   -- Everglades Pop Key Lime
(30, 'Light'),    -- Columbia Crisper Cucumber
(31, 'Heavy'),    -- Rocky Fizz Mint
(32, 'Medium'),   -- New England Spritz Cranberry
(33, 'Light'),    -- Gulf Coast Bubble Coconut
(34, 'Heavy'),    -- Denali Crisp Pomegranate
(35, 'Medium'),   -- Adirondack Fizz Elderflower
(36, 'Light'),    -- Mesa Pop Pineapple
(37, 'Medium'),   -- Great Plains Bubble Watermelon
(38, 'Heavy'),    -- Chesapeake Fizz Strawberry

-- Low inventory sparkling (productIDs 98,99,104,109)
(80, 'Heavy'),    -- Columbia Rare Spring Rose
(89, 'Heavy'),    -- Obsidian Sparkling Yuzu
(82, 'Medium'),  -- New England Wild Berry
(98, 'Light'),   -- Prairie Peach Pop (discontinued)

-- Discontinued sparkling (productIDs 108,110,112,113,115,116,117,118,
--                                    119,121,122,123,124,125,129)
(91, 'Medium'),  -- Olympic Sunset Blend
(93, 'Light'),   -- Flint Creek Tropical Fizz
(94, 'Heavy'),   -- Rio Lime Sparkling
(96, 'Medium'),  -- Catskill Blackberry
(100, 'Heavy'),   -- Smoky Mountain Cherry
(101, 'Medium'),  -- Willamette Pear Spring
(104, 'Light'),   -- High Desert Orange
(106, 'Medium'),  -- Bayou Vanilla Sparkle
(110, 'Heavy'),   -- Coastal Morning Dew
(111, 'Light'),   -- High Country Lavender
(113, 'Medium'),  -- Loess Hills Mint
(117, 'Light'),   -- Longleaf Pecan Spring
(118, 'Medium');  -- Centennial Anniversary Blend

-- ==========================================
-- ALKALINE WATER TABLE
-- PH_Level: DECIMAL(3,1), range 0.0–14.0
-- ==========================================

INSERT INTO alkaline_water (productID, PH_Level) VALUES

-- New alkaline products from 05_insert_product.sql (productIDs 39–58)
(39, 9.0),   -- Volcanic Rise 9.0
(40, 9.5),   -- Teton Peak 9.5
(41, 8.5),   -- Olympic Elevate 8.5
(42, 9.0),   -- Black Hills Alkali
(43, 8.0),   -- Flint Ion Water
(44, 9.5),   -- Rio Grande Rise
(45, 9.0),   -- Piedmont pH 9
(46, 9.5),   -- Catskill Alkali
(47, 10.0),  -- Cascade Ion 10
(48, 8.5),   -- Prairie Elevate
(49, 9.5),   -- Blue Hole pH Plus
(50, 9.0),   -- Smoky Rise
(51, 8.5),   -- Willamette Ion
(52, 9.0),   -- Puget Alkali 9
(53, 8.0),   -- Salt Flat pH 8
(54, 8.5),   -- High Desert Rise
(55, 9.5),   -- Finger Lakes Alkali
(56, 9.0),   -- Bayou Artesian Ion
(57, 9.5),   -- Olympic pH Balance
(58, 9.0),   -- Minnesota Ice Alkali

-- Low inventory alkaline (productIDs 100, 102, 107)
(81, 10.0), -- Rocky Reserve 10.0
(84, 9.5),  -- Denali Black Label
(87, 9.0),  -- Great Plains Deep

-- Discontinued alkaline (productIDs 109,112,114,116,120,122,128,130)
(92, 8.5),  -- Black Hills Lemon pH
(95, 8.5),  -- Piedmont Grapefruit Alkali
(97, 8.0),  -- Cascade Reserve 8
(102, 8.5),  -- Puget Mango pH
(114, 8.5),  -- Tahoe pH 10
(108, 8.0)  -- Minnesota Birch pH
; 

-- ==========================================
-- MINERAL WATER TABLE
-- calcium_mg, magnesium_mg, sodium_mg: DECIMAL(6,2)
-- mineral_source: VARCHAR(100)
-- ==========================================

INSERT INTO mineral_water (productID, calcium_mg, magnesium_mg, sodium_mg, mineral_source) VALUES

-- New mineral products from 05_insert_product.sql (productIDs 59–78)
(59, 70.00, 25.00, 7.00,  'Wyoming Absaroka Range Spring'),
(60, 50.00, 15.00, 4.00,  'California Coastal Fog Aquifer'),
(61, 45.00, 13.00, 9.00,  'Colorado High Country Spring'),
(62, 65.00, 22.00, 5.00,  'Washington Salish Sea Basin'),
(63, 38.00, 11.00, 12.00, 'Iowa Loess Hills Underground Spring'),
(64, 90.00, 35.00, 2.00,  'Lake Tahoe Basin Mineral Vein'),
(65, 75.00, 28.00, 3.50,  'Hawaii Volcanic Mineral Aquifer'),
(66, 55.00, 16.00, 20.00, 'Minnesota Iron Range Bedrock'),
(67, 32.00, 9.00,  11.00, 'Georgia Longleaf Pine Aquifer'),
(68, 48.00, 14.00, 8.00,  'Wyoming Centennial Spring Basin'),
(69, 45.00, 12.00, 8.00,  'Colorado Summit Peak Spring'),
(70, 58.00, 19.00, 6.00,  'North Carolina Blue Ridge Aquifer'),
(71, 42.00, 11.00, 10.00, 'Oregon Cascadia Wild Spring'),
(72, 60.00, 20.00, 7.00,  'Ohio Great Lakes Deep Vein'),
(73, 52.00, 16.00, 9.00,  'Arizona Sonoran Desert Aquifer'),
(74, 44.00, 13.00, 11.00, 'Tennessee Appalachian Deep Spring'),
(75, 57.00, 18.00, 5.00,  'Missouri Ozark Heritage Spring'),
(76, 85.00, 32.00, 1.50,  'California Sierra Nevada Granite Spring'),
(77, 36.00, 10.00, 14.00, 'Louisiana Bayou Deep Aquifer'),
(78, 92.00, 38.00, 2.50,  'Hawaii Pacific Rim Deep Spring'),

-- Low inventory mineral (productIDs 97, 101, 103, 106, 107)
(79, 88.00, 34.00, 2.00,  'Florida Everglades Limestone Reserve'),
(85, 50.00, 16.00, 6.00, 'New York Adirondack Spring'),
(86, 78.00, 29.00, 3.00, 'Arizona Mesa Rare Mineral Spring'),
(83, 95.00, 40.00, 1.00, 'Gulf of Mexico Deep Offshore Spring'),
(90, 92.00, 36.00, 2.50, 'Wyoming Teton Black Label Aquifer'),

-- Discontinued mineral (productIDs 114,117,119,121,124,125,126,127,128,130,131)
(103, 46.00, 13.00, 9.00,  'Utah Salt Flat Ancient Aquifer'),
(105, 68.00, 23.00, 4.00,  'New York Finger Lakes Basin'),
(107, 72.00, 26.00, 3.00,  'Washington Olympic Peninsula Spring'),
(109, 55.00, 17.00, 8.00,  'Wyoming Absaroka Classic Basin'),
(112, 48.00, 14.00, 10.00, 'Washington Salish Cucumber Spring'),
(115, 82.00, 31.00, 2.00,  'Hawaii Hilina Volcanic Spring'),
(116, 54.00, 16.00, 19.00, 'Minnesota Iron Range Classic');
