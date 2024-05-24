-- Script to display the top 3 cities' temperature during July and August ordered by temperature (descending)

-- Display the top 3 cities' temperature during July and August
SELECT city, AVG(temperature) AS avg_temp
FROM temperatures
WHERE MONTH(date) IN (7, 8) -- Filter for July and August
GROUP BY city
ORDER BY avg_temp DESC
LIMIT 3;
