-- models/my_model.sql

{{ config(
    materialized='view'
) }}

 {{ source('taxi_tripdata','taxi_tripdata') }}
