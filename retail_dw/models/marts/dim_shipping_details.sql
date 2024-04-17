
select
  {{ dbt_utils.generate_surrogate_key(['postal_code','city','state','country','ship_service_level']) }} as shipping_key,
  postal_code,
  city,
  state,
  country,
  ship_service_level
from {{ ref('stg_shipping_details') }}
