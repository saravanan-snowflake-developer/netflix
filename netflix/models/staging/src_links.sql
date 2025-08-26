WITH raw_links AS (
  SELECT * FROM {{ source('MOVIELENS','links')}}
)

SELECT
  movieId AS movie_id,
  imdbId AS imdb_id,
  tmdbId AS tmdb_id
FROM raw_links