SHOW DATABASES;
USE db_refundTracker;
CREATE TABLE users (
user_id VARCHAR(40) PRIMARY KEY, 
user_mail VARCHAR(40), 
user_password VARCHAR(30)
);
INSERT INTO users VALUES ('1', 'mail1@example.com', 'password1');
DESCRIBE RefundTracker.users;
INSERT INTO users VALUES ('2', 'mail2@example.com', 'password2');
INSERT INTO users VALUES ('3', 'mail3@example.com', 'password3');
INSERT INTO users VALUES ('4', 'mail4@example.com', 'password4');
INSERT INTO users VALUES ('5', 'mail5@example.com', 'password5');
INSERT INTO users VALUES ('6', 'mail6@example.com', 'password6');
INSERT INTO users VALUES ('7', 'mail7@example.com', 'password7');
INSERT INTO users VALUES ('8', 'mail8@example.com', 'password8');
INSERT INTO users VALUES ('9', 'mail9@example.com', 'password9');
CREATE TABLE refunds (
refund_id INT PRIMARY KEY, 
creation_time DATETIME, 
product_name VARCHAR(40), 
debtor VARCHAR(40), 
amount$ DECIMAL(10,2), 
currency VARCHAR(5), 
due_date DATE, 
user_id VARCHAR(40), 
if_completed BOOLEAN, 
FOREIGN  KEY (user_id) REFERENCES users(user_id)
);
CREATE TABLE reminder (
reminder_id INT PRIMARY KEY,
reminder_type VARCHAR (7),
frequency INT,
time_unit VARCHAR (10),
refund_id INT,
FOREIGN KEY (refund_id) REFERENCES refunds (refund_id)
);
DESCRIBE reminder;
DESCRIBE refunds;
INSERT INTO refunds VALUES (1, '2022-01-01 12:47:53', 'shoes', 'Nike', 20.99, 'euro', '2024-06-01', '3', 0);
INSERT INTO refunds VALUES (2, '2022-01-02 23:59:59', 'dress', 'Dresscompany', 17.50, 'usd', '2024-05-02', '1', 0);
INSERT INTO refunds VALUES (3, '2022-01-03 09:12:05', 'socks', 'madeByMom', 7.45, 'cad', '2024-09-03', '2', 0);
INSERT INTO refunds VALUES (4, '2022-01-04 13:08:27', 'bedlinen', 'SleepNice', 75.80, 'euro', '2024-06-17','6', 0);
INSERT INTO refunds VALUES (5, '2022-02-19 14:15:08', 'mobile', 'Apple', 1299.90, 'usd', '2024-03-23', '1', 0);
INSERT INTO refunds VALUES (6, '2022-03-26 15:37:41', 'flightMadrid', 'Wizzair', 578.20, 'euro', '2024-04-23', '5', 0);
INSERT INTO refunds VALUES (7, '2022-03-28 16:41:23', 'hummer', 'KitchenCo', 255.90, 'uah', '2024-07-15', '4', 0);
INSERT INTO refunds VALUES (8, '2022-06-10 17:03:19', 'pillow', 'SleepNice', 45.20, 'euro', '2024-02-13', '7', 0);
INSERT INTO refunds VALUES (9, '2022-04-17 18:19:34', 'jacket', 'Jacketcompany', 85.99, 'usd', '2024-04-25','8', 0);
INSERT INTO refunds VALUES (10, '2022-04-09 19:47:29', 'jeans', 'Dresscompany', 34.00, 'usd', '2024-05-16','9', 0);
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





