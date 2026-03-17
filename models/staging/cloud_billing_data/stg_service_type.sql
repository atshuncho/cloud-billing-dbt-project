select
    *
from {{ source('billing_dummy_dataset', 'service_table') }}
