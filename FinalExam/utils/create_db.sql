CREATE DATABASE IF NOT EXISTS ASE230Final;

CREATE USER 'ase230_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'abc123!!!';
GRANT ALL PRIVILEGES ON ASE230Final.* TO 'ase230_user'@'localhost';
FLUSH PRIVILEGES;

USE ASE230Final;

CREATE TABLE IF NOT EXISTS categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(16)
);

INSERT INTO categories (name) VALUES ('default');


CREATE TABLE IF NOT EXISTS orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    date DATETIME DEFAULT CURRENT_TIMESTAMP,
    status ENUM('ordered', 'canceled', 'in progress', 'shipped', 'delivered') DEFAULT 'ordered'
);



CREATE TABLE IF NOT EXISTS products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(32),
    price FLOAT,
    quantity INT default 0,
    description VARCHAR(256)
);

INSERT INTO products (name, price, quantity, description) VALUES ('air', 4.95, 5000, 'An empty box with air in it');


CREATE TABLE IF NOT EXISTS users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    role ENUM('user', 'admin') DEFAULT 'user',
    first_name VARCHAR(16),
    last_name VARCHAR(16),
    email VARCHAR(40),
    address VARCHAR(40),
    address2 VARCHAR(40),
    city VARCHAR(32),
    state VARCHAR(2),
    zip_code VARCHAR(10)
);

INSERT INTO users (role, first_name, last_name, email, address, address2, city, state, zip_code) VALUES ('admin', 'Noah', 'Gestiehr', 'adminguy@ecommerce.com', '123 Main St', 'basement dungeon', 'Highland Heights', 'KY', '41076');