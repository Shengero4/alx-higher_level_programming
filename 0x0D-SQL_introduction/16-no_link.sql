-- Script to list all records of the table second_table without rows with no name value

-- List records with name value, displaying score and name, and ordered by descending score
SELECT score, name FROM second_table WHERE name IS NOT NULL ORDER BY score DESC;
