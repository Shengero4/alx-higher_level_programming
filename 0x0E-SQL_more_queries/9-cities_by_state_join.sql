-- This script lists all cities contained in the database hbtn_0d_usa
-- Each record displays cities.id, cities.name, and states.name
-- Results are sorted in ascending order by cities.id
-- One SELECT statement is used without using the JOIN keyword

-- Select cities and corresponding state names
SELECT cities.id, cities.name, states.name
FROM cities, states
WHERE cities.state_id = states.id
ORDER BY cities.id ASC;
