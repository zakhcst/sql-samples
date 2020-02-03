CREATE USER IF NOT EXISTS 'testuser'@'localhost' IDENTIFIED BY 'password';

GRANT ALL PRIVILEGES ON sampleusers.* TO 'testuser'@'localhost';
FLUSH PRIVILEGES;

DROP DATABASE IF EXISTS sampleusers;
CREATE DATABASE IF NOT EXISTS sampleusers;

USE sampleusers;

CREATE TABLE IF NOT EXISTS sampleusers.users (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    username VARCHAR(40) NOT NULL,
    email VARCHAR(40) NOT NULL,
    name VARCHAR(40) NOT NULL,
    phone VARCHAR(40),
    website VARCHAR(40),
    company_id INT(11),
    address_id INT(11)
);

CREATE TABLE IF NOT EXISTS sampleusers.companies (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    name VARCHAR(40) NOT NULL,
    catchphrase VARCHAR(140) NOT NULL,
    bs VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS sampleusers.address (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    street VARCHAR(100),
    suite VARCHAR(100),
    city VARCHAR(100),
    zipcode VARCHAR(10),
    geo_id INT(11)
);

CREATE TABLE IF NOT EXISTS sampleusers.geo (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    lat VARCHAR(10),
    lng VARCHAR(10)
);
