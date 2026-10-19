-- Customer Behaviour Analysis

-- 1.Investigate item-level performance within Clothing and Accessories before deciding which products to prioritize.
SELECT
    category,
    SUM(purchase_amount) AS total_amount,
    concat(Round(
        100.0 * SUM(purchase_amount) /
        (SELECT SUM(purchase_amount)
         FROM customer), 2
    ),'%') AS contribution_pct
FROM customer
GROUP BY category
ORDER BY total_amount DESC;

-- 2.Investigate product preferences and category contribution by gender.
SELECT
    gender,
    COUNT(*) AS records,
    SUM(purchase_amount) AS total_amount,
    ROUND(AVG(purchase_amount), 2) AS avg_amount,
    ROUND(
        100.0 * SUM(purchase_amount) /
        (SELECT SUM(purchase_amount)
         FROM customer), 2
    ) AS contribution_pct
FROM customer
GROUP BY gender;

-- 3.Compare product mix and discount usage across seasons
SELECT
    season,
    COUNT(*) AS records,
    ROUND(AVG(purchase_amount), 2) AS avg_amount,
    SUM(purchase_amount) AS total_amount
FROM customer
GROUP BY season
ORDER BY avg_amount DESC;


-- 4.Compare discount usage within each category and product,
SELECT
    discount_applied,
    COUNT(*) AS records,
    ROUND(AVG(purchase_amount), 2) AS avg_amount,
    SUM(purchase_amount) AS total_amount
FROM customer
GROUP BY discount_applied;

-- 5.Build a product matrix using rating, average purchase amount, and record count.
SELECT
    item_purchased,
    COUNT(*) AS records,
    ROUND(AVG(review_rating), 2) AS avg_rating,
    ROUND(AVG(purchase_amount), 2) AS avg_amount,
    SUM(purchase_amount) AS total_amount
FROM customer
GROUP BY item_purchased
HAVING COUNT(*) >= 10
ORDER BY avg_rating DESC, records DESC
LIMIT 10;
-- 6.Investigate the product categories, colors, and sizes preferred by this segment.
SELECT
    age_group,
    COUNT(*) AS records,
    SUM(purchase_amount) AS total_amount,
    ROUND(AVG(purchase_amount), 2) AS avg_amount,
    ROUND(AVG(review_rating), 2) AS avg_rating
FROM customer
GROUP BY age_group
ORDER BY total_amount DESC;

-- 7. Evaluate subscription uptake, engagement, and retention using longitudinal customer records if available.
SELECT
    subscription_status,
    COUNT(*) AS records,
    ROUND(AVG(purchase_amount), 2) AS avg_amount,
    SUM(purchase_amount) AS total_amount,
    ROUND(AVG(previous_purchases), 2) AS avg_previous_purchases
FROM customer
GROUP BY subscription_status;

-- 8.Combine purchase value with shipping cost and delivery
SELECT
    shipping_type,
    COUNT(*) AS records,
    ROUND(AVG(purchase_amount), 2) AS avg_amount,
    SUM(purchase_amount) AS total_amount,
    ROUND(AVG(review_rating), 2) AS avg_rating
FROM customer
GROUP BY shipping_type
ORDER BY avg_amount DESC;

-- 9.Examine ratings alongside size, color, category, and purchase amount.
SELECT
    item_purchased,
    COUNT(*) AS records,
    ROUND(AVG(review_rating), 2) AS avg_rating,
    ROUND(AVG(purchase_amount), 2) AS avg_amount
FROM customer
GROUP BY item_purchased
HAVING COUNT(*) >= 10
ORDER BY avg_rating ASC, records DESC
LIMIT 10;

-- 10. Explore a multivariable analysis that includes age group, category, discount status, subscription status, and purchase frequency.
SELECT
    COUNT(*) AS records,
    ROUND(
        (
            AVG(previous_purchases * purchase_amount)
            - AVG(previous_purchases) * AVG(purchase_amount)
        ) /
        NULLIF(
            STDDEV_POP(previous_purchases)
            * STDDEV_POP(purchase_amount), 0
        ),
        3
    ) AS correlation
FROM customer;