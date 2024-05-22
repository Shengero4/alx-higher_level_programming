-- This script creates users 'user_0d_1' and 'user_0d_2' and grants them specific privileges
-- Then, it lists all privileges for these users

-- Create user_0d_1 if it does not exist
CREATE USER IF NOT EXISTS 'user_0d_1'@'localhost';

-- Grant all privileges to user_0d_1
GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost';

-- Create user_0d_2 if it does not exist
CREATE USER IF NOT EXISTS 'user_0d_2'@'localhost';

-- Grant specific privileges to user_0d_2
GRANT SELECT, INSERT, UPDATE ON *.* TO 'user_0d_2'@'localhost';

-- Flush privileges to ensure all changes are applied
FLUSH PRIVILEGES;

-- Show privileges for user_0d_1
SHOW GRANTS FOR 'user_0d_1'@'localhost';

-- Show privileges for user_0d_2
SHOW GRANTS FOR 'user_0d_2'@'localhost';
