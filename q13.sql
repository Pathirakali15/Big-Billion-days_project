-- Q13: Compare monthly sales representative revenue with targets
SELECT
    r.rep_name,
    o.order_month,
    r.monthly_target,
    SUM(o.amount) AS revenue,
    CASE
        WHEN SUM(o.amount) < r.monthly_target
            THEN 'Below Target'
        WHEN SUM(o.amount) < 1.1 * r.monthly_target
            THEN 'On Target'
        ELSE 'Above Target'
    END AS performance_tier
FROM orders AS o
JOIN customers AS c
    ON o.customer_id = c.customer_id
JOIN reps AS r
    ON c.rep_id = r.rep_id
WHERE o.status = 'completed'
GROUP BY
    r.rep_name,
    o.order_month,
    r.monthly_target
ORDER BY r.rep_name ASC, o.order_month ASC;