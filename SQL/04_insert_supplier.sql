-- DewPoint Database: Supplier Table Data
-- Authors: Amy Ramsay, Bea Sauve
-- Date: May, 2026
-- Course: AD350 Database Technology
-- Run AFTER DewPoint_DataBase.sql
-- NOTE: Existing 02_insert_data.sql already inserts supplierIDs 101–115.
--       This file inserts 116–220 (105 new suppliers).
--       Includes: active, inactive/offboarded, and recently onboarded suppliers.

USE dew_point;

INSERT INTO supplier (name, address, phone_number, email, status, onboard, offboard) VALUES
-- ACTIVE SUPPLIERS (116–165)
('Summit Aqua', '10 High Peak Rd, Aspen, CO 81611', '800-555-201', 'info@summitaqua.com', 'Active', '2024-02-01', NULL),
('Blue Ridge Springs', '20 Ridge Crest Way, Asheville, NC 28801', '800-555-202', 'orders@blueridgesprings.com', 'Active', '2024-03-15', NULL),
('Cascadia Source', '30 Rainforest Blvd, Olympia, WA 98501', '800-555-203', 'hello@cascadiasource.com', 'Active', '2024-04-01', NULL),
('Great Lakes Pure', '40 Shoreline Dr, Cleveland, OH 44101', '800-555-204', 'sales@greatlakespure.com', 'Active', '2024-05-10', NULL),
('Sonoran Desert Springs', '50 Saguaro Rd, Tucson, AZ 85701', '800-555-205', 'contact@sonoransprings.com', 'Active', '2024-06-20', NULL),
('Appalachian Flow', '60 Trail Hollow, Knoxville, TN 37901', '800-555-206', 'info@appalachianflow.com', 'Active', '2024-07-01', NULL),
('Ozark Crystal Waters', '70 Spring Valley Dr, Springfield, MO 65801', '800-555-207', 'ops@ozarkcrystal.com', 'Active', '2024-08-15', NULL),
('Sierra Nevada Hydro', '80 Granite Pass, Reno, NV 89501', '800-555-208', 'orders@sierranevadahydro.com', 'Active', '2024-09-01', NULL),
('Bayou Fresh', '90 Wetland Way, Baton Rouge, LA 70801', '800-555-209', 'bayou@bayoufresh.com', 'Active', '2024-10-10', NULL),
('Pacific Rim Aqua', '100 Shoreline Blvd, Honolulu, HI 96801', '800-555-210', 'aloha@pacificrimaqua.com', 'Active', '2024-11-05', NULL),
('Everglades Reserve', '110 Swamp Rd, Naples, FL 34101', '800-555-211', 'reserve@evergladeswater.com', 'Active', '2024-12-01', NULL),
('Columbia Basin Water Co', '120 Basalt Ridge, Kennewick, WA 99336', '800-555-212', 'info@columbiabasin.com', 'Active', '2025-01-15', NULL),
('Rocky Mountain Mineral', '130 Elk Run, Colorado Springs, CO 80901', '800-555-213', 'sales@rockymtnmineral.com', 'Active', '2025-02-01', NULL),
('New England Spring Co', '140 Maple Syrup Ln, Burlington, VT 05401', '800-555-214', 'orders@newenglandspring.com', 'Active', '2025-03-10', NULL),
('Gulf Coast Aqua', '150 Pelican Ave, Pensacola, FL 32501', '800-555-215', 'gulf@gulfcoastaqua.com', 'Active', '2025-04-01', NULL),
('Denali Deep Springs', '160 Tundra Blvd, Fairbanks, AK 99701', '800-555-216', 'north@denalisprings.com', 'Active', '2025-05-20', NULL),
('Adirondack Pure', '170 Loon Lake Rd, Lake Placid, NY 12946', '800-555-217', 'pure@adirondackwater.com', 'Active', '2025-06-01', NULL),
('Mesa Verde Minerals', '180 Pueblo Dr, Cortez, CO 81321', '800-555-218', 'info@mesaverde.com', 'Active', '2025-07-15', NULL),
('Great Plains H2O', '190 Wheat Field Way, Wichita, KS 67201', '800-555-219', 'plains@greatplainsh2o.com', 'Active', '2025-08-01', NULL),
('Chesapeake Spring Co', '200 Bay Shore Rd, Annapolis, MD 21401', '800-555-220', 'info@chesapeakespring.com', 'Active', '2025-09-10', NULL),
('Volcanic Ridge Water', '210 Lava Flow Rd, Bend, OR 97701', '800-555-221', 'lava@volcanicridge.com', 'Active', '2025-10-01', NULL),
('Teton Source', '220 Jackson Hole Pkwy, Jackson, WY 83001', '800-555-222', 'teton@tetonsource.com', 'Active', '2025-11-15', NULL),
('Olympic Peninsula Pure', '230 Rainforest Rd, Port Angeles, WA 98362', '800-555-223', 'ops@olympicpure.com', 'Active', '2025-12-01', NULL),
('Black Hills Spring', '240 Mt Rushmore Rd, Rapid City, SD 57701', '800-555-224', 'info@blackhillsspring.com', 'Active', '2026-01-10', NULL),
('Flint Creek Bottlers', '250 Pebble Creek Way, Missoula, MT 59801', '800-555-225', 'orders@flintcreek.com', 'Active', '2026-02-01', NULL),
('Rio Grande Aqua', '260 Desert Bloom Ct, Albuquerque, NM 87101', '800-555-226', 'rio@riograndeaqua.com', 'Active', '2026-02-15', NULL),
('Piedmont Natural Waters', '270 Red Clay Rd, Raleigh, NC 27601', '800-555-227', 'info@piedmontwater.com', 'Active', '2026-03-01', NULL),
('Catskill Mountain Spring', '280 Hudson Valley Way, Kingston, NY 12401', '800-555-228', 'ops@catskillspring.com', 'Active', '2026-03-10', NULL),
('Cascade Alkaline Labs', '290 Tech Park Blvd, Bellevue, WA 98004', '800-555-229', 'lab@cascadealkaline.com', 'Active', '2026-03-20', NULL),
('Prairie Wind Water', '300 Windmill Rd, Sioux Falls, SD 57101', '800-555-230', 'info@prairiewind.com', 'Active', '2026-04-01', NULL),
('Blue Hole Artesian', '310 Karst Way, San Marcos, TX 78666', '800-555-231', 'blue@bluehole.com', 'Active', '2026-04-05', NULL),
('Smoky Ridge Springs', '320 Laurel Hollow, Gatlinburg, TN 37738', '800-555-232', 'smoky@smokyridge.com', 'Active', '2026-04-10', NULL),
('Willamette Valley Water', '330 Vineyard Rd, Eugene, OR 97401', '800-555-233', 'valley@willamettewater.com', 'Active', '2026-04-15', NULL),
('Puget Sound Pure', '340 Ferry Dock Way, Anacortes, WA 98221', '800-555-234', 'sound@pugetsoundpure.com', 'Active', '2026-04-20', NULL),
('Salt Flat Springs', '350 Bonneville Dr, Wendover, UT 84083', '800-555-235', 'flat@saltflatsprings.com', 'Active', '2026-04-25', NULL),
('High Desert H2O', '360 Sagebrush Blvd, Bend, OR 97702', '800-555-236', 'desert@highdesert.com', 'Active', '2026-05-01', NULL),
('Finger Lakes Water Co', '370 Seneca Lake Rd, Geneva, NY 14456', '800-555-237', 'info@fingerlakeswater.com', 'Active', '2026-05-01', NULL),
('Bayou Artesian', '380 Cypress Ct, Lafayette, LA 70501', '800-555-238', 'bayou@bayouartesian.com', 'Active', '2026-05-05', NULL),
('Olympic Range Mineral', '390 Storm King Rd, Sequim, WA 98382', '800-555-239', 'min@olympicrange.com', 'Active', '2026-05-05', NULL),
('Minnesota Ice Water', '400 10,000 Lakes Blvd, St. Paul, MN 55101', '800-555-240', 'cold@mnicewater.com', 'Active', '2026-05-10', NULL),
('Absaroka Peak Water', '410 Yellowstone Gate Rd, Cody, WY 82414', '800-555-241', 'abs@absarokapeak.com', 'Active', '2026-05-10', NULL),
('Coastal Fog Bottling', '420 Morro Bay Pkwy, San Luis Obispo, CA 93401', '800-555-242', 'fog@coastalfog.com', 'Active', '2026-05-12', NULL),
('High Country Hydration', '430 Alpine Loop Rd, Durango, CO 81301', '800-555-243', 'info@highcountryh2o.com', 'Active', '2026-05-12', NULL),
('Salish Sea Springs', '440 Orca Way, Friday Harbor, WA 98250', '800-555-244', 'salish@salishseawater.com', 'Active', '2026-05-14', NULL),
('Loess Hills Water', '450 Bluff Top Way, Council Bluffs, IA 51501', '800-555-245', 'info@loesshills.com', 'Active', '2026-05-14', NULL),
('Tahoe Blue Bottlers', '460 Crystal Bay Rd, Tahoe City, CA 96145', '800-555-246', 'blue@tahoeblue.com', 'Active', '2026-05-15', NULL),
('Hilina Spring Co', '470 Sea Cliffs Way, Pahala, HI 96777', '800-555-247', 'aloha@hilina.com', 'Active', '2026-05-15', NULL),
('Iron Range Mineral Co', '480 Ore Pit Rd, Hibbing, MN 55746', '800-555-248', 'iron@ironrange.com', 'Active', '2026-05-16', NULL),
('Longleaf Springs', '490 Piney Woods Way, Valdosta, GA 31601', '800-555-249', 'longleaf@longleafsprings.com', 'Active', '2026-05-16', NULL),
('Centennial Spring', '500 Centennial Blvd, Cheyenne, WY 82001', '800-555-250', 'ops@centennialspring.com', 'Active', '2026-05-18', NULL),

