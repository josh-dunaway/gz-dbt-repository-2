with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        logcost AS log_cost,
        CAST(ship_cost AS FLOAT64) AS ship_cost

    from source

)

select * from renamed
-- random comment down here