
select
  "index" as order_number,
  "Order ID" as order_id,
  unnest(string_to_array(coalesce("promotion-ids",''),',')) as promotion_id
from {{ source("raw", "amazon_sale_report") }}
