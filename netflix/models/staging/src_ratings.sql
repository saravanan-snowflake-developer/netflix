with raw_ratings as (
    select * from {{source('MOVIELENS','ratings')}}
)
Select 

userId as user_id,
movieId as movie_id,
rating,
to_timestamp_ltz(timestamp) AS rating_timestamp
from raw_ratings