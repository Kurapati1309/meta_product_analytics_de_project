with raw as (
  select * from read_csv_auto('data/raw/content.csv', header=true)
)
select
  cast(content_id as integer)      as content_id,
  cast(creator_user_id as integer) as creator_user_id,
  category                         as topic,
  cast(created_at as date)         as created_at
from raw
