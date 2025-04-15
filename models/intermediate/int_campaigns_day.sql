SELECT 
    date_date
    , SUM(ads_cost) AS ads_cost
    , SUM(impressions) AS ads_impressions
    , SUM(clicks) AS ads_clicks
FROM {{ref('int_campaigns')}}
GROUP BY date_date
ORDER BY date_date DESC