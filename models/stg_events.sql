{{
    config(
        materialized='table'
    )
}}


select 
    user_id,
    device_id,
    session_id,
    title_id,
    epoch_ms((event_time * 1000)::bigint) as event_time,
    played_duration,
    action_trigger,
    platform,
    title_in_simulcast,
    internet_connection_type
from {{ source('main', 'events') }}
limit 1000




