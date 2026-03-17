select
    *
from {{ source('billing_dummy_dataset', 'team_hierarchy') }}
