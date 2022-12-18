CREATE DATABASE RefundTracker;
SHOW DATABASES;
use RefundTracker;
CREATE TABLE users (
user_id INT auto_increment PRIMARY KEY, 
user_mail VARCHAR(40), 
user_password varchar(30)
);
INSERT INTO users VALUES (1, 'mail1@example.com', 'password1');
DESCRIBE RefundTracker.users;
INSERT INTO users VALUES (2, 'mail2@example.com', 'password2');
INSERT INTO users VALUES (3, 'mail3@example.com', 'password3');
INSERT INTO users VALUES (4, 'mail4@example.com', 'password4');
INSERT INTO users VALUES (5, 'mail5@example.com', 'password5');
INSERT INTO users VALUES (6, 'mail6@example.com', 'password6');
INSERT INTO users VALUES (7, 'mail7@example.com', 'password7');
INSERT INTO users VALUES (8, 'mail8@example.com', 'password8');
INSERT INTO users VALUES (9, 'mail9@example.com', 'password9');
create table reminder (
reminder_id INT primary KEY,
reminder_type varchar (7),
frequency INT,
time_unit varchar (10)
);
create table refunds (
refund_id INT primary key, 
creation_time DATETIME, 
product_name varchar(40), 
debtor varchar (40), 
amount$ decimal(10,2), 
currency varchar(5), 
due_date date, 
reminder_id INT, 
user_id INT, 
if_completed BOOLEAN, 
FOREIGN  KEY (user_id) REFERENCES users(user_id) on delete set null,
FOREIGN KEY (reminder_id) references reminder (reminder_id) on delete set null
);
describe reminder;
describe refunds;
insert into reminder values (1, 'each', 2, 'days');
insert into refunds values (1, '2022-01-01 12:47:53', 'shoes', 'Nike', 20.99, 'euro', '2024-06-01', 1, 3, 0);
insert into reminder values (2, 'every', 1, 'week');
insert into reminder values (3, 'every', 5, 'days');
insert into reminder values (4, 'each', 3, 'weeks');
insert into reminder values (5, 'each', 2, 'weeks');
insert into reminder values (6, 'every', 6, 'days');
insert into reminder values (7, 'each', 1, 'week');
insert into reminder values (8, 'every', 12, 'days');
insert into reminder values (9, 'each', 2, 'weeks');
insert into reminder values (10, 'every', 4, 'days');
insert into refunds values (2, '2022-01-02 23:59:59', 'dress', 'Dresscompany', 17.50, 'usd', '2024-05-02', 2, 1, 0);
insert into refunds values (3, '2022-01-03 09:12:05', 'socks', 'madeByMom', 7.45, 'cad', '2024-09-03', 5, 2, 0);
insert into refunds values (4, '2022-01-04 13:08:27', 'bedlinen', 'SleepNice', 75.80, 'euro', '2024-06-17', 3, 6, 0);
insert into refunds values (5, '2022-02-19 14:15:08', 'mobile', 'Apple', 1299.90, 'usd', '2024-03-23', 4, 1, 0);
insert into refunds values (6, '2022-03-26 15:37:41', 'flightMadrid', 'Wizzair', 578.20, 'euro', '2024-04-23', 7, 5, 0);
insert into refunds values (7, '2022-03-28 16:41:23', 'hummer', 'KitchenCo', 255.90, 'uah', '2024-07-15', 6, 4, 0);
insert into refunds values (8, '2022-06-10 17:03:19', 'pillow', 'SleepNice', 45.20, 'euro', '2024-02-13', 8, 7, 0);
insert into refunds values (9, '2022-04-17 18:19:34', 'jacket', 'Jacketcompany', 85.99, 'usd', '2024-04-25', 9, 8, 0);
insert into refunds values (10, '2022-04-09 19:47:29', 'jeans', 'Dresscompany', 34.00, 'usd', '2024-05-16', 10,  9, 0);
select * from reminder;
select * from users;
select * from refunds;



