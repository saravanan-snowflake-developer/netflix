with src_movies as(
    select * from {{ ref('src_movies')}}
)
select
movie_id,
initcap(trim(title)) as movie_title,
split(genres,'|') as genre_array,
genres

from src_movies