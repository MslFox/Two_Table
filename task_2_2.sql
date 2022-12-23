--Напишите скрипт создания таблицы со следующими параметрами:
--название таблицы - ORDERS
--содержит в себе 4 столбца - id, date, customer_id,product_name, amount
--первичным ключом будет поле id, который инкрементируется каждый раз, при создании заказа
--внешним ключом на поле id таблицы пользователей будет customer_id

create table homework.ORDERS(
                                   id int GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY ,
                                   date date,
                                   customer_id  int references homework.customers (id),
                                   product_name varchar,
                                   amount int

);

insert into homework.orders ( date, customer_id, product_name, amount)
values ('10.10.22', 1, 'Notebook Asus',   2),
       ('11.10.22', 4, 'Notebook Acer',   2),
       ('12.10.22', 5, 'Notebook Huawei', 8);

