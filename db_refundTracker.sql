CREATE DATABASE RefundTracker;
SHOW DATABASES;
use RefundTracker;
CREATE TABLE users (user_id INT PRIMARY KEY, user_name VARCHAR(40));
INSERT INTO users VALUES (1, 'Jack');
INSERT INTO users VALUES (2, 'Ann');
SHOW TABLES;
SHOW FULL TABLES;
DESCRIBE RefundTracker.users;