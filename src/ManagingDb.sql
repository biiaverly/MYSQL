-- Check if the database exists before creating it
CREATE DATABASE IF NOT EXISTS Bia_test;

-- Show all databases to verify the creation
SHOW DATABASES;
-- Return Null;
SELECT DATABASE();

-- Use the database created or already exists
USE Bia_test;

-- Return Bia_test;
SELECT DATABASE();

-- DROP DATABASE IF EXISTS Bia_test;
