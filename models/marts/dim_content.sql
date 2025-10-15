with c as (select * from {{ ref('stg_content') }})
select * from c