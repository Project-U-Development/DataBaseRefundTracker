USE db_refundTracker;

CREATE TABLE users (
  user_id VARCHAR(50) PRIMARY KEY, 
  user_mail VARCHAR(50) UNIQUE NOT NULL, 
  user_password VARCHAR(90) NOT NULL,
  verified_mail BOOLEAN NOT NULL DEFAULT 0
);

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
  reminder_type ENUM('after', 'every'),
  frequency INT,
  time_unit ENUM('week', 'day'),
  refund_id VARCHAR(50),
  FOREIGN KEY (refund_id) REFERENCES refunds (refund_id)
);
