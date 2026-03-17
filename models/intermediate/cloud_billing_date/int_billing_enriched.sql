select
    b.account_id,
    b.service,
    s.service_type,
    b.item_description,
    b.billing_date,
    b.usage_hours,
    b.cost_total,
    b.currency,
    d.discount_type,
    d.discount_pct,
    t.team_name_1,
    t.team_name_2,
    t.team_name_3,
    t.team_name_4,
    t.team_name_5,
    t.team_name_6
from {{ ref('stg_billing_extract') }} b
left join {{ ref('stg_service_table') }} s
    on b.service = s.service
left join {{ ref('stg_discounts') }} d
    on b.service = d.service
   and b.item_description = d.item_description
left join {{ ref('stg_team_hierarchy') }} t
    on b.account_id = t.account_id
