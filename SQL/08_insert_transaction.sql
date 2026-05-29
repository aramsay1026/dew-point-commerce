-- DewPoint Database: Transaction Table Data
-- Authors: Amy Ramsay, Bea Sauve
-- Date: May, 2026
-- Course: AD350 Database Technology
-- Run AFTER 05_insert_product.sql AND 03_insert_user.sql
-- NOTE: Existing 02_insert_data.sql inserts transactionIDs 6000001–6000030.
--       This file inserts 6000031–6000140 (110 new transactions).
--       Formula: total_cost = (price_each * quantity) * 1.10 (10% tax/markup)
--       Highlights:
--         - High-spend customers (10026–10040): many transactions, large quantities, premium products
--         - Cancelled customers (10041–10060): transactions before cancellation
--         - Low-engagement (10061–10130): 1–2 transactions max, some only 1
--         - Multiple transactions per customer for loyal users
--         - References both original productIDs (1–18) and new ones (19–78)

USE dew_point;

INSERT INTO transaction (userID, productID, quantity, total_cost, receivedAt) VALUES

-- ============================================================
-- HIGH-SPEND LOYAL CUSTOMERS (10026–10040): Many orders, premium products
-- ============================================================
-- User 10026 (Marcus Holloway) — 8 transactions
-- Product 47 Cascade Ion 10 ($6.00/1000ml): 6.00*24*1.10 = 158.40
(10026, 47, 24, 158.40, '2025-07-01'),
-- Product 64 Tahoe Blue Mineral ($8.00): 8.00*24*1.10 = 211.20
(10026, 64, 24, 211.20, '2025-09-01'),
-- Product 40 Teton Peak 9.5 ($5.50): 5.50*24*1.10 = 145.20
(10026, 40, 24, 145.20, '2025-11-01'),
-- Product 47 Cascade Ion 10 ($6.00): 6.00*24*1.10 = 158.40
(10026, 47, 24, 158.40, '2026-01-01'),
-- Product 65 Hilina Volcanic ($9.00): 9.00*24*1.10 = 237.60
(10026, 65, 24, 237.60, '2026-03-01'),
-- Product 44 Rio Grande Rise ($5.00): 5.00*24*1.10 = 132.00
(10026, 44, 24, 132.00, '2026-05-01'),

-- User 10027 (Celeste Nguyen) — 6 transactions
-- Product 58 Minnesota Ice Alkali ($4.75): 4.75*24*1.10 = 125.40
(10027, 58, 24, 125.40, '2025-10-15'),
-- Product 76 Sierra Nevada Reserve ($7.50): 7.50*24*1.10 = 198.00
(10027, 76, 24, 198.00, '2025-12-15'),
-- Product 40 Teton Peak ($5.50): 5.50*24*1.10 = 145.20
(10027, 40, 24, 145.20, '2026-02-15'),
-- Product 64 Tahoe Blue ($8.00): 8.00*24*1.10 = 211.20
(10027, 64, 24, 211.20, '2026-04-15'),

-- User 10028 (Dominic Castillo) — 5 transactions
-- Product 35 Adirondack Fizz ($3.50): 3.50*16*1.10 = 61.60
(10028, 35, 16, 61.60, '2025-12-01'),
-- Product 74 Appalachian Source ($4.50): 4.50*16*1.10 = 79.20
(10028, 74, 16, 79.20, '2026-02-01'),
-- Product 39 Volcanic Rise ($4.50): 4.50*16*1.10 = 79.20
(10028, 39, 16, 79.20, '2026-04-01'),

-- User 10029 (Naomi Okafor) — 7 transactions
-- Product 78 Pacific Rim Reserve ($8.50): 8.50*24*1.10 = 224.40
(10029, 78, 24, 224.40, '2026-02-01'),
-- Product 65 Hilina Volcanic ($9.00): 9.00*24*1.10 = 237.60
(10029, 65, 24, 237.60, '2026-03-15'),
-- Product 47 Cascade Ion ($6.00): 6.00*24*1.10 = 158.40
(10029, 47, 24, 158.40, '2026-04-01'),
-- Product 64 Tahoe Blue ($8.00): 8.00*24*1.10 = 211.20
(10029, 64, 24, 211.20, '2026-05-01'),

-- User 10030 (Tobias Fletcher) — 4 transactions
-- Product 26 Sierra Sparkle ($3.75): 3.75*16*1.10 = 66.00
(10030, 26, 16, 66.00, '2026-02-15'),
-- Product 44 Rio Grande Rise ($5.00): 5.00*16*1.10 = 88.00
(10030, 44, 16, 88.00, '2026-04-15'),

