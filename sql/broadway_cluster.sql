SELECT *
FROM `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2018`
WHERE (pickup_location_id = '132') AND 
      (dropoff_location_id='230') AND 
      (passenger_count > 0) AND
      (pickup_datetime >= CAST('2018-03-01' AS DATETIME)) AND 
      (pickup_datetime < CAST('2018-04-01' AS DATETIME))