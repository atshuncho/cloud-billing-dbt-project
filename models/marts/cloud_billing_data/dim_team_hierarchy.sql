select distinct
    account_id,
    team_name_1,
    team_name_2,
    team_name_3,
    team_name_4,
    team_name_5,
    team_name_6
from {{ ref('int_billing_enriched') }}
