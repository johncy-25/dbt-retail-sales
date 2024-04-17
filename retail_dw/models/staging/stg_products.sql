
select distinct
  "ASIN" as product_asin,
  "SKU" as product_sku,
  "Style" as product_style,
  "Category" as product_category,
  "Size" as product_size
from {{ source("raw", "amazon_sale_report") }}
