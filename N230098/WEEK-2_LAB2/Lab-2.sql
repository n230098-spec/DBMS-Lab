USE gram_panchayat_db;
SHOW TABLES;
SELECT UPPER(full_name) FROM citizen;
SELECT LOWER(occupation) FROM citizen;
SELECT LENGTH(full_name) FROM citizen;
SELECT LEFT(reference_number, 4)
FROM Certificate_Application;
SELECT CONCAT(village_name,' - ', full_name) FROM citizen;


SELECT REPLACE(certificate_name,'certificate','cert') AS certificate_name FROM certificate_application;
SELECT * FROM certificate_application;

SELECT TRIM(certificate_name) AS certificate_name
FROM Certificate_Application;

SELECT SUBSTRING_INDEX(full_name, ' ', 1) AS first_name
FROM Citizen;


SELECT CONCAT('Citizen : ', full_name, '\nVillage : ', village_name) AS Display_Details
FROM Citizen;
SELECT
CONCAT('Citizen : ', full_name) AS Citizen,
CONCAT('Village : ', village_name) AS Village
FROM Citizen;

SELECT *
FROM Certificate_Application
WHERE reference_number LIKE 'GP2026%';

SELECT certificate_name, ROUND(fee_paid) AS rounded_fee
FROM Certificate_Application;

SELECT certificate_name,
ABS(processing_days - 10) AS difference
FROM Certificate_Type;

SELECT certificate_name,
POWER(processing_days, 2) AS square_of_days
FROM Certificate_Type;

SELECT FLOOR(RAND() * 100) + 1 AS random_number;

SELECT certificate_name,
       processing_days,
       SQRT(processing_days) AS square_root
FROM Certificate_Type;

SELECT certificate_name,
       processing_days,
       processing_days * 2 AS doubled_processing_days
FROM Certificate_Type;

SELECT CURDATE() AS today_date;

SELECT NOW() AS current_date_time;

SELECT application_date,
       YEAR(application_date) AS year
FROM Certificate_Application;

SELECT application_date,
       MONTH(application_date) AS month
FROM Certificate_Application;

SELECT application_date,
       DAY(application_date) AS day
FROM Certificate_Application;

SELECT ca.application_id,
       ca.certificate_name,
       ca.application_date,
       ct.processing_days,
       DATE_ADD(ca.application_date, INTERVAL ct.processing_days DAY) AS expected_issue_date
FROM Certificate_Application ca
JOIN Certificate_Type ct
ON ca.certificate_name = ct.certificate_name;

SELECT application_date,
       DATE_ADD(application_date, INTERVAL 30 DAY) AS after_30_days
FROM Certificate_Application;

SELECT application_date,
       DATE_SUB(application_date, INTERVAL 7 DAY) AS before_7_days
FROM Certificate_Application;

SELECT application_id,
       application_date,
       DATEDIFF(CURDATE(), application_date) AS days_difference
FROM Certificate_Application;

SELECT *
FROM Certificate_Application
WHERE YEAR(application_date) = YEAR(CURDATE());

SELECT *
FROM Certificate_Application
WHERE YEAR(application_date) = YEAR(CURDATE());

SELECT fee_paid,
       CAST(fee_paid AS SIGNED) AS integer_fee
FROM Certificate_Application;

SELECT processing_days,
       CAST(processing_days AS CHAR) AS processing_days_char
FROM Certificate_Type;


SELECT application_date,
       CAST(application_date AS DATETIME) AS application_datetime
FROM Certificate_Application;

SELECT processing_days,
       CAST(processing_days AS DECIMAL(10,2)) AS processing_days_decimal
FROM Certificate_Type;


SELECT fee_paid,
       CAST(fee_paid AS CHAR) AS fee_as_character
FROM Certificate_Application;

SELECT fee_paid,
       CAST(fee_paid AS SIGNED) + 100 AS total_fee
FROM Certificate_Application;




