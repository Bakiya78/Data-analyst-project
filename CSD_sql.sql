create database customersegmentationmarketing;
CREATE TABLE customers (
    id INT PRIMARY KEY,
    age INT,
    gender VARCHAR(10),
    income DECIMAL(10, 2),
    spending_score INT,
    membership_years INT,
    purchase_frequency INT,
    preferred_category VARCHAR(50),
    last_purchase_amount DECIMAL(10, 2)
);
INSERT INTO customers (id, age, gender, income, spending_score, membership_years, purchase_frequency, preferred_category, last_purchase_amount) 
VALUES
(1, 38, 'Female', 99342, 90, 3, 24, 'Groceries', 113.53),
(2, 21, 'Female', 78852, 60, 2, 42, 'Sports', 41.93),
(3, 60, 'Female', 126573, 30, 2, 28, 'Clothing', 424.36),
(4, 40, 'Other', 47099, 74, 9, 5, 'Home & Garden', 991.93),
(5, 65, 'Female', 140621, 21, 3, 25, 'Electronics', 347.08),
(6, 31, 'Other', 57305, 24, 3, 30, 'Home & Garden', 86.85),
(7, 19, 'Other', 54319, 68, 5, 43, 'Clothing', 191.72),
(8, 43, 'Male', 108115, 94, 9, 27, 'Groceries', 734.56),
(9, 53, 'Male', 34424, 29, 6, 7, 'Sports', 951.71),
(10, 55, 'Female', 45839, 55, 7, 2, 'Electronics', 821.18),
(11, 23, 'Other', 69659, 16, 7, 24, 'Clothing', 434.97),
(12, 68, 'Other', 30058, 91, 1, 49, 'Groceries', 889.94),
(13, 29, 'Female', 87461, 81, 3, 27, 'Home & Garden', 101.07),
(14, 64, 'Other', 33018, 46, 4, 3, 'Sports', 221.35),
(15, 33, 'Male', 112260, 17, 5, 8, 'Home & Garden', 915.89),
(16, 53, 'Male', 129284, 17, 6, 26, 'Clothing', 225.40),
(17, 57, 'Male', 102535, 29, 5, 13, 'Clothing', 378.47),
(18, 22, 'Male', 41849, 22, 1, 31, 'Sports', 844.08),
(19, 37, 'Male', 95491, 90, 6, 21, 'Home & Garden', 454.83),
(20, 31, 'Male', 97103, 70, 3, 17, 'Groceries', 61.30),
(21, 19, 'Female', 82519, 13, 4, 4, 'Home & Garden', 742.39),
(22, 22, 'Male', 49077, 74, 10, 47, 'Home & Garden', 799.31),
(23, 36, 'Other', 85473, 68, 1, 16, 'Sports', 806.55),
(24, 41, 'Other', 81758, 87, 7, 9, 'Clothing', 482.20),
(25, 69, 'Female', 36140, 78, 5, 39, 'Sports', 508.86),
(26, 33, 'Other', 141757, 60, 10, 39, 'Groceries', 83.27),
(27, 54, 'Male', 35394, 10, 9, 4, 'Groceries', 124.29),
(28, 30, 'Female', 50680, 19, 7, 27, 'Sports', 515.88),
(29, 18, 'Female', 70721, 78, 7, 1, 'Home & Garden', 191.90),
(30, 23, 'Male', 104106, 30, 4, 20, 'Electronics', 950.56),
(31, 36, 'Other', 76756, 16, 8, 27, 'Clothing', 970.06),
(32, 60, 'Female', 45733, 69, 2, 18, 'Electronics', 197.29),
(33, 29, 'Male', 71951, 2, 6, 47, 'Electronics', 91.94),
(34, 44, 'Other', 86593, 89, 4, 37, 'Groceries', 76.95),
(35, 45, 'Other', 43138, 54, 10, 48, 'Sports', 639.22),
(36, 30, 'Female', 73464, 37, 1, 6, 'Clothing', 532.51),
(37, 47, 'Male', 108074, 78, 4, 38, 'Electronics', 128.20),
(38, 48, 'Other', 81794, 89, 7, 50, 'Electronics', 967.99),
(39, 31, 'Female', 75392, 43, 4, 29, 'Sports', 88.44),
(40, 22, 'Male', 107057, 14, 5, 41, 'Home & Garden', 98.86),
(41, 23, 'Male', 70723, 31, 1, 48, 'Home & Garden', 713.33),
(42, 52, 'Male', 115529, 70, 2, 34, 'Clothing', 192.66),
(43, 35, 'Male', 72179, 6, 6, 45, 'Home & Garden', 165.18),
(44, 28, 'Other', 62405, 79, 5, 50, 'Home & Garden', 956.73),
(45, 50, 'Male', 42404, 45, 4, 31, 'Home & Garden', 753.60),
(46, 49, 'Other', 94531, 28, 5, 42, 'Clothing', 214.93),
(47, 56, 'Male', 129005, 40, 6, 8, 'Electronics', 355.34),
(48, 48, 'Male', 76317, 94, 9, 3, 'Electronics', 189.28),
(49, 19, 'Other', 85309, 65, 5, 10, 'Sports', 28.55);
INSERT INTO customers (id, age, gender, income, spending_score, membership_years, purchase_frequency, preferred_category, last_purchase_amount) 
VALUES (50, 27, 'Female', 68000, 45, 2, 12, 'Electronics', 322.15);

SELECT * FROM customersegmentationmarketing.customer_segmentation_data;

select id,last_purchase_amount,preferred_category from 
customersegmentationmarketing.customer_segmentation_data where age between 30 and 60;

-- where clause:
SELECT * 
FROM customersegmentationmarketing.customer_segmentation_data 
WHERE income > 100000;

-- having clause:
SELECT preferred_category, AVG(last_purchase_amount) AS avg_last_purchase_amount
FROM customersegmentationmarketing.customer_segmentation_data
GROUP BY preferred_category
HAVING AVG(last_purchase_amount) > 500;

-- Retrive all customer details in electronic category:
SELECT * 
FROM customersegmentationmarketing.customer_segmentation_data
WHERE preferred_category = 'Electronics';

-- update:
UPDATE customersegmentationmarketing.customer_segmentation_data
SET last_purchase_amount = 150.00 
WHERE id = 1;

-- delete:
DELETE FROM customersegmentationmarketing.customer_segmentation_data 
WHERE id = 993;

-- order by:
SELECT * 
FROM customersegmentationmarketing.customer_segmentation_data
ORDER BY income DESC;

-- substr:
SELECT id, SUBSTR(preferred_category, 1, 3) AS short_category 
FROM customersegmentationmarketing.customer_segmentation_data;

 





