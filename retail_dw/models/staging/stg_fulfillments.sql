
select distinct
  "Fulfilment" as fulfillment_type,
  "fulfilled-by" as fulfilled_by,
  "Sales Channel " as sales_channel
from {{ source("raw", "amazon_sale_report") }}
