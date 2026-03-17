select
    *
from {{ source('billing_dummy_dataset', 'billing_data') }}
where account_id IS NOT NULL
