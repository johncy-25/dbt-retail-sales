
select distinct
  promotion_id,
  {{ dbt_utils.generate_surrogate_key(['promotion_id']) }} as promotion_key
from {{ ref('stg_promotions') }}

