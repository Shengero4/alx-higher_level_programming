-- Script to display the average temperature (Fahrenheit) by city ordered by temperature (descending)

-- Display the average temperature by city
SELECT city, AVG(temperature) AS avg_temp
FROM temperatures
GROUP BY city
ORDER BY avg_temp DESC;
