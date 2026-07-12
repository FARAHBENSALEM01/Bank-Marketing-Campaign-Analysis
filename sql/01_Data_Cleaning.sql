/*
===========================================================
PROJECT: Bank Marketing Campaign Analysis
FILE: 01_Data_Cleaning.sql

DESCRIPTION:
This script validates, cleans, and prepares the Bank
Marketing dataset for exploratory data analysis and
Power BI dashboard development.

AUTHOR: Farah Bensalem
DATABASE: SQL Server
===========================================================
*/


/*=========================================================
 1. DATASET OVERVIEW
=========================================================*/

-- Total number of customer records

SELECT
    COUNT(*) AS total_rows
FROM bank_marketing;


-- Total number of variables

SELECT
    COUNT(COLUMN_NAME) AS total_columns
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'bank_marketing';


-- Display variable names

SELECT
    COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'bank_marketing'
ORDER BY ORDINAL_POSITION;


-- Display variable data types

SELECT
    COLUMN_NAME,
    DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'bank_marketing'
ORDER BY ORDINAL_POSITION;


/*=========================================================
 2. DATA VALIDATION
=========================================================*/


/*---------------------------------------------------------
 Validate Numeric Data Types
---------------------------------------------------------*/

SELECT
    SUM(CASE WHEN age <> CAST(age AS INT) THEN 1 ELSE 0 END) AS age_decimals,
    SUM(CASE WHEN duration <> CAST(duration AS INT) THEN 1 ELSE 0 END) AS duration_decimals,
    SUM(CASE WHEN campaign <> CAST(campaign AS INT) THEN 1 ELSE 0 END) AS campaign_decimals,
    SUM(CASE WHEN pdays <> CAST(pdays AS INT) THEN 1 ELSE 0 END) AS pdays_decimals,
    SUM(CASE WHEN previous <> CAST(previous AS INT) THEN 1 ELSE 0 END) AS previous_decimals
FROM bank_marketing;


/*
Finding:
Several integer variables were imported as FLOAT.
Validation confirmed that these columns contain no
decimal values and can be safely converted to INT.
*/


/*---------------------------------------------------------
 Check for Duplicate Records
---------------------------------------------------------*/

