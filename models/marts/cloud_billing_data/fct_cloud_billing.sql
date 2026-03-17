select
    account_id,
    service,
    item_description,
    billing_date,
    usage_hours,
    cost_total,
    currency
from {{ ref('int_billing_enriched') }}
