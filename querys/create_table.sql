DROP DATABASE IF EXISTS Cloudwalk;

CREATE DATABASE Cloudwalk;

CREATE TABLE Cloudwalk.transactional_sample(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    transaction_id INT NOT NULL,
    merchant_id INT NOT NULL,
    user_id INT NOT NULL,
    card_number VARCHAR(50) NOT NULL,
    transaction_date DATETIME NOT NULL,
    transaction_amount FLOAT(2) NOT NULL,
    device_id VARCHAR(10) NOT NULL,
    has_cbk VARCHAR(10) NOT NULL
) ENGINE = InnoDB;