WITH CTE_Duplicates AS
(
    SELECT *,
           ROW_NUMBER() OVER
           (
               PARTITION BY
                   age,
                   job,
                   marital,
                   education,
                   [default],
                   housing,
                   loan,
                   contact,
                   month,
                   day_of_week,
                   duration,
                   campaign,
                   pdays,
                   previous,
                   poutcome,
                   [emp#var#rate],
                   [cons#conf#idx],
                   [cons#price#idx],
                   euribor3m,
                   [nr#employed],
                   y
               ORDER BY age
           ) AS row_num
    FROM bank_marketing
)

SELECT *
FROM CTE_Duplicates
WHERE row_num > 1;


/*
Finding:
Twelve duplicate records were identified.

Because the dataset does not contain a unique customer
identifier and all duplicated rows are identical across
every variable, duplicate copies will be excluded from
the cleaned dataset.
*/


-- Preview dataset after removing duplicate records

WITH CTE_Duplicates AS
(
    SELECT *,
           ROW_NUMBER() OVER
           (
               PARTITION BY
                   age,
                   job,
                   marital,
                   education,
                   [default],
                   housing,
                   loan,
                   contact,
                   month,
                   day_of_week,
                   duration,
                   campaign,
                   pdays,
                   previous,
                   poutcome,
                   [emp#var#rate],
                   [cons#conf#idx],
                   [cons#price#idx],
                   euribor3m,
                   [nr#employed],
                   y
               ORDER BY age
           ) AS row_num
    FROM bank_marketing
)

SELECT *
FROM CTE_Duplicates
WHERE row_num = 1;

/*=========================================================
 2. DATA VALIDATION (Continued)
=========================================================*/


/*---------------------------------------------------------
 Check for Missing Values (NULL)
---------------------------------------------------------*/

SELECT
    SUM(CASE WHEN age IS NULL THEN 1 ELSE 0 END) AS age_nulls,
    SUM(CASE WHEN job IS NULL THEN 1 ELSE 0 END) AS job_nulls,
    SUM(CASE WHEN marital IS NULL THEN 1 ELSE 0 END) AS marital_nulls,
    SUM(CASE WHEN education IS NULL THEN 1 ELSE 0 END) AS education_nulls,
    SUM(CASE WHEN [default] IS NULL THEN 1 ELSE 0 END) AS default_nulls,
    SUM(CASE WHEN housing IS NULL THEN 1 ELSE 0 END) AS housing_nulls,
    SUM(CASE WHEN loan IS NULL THEN 1 ELSE 0 END) AS loan_nulls,
    SUM(CASE WHEN contact IS NULL THEN 1 ELSE 0 END) AS contact_nulls,
    SUM(CASE WHEN month IS NULL THEN 1 ELSE 0 END) AS month_nulls,
    SUM(CASE WHEN day_of_week IS NULL THEN 1 ELSE 0 END) AS day_of_week_nulls,
    SUM(CASE WHEN duration IS NULL THEN 1 ELSE 0 END) AS duration_nulls,
    SUM(CASE WHEN campaign IS NULL THEN 1 ELSE 0 END) AS campaign_nulls,
    SUM(CASE WHEN pdays IS NULL THEN 1 ELSE 0 END) AS pdays_nulls,
    SUM(CASE WHEN previous IS NULL THEN 1 ELSE 0 END) AS previous_nulls,
    SUM(CASE WHEN poutcome IS NULL THEN 1 ELSE 0 END) AS poutcome_nulls,
    SUM(CASE WHEN [emp#var#rate] IS NULL THEN 1 ELSE 0 END) AS emp_var_rate_nulls,
    SUM(CASE WHEN [cons#price#idx] IS NULL THEN 1 ELSE 0 END) AS cons_price_idx_nulls,
    SUM(CASE WHEN [cons#conf#idx] IS NULL THEN 1 ELSE 0 END) AS cons_conf_idx_nulls,
    SUM(CASE WHEN euribor3m IS NULL THEN 1 ELSE 0 END) AS euribor3m_nulls,
    SUM(CASE WHEN [nr#employed] IS NULL THEN 1 ELSE 0 END) AS nr_employed_nulls,
    SUM(CASE WHEN y IS NULL THEN 1 ELSE 0 END) AS subscription_nulls
FROM bank_marketing;


/*
Finding:
No NULL values were identified.
The dataset is complete and requires no missing value treatment.
*/


/*---------------------------------------------------------
 Check Placeholder Values ('Unknown')
---------------------------------------------------------*/

SELECT
    SUM(CASE WHEN job = 'unknown' THEN 1 ELSE 0 END) AS job_unknown,
    SUM(CASE WHEN education = 'unknown' THEN 1 ELSE 0 END) AS education_unknown,
    SUM(CASE WHEN [default] = 'unknown' THEN 1 ELSE 0 END) AS default_unknown,
    SUM(CASE WHEN housing = 'unknown' THEN 1 ELSE 0 END) AS housing_unknown,
    SUM(CASE WHEN loan = 'unknown' THEN 1 ELSE 0 END) AS loan_unknown
FROM bank_marketing;


/*
Finding:
Several categorical variables contain the placeholder value
'unknown'. Since it represents missing customer information
rather than invalid data, these values are retained for
subsequent analysis.
*/


/*---------------------------------------------------------
 Validate Numeric Ranges
---------------------------------------------------------*/

SELECT
    MIN(age) AS min_age,
    MAX(age) AS max_age,

    MIN(duration) AS min_duration,
    MAX(duration) AS max_duration,

    MIN(campaign) AS min_campaign,
    MAX(campaign) AS max_campaign,

    MIN(pdays) AS min_pdays,
    MAX(pdays) AS max_pdays,

    MIN(previous) AS min_previous,
    MAX(previous) AS max_previous,

    MIN(euribor3m) AS min_euribor,
    MAX(euribor3m) AS max_euribor
FROM bank_marketing;


/*
Finding:
Numeric variables fall within expected ranges.
No invalid or extreme values requiring correction were identified.
*/


/*---------------------------------------------------------
 Validate Categorical Values
---------------------------------------------------------*/


-- Job

SELECT DISTINCT job
FROM bank_marketing
ORDER BY job;


-- Marital Status

SELECT DISTINCT marital
FROM bank_marketing
ORDER BY marital;


-- Education

SELECT DISTINCT education
FROM bank_marketing
ORDER BY education;


-- Default Credit Status

SELECT DISTINCT [default]
FROM bank_marketing
ORDER BY [default];


-- Housing Loan

SELECT DISTINCT housing
FROM bank_marketing
ORDER BY housing;


-- Personal Loan

SELECT DISTINCT loan
FROM bank_marketing
ORDER BY loan;


-- Contact Method

SELECT DISTINCT contact
FROM bank_marketing
ORDER BY contact;


-- Campaign Month

SELECT DISTINCT month
FROM bank_marketing
ORDER BY month;


-- Day of Week

SELECT DISTINCT day_of_week
FROM bank_marketing
ORDER BY day_of_week;


-- Previous Campaign Outcome

SELECT DISTINCT poutcome
FROM bank_marketing
ORDER BY poutcome;


-- Subscription Status

SELECT DISTINCT y
FROM bank_marketing
ORDER BY y;


/*
Validation Summary

 No spelling inconsistencies detected.
 No leading or trailing spaces identified.
 Category values are internally consistent.
 Placeholder value 'unknown' is retained as a valid category.
*/

/*=========================================================
 3. DATA STANDARDIZATION
=========================================================*/


/*
Finding:
No text standardization was required.

Categorical values are consistently formatted, with no
leading or trailing spaces or spelling inconsistencies.
The original category labels are retained.
*/


/*=========================================================
 4. BUILD CLEAN DATASET
=========================================================*/


-- Create cleaned dataset

SELECT

    -- Customer Information
    CAST(age AS INT) AS age,
    job,
    marital,
    education,
    [default],
    housing,
    loan,

    -- Campaign Information
    contact,
    month,
    day_of_week,
    CAST(duration AS INT) AS duration,
    CAST(campaign AS INT) AS campaign,

    -- Customer History
    CAST(pdays AS INT) AS pdays,
    CAST(previous AS INT) AS previous,
    poutcome,

    -- Economic Indicators
    [emp#var#rate] AS emp_var_rate,
    [cons#price#idx] AS cons_price_idx,
    [cons#conf#idx] AS cons_conf_idx,
    euribor3m,
    [nr#employed] AS nr_employed,

    -- Campaign Outcome
    y

INTO bank_marketing_clean

FROM
(
    SELECT *,
           ROW_NUMBER() OVER
           (
               PARTITION BY
                    age,
                    job,
                    marital,
                    education,
                    [default],
                    housing,
                    loan,
                    contact,
                    month,
                    day_of_week,
                    duration,
                    campaign,
                    pdays,
                    previous,
                    poutcome,
                    [emp#var#rate],
                    [cons#conf#idx],
                    [cons#price#idx],
                    euribor3m,
                    [nr#employed],
                    y
               ORDER BY age
           ) AS row_num
    FROM bank_marketing
) AS deduplicated_data

WHERE row_num = 1;


/*
Cleaning Summary

 Duplicate records removed.
 Integer variables converted from FLOAT to INT.
 Special characters removed from column names.
 Clean dataset created for downstream analysis.
*/


/*=========================================================
 5. FINAL VALIDATION
=========================================================*/


-- Verify total number of records

SELECT
    COUNT(*) AS total_rows
FROM bank_marketing_clean;


-- Verify data types

SELECT
    COLUMN_NAME,
    DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'bank_marketing_clean'
ORDER BY ORDINAL_POSITION;


-- Preview cleaned dataset

SELECT TOP (10) *
FROM bank_marketing_clean;


/*
Validation Complete

The cleaned dataset is ready for exploratory data
analysis and Power BI dashboard development.
*/
