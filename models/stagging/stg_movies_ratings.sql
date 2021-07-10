{{
    config(
        materialized='table'
    )
}}

SELECT 
    movies.movieid,
    movies.title,
    ratings.genres,
    ratings.userid,
    ratings.rating,
    ratings.timestamp
FROM {{ source('ml_db', 'ratings') }}
JOIN {{ source('ml_db', 'movies') }}
    ON movies.movieid = ratings.movieid