
  
  create view "warehouse"."main"."stg_users__dbt_tmp" as (
    with raw as (
  select * from read_csv_auto('data/raw/users.csv', header=true)
)
select
  cast(user_id as integer)        as user_id,
  cast(signup_date as date)       as signup_date,
  cast(signup_date as timestamp)  as signup_ts,
  country
from raw
  );
