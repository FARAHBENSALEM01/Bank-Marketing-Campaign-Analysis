/*==============================================================================
1. CAMPAIGN PERFORMANCE
==============================================================================*/


/*------------------------------------------------------------------------------
Overall Campaign Performance
------------------------------------------------------------------------------*/

-- Calculate the overall campaign subscription rate.

WITH overall_performance AS
(
    SELECT
        COUNT(*) AS total_customers_contacted,
        SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS total_subscribers,
        SUM(CASE WHEN term_deposit_subscription = 'no' THEN 1 ELSE 0 END) AS total_non_subscribers
    FROM bank_marketing_clean
)

SELECT
    total_customers_contacted,
    total_subscribers,
    total_non_subscribers,
    ROUND(
        CAST(total_subscribers AS FLOAT)
        / total_customers_contacted * 100,
        2
    ) AS subscription_rate,
    ROUND(
        CAST(total_non_subscribers AS FLOAT)
        / total_customers_contacted * 100,
        2
    ) AS non_subscription_rate
FROM overall_performance;



/*------------------------------------------------------------------------------
Subscription Distribution
------------------------------------------------------------------------------*/

-- Calculate the distribution of subscription outcomes.

SELECT
    term_deposit_subscription AS subscription_status,
    COUNT(*) AS customers,
    ROUND(
        COUNT(*) /
        CAST(SUM(COUNT(*)) OVER () AS FLOAT) * 100,
        2
    ) AS percentage
FROM bank_marketing_clean
GROUP BY term_deposit_subscription;
