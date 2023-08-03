-- Check if the database exists before creating it
CREATE DATABASE IF NOT EXISTS bookstore;

-- Show all databases to verify the creation
SELECT ' ----- DATABASES -----';
SHOW DATABASES;
-- Return Null;

SELECT ' ----- SELECTED DATABASE -----';
SELECT DATABASE();

-- Use the database created or already exists
USE bookstore;
SELECT ' ----- SELECTED DATABASE -----';
-- Return Bia_test;
SELECT DATABASE();

DROP DATABASE IF EXISTS bookstore;
