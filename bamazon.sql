DROP DATABASE IF EXISTS bamazon_db;
CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE inventory (
    item_id INTEGER AUTO_INCREMENT NOT NULL,
    product_name VARCHAR (255) NOT NULL,
    department_name VARCHAR (255) NOT NULL,
    price DECIMAL (10,2) NOT NULL,
    stock_quantity INTEGER NOT NULL,
    PRIMARY KEY (id)
);

insert into inventory (product_name, department_name, price, stock_quantity)
values("Phone charger", "Electronics", 19.99, 100);

insert into inventory (product_name, department_name, price, stock_quantity)
values("Acer Laptop", "Electronics", 1200, 50);

insert into inventory (product_name, department_name, price, stock_quantity)
values("Dodge Challenger", "Car", 24000, 5;

insert into inventory (product_name, department_name, price, stock_quantity)
values("Towel", "Clothes", 15.99, 15);

insert into inventory (product_name, department_name, price, stock_quantity)
values("Coding Shirt", "Clothing", 11.99, 100);

insert into inventory (product_name, department_name, price, stock_quantity)
values("Cologne", "Hygiene", 39.99, 50);

insert into inventory (product_name, department_name, price, stock_quantity)
values("Television", "Electronics", 2500, 45);

insert into inventory (product_name, department_name, price, stock_quantity)
values("Toothbrush", "Hygiene", 2.99, 100);

insert into inventory (product_name, department_name, price, stock_quantity)
values("Sandals", "Clothing", 14.99, 10);

insert into inventory (product_name, department_name, price, stock_quantity)
values("Jeans", "Clothing", 29.99, 65);

insert into inventory (product_name, department_name, price, stock_quantity)
values("Desk", "Furniture", 299.99, 4);