-- User 10031 (Ingrid Sorensen) — 6 transactions
-- Product 57 Olympic pH Balance ($5.50): 5.50*24*1.10 = 145.20
(10031, 57, 24, 145.20, '2026-02-15'),
-- Product 76 Sierra Reserve ($7.50): 7.50*24*1.10 = 198.00
(10031, 76, 24, 198.00, '2026-04-15'),
-- Product 47 Cascade Ion ($6.00): 6.00*24*1.10 = 158.40
(10031, 47, 24, 158.40, '2026-05-15'),

-- User 10032 (Kwame Asante) — 5 transactions
-- Product 39 Volcanic Rise ($4.50): 4.50*16*1.10 = 79.20
(10032, 39, 16, 79.20, '2025-09-01'),
-- Product 61 High Country Pure ($4.50): 4.50*16*1.10 = 79.20
(10032, 61, 16, 79.20, '2025-11-01'),
-- Product 74 Appalachian Source ($4.50): 4.50*16*1.10 = 79.20
(10032, 74, 16, 79.20, '2026-01-01'),
-- Product 46 Catskill Alkali ($5.25): 5.25*16*1.10 = 92.40
(10032, 46, 16, 92.40, '2026-03-01'),

-- User 10033 (Lucia Vargas) — 8 transactions (top spender)
-- Product 78 Pacific Rim Reserve ($8.50): 8.50*24*1.10 = 224.40
(10033, 78, 24, 224.40, '2026-04-01'),
-- Product 65 Hilina Volcanic ($9.00): 9.00*24*1.10 = 237.60
(10033, 65, 24, 237.60, '2026-04-15'),
-- Product 64 Tahoe Blue ($8.00): 8.00*24*1.10 = 211.20
(10033, 64, 24, 211.20, '2026-05-01'),
-- Product 76 Sierra Reserve ($7.50): 7.50*24*1.10 = 198.00
(10033, 76, 24, 198.00, '2026-05-15'),

-- User 10034 (Henrik Larsen) — 5 transactions
-- Product 58 Minnesota Alkali ($4.75): 4.75*24*1.10 = 125.40
(10034, 58, 24, 125.40, '2025-12-15'),
-- Product 40 Teton Peak ($5.50): 5.50*24*1.10 = 145.20
(10034, 40, 24, 145.20, '2026-02-15'),
-- Product 57 Olympic pH Balance ($5.50): 5.50*24*1.10 = 145.20
(10034, 57, 24, 145.20, '2026-04-15'),

-- User 10035 (Fatima Al-Hassan) — 4 transactions
-- Product 25 Ozark Spring Bubble ($3.25): 3.25*16*1.10 = 57.20
(10035, 25, 16, 57.20, '2026-03-15'),
-- Product 61 High Country Pure ($4.50): 4.50*16*1.10 = 79.20
(10035, 61, 16, 79.20, '2026-05-15'),

-- User 10036 (Jared Kimura) — 7 transactions
-- Product 65 Hilina Volcanic ($9.00): 9.00*24*1.10 = 237.60
(10036, 65, 24, 237.60, '2025-08-01'),
-- Product 78 Pacific Rim Reserve ($8.50): 8.50*24*1.10 = 224.40
(10036, 78, 24, 224.40, '2025-10-01'),
-- Product 64 Tahoe Blue ($8.00): 8.00*24*1.10 = 211.20
(10036, 64, 24, 211.20, '2025-12-01'),
-- Product 47 Cascade Ion ($6.00): 6.00*24*1.10 = 158.40
(10036, 47, 24, 158.40, '2026-02-01'),
-- Product 76 Sierra Reserve ($7.50): 7.50*24*1.10 = 198.00
(10036, 76, 24, 198.00, '2026-04-01'),

-- User 10037 (Svetlana Petrov) — 5 transactions
-- Product 57 Olympic pH Balance ($5.50): 5.50*24*1.10 = 145.20
(10037, 57, 24, 145.20, '2026-02-20'),
-- Product 40 Teton Peak ($5.50): 5.50*24*1.10 = 145.20
(10037, 40, 24, 145.20, '2026-04-20'),

-- User 10038 (Andre Baptiste) — 4 transactions
-- Product 39 Volcanic Rise ($4.50): 4.50*16*1.10 = 79.20
(10038, 39, 16, 79.20, '2026-04-15'),
-- Product 26 Sierra Sparkle ($3.75): 3.75*16*1.10 = 66.00
(10038, 26, 16, 66.00, '2026-05-15'),

-- User 10039 (Miriam Goldstein) — 5 transactions
-- Product 78 Pacific Rim Reserve ($8.50): 8.50*24*1.10 = 224.40
(10039, 78, 24, 224.40, '2026-05-01'),
-- Product 64 Tahoe Blue ($8.00): 8.00*24*1.10 = 211.20
(10039, 64, 24, 211.20, '2026-05-15'),

