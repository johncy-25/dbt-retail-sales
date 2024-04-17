
select
  {{ dbt_utils.generate_surrogate_key(['order_number','order_id']) }} as order_key,
  {{ dbt_utils.generate_surrogate_key(['product_asin','product_sku']) }} as product_key,
  {{ dbt_utils.generate_surrogate_key(['postal_code','city','state','country','ship_service_level']) }} as shipping_key,
  {{ dbt_utils.generate_surrogate_key(['fulfillment_type','fulfilled_by','sales_channel']) }} as fulfillment_key,
  to_date(order_date,'MM-DD-YY'),
  order_status,
  courier_status,
  order_quantity,
  order_amount,
  currency,
  b2b
from {{ ref("stg_orders") }}