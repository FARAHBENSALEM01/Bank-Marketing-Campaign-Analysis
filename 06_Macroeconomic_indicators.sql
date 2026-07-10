/*==============================================================================
5 — Macroeconomic Indicators
==============================================================================*/


/*------------------------------------------------------------------------------
Subscription Rate by Employment Variation Rate
------------------------------------------------------------------------------*/

SELECT
    emp_var_rate,
    COUNT(*) AS customers_contacted,
    SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS subscribers,
    ROUND(
        CAST(SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS FLOAT)
        / COUNT(*) * 100,
        2
    ) AS subscription_rate
FROM bank_marketing_clean
GROUP BY emp_var_rate
ORDER BY emp_var_rate;



/*------------------------------------------------------------------------------
Subscription Rate by Consumer Price Index (CPI)
------------------------------------------------------------------------------*/

SELECT
    cons_price_idx,
    COUNT(*) AS customers_contacted,
    SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS subscribers,
    ROUND(
        CAST(SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS FLOAT)
        / COUNT(*) * 100,
        2
    ) AS subscription_rate
FROM bank_marketing_clean
GROUP BY cons_price_idx
ORDER BY cons_price_idx;



/*------------------------------------------------------------------------------
Subscription Rate by Consumer Confidence Index
------------------------------------------------------------------------------*/

SELECT
    cons_conf_idx,
    COUNT(*) AS customers_contacted,
    SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS subscribers,
    ROUND(
        CAST(SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS FLOAT)
        / COUNT(*) * 100,
        2
    ) AS subscription_rate
FROM bank_marketing_clean
GROUP BY cons_conf_idx
ORDER BY cons_conf_idx;



/*------------------------------------------------------------------------------
Subscription Rate by Euribor 3-Month Rate
------------------------------------------------------------------------------*/

SELECT
    CASE
        WHEN euribor3m < 1 THEN 'Very Low'
        WHEN euribor3m < 2 THEN 'Low'
        WHEN euribor3m < 4 THEN 'Moderate'
        ELSE 'High'
    END AS euribor_rate_category,
    COUNT(*) AS customers_contacted,
    SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS subscribers,
    ROUND(
        CAST(SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS FLOAT)
        / COUNT(*) * 100,
        2
    ) AS subscription_rate
FROM bank_marketing_clean
GROUP BY
    CASE
        WHEN euribor3m < 1 THEN 'Very Low'
        WHEN euribor3m < 2 THEN 'Low'
        WHEN euribor3m < 4 THEN 'Moderate'
        ELSE 'High'
    END
ORDER BY subscription_rate DESC;



/*------------------------------------------------------------------------------
Subscription Rate by Employment Level (Number of Employees)
------------------------------------------------------------------------------*/

SELECT
    nr_employed,
    COUNT(*) AS customers_contacted,
    SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS subscribers,
    ROUND(
        CAST(SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS FLOAT)
        / COUNT(*) * 100,
        2
    ) AS subscription_rate
FROM bank_marketing_clean
GROUP BY nr_employed
ORDER BY nr_employed;

