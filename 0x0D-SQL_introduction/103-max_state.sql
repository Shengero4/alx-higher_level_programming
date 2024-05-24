-- Script to display the max temperature of each state ordered by State name

-- Display the max temperature of each state
SELECT state, MAX(temperature) AS max_temp
FROM temperatures
GROUP BY state
ORDER BY state;
