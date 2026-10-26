
SELECT
    customer_id,
    first_name,
    last_name,
    aantal_bestellingen,
    CASE
        WHEN aantal_bestellingen = 0 THEN 'Geen bestellingen'
        WHEN aantal_bestellingen = 1 THEN 'Een bestelling'
        ELSE 'Meerdere bestellingen'
    END AS bestelcategorie
FROM {{ ref('customer_order_count') }}
