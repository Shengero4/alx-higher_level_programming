-- This script creates the database 'hbtn_0d_usa' and the table 'cities' within it
-- The table 'cities' has three columns: 'id' (INT auto-generated, unique, non-null, primary key), 'state_id' (INT non-null, foreign key referencing 'id' of 'states' table), and 'name' (VARCHAR(256) non-null)
-- If the database or table already exists, the script will not fail

-- Create database hbtn_0d_usa if it does not exist
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;

-- Use the hbtn_0d_usa database
USE hbtn_0d_usa;

-- Create table cities if it does not exist
CREATE TABLE IF NOT EXISTS cities (
    id INT AUTO_INCREMENT PRIMARY KEY,
    state_id INT NOT NULL,
    name VARCHAR(256) NOT NULL,
    FOREIGN KEY (state_id) REFERENCES states(id)
);

