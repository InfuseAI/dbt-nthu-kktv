{{
    config(
        materialized='table'
    )
}}


select 
    user_id,
    count(*) event_count,
    count(distinct device_id) as device_count,
    count(distinct session_id) as session_count,
    count(distinct title_id) as title_count,
    min(event_time) as first_seen,
    max(event_time) as last_seen,
    avg(played_duration)::bigint as avg_played_duration,
    sum(played_duration)::bigint as sum_played_duration,
    count(distinct action_trigger) as action_trigger_count,
    count(distinct platform) as platform_count,
    count(distinct title_in_simulcast) as title_in_simulcast_count,
    count(distinct internet_connection_type) as internet_connection_type_count
from {{ ref('stg_events') }}
group by user_id
