select
    *
from {{ source('billing_dummy_dataset', 'discounts') }}

