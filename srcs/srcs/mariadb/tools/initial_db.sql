CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'gmezzini'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON wordpress.* TO 'gmezzini'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'root';