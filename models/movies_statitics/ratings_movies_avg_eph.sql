{{
    config(
        materialized='ephemeral'
    )
}}

SELECT
    movieid,
    title,
    avg(rating) as avg_ratings
from {{ ref('stg_movies_ratings') }}
group by movieid, title