-- INACTIVE / OFFBOARDED SUPPLIERS (166–180)
('Glacier Bay Water', '510 Ice Shelf Way, Juneau, AK 99801', '800-555-301', 'info@glacierbay.com', 'Inactive', '2021-03-01', '2023-03-01'),
('Crystal Clear Co', '520 Diamond Rd, Tucson, AZ 85701', '800-555-302', 'ops@crystalclearco.com', 'Inactive', '2020-06-15', '2022-12-31'),
('Heritage Well Water', '530 Old Mill Rd, Salem, MA 01970', '800-555-303', 'history@heritagewell.com', 'Inactive', '2019-01-01', '2023-09-30'),
('Canyon Rim Waters', '540 Rim Rock Dr, Grand Junction, CO 81501', '800-555-304', 'rim@canyonrim.com', 'Inactive', '2021-07-01', '2024-01-15'),
('Rainier Reserve', '550 Summit Way, Tacoma, WA 98403', '800-555-305', 'info@rainierreserve.com', 'Inactive', '2022-01-15', '2024-06-30'),
('Mohave Aqua', '560 Joshua Tree Rd, Barstow, CA 92311', '800-555-306', 'ops@mohaveaqua.com', 'Inactive', '2021-11-01', '2023-11-01'),
('Delta Source Bottling', '570 Tributary Way, Memphis, TN 38103', '800-555-307', 'info@deltasource.com', 'Inactive', '2020-09-01', '2023-09-01'),
('Tidal Basin Waters', '580 Tidal Loop Rd, Washington, DC 20001', '800-555-308', 'dc@tidalbasin.com', 'Inactive', '2022-04-01', '2024-04-01'),
('Old Faithful Spring', '590 Geyser Way, West Yellowstone, MT 59758', '800-555-309', 'faithful@oldfaithful.com', 'Inactive', '2021-05-01', '2025-01-01'),
('Sunbelt Springs', '600 Orange Grove Blvd, Orlando, FL 32801', '800-555-310', 'sun@sunbeltsprings.com', 'Inactive', '2020-02-01', '2024-02-01'),
('Thunder Basin Water', '610 High Plains Rd, Gillette, WY 82716', '800-555-311', 'thunder@thunderbasin.com', 'Inactive', '2022-06-15', '2025-06-15'),
('Pioneer Spring Works', '620 Wagon Trail Way, Abilene, TX 79601', '800-555-312', 'info@pioneerspring.com', 'Inactive', '2019-04-01', '2022-12-31'),
('Piedmont Bottling House', '630 Tobacco Rd, Durham, NC 27701', '800-555-313', 'ops@piedmontbottling.com', 'Inactive', '2020-07-01', '2023-07-01'),
('Wetlands Water Works', '640 Bayou Bend, Houma, LA 70360', '800-555-314', 'wet@wetlandswater.com', 'Inactive', '2021-09-01', '2024-09-01'),
('Iron Horse Mineral', '650 Rail Yard Rd, Cheyenne, WY 82001', '800-555-315', 'iron@ironhorsemineral.com', 'Inactive', '2020-01-15', '2023-01-15');
