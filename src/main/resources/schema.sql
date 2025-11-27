create schema IF NOT EXISTS netology;

create table netology.customers (
    id serial primary key,
    name varchar(255),
    surname varchar(255),
    age int,
    phone varchar(255)
);

create table netology.orders (
    id serial primary key,
    date date,
    customer_id int,
    product_name varchar(255),
    amount int,
    foreign key (customer_id) references netology.customers(id)
);
