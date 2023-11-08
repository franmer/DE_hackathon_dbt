
-- models/diamonds_average_price_by_cut.sql

with source_data as (
    select *
    from {{ source('databricks_sample', 'diamonds') }}
)

select
    cut,
    avg(price) as average_price
from source_data
group by cut
