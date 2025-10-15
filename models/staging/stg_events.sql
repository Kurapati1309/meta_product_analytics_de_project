with raw as (
  select * from read_csv_auto('data/raw/events_app.csv', header=true)
)
select
  cast(event_id as integer)   as event_id,
  cast(user_id as integer)    as user_id,
  cast(content_id as integer) as content_id,
  event_type,
  cast(event_ts as timestamp) as event_ts,
  cast(null as varchar)       as app_version
from raw
