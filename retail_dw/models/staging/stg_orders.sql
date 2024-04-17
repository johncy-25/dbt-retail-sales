
select
  "index" as order_number,
  "Order ID" as order_id,
  "Date" as order_date,
  "Status" as order_status,
  "Courier Status" as courier_status,
  "ASIN" as product_asin,
  "SKU" as product_sku,
  "Qty" as order_quantity,
  "Amount" as order_amount,
  "currency" as currency,
  "ship-postal-code" as postal_code,
  lower("ship-city") as city,
  lower("ship-state") as state,
  "ship-country" as country,
  "ship-service-level" as ship_service_level,
  "Fulfilment" as fulfillment_type,
  "fulfilled-by" as fulfilled_by,
  "Sales Channel " as sales_channel,
  "B2B" as b2b
from {{ source("raw", "amazon_sale_report") }}
