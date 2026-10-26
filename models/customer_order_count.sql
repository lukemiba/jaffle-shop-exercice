{{ config(materialized='table') }}

SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    COUNT(o.order_id) AS aantal_bestellingen
FROM {{ ref('stg_customers') }} AS c
LEFT JOIN {{ ref('stg_orders') }} AS o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.first_name,
    c.last_name
