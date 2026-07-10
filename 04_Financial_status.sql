/*==============================================================================
3. FINANCIAL STATUS
==============================================================================*/


/*------------------------------------------------------------------------------
Subscription Rate by Credit Default Status
------------------------------------------------------------------------------*/

-- Compare subscription rates across credit default groups.

SELECT
    [default] AS credit_default_status,
    COUNT(*) AS customers_contacted,
    SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS subscribers,
    ROUND(
        CAST(
            SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS FLOAT
        ) / COUNT(*) * 100,
        2
    ) AS subscription_rate
FROM bank_marketing_clean
GROUP BY [default]
ORDER BY subscription_rate DESC;



/*------------------------------------------------------------------------------
Subscription Rate by Housing Loan Status
------------------------------------------------------------------------------*/

-- Compare subscription rates across housing loan groups.

SELECT
    housing AS housing_loan_status,
    COUNT(*) AS customers_contacted,
    SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS subscribers,
    ROUND(
        CAST(
            SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS FLOAT
        ) / COUNT(*) * 100,
        2
    ) AS subscription_rate
FROM bank_marketing_clean
GROUP BY housing
ORDER BY subscription_rate DESC;



/*------------------------------------------------------------------------------
Subscription Rate by Personal Loan Status
------------------------------------------------------------------------------*/

-- Compare subscription rates across personal loan groups.

SELECT
    loan AS personal_loan_status,
    COUNT(*) AS customers_contacted,
    SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS subscribers,
    ROUND(
        CAST(
            SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS FLOAT
        ) / COUNT(*) * 100,
        2
    ) AS subscription_rate
FROM bank_marketing_clean
GROUP BY loan
ORDER BY subscription_rate DESC;