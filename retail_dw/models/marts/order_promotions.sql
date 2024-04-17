
select
  {{ dbt_utils.generate_surrogate_key(['order_number','order_id']) }} as order_key,
  {{ dbt_utils.generate_surrogate_key(['promotion_id']) }} as promotion_key
from {{ ref("stg_promotions") }}
