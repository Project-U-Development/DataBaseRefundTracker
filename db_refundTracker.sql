SHOW DATABASES;
USE db_refundTracker;
CREATE TABLE users (
user_id VARCHAR(50) PRIMARY KEY, 
user_mail VARCHAR(50) UNIQUE NOT NULL, 
user_password VARCHAR(90) NOT NULL,
verified_mail BOOLEAN NOT NULL DEFAULT 0,
user_reset_password_code VARCHAR(90) NOT NULL DEFAULT '0' 
);
INSERT INTO users VALUES ('1', 'mail1@example.com', 'password1', true, '0');
INSERT INTO users VALUES ('2', 'mail2@example.com', 'password2', true, '0');
INSERT INTO users VALUES ('3', 'mail3@example.com', 'password3', true, '0');
INSERT INTO users VALUES ('4', 'mail4@example.com', 'password4', true, '0');
INSERT INTO users VALUES ('5', 'mail5@example.com', 'password5', true, '0');
INSERT INTO users VALUES ('6', 'mail6@example.com', 'password6', true, '0');
INSERT INTO users VALUES ('7', 'mail7@example.com', 'password7', true, '0');
INSERT INTO users VALUES ('8', 'mail8@example.com', 'password8', true, '0');
INSERT INTO users VALUES ('9', 'mail9@example.com', 'password9', false, '0');
CREATE TABLE refunds (
refund_id VARCHAR(50) PRIMARY KEY,
creation_time DATETIME,
product_name VARCHAR(128) NOT NULL,
debtor VARCHAR(128) NOT NULL,
amount$ DECIMAL(10,2) NOT NULL,
currency ENUM('USD', 'EUR', 'GBP','UAH'), 
due_date DATE, 
user_id VARCHAR(50) NOT NULL, 
if_completed ENUM('yes', 'no', 'deleted'),
FOREIGN  KEY (user_id) REFERENCES users(user_id)
);
CREATE TABLE reminder (
reminder_id VARCHAR(50) PRIMARY KEY, 
reminder_type ENUM('each', 'every'),
frequency INT,
time_unit ENUM('week', 'weeks', 'day', 'days'),
refund_id VARCHAR(50),
FOREIGN KEY (refund_id) REFERENCES refunds (refund_id)
);
CREATE TABLE images (
image_id VARCHAR(50) PRIMARY KEY, 
object_key VARCHAR(200),
bucket_id VARCHAR(200),
FOREIGN KEY (refund_id) REFERENCES refunds (refund_id)
);
DESCRIBE reminder;
DESCRIBE refunds;
INSERT INTO refunds VALUES (1, '2022-01-01 12:47:53', 'shoes', 'Nike', 20.99, 'EUR', '2024-06-01', '3', 'no');
INSERT INTO refunds VALUES (2, '2022-01-02 23:59:59', 'dress', 'Dresscompany', 17.50, 'USD', '2024-05-02', '1', 'no');
INSERT INTO refunds VALUES (3, '2022-01-03 09:12:05', 'socks', 'madeByMom', 7.45, 'GBP', '2024-09-03', '2', 'no');
INSERT INTO refunds VALUES (4, '2022-01-04 13:08:27', 'bedlinen', 'SleepNice', 75.80, 'UAH', '2024-06-17','6', 'no');
INSERT INTO refunds VALUES (5, '2022-02-19 14:15:08', 'mobile', 'Apple', 1299.90, 'USD', '2024-03-23', '1', 'no');
INSERT INTO refunds VALUES (6, '2022-03-26 15:37:41', 'flightMadrid', 'Wizzair', 578.20, 'EUR', '2024-04-23', '5', 'no');
INSERT INTO refunds VALUES (7, '2022-03-28 16:41:23', 'hummer', 'KitchenCo', 255.90, 'GBP', '2024-07-15', '4', 'no');
INSERT INTO refunds VALUES (8, '2022-06-10 17:03:19', 'pillow', 'SleepNice', 45.20, 'EUR', '2024-02-13', '7', 'no');
INSERT INTO refunds VALUES (9, '2022-04-17 18:19:34', 'jacket', 'Jacketcompany', 85.99, 'USD', '2024-04-25','8', 'no');
INSERT INTO refunds VALUES (10, '2022-04-09 19:47:29', 'jeans', 'Dresscompany', 34.00, 'UAH', '2024-05-16','9', 'no');
INSERT INTO reminder VALUES (1, 'each', 2, 'days', 9);
INSERT INTO reminder VALUES (2, 'every', 1, 'week', 8);
INSERT INTO reminder VALUES (3, 'every', 5, 'days', 7);
INSERT INTO reminder VALUES (4, 'each', 3, 'weeks', 6);
INSERT INTO reminder VALUES (5, 'each', 2, 'weeks', 5);
INSERT INTO reminder VALUES (6, 'every', 6, 'days', 4);
INSERT INTO reminder VALUES (7, 'each', 1, 'week', 3);
INSERT INTO reminder VALUES (8, 'every', 12, 'days', 10);
INSERT INTO reminder VALUES (9, 'each', 2, 'weeks', 2);
INSERT INTO reminder VALUES (10, 'every', 4, 'days', 1);
SELECT * FROM reminder;
SELECT * FROM users;
SELECT * FROM refunds;






