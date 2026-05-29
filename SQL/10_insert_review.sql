-- DewPoint Database: Product Review Table Data
-- Authors: Amy Ramsay, Bea Sauve
-- Date: May, 2026
-- Course: AD350 Database Technology
-- Run AFTER 08_insert_transaction.sql
-- NOTE: Existing 02_insert_data.sql inserts reviewIDs REV-2026-001 through REV-2026-028
--       and REV-2025-054, REV-2025-099.
--       This file inserts 100+ new reviews tied to new transactions (6000031 onward).
--       Includes: high-spend customers leaving detailed reviews, cancelled customers
--       leaving mixed/negative final reviews, low-engagement customers who rarely review.
--       Rating scale: 1 (worst) – 5 (best).

USE dew_point;

INSERT INTO product_review (reviewID, userID, transactionID, rating, review_comment, review_date) VALUES

-- ============================================================
-- HIGH-SPEND / LOYAL CUSTOMERS — Detailed, mostly positive reviews
-- ============================================================
('REV-2025-101', 10026, 6000031, 5, 'Cascade Ion 10 is unreal. I feel the difference in hydration every single week. Keeping this forever.', '2025-07-06'),
('REV-2025-102', 10026, 6000032, 5, 'Tahoe Blue Mineral is worth every penny. Crisp, clean, zero aftertaste. My household's staple.', '2025-09-07'),
('REV-2025-103', 10026, 6000033, 4, 'Teton Peak 9.5 is excellent. Consistent pH across every bottle in the case. One bottle had a cracked seal though.', '2025-11-06'),
('REV-2026-101', 10026, 6000034, 5, 'Back on Cascade Ion — the best alkaline available through DewPoint. Exceptional.', '2026-01-07'),
('REV-2026-102', 10026, 6000035, 5, 'Hilina Volcanic is unlike anything I have had before. Volcanic minerals are completely unique.', '2026-03-05'),
('REV-2025-104', 10027, 6000037, 5, 'Minnesota Ice Alkaline has a very clean, almost glacial quality. Fantastic for post-workout.', '2025-10-21'),
('REV-2025-105', 10027, 6000038, 5, 'Sierra Nevada Reserve 2000ml is phenomenal value and profile. Will reorder every quarter.', '2025-12-21'),
('REV-2026-103', 10027, 6000039, 4, 'Teton Peak is consistent as always. Slight dip in carbonation retention but flavor is perfect.', '2026-02-20'),
('REV-2026-104', 10028, 6000041, 4, 'Adirondack Fizz elderflower is something truly special. Light and refreshing.', '2025-12-07'),
('REV-2026-105', 10028, 6000042, 5, 'Appalachian Source mineral profile is balanced and earthy. Exactly what I expect.', '2026-02-07'),
('REV-2026-106', 10029, 6000044, 5, 'Pacific Rim Reserve is the most mineral-dense water I have found in any subscription box. Unmatched.', '2026-02-09'),
('REV-2026-107', 10029, 6000045, 5, 'Hilina Volcanic Mineral keeps delivering. The sulfur note is barely detectable — just pure clean flavor.', '2026-03-21'),
('REV-2026-108', 10029, 6000046, 5, 'Cascade Ion continues to be my pH anchor. This water has changed how I train.', '2026-04-08'),
('REV-2026-109', 10030, 6000048, 4, 'Sierra Sparkle Blood Orange is such a great combo. Could be a little more carbonated for my taste.', '2026-02-22'),
('REV-2026-110', 10031, 6000050, 5, 'Olympic pH Balance is exceptional. Smooth, high-pH, and consistent batch after batch.', '2026-03-22'),
('REV-2026-111', 10032, 6000052, 4, 'Volcanic Rise 9.0 is a solid daily alkaline. Nothing flashy but absolutely dependable.', '2025-09-08'),
('REV-2025-106', 10032, 6000053, 5, 'High Country Pure mineral content is impressive for the price. My new everyday mineral water.', '2025-11-09'),
('REV-2026-112', 10032, 6000054, 4, 'Appalachian Source has a nice earthy depth. Very clean finish.', '2026-01-08'),
('REV-2026-113', 10033, 6000058, 5, 'Pacific Rim Reserve 24-pack is the luxury option done right. Every bottle consistent. Worth the splurge.', '2026-04-06'),
('REV-2026-114', 10033, 6000059, 5, 'Hilina Volcanic is truly one of a kind. The mineral composition sets it apart from every other brand.', '2026-04-20'),
('REV-2026-115', 10033, 6000060, 5, 'Tahoe Blue 24-pack never disappoints. The glacier source makes a noticeable difference.', '2026-05-06'),
('REV-2026-116', 10034, 6000062, 4, 'Minnesota Ice Alkaline is excellent for daily use. Smooth and very consistent pH.', '2025-12-19'),
('REV-2025-107', 10035, 6000063, 4, 'Ozark Spring Bubble grape has a very subtle, natural grape note. Great pairing with meals.', '2026-03-20'),
('REV-2025-108', 10036, 6000064, 5, 'Hilina Volcanic in bulk is how I prefer it. The mineral taste is more pronounced at 24-pack scale.', '2025-08-08'),
('REV-2025-109', 10036, 6000065, 5, 'Pacific Rim Reserve is worth every cent. I have tried six alkaline brands this year and this is top tier.', '2025-10-09'),
('REV-2025-110', 10036, 6000066, 4, 'Tahoe Blue remains my go-to mineral. Slightly lower calcium levels this batch but still top-notch.', '2025-12-08'),
('REV-2026-117', 10036, 6000067, 5, 'Cascade Ion just hits different for all-day hydration. I order every other month and never regret it.', '2026-02-08'),
('REV-2026-118', 10037, 6000069, 5, 'Olympic pH Balance is genuinely some of the best alkaline water on the market. Crystal clear at pH 9.5.', '2026-02-27'),
('REV-2026-119', 10038, 6000072, 4, 'Volcanic Rise 9.0 is great for gym days. I mix it with electrolyte powder and the base water is perfect.', '2025-11-08'),
('REV-2026-120', 10039, 6000076, 5, 'Pacific Rim Reserve in a 24-pack is an event. Every bottle is pristine. Worth every dollar.', '2026-05-08'),
('REV-2026-121', 10040, 6000078, 5, 'Cascade Ion 10.0 continues to impress. Unmatched consistency and the highest pH available from DewPoint.', '2025-11-08'),
('REV-2025-111', 10040, 6000079, 5, 'Hilina Volcanic is my personal standard for mineral water. The volcanic filtration is genuinely unique.', '2026-01-08'),
('REV-2026-122', 10040, 6000080, 4, 'Teton Peak solid as always. I will say the 2026 batch has a slightly different mineral ratio but still great.', '2026-03-08'),

-- ============================================================
-- CANCELLED CUSTOMERS — Mixed reviews, some negative final impressions
-- ============================================================
('REV-2025-112', 10041, 6000082, 3, 'Alpine Crisp was decent, but not worth the subscription fee for my household. Nothing stood out.', '2025-10-20'),
('REV-2025-113', 10042, 6000083, 4, 'Fuji Essence is honestly great water. I cancelled the sub for financial reasons, not quality.', '2025-05-16'),
('REV-2024-001', 10043, 6000084, 2, 'Pure Alkaline 9.5 tasted metallic to me, which I did not expect at this price. Disappointed.', '2024-09-07'),
('REV-2025-114', 10043, 6000085, 3, 'Kentucky Limestone is fine but generic. No real reason to keep paying premium for it.', '2025-04-07'),
('REV-2025-115', 10044, 6000086, 3, 'Cascade Splendor is a nice mineral water but overpriced at 2 liters compared to grocery options.', '2025-02-07'),
('REV-2025-116', 10046, 6000088, 4, 'Summit Fizz lemon is clean and refreshing. Sad to let the sub go — life got busy.', '2024-07-08'),
('REV-2024-002', 10046, 6000089, 2, 'Volcanic Rise did not match what I was expecting from an alkaline. Too subtle a pH difference for my taste.', '2024-10-07'),
('REV-2025-117', 10047, 6000090, 3, 'Vibe Electro-Lite is okay. The lemon flavor is artificial-tasting. Cancelled after this.', '2025-04-07'),
('REV-2024-003', 10048, 6000091, 4, 'Blue Ridge Bubble peach was genuinely delightful. Only leaving because I relocated.', '2024-12-07'),
('REV-2025-118', 10050, 6000093, 2, 'Fuji Essence tasted flat this delivery. Disappointing for the price point. Decided to cancel.', '2025-06-08'),
('REV-2024-004', 10051, 6000094, 3, 'Great Lakes Sparkle cherry is a solid mid-range sparkling. Just not distinct enough for me to stay.', '2024-04-07'),
('REV-2024-005', 10052, 6000095, 1, 'Had four damaged bottles in a 24-pack. This was the third time it happened. Not reordering.', '2024-01-07'),
('REV-2025-119', 10054, 6000097, 4, 'Vibe Electro-Lite is genuinely good. My budget just did not support the subscription anymore.', '2025-03-08'),
('REV-2024-006', 10056, 6000099, 3, 'Adirondack Fizz elderflower is interesting but the novelty wore off. Not a reorder for me.', '2024-10-07'),
('REV-2025-120', 10057, 6000100, 2, 'Vibe Electro-Lite lemon was overly sweet. Left a weird film on my teeth. Will not re-subscribe.', '2025-07-08'),
('REV-2024-007', 10060, 6000101, 1, 'Pacific Breeze grapefruit was completely flat on arrival. No carbonation at all. Very upsetting for a $24 order.', '2024-08-08'),

-- ============================================================
-- LOW-ENGAGEMENT CUSTOMERS — Brief reviews, mostly one-time buyers
-- ============================================================
('REV-2026-123', 10061, 6000102, 4, 'Good sparkling water. Might order again.', '2026-05-10'),
('REV-2026-124', 10062, 6000103, 3, 'Fresh Splash is fine. Nothing exceptional.', '2026-01-10'),
('REV-2025-121', 10063, 6000104, 4, 'Ocean Fizz mango was tasty. Good for one order.', '2025-12-15'),
('REV-2026-125', 10064, 6000105, 5, 'Vibe Electro-Lite is amazing for the gym!', '2026-04-25'),
('REV-2026-126', 10066, 6000107, 3, 'Decent water. Packaging could be better.', '2026-02-10'),
('REV-2026-127', 10067, 6000108, 4, 'Ocean Fizz is pretty good. Solid mango flavor.', '2026-03-10'),
('REV-2026-128', 10068, 6000109, 5, 'Fuji Essence is genuinely outstanding water.', '2026-05-18'),
('REV-2026-129', 10070, 6000111, 4, 'Zen Balance is smooth and clean. Will consider a sub.', '2026-05-21'),
('REV-2025-122', 10071, 6000112, 3, 'Kentucky Limestone is average. Not premium enough to justify the cost.', '2025-06-07'),
('REV-2026-130', 10073, 6000114, 4, 'Fresh Splash watermelon is good for summer.', '2026-04-29'),
('REV-2026-131', 10075, 6000117, 2, 'Alpine Crisp lime was not as refreshing as expected. A bit flat.', '2025-08-10'),
('REV-2026-132', 10076, 6000118, 5, 'Fuji Essence is the best I have tried. Seriously considering a subscription.', '2026-05-25'),
('REV-2026-133', 10078, 6000119, 4, 'Zen Balance is a nice, light alkaline. Good value.', '2026-05-09'),
('REV-2025-123', 10079, 6000120, 3, 'Alpine Crisp is just plain sparkling water. Nothing wrong with it.', '2025-06-09'),
('REV-2026-134', 10081, 6000122, 4, 'Kentucky Limestone mineral profile is actually noticeable. Solid buy.', '2026-04-09'),
('REV-2025-124', 10083, 6000123, 3, 'Ocean Fizz mango is sweet but I prefer unflavored sparkling.', '2025-11-24'),
('REV-2026-135', 10084, 6000124, 5, 'Zen Balance is fantastic. Smooth and very easy to drink daily.', '2026-05-12'),
('REV-2025-125', 10085, 6000125, 4, 'Vibe Electro-Lite lemon is good for hot weather. Pleasant flavor.', '2025-05-06'),
('REV-2026-136', 10087, 6000127, 4, 'Fresh Splash watermelon is a fun flavor for summer. Would try again.', '2026-05-18'),
('REV-2026-137', 10088, 6000128, 3, 'Fuji Essence is high quality but I did not notice a big difference from store brand alkaline.', '2026-02-26'),
('REV-2026-138', 10090, 6000130, 5, 'Zen Balance is exactly what I was looking for. Clean, light alkaline with no funny taste.', '2026-05-01');
