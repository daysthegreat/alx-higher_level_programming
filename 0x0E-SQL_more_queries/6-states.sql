-- creates the database hbtn_0d_usa and the table states (in the database hbtn_0d_usa)
-- description of table data:
--      id INT unique, auto generated, t be null and is a primary key
--      name VARCHAR(256), can't be null
-- should not fail if either exists
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;

USE hbtn_0d_usa;

CREATE TABLE IF NOT EXISTS states (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(256) NOT NULL
);
