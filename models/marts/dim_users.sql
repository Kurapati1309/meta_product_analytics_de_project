with u as (select * from {{ ref('stg_users') }})
select * from u