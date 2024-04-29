{% macro test_taxi_tripdata(model, column_name) %}
  
SELECT 
    MAX(total_amount) AS max_amount_for_payment_type_2
FROM 
    {{ model }}
WHERE 
    payment_type =2 ;

{% endmacro %}
