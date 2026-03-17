select distinct
    service,
    service_type
from {{ ref('int_billing_enriched') }}
