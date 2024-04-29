
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

SELECT
    EXTRACT(YEAR FROM lpep_pickup_datetime) AS pickup_year,
    EXTRACT(MONTH FROM lpep_pickup_datetime) AS pickup_month,
    RatecodeID,
    AVG(trip_distance) AS avg_trip_distance
FROM
    {{ source('taxi_tripdata','taxi_tripdata') }}
GROUP BY
    pickup_year, pickup_month, RatecodeID
ORDER BY
    pickup_year, pickup_month, RatecodeID