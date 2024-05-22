-- This script creates the database 'hbtn_0d_usa' and the table 'states' within it
-- The table 'states' has two columns: 'id' (INT auto-generated, unique, non-null, primary key) and 'name' (VARCHAR(256) non-null)
-- If the database or table already exists, the script will not fail

-- Create database hbtn_0d_usa if it does not exist
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;

-- Use the hbtn_0d_usa database
USE hbtn_0d_usa;

-- Create table states if it does not exist
CREATE TABLE IF NOT EXISTS states (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(256) NOT NULL
);
