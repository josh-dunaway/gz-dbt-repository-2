{{config(materialized='view')}}

SELECT
    f.date_date
    , operational_margin - ads_cost AS ads_margin
    , average_basket
    , operational_margin
    , ads_cost
    , ads_impressions
    , ads_clicks
    , quantity
    , revenue
    , purchase_cost
    , margin
    , shipping_fee
    , log_cost
    , ship_cost
FROM {{ref('finance_days')}} f
LEFT JOIN {{ref('int_campaigns_day')}} i
USING (date_date)