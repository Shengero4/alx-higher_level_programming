-- This script creates the table 'unique_id' in a specified database
-- The table has two columns: 'id' (INT with default value 1 and must be unique) and 'name' (VARCHAR(256))
-- If the table already exists, the script will not fail

CREATE TABLE IF NOT EXISTS unique_id (
    id INT DEFAULT 1 UNIQUE,
    name VARCHAR(256)
);
