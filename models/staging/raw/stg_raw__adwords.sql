with 

source as (

    select * from {{ source('raw', 'adwords') }}

),

renamed as (

    select
        date_date,
        paid_source,
        campaign_key,
        campgn_name AS campaign_name,
        CAST(ads_cost AS FLOAT64) AS ads_cost,
        impression AS impressions,
        click AS clicks

    from source

)

select * from renamed
