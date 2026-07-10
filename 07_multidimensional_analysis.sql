/*==============================================================================
6 — Multidimensional Analysis

==============================================================================*/


/*------------------------------------------------------------------------------
Customer Profile Analysis (Age Group × Occupation)
------------------------------------------------------------------------------*/

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
        job AS customer_occupation,
        term_deposit_subscription
    FROM bank_marketing_clean
)

SELECT
    age_group,
    customer_occupation,
    COUNT(*) AS customers_contacted,
    SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS subscribers,
    ROUND(
        CAST(SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS FLOAT)
        / COUNT(*) * 100,
        2
    ) AS subscription_rate
FROM age_segmentation
GROUP BY
    age_group,
    customer_occupation
HAVING COUNT(*) >= 30
ORDER BY
    subscription_rate DESC,
    customers_contacted DESC;



/*------------------------------------------------------------------------------
Campaign Strategy Analysis (Contact Method × Number of Contacts)
------------------------------------------------------------------------------*/

SELECT
    contact AS contact_method,
    campaign AS campaign_contacts,
    COUNT(*) AS customers_contacted,
    SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS subscribers,
    ROUND(
        CAST(SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS FLOAT)
        / COUNT(*) * 100,
        2
    ) AS subscription_rate
FROM bank_marketing_clean
GROUP BY
    contact,
    campaign
HAVING COUNT(*) >= 30
ORDER BY
    contact,
    campaign;



/*------------------------------------------------------------------------------
Customer Segmentation by Campaign History
(Age Group × Contact Method × Previous Campaign Outcome)
------------------------------------------------------------------------------*/

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
        contact,
        poutcome,
        term_deposit_subscription
    FROM bank_marketing_clean
)

SELECT
    age_group,
    contact AS contact_method,
    poutcome AS previous_campaign_outcome,
    COUNT(*) AS customers_contacted,
    SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS subscribers,
    ROUND(
        CAST(SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS FLOAT)
        / COUNT(*) * 100,
        2
    ) AS subscription_rate
FROM age_segmentation
GROUP BY
    age_group,
    contact,
    poutcome
HAVING COUNT(*) >= 30
ORDER BY
    subscription_rate DESC,
    customers_contacted DESC;