-- DewPoint Database: Sample Data
-- Authors: Amy Ramsay, Bea Sauve
-- Date: May, 2026
-- Course: AD350 Database Technology
-- Run AFTER DewPoint_DataBase.sql

USE dew_point;

INSERT INTO user (first_name, last_name, email, phone_number, address) VALUES
('Amy',     'Ramsay',   'amy.ramsay@example.com',     '206-555-0101', '123 Pine St, Seattle, WA 98101'),
('Bea',     'Sauve',    'bea.sauve@example.com',      '206-555-0102', '456 Cedar Ave, Seattle, WA 98102'),
('Carlos',  'Mendez',   'carlos.mendez@example.com',  '503-555-0103', '789 Oak Blvd, Portland, OR 97201'),
('Dana',    'Park',     'dana.park@example.com',      '415-555-0104', '12 Bay St, San Francisco, CA 94105'),
('Eli',     'Nakamura', 'eli.nakamura@example.com',   '212-555-0105', '88 Hudson Rd, New York, NY 10013'),
('Fatima',  'Hassan',   'fatima.hassan@example.com',  '312-555-0106', '500 Lake Dr, Chicago, IL 60601'),
('Gabe',    'OBrien',   'gabe.obrien@example.com',    '617-555-0107', '14 Beacon St, Boston, MA 02108'),
('Hana',    'Lee',      'hana.lee@example.com',       '206-555-0108', '900 Capitol Way, Olympia, WA 98501'),
('Ian',     'Thompson', 'ian.thompson@example.com',   '720-555-0109', '77 Mile High Rd, Denver, CO 80202'),
('Jules',   'Martin',   'jules.martin@example.com',   '602-555-0110', '202 Desert Ln, Phoenix, AZ 85003'),
('Kai',     'Patel',    'kai.patel@example.com',      '206-555-0111', '321 Spruce Way, Bellevue, WA 98004'),
('Lina',    'Garcia',   'lina.garcia@example.com',    '305-555-0112', '50 Palm Dr, Miami, FL 33101');

INSERT INTO supplier (name, address, phone_number, email, status, onboard, offboard) VALUES
('Cascade Springs Co',        '1 Cascade Way, North Bend, WA 98045',     '425-555-1001', 'orders@cascadesprings.com',     'Active',   '2023-01-15', NULL),
('Pure Source Bottlers',      '900 Bottling Rd, Tacoma, WA 98402',       '253-555-1002', 'sales@puresource.com',          'Active',   '2023-03-22', NULL),
('Hydro Distribution Inc',    '450 Industrial Pkwy, Kent, WA 98032',     '253-555-1003', 'contact@hydrodist.com',         'Active',   '2023-05-10', NULL),
('Mountain Pure LLC',         '77 Ridge Rd, Leavenworth, WA 98826',      '509-555-1004', 'info@mountainpure.com',         'Active',   '2024-01-05', NULL),
('Alpine Water Co',           '12 Glacier Blvd, Bend, OR 97701',         '541-555-1005', 'orders@alpinewater.com',        'Active',   '2024-02-18', NULL),
('Glacier Source Inc',        '300 Ice Field Dr, Anchorage, AK 99501',   '907-555-1006', 'sales@glaciersource.com',       'Active',   '2024-04-30', NULL),
('Spring Valley Distributors','55 Valley Ln, Boise, ID 83702',           '208-555-1007', 'hello@springvalley.com',        'Inactive', '2023-06-01', '2025-12-31'),
('Wellness Beverages Co',     '88 Health Way, Eugene, OR 97401',         '541-555-1008', 'sales@wellnessbev.com',         'Active',   '2024-09-12', NULL),
('Northwest Bottling',        '210 Industrial St, Spokane, WA 99201',    '509-555-1009', 'orders@nwbottling.com',         'Active',   '2025-02-20', NULL),
('Pacific Hydration',         '99 Ocean Blvd, Long Beach, CA 90802',     '562-555-1010', 'team@pacifichydration.com',     'Active',   '2025-06-15', NULL);

