SELECT CAST(pickup_datetime AS DATE) AS date,
        COUNT(DISTINCT(pickup_datetime)) AS counts,
        SUM(passenger_count) as total_passenger,
        SUM(total_amount) as total_amount,
        SUM(tip_amount) as total_tips,
        sum(trip_distance) as total_dist,
        AVG(trip_distance) as avg_dist
FROM `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2018`
WHERE (pickup_location_id = '132') AND
      (dropoff_location_id = '230') AND
      (passenger_count > 0)
GROUP BY CAST(pickup_datetime AS DATE)