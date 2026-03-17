select distinct
    service,
    item_description,
    discount_type,
    discount_pct
from {{ ref('int_billing_enriched') }}