INSERT INTO product (supplierID, product_name, product_type, inventory, size_ml, flavor, active) VALUES
-- Sparkling (productID 1-10)
(101, 'Citrus Sparkle',     'Sparkling', 240, 500,  'Lemon',       TRUE),
(101, 'Berry Fizz',          'Sparkling', 180, 500,  'Mixed Berry', TRUE),
(102, 'Mint Spritz',         'Sparkling',  95, 500,  'Mint',        TRUE),
(102, 'Original Sparkle',    'Sparkling', 320, 750,  'Plain',       TRUE),
(103, 'Peach Bliss',         'Sparkling', 150, 500,  'Peach',       TRUE),
(103, 'Lime Twist',          'Sparkling', 200, 500,  'Lime',        TRUE),
(104, 'Grapefruit Pop',      'Sparkling',  60, 500,  'Grapefruit',  TRUE),
(104, 'Cucumber Splash',     'Sparkling',  45, 500,  'Cucumber',    TRUE),
(105, 'Raspberry Rush',      'Sparkling', 130, 500,  'Raspberry',   TRUE),
(105, 'Blackberry Bubble',   'Sparkling',  80, 500,  'Blackberry',  TRUE),
-- Alkaline (productID 11-20)
(106, 'Pure Alkaline 9.5',   'Alkaline',  300, 1000, NULL,          TRUE),
(106, 'High pH Hydrate',     'Alkaline',  210, 750,  NULL,          TRUE),
(108, 'Mountain Alkaline',   'Alkaline',  175, 1000, NULL,          TRUE),
(108, 'Glacier Alkaline',    'Alkaline',  140, 500,  NULL,          TRUE),
(108, 'Daily Alkaline 8.5',  'Alkaline',  400, 500,  NULL,          TRUE),
(109, 'Sport Alkaline',      'Alkaline',  220, 750,  NULL,          TRUE),
(109, 'Premium pH 10',       'Alkaline',   70, 1000, NULL,          TRUE),
(110, 'Reset Alkaline',      'Alkaline',  110, 500,  NULL,          TRUE),
(110, 'Recovery Alkaline',   'Alkaline',   55, 1500, NULL,          TRUE),
(110, 'Wellness Alkaline',   'Alkaline',  165, 500,  NULL,          TRUE),
-- Mineral (productID 21-30)
(101, 'Spring Mineral Classic','Mineral', 260, 750,  NULL,          TRUE),
(102, 'Alpine Mineral',       'Mineral',  190, 1000, NULL,          TRUE),
(103, 'Volcanic Mineral',     'Mineral',   85, 500,  NULL,          TRUE),
(104, 'Artesian Mineral',     'Mineral',  150, 750,  NULL,          TRUE),
(105, 'Coastal Mineral',      'Mineral',  120, 500,  NULL,          TRUE),
(106, 'Highland Mineral',     'Mineral',  205, 1000, NULL,          TRUE),
(108, 'Pristine Mineral',     'Mineral',   40, 500,  NULL,          TRUE),
(109, 'Mountain Spring',      'Mineral',  175, 750,  NULL,          TRUE),
(110, 'Deep Earth Mineral',   'Mineral',   25, 1500, NULL,          FALSE),
(101, 'Cascade Mineral',      'Mineral',  310, 500,  NULL,          TRUE);

INSERT INTO sparkling_water (productID, carbonation_level) VALUES
(1,  'Medium'),
(2,  'Light'),
(3,  'Light'),
(4,  'Heavy'),
(5,  'Medium'),
(6,  'Medium'),
(7,  'Heavy'),
(8,  'Light'),
(9,  'Medium'),
(10, 'Heavy');

INSERT INTO alkaline_water (productID, PH_Level) VALUES
(11, 9.5),
(12, 9.0),
(13, 8.8),
(14, 9.2),
(15, 8.5),
(16, 9.0),
(17, 10.0),
(18, 8.7),
(19, 9.3),
(20, 8.6);

