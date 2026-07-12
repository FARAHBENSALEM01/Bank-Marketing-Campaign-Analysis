/*==============================================================================
2. CUSTOMER SEGMENTATION
==============================================================================*/


/*------------------------------------------------------------------------------
Subscription Rate by Age Group
------------------------------------------------------------------------------*/

-- Compare subscription rates across customer age groups.

WITH age_segmentation AS
(
    SELECT
        CASE
            WHEN age BETWEEN 17 AND 29 THEN '17–29'
            WHEN age BETWEEN 30 AND 39 THEN '30–39'
            WHEN age BETWEEN 40 AND 49 THEN '40–49'
            WHEN age BETWEEN 50 AND 59 THEN '50–59'
            ELSE '60+'
        END AS age_group,
        term_deposit_subscription
    FROM bank_marketing_clean
)

SELECT
    age_group,
    COUNT(*) AS customers_contacted,
    SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS subscribers,
    ROUND(
        CAST(
            SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS FLOAT
        ) / COUNT(*) * 100,
        2
    ) AS subscription_rate
FROM age_segmentation
GROUP BY age_group
ORDER BY
    CASE age_group
        WHEN '17–29' THEN 1
        WHEN '30–39' THEN 2
        WHEN '40–49' THEN 3
        WHEN '50–59' THEN 4
        WHEN '60+' THEN 5
    END;



/*------------------------------------------------------------------------------
Subscription Rate by Occupation
------------------------------------------------------------------------------*/

-- Compare subscription rates across customer occupations.

SELECT
    job AS customer_occupation,
    COUNT(*) AS customers_contacted,
    SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS subscribers,
    ROUND(
        CAST(
            SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS FLOAT
        ) / COUNT(*) * 100,
        2
    ) AS subscription_rate
FROM bank_marketing_clean
GROUP BY job
ORDER BY subscription_rate DESC;



/*------------------------------------------------------------------------------
Subscription Rate by Marital Status
------------------------------------------------------------------------------*/

-- Compare subscription rates across marital status groups.

SELECT
    marital AS marital_status,
    COUNT(*) AS customers_contacted,
    SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS subscribers,
    ROUND(
        CAST(
            SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS FLOAT
        ) / COUNT(*) * 100,
        2
    ) AS subscription_rate
FROM bank_marketing_clean
GROUP BY marital
ORDER BY subscription_rate DESC;



/*------------------------------------------------------------------------------
Subscription Rate by Education Level
------------------------------------------------------------------------------*/

-- Compare subscription rates across education levels.

SELECT
    education AS education_level,
    COUNT(*) AS customers_contacted,
    SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS subscribers,
    ROUND(
        CAST(
            SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS FLOAT
        ) / COUNT(*) * 100,
        2
    ) AS subscription_rate
FROM bank_marketing_clean
GROUP BY education
ORDER BY subscription_rate DESC;
