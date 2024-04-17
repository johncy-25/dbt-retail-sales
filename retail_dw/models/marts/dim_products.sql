
select
  {{ dbt_utils.generate_surrogate_key(['product_asin','product_sku']) }} as product_key,
  product_asin as product_id,
  product_sku as product_sku_id,
  product_style,
  product_category,
  product_size
from {{ ref('stg_products') }}
