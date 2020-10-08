create table customers (
    id                      bigserial,
    name                    varchar(255) not null,
    primary key (id)
);

create table products (
    id                      bigserial primary key,
    title                   varchar(255),
    price                   int
);

create table orders (
    id                      bigserial primary key,
    customer_id             bigint references customers(id),
    price                   int
);

create table order_items (
    id                      bigserial primary key,
    product_id              bigint references products(id),
    order_id                bigint references orders(id),
    price                   int,
    price_per_product       int,
    quantity                int
);

insert into customers (name)
values
('Bob'),
('John'),
('Jack');

insert into products (title, price)
values
('Bread1', 21),
('Bread2', 22),
('Bread1', 23),
('Bread2', 24),
('Bread1', 25),
('Bread2', 26),
('Bread1', 27),
('Bread2', 28),
('Bread1', 29),
('Bread2', 30),
('Bread1', 31),
('Bread2', 32),
('Bread1', 33),
('Bread2', 34),
('Bread1', 35),
('Bread2', 36),
('Bread1', 37),
('Bread2', 38),
('Bread1', 39),
('Bread2', 40);
