SELECT
    bestelcategorie,
    COUNT(customer_id) AS aantal_klanten,
    SUM(aantal_bestellingen) AS totaal_bestellingen,
    AVG(aantal_bestellingen) AS gemiddeld_bestellingen
FROM {{ ref('customer_order_category') }}
GROUP BY
    bestelcategorie
