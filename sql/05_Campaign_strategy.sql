/*==============================================================================
4. CAMPAIGN STRATEGY
==============================================================================*/


/*------------------------------------------------------------------------------
Subscription Rate by Contact Method
------------------------------------------------------------------------------*/

-- Compare subscription rates across communication channels.

SELECT
    contact AS contact_method,
    COUNT(*) AS customers_contacted,
    SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS subscribers,
    ROUND(
        CAST(SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS FLOAT)
        / COUNT(*) * 100,
        2
    ) AS subscription_rate
FROM bank_marketing_clean
GROUP BY contact
ORDER BY subscription_rate DESC;



/*------------------------------------------------------------------------------
Subscription Rate by Contact Month
------------------------------------------------------------------------------*/

-- Compare subscription rates across campaign months.

SELECT
    month AS contact_month,
    COUNT(*) AS customers_contacted,
    SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS subscribers,
    ROUND(
        CAST(SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS FLOAT)
        / COUNT(*) * 100,
        2
    ) AS subscription_rate
FROM bank_marketing_clean
GROUP BY month
ORDER BY
    CASE
        WHEN month = 'mar' THEN 1
        WHEN month = 'apr' THEN 2
        WHEN month = 'may' THEN 3
        WHEN month = 'jun' THEN 4
        WHEN month = 'jul' THEN 5
        WHEN month = 'aug' THEN 6
        WHEN month = 'sep' THEN 7
        WHEN month = 'oct' THEN 8
        WHEN month = 'nov' THEN 9
        WHEN month = 'dec' THEN 10
    END;



/*------------------------------------------------------------------------------
Subscription Rate by Day of Week
------------------------------------------------------------------------------*/

-- Compare subscription rates across weekdays.

SELECT
    CASE day_of_week
        WHEN 'mon' THEN 'Monday'
        WHEN 'tue' THEN 'Tuesday'
        WHEN 'wed' THEN 'Wednesday'
        WHEN 'thu' THEN 'Thursday'
        WHEN 'fri' THEN 'Friday'
    END AS contact_day,
    COUNT(*) AS customers_contacted,
    SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS subscribers,
    ROUND(
        CAST(SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS FLOAT)
        / COUNT(*) * 100,
        2
    ) AS subscription_rate
FROM bank_marketing_clean
GROUP BY day_of_week
ORDER BY
    CASE
        WHEN day_of_week = 'mon' THEN 1
        WHEN day_of_week = 'tue' THEN 2
        WHEN day_of_week = 'wed' THEN 3
        WHEN day_of_week = 'thu' THEN 4
        WHEN day_of_week = 'fri' THEN 5
    END;



/*------------------------------------------------------------------------------
Subscription Rate by Contact Attempts
------------------------------------------------------------------------------*/

-- Evaluate subscription rates by contact frequency.

SELECT
    campaign AS contact_attempts,
    COUNT(*) AS customers_contacted,
    SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS subscribers,
    ROUND(
        CAST(SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS FLOAT)
        / COUNT(*) * 100,
        2
    ) AS subscription_rate
FROM bank_marketing_clean
GROUP BY campaign
ORDER BY campaign;



/*------------------------------------------------------------------------------
Subscription Rate by Previous Campaign Contacts
------------------------------------------------------------------------------*/

-- Compare subscription rates by previous campaign contacts.

SELECT
    previous AS previous_contacts,
    COUNT(*) AS customers_contacted,
    SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS subscribers,
    ROUND(
        CAST(SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS FLOAT)
        / COUNT(*) * 100,
        2
    ) AS subscription_rate
FROM bank_marketing_clean
GROUP BY previous
ORDER BY previous;



/*------------------------------------------------------------------------------
Subscription Rate by Previous Campaign Outcome
------------------------------------------------------------------------------*/

-- Compare subscription rates across previous campaign outcomes.

SELECT
    poutcome AS previous_campaign_outcome,
    COUNT(*) AS customers_contacted,
    SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS subscribers,
    ROUND(
        CAST(SUM(CASE WHEN term_deposit_subscription = 'yes' THEN 1 ELSE 0 END) AS FLOAT)
        / COUNT(*) * 100,
        2
    ) AS subscription_rate
FROM bank_marketing_clean
GROUP BY poutcome
ORDER BY
    CASE
        WHEN poutcome = 'success' THEN 1
        WHEN poutcome = 'failure' THEN 2
        WHEN poutcome = 'nonexistent' THEN 3
    END;



/*------------------------------------------------------------------------------
Call Duration by Subscription Outcome
------------------------------------------------------------------------------*/

-- Compare call duration between subscribers and non-subscribers.

WITH duration_summary AS
(
    SELECT DISTINCT
        term_deposit_subscription,
        COUNT(*) OVER (PARTITION BY term_deposit_subscription) AS customers_contacted,
        MIN(duration) OVER (PARTITION BY term_deposit_subscription) AS minimum_duration,
        MAX(duration) OVER (PARTITION BY term_deposit_subscription) AS maximum_duration,
        ROUND(
            AVG(CAST(duration AS FLOAT))
            OVER (PARTITION BY term_deposit_subscription),
            2
        ) AS average_duration,
        PERCENTILE_CONT(0.5)
            WITHIN GROUP (ORDER BY duration)
            OVER (PARTITION BY term_deposit_subscription) AS median_duration
    FROM bank_marketing_clean
)

SELECT *
FROM duration_summary;
