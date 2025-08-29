{{ 
    config(
        materialized = 'ephemeral'
    )
}}

with movies as (
    Select * from {{ref("dim_movies")}}
),
tag as (
    select * from {{ ref("dim_genome_tags")}}
),
scores as (
    select * from {{ ref("fct_genome_scores")}}
)
select 

    m.movie_id,
    m.movie_title,
    m.genres,
    t.tag_name,
    s.relevance_score

from movies m 
left join scores s on m.movie_id = s.movie_id
left join tag t on t.tag_id = s.tag_id