-- User 10040 (Rhys Owens) — 7 transactions
-- Product 47 Cascade Ion ($6.00): 6.00*24*1.10 = 158.40
(10040, 47, 24, 158.40, '2025-11-01'),
-- Product 65 Hilina Volcanic ($9.00): 9.00*24*1.10 = 237.60
(10040, 65, 24, 237.60, '2026-01-01'),
-- Product 40 Teton Peak ($5.50): 5.50*24*1.10 = 145.20
(10040, 40, 24, 145.20, '2026-03-01'),
-- Product 76 Sierra Reserve ($7.50): 7.50*24*1.10 = 198.00
(10040, 76, 24, 198.00, '2026-05-01'),

-- ============================================================
-- CANCELLED CUSTOMERS (10041–10060): Transactions before cancellation
-- ============================================================
-- Product 1 Alpine Crisp ($3.00): 3.00*4*1.10 = 13.20
(10041, 1,  4,  13.20, '2025-10-15'),
-- Product 8 Fuji Essence ($5.50): 5.50*8*1.10 = 48.40
(10042, 8,  8,  48.40, '2025-05-10'),
-- Product 4 Pure Alkaline ($5.00): 5.00*16*1.10 = 88.00
(10043, 4,  16, 88.00, '2024-09-01'),
-- Product 9 Kentucky Limestone ($3.50): 3.50*8*1.10 = 30.80
(10043, 9,  8,  30.80, '2025-04-01'),
-- Product 12 Cascade Splendor ($7.00): 7.00*8*1.10 = 61.60
(10044, 12, 8,  61.60, '2025-02-01'),
-- Product 1 Alpine Crisp ($3.00): 3.00*4*1.10 = 13.20
(10045, 1,  4,  13.20, '2025-09-15'),
-- Product 19 Summit Fizz ($3.25): 3.25*24*1.10 = 85.80
(10046, 19, 24, 85.80, '2024-07-01'),
-- Product 39 Volcanic Rise ($4.50): 4.50*24*1.10 = 118.80
(10046, 39, 24, 118.80, '2024-10-01'),
-- Product 11 Vibe Electro-Lite ($4.00): 4.00*8*1.10 = 35.20
(10047, 11, 8,  35.20, '2025-04-01'),
-- Product 20 Blue Ridge Bubble ($3.75): 3.75*16*1.10 = 66.00
(10048, 20, 16, 66.00, '2024-12-01'),
-- Product 1 Alpine Crisp ($3.00): 3.00*4*1.10 = 13.20
(10049, 1,  4,  13.20, '2025-07-15'),
-- Product 8 Fuji Essence ($5.50): 5.50*8*1.10 = 48.40
(10050, 8,  8,  48.40, '2025-06-01'),
-- Product 22 Great Lakes Sparkle ($3.50): 3.50*16*1.10 = 61.60
(10051, 22, 16, 61.60, '2024-04-01'),
-- Product 52 Downpour Alkali ($5.00): 5.00*24*1.10 = 132.00
(10052, 49, 24, 132.00, '2024-01-01'),
-- Product 1 Alpine Crisp ($3.00): 3.00*4*1.10 = 13.20
(10053, 1,  4,  13.20, '2025-11-15'),
-- Product 11 Vibe Electro-Lite ($4.00): 4.00*8*1.10 = 35.20
(10054, 11, 8,  35.20, '2025-03-01'),
-- Product 1 Alpine Crisp ($3.00): 3.00*4*1.10 = 13.20
(10055, 1,  4,  13.20, '2025-08-15'),
-- Product 35 Adirondack Fizz ($3.50): 3.50*16*1.10 = 61.60
(10056, 35, 16, 61.60, '2024-10-01'),
-- Product 11 Vibe Electro-Lite ($4.00): 4.00*8*1.10 = 35.20
(10057, 11, 8,  35.20, '2025-07-01'),
-- Product 1 Alpine Crisp ($3.00): 3.00*4*1.10 = 13.20
(10058, 1,  4,  13.20, '2025-10-15'),
-- Product 8 Fuji Essence ($5.50): 5.50*8*1.10 = 48.40
(10059, 8,  8,  48.40, '2025-05-01'),
-- Product 3 Pacific Breeze ($3.50): 3.50*16*1.10 = 61.60
(10060, 3,  16, 61.60, '2024-08-01'),

