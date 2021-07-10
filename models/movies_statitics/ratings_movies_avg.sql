{{
    config(
        materialized='table'
    )
}}

SELECT
    *
from {{ ref('ratings_movies_avg_eph') }}