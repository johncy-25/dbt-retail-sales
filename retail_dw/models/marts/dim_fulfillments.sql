
select
  {{ dbt_utils.generate_surrogate_key(['fulfillment_type','fulfilled_by','sales_channel']) }} as fulfillment_key,
  fulfillment_type,
  fulfilled_by,
  sales_channel
from {{ ref('stg_fulfillments') }}
