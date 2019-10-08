DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE inventory (
    item_id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR (255) NOT NULL,
    department_name VARCHAR (255) NOT NULL,
    price DECIMAL (10,2) NOT NULL,
    stock_quantity INT NOT NULL,
    PRIMARY KEY (item_id)
);

INSERT INTO inventory (product_name, department_name, price, stock_quantity)
VALUES ('Phone charger', 'Electronics', 19.99, 100);

INSERT INTO inventory (product_name, department_name, price, stock_quantity)
VALUES ('Acer Laptop', 'Electronics', 1200, 50);

INSERT INTO inventory (product_name, department_name, price, stock_quantity)
VALUES ('Dodge Challenger', 'Car', 24000, 5);

INSERT INTO inventory (product_name, department_name, price, stock_quantity)
VALUES ('Towel', 'Clothes', 15.99, 15);

INSERT INTO inventory (product_name, department_name, price, stock_quantity)
VALUES ('Coding Shirt', 'Clothing', 11.99, 100);

INSERT INTO inventory (product_name, department_name, price, stock_quantity)
VALUES ('Cologne', 'Hygiene', 39.99, 50);

INSERT INTO inventory (product_name, department_name, price, stock_quantity)
VALUES ('Television', 'Electronics', 2500, 45);

INSERT INTO inventory (product_name, department_name, price, stock_quantity)
VALUES ('Toothbrush', 'Hygiene', 2.99, 100);

INSERT INTO inventory (product_name, department_name, price, stock_quantity)
VALUES ('Sandals', 'Clothing', 14.99, 10);

INSERT INTO inventory (product_name, department_name, price, stock_quantity)
VALUES ('Jeans', 'Clothing', 29.99, 65);

INSERT INTO inventory (product_name, department_name, price, stock_quantity)
VALUES ('Desk', 'Furniture', 299.99, 4);