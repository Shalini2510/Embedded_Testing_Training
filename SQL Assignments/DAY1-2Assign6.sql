-- Connect to the database as the root user or a user with sufficient privileges

-- Step 1: Create a new user and grant privileges
CREATE USER 'User1'@'localhost' IDENTIFIED BY '1234';
GRANT SELECT, INSERT, UPDATE, DELETE ON university.* TO 'User1'@'localhost';
FLUSH PRIVILEGES;

-- Step 2: Revoke specific privileges
REVOKE DELETE ON university.* FROM 'User1'@'localhost';
FLUSH PRIVILEGES;

-- Step 3: Drop the user
DROP USER 'User1'@'localhost';
