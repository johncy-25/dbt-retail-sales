
select distinct
  "ship-postal-code" as postal_code,
  lower("ship-city") as city,
  lower("ship-state") as state,
  "ship-country" as country,
  "ship-service-level" as ship_service_level
from {{ source("raw", "amazon_sale_report") }}
