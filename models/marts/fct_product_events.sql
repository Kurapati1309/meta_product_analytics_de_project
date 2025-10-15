with e as (select * from {{ ref('stg_events') }})
select * from e