INSERT INTO mineral_water (productID, calcium_mg, magnesium_mg, sodium_mg, mineral_source) VALUES
(21, 80.0,  25.0,  12.0, 'Cascade Mountain Spring'),
(22, 95.5,  30.2,  8.5,  'Alpine Aquifer'),
(23, 120.0, 45.0,  18.0, 'Volcanic Bedrock Source'),
(24, 60.0,  20.0,  6.0,  'Artesian Well, Oregon'),
(25, 70.0,  22.5,  35.0, 'Coastal Aquifer'),
(26, 110.0, 38.0,  15.0, 'Highland Glacial Source'),
(27, 50.0,  18.0,  4.0,  'Pristine Forest Spring'),
(28, 85.0,  28.0,  10.0, 'Mountain Spring, WA'),
(29, 200.0, 55.0,  22.0, 'Deep Earth Reserve'),
(30, 75.0,  24.0,  9.0,  'Cascade Range Spring');

INSERT INTO subscription (userID, plan_name, frequency, duration, box_size, status, start_date, end_date) VALUES
(10001, 'Drizzle',  'Bi Weekly', '6 Month', '16', 'Active',   '2025-12-01', '2026-06-01'),
(10002, 'Downpour', 'Weekly',    'Year',    '24', 'Active',   '2025-09-15', '2026-09-15'),
(10003, 'Dew',      'Monthly',   'Month',   '8',  'Active',   '2026-04-10', '2026-05-10'),
(10004, 'Mist',     'Monthly',   '6 Month', '4',  'Active',   '2026-01-20', '2026-07-20'),
(10005, 'Drizzle',  'Bi Weekly', 'Year',    '16', 'Active',   '2025-11-05', '2026-11-05'),
(10006, 'Dew',      'Bi Weekly', '6 Month', '8',  'Inactive', '2024-10-01', '2025-04-01'),
(10007, 'Downpour', 'Weekly',    '6 Month', '24', 'Active',   '2026-02-14', '2026-08-14'),
(10008, 'Dew',      'Monthly',   '6 Month', '8',  'Active',   '2026-03-01', '2026-09-01'),
(10010, 'Mist',     'Monthly',   'Month',   '4',  'Inactive', '2025-08-12', '2025-09-12'),
(10011, 'Drizzle',  'Bi Weekly', 'Year',    '16', 'Active',   '2025-07-04', '2026-07-04');

INSERT INTO transaction (userID, productID, quantity, receivedAt) VALUES
-- Citrus Sparkle (1) and Original Sparkle (4) are the most popular
(10001, 1,  12, '2026-05-15'),
(10001, 4,  8,  '2026-05-10'),
(10001, 11, 6,  '2026-04-22'),
(10002, 1,  24, '2026-05-12'),
(10002, 4,  16, '2026-05-01'),
(10002, 2,  12, '2026-04-18'),
(10002, 21, 6,  '2026-03-30'),
(10003, 1,  8,  '2026-05-08'),
(10003, 15, 12, '2026-04-25'),
(10003, 4,  4,  '2026-04-02'),
(10004, 4,  6,  '2026-05-05'),
(10004, 11, 4,  '2026-04-15'),
(10004, 21, 6,  '2026-02-28'),
(10005, 1,  16, '2026-05-18'),
(10005, 6,  8,  '2026-05-09'),
(10005, 15, 12, '2026-04-29'),
(10005, 28, 6,  '2026-03-20'),
-- User 10006 last purchased 2025-12 (inactive, normally buys Citrus + Alkaline)
(10006, 1,  4,  '2025-12-10'),
(10006, 11, 6,  '2025-11-22'),
(10006, 1,  8,  '2025-10-15'),
(10007, 4,  20, '2026-05-19'),
(10007, 1,  12, '2026-05-11'),
(10007, 22, 6,  '2026-04-07'),
(10008, 1,  6,  '2026-05-14'),
(10008, 4,  8,  '2026-04-28'),
(10008, 15, 4,  '2026-03-15'),
-- User 10009 last purchased 2025-11 (inactive, normally buys Mineral)
(10009, 21, 8,  '2025-11-30'),
(10009, 28, 6,  '2025-10-12'),
(10009, 21, 4,  '2025-09-05'),
-- User 10010 last purchased 2025-08 (inactive, normally buys Sparkling + Mint)
(10010, 3,  6,  '2025-08-20'),
(10010, 2,  4,  '2025-07-15'),
(10011, 1,  10, '2026-05-17'),
(10011, 4,  6,  '2026-05-03'),
(10011, 11, 8,  '2026-04-12'),
(10011, 26, 4,  '2026-03-08'),
-- Additional spread
(10001, 2,  4,  '2026-03-25'),
(10002, 15, 8,  '2026-02-10'),
(10003, 21, 4,  '2026-01-18'),
(10005, 4,  10, '2025-12-22'),
(10007, 11, 6,  '2026-01-30');

