with e as (
    select
        event_id,
        user_id,
        content_id,
        event_type,
        cast(event_ts as timestamp) as event_ts,
        cast(event_ts as date) as event_date
    from {{ ref('fct_product_events') }}
),
a as (
    select * from {{ ref('dim_users') }}
)
select
    event_date,
    count(distinct case when event_type = 'session_start' then user_id end) as dau,
    count(distinct user_id) filter (where event_type = 'follow') as daily_followers,
    count(*) filter (where event_type = 'impression') as impressions,
    count(*) filter (where event_type = 'like') as likes,
    (count(*) filter (where event_type = 'like'))::double 
        / nullif((count(*) filter (where event_type = 'impression')), 0) as like_rate
from e
group by event_date
order by event_date
