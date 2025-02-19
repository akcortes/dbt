
-- Use the `ref` function to select from other models-

SELECT
    o.order_ID,
    c.customer_ID,
    c.customer_Name,
    p.product_ID,
    p.product_Name,
    o.quantity,
    o.order_Date
FROM
    raw.orders o
JOIN
    {{ ref("stg_customers") }} c ON o.customer_ID = c.customer_ID
JOIN
    raw.products p ON o.product_ID = p.product_ID