-- ============================================================
-- LOW-ENGAGEMENT CUSTOMERS (10061–10130): 1 transaction each
-- ============================================================
-- Product 1 Alpine Crisp ($3.00): 3.00*4*1.10 = 13.20
(10061, 1,  4, 13.20, '2026-05-05'),
-- Product 18 Fresh Splash ($2.50): 2.50*8*1.10 = 22.00
(10062, 18, 8, 22.00, '2026-01-05'),
-- Product 10 Ocean Fizz ($3.00): 3.00*4*1.10 = 13.20
(10063, 10, 4, 13.20, '2025-12-10'),
-- Product 11 Vibe Electro-Lite ($4.00): 4.00*8*1.10 = 35.20
(10064, 11, 8, 35.20, '2026-04-20'),
-- Product 1 Alpine Crisp ($3.00): 3.00*4*1.10 = 13.20
(10065, 1,  4, 13.20, '2025-11-05'),
-- Product 18 Fresh Splash ($2.50): 2.50*8*1.10 = 22.00
(10066, 18, 8, 22.00, '2026-02-05'),
-- Product 10 Ocean Fizz ($3.00): 3.00*4*1.10 = 13.20
(10067, 10, 4, 13.20, '2026-03-05'),
-- Product 8 Fuji Essence ($5.50): 5.50*8*1.10 = 48.40
(10068, 8,  8, 48.40, '2026-05-15'),
-- Product 1 Alpine Crisp ($3.00): 3.00*4*1.10 = 13.20
(10069, 1,  4, 13.20, '2025-10-05'),
-- Product 13 Zen Balance ($4.50): 4.50*4*1.10 = 19.80
(10070, 13, 4, 19.80, '2026-05-18'),
-- Product 9 Kentucky Limestone ($3.50): 3.50*8*1.10 = 30.80
(10071, 9,  8, 30.80, '2025-06-01'),
-- Product 1 Alpine Crisp ($3.00): 3.00*4*1.10 = 13.20
(10072, 1,  4, 13.20, '2025-09-05'),
-- Product 18 Fresh Splash ($2.50): 2.50*4*1.10 = 11.00
(10073, 18, 4, 11.00, '2026-04-25'),
-- Product 11 Vibe Electro-Lite ($4.00): 4.00*8*1.10 = 35.20
(10074, 11, 8, 35.20, '2026-01-20'),
-- Product 1 Alpine Crisp ($3.00): 3.00*4*1.10 = 13.20
(10075, 1,  4, 13.20, '2025-08-05'),
-- Product 8 Fuji Essence ($5.50): 5.50*8*1.10 = 48.40
(10076, 8,  8, 48.40, '2026-05-22'),
-- Product 10 Ocean Fizz ($3.00): 3.00*4*1.10 = 13.20
(10077, 10, 4, 13.20, '2025-07-05'),
-- Product 13 Zen Balance ($4.50): 4.50*4*1.10 = 19.80
(10078, 13, 4, 19.80, '2026-05-05'),
-- Product 1 Alpine Crisp ($3.00): 3.00*4*1.10 = 13.20
(10079, 1,  4, 13.20, '2025-06-05'),
-- Product 18 Fresh Splash ($2.50): 2.50*4*1.10 = 11.00
(10080, 18, 4, 11.00, '2026-03-20'),
-- Product 9 Kentucky Limestone ($3.50): 3.50*4*1.10 = 15.40
(10081, 9,  4, 15.40, '2026-04-05'),
-- Product 1 Alpine Crisp ($3.00): 3.00*8*1.10 = 26.40
(10082, 1,  8, 26.40, '2025-12-05'),
-- Product 10 Ocean Fizz ($3.00): 3.00*4*1.10 = 13.20
(10083, 10, 4, 13.20, '2025-11-20'),
-- Product 13 Zen Balance ($4.50): 4.50*4*1.10 = 19.80
(10084, 13, 4, 19.80, '2026-05-08'),
-- Product 11 Vibe Electro-Lite ($4.00): 4.00*8*1.10 = 35.20
(10085, 11, 8, 35.20, '2025-05-01'),
-- Product 1 Alpine Crisp ($3.00): 3.00*4*1.10 = 13.20
(10086, 1,  4, 13.20, '2025-10-20'),
-- Product 18 Fresh Splash ($2.50): 2.50*4*1.10 = 11.00
(10087, 18, 4, 11.00, '2026-05-14'),
-- Product 8 Fuji Essence ($5.50): 5.50*8*1.10 = 48.40
(10088, 8,  8, 48.40, '2026-02-20'),
-- Product 10 Ocean Fizz ($3.00): 3.00*4*1.10 = 13.20
(10089, 10, 4, 13.20, '2025-09-20'),
-- Product 13 Zen Balance ($4.50): 4.50*4*1.10 = 19.80
(10090, 13, 4, 19.80, '2026-04-28');