INSERT INTO shipment (transactionID, status, schedule_date, shipment_date, tracking_number, address) VALUES
(6000001, 'Delivered',        '2026-05-16', '2026-05-17', 'TRK1001', '123 Pine St, Seattle, WA 98101'),
(6000002, 'Delivered',        '2026-05-11', '2026-05-12', 'TRK1002', '123 Pine St, Seattle, WA 98101'),
(6000003, 'Delivered',        '2026-04-23', '2026-04-24', 'TRK1003', '123 Pine St, Seattle, WA 98101'),
(6000004, 'Delivered',        '2026-05-13', '2026-05-14', 'TRK1004', '456 Cedar Ave, Seattle, WA 98102'),
(6000005, 'Delivered',        '2026-05-02', '2026-05-03', 'TRK1005', '456 Cedar Ave, Seattle, WA 98102'),
(6000006, 'Delivered',        '2026-04-19', '2026-04-20', 'TRK1006', '456 Cedar Ave, Seattle, WA 98102'),
(6000007, 'Delivered',        '2026-03-31', '2026-04-01', 'TRK1007', '456 Cedar Ave, Seattle, WA 98102'),
(6000008, 'Delivered',        '2026-05-09', '2026-05-10', 'TRK1008', '789 Oak Blvd, Portland, OR 97201'),
(6000009, 'Delivered',        '2026-04-26', '2026-04-27', 'TRK1009', '789 Oak Blvd, Portland, OR 97201'),
(6000010, 'Delivered',        '2026-04-03', '2026-04-04', 'TRK1010', '789 Oak Blvd, Portland, OR 97201'),
(6000011, 'Delivered',        '2026-05-06', '2026-05-07', 'TRK1011', '12 Bay St, San Francisco, CA 94105'),
(6000012, 'Delivered',        '2026-04-16', '2026-04-17', 'TRK1012', '12 Bay St, San Francisco, CA 94105'),
(6000013, 'Delivered',        '2026-03-01', '2026-03-02', 'TRK1013', '12 Bay St, San Francisco, CA 94105'),
(6000014, 'Delivered',        '2026-05-19', '2026-05-20', 'TRK1014', '88 Hudson Rd, New York, NY 10013'),
(6000015, 'Out for Delivery', '2026-05-10', NULL,         'TRK1015', '88 Hudson Rd, New York, NY 10013'),
(6000016, 'Delivered',        '2026-04-30', '2026-05-01', 'TRK1016', '88 Hudson Rd, New York, NY 10013'),
(6000017, 'Delivered',        '2026-03-21', '2026-03-22', 'TRK1017', '88 Hudson Rd, New York, NY 10013'),
(6000018, 'Delivered',        '2025-12-11', '2025-12-12', 'TRK1018', '500 Lake Dr, Chicago, IL 60601'),
(6000019, 'Delivered',        '2025-11-23', '2025-11-24', 'TRK1019', '500 Lake Dr, Chicago, IL 60601'),
(6000020, 'Delivered',        '2025-10-16', '2025-10-17', 'TRK1020', '500 Lake Dr, Chicago, IL 60601'),
(6000021, 'In Transit',       '2026-05-20', NULL,         'TRK1021', '14 Beacon St, Boston, MA 02108'),
(6000022, 'Delivered',        '2026-05-12', '2026-05-13', 'TRK1022', '14 Beacon St, Boston, MA 02108'),
(6000023, 'Delivered',        '2026-04-08', '2026-04-09', 'TRK1023', '14 Beacon St, Boston, MA 02108'),
(6000024, 'Delivered',        '2026-05-15', '2026-05-16', 'TRK1024', '900 Capitol Way, Olympia, WA 98501'),
(6000025, 'Delivered',        '2026-04-29', '2026-04-30', 'TRK1025', '900 Capitol Way, Olympia, WA 98501'),
(6000026, 'Delivered',        '2026-03-16', '2026-03-17', 'TRK1026', '900 Capitol Way, Olympia, WA 98501'),
(6000027, 'Delivered',        '2025-12-01', '2025-12-02', 'TRK1027', '77 Mile High Rd, Denver, CO 80202'),
(6000028, 'Delivered',        '2025-10-13', '2025-10-14', 'TRK1028', '77 Mile High Rd, Denver, CO 80202'),
(6000029, 'Delivered',        '2025-09-06', '2025-09-07', 'TRK1029', '77 Mile High Rd, Denver, CO 80202'),
(6000030, 'Delivered',        '2025-08-21', '2025-08-22', 'TRK1030', '202 Desert Ln, Phoenix, AZ 85003'),
(6000031, 'Delivered',        '2025-07-16', '2025-07-17', 'TRK1031', '202 Desert Ln, Phoenix, AZ 85003'),
(6000032, 'Delivered',        '2026-05-18', '2026-05-19', 'TRK1032', '321 Spruce Way, Bellevue, WA 98004'),
(6000033, 'Delivered',        '2026-05-04', '2026-05-05', 'TRK1033', '321 Spruce Way, Bellevue, WA 98004'),
(6000034, 'Delivered',        '2026-04-13', '2026-04-14', 'TRK1034', '321 Spruce Way, Bellevue, WA 98004'),
(6000035, 'Delivered',        '2026-03-09', '2026-03-10', 'TRK1035', '321 Spruce Way, Bellevue, WA 98004'),
(6000036, 'Delivered',        '2026-03-26', '2026-03-27', 'TRK1036', '123 Pine St, Seattle, WA 98101'),
(6000037, 'Delivered',        '2026-02-11', '2026-02-12', 'TRK1037', '456 Cedar Ave, Seattle, WA 98102'),
(6000038, 'Delivered',        '2026-01-19', '2026-01-20', 'TRK1038', '789 Oak Blvd, Portland, OR 97201'),
(6000039, 'Delivered',        '2025-12-23', '2025-12-24', 'TRK1039', '88 Hudson Rd, New York, NY 10013'),
(6000040, 'Delivered',        '2026-01-31', '2026-02-01', 'TRK1040', '14 Beacon St, Boston, MA 02108');

