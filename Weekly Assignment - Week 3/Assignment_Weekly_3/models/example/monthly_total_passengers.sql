
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
    SUM(passenger_count) AS total_passengers
FROM
    {{ source('taxi_tripdata','taxi_tripdata') }}
GROUP BY
    pickup_year, pickup_month
ORDER BY
    pickup_year, pickup_month