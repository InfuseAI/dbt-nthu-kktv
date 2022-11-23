select 
    *
from {{ ref('users') }}
where first_seen > '2022-06-01'
and last_seen > '2022-08-15'
