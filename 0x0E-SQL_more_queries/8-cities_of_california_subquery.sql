-- This script lists all the cities of California from the database hbtn_0d_usa
-- Results are sorted in ascending order by cities.id
-- Subquery is used to filter the cities based on the state_id corresponding to California

-- Select cities of California using subquery
SELECT * FROM cities
WHERE state_id = (
    SELECT id FROM states WHERE name = 'California'
)
ORDER BY id ASC;