INSERT INTO product_review (reviewID, userID, transactionID, rating, review_comment, review_date) VALUES
('R0001', 10001, 6000001, 5, 'Citrus Sparkle is my daily go-to. Crisp and refreshing.',                  '2026-05-18'),
('R0002', 10002, 6000004, 5, 'Best sparkling water on the market. Subscribing for life.',                '2026-05-14'),
('R0003', 10003, 6000008, 4, 'Love the lemon flavor, wish it came in larger bottles.',                   '2026-05-10'),
('R0004', 10004, 6000011, 4, 'Original Sparkle pairs perfectly with dinner.',                            '2026-05-07'),
('R0005', 10005, 6000014, 5, 'Refreshing and clean. Highly recommend.',                                  '2026-05-20'),
('R0006', 10006, 6000018, 3, 'Good water, but shipping took longer than expected.',                      '2025-12-15'),
('R0007', 10007, 6000021, 5, 'Downpour subscription is worth every penny.',                              '2026-05-21'),
('R0008', 10008, 6000024, 4, 'Daily Alkaline keeps me hydrated through long shifts.',                    '2026-05-17'),
('R0009', 10009, 6000027, 4, 'Spring Mineral has a nice smooth taste.',                                  '2025-12-05'),
('R0010', 10010, 6000030, 2, 'Mint Spritz was too subtle for my taste.',                                 '2025-08-25'),
('R0011', 10011, 6000032, 5, 'Consistent quality every shipment.',                                       '2026-05-20'),
('R0012', 10001, 6000036, 4, 'Berry Fizz is a nice change of pace.',                                     '2026-03-29');
