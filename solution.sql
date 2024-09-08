
-- Connect to MySQL server
mysql.exe -u root

-- Create a new database named Mahesh
CREATE DATABASE IF NOT EXISTS Mahesh;

-- List all databases to confirm creation
SHOW DATABASES;

-- Switch to the Mahesh database
USE Mahesh;

-- Create the cricket_scores table
CREATE TABLE IF NOT EXISTS cricket_scores (
    ball INT,
    run INT
);

-- Insert data into the cricket_scores table
INSERT INTO cricket_scores (ball, run) VALUES
(1, 0), (2, 2), (3, 3), (4, 0), (5, 0), (6, 1),
(7, 6), (8, 4), (9, 0), (10, 0), (11, 1), (12, 0);

-- Query to select all data from cricket_scores
SELECT * FROM cricket_scores;

SELECT CEILING(ball / 6.0) AS `over`, SUM(run) AS total_runs 
FROM cricket_scores 
GROUP BY CEILING(ball / 6.0);

-- OutPut : 
+------+-----+
| ball | run |
+------+-----+
|    1 |  6  |
|    2 | 12  |
+------+-----+