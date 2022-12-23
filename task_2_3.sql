--Напишите скрипт, который будет возвращать из таблиц поля product_name для пользователей с именем
--alexey независимо от регистра ввода имени.
select name, product_name
from homework.customers c
join homework.orders o on o.customer_id=c.id
where lower(name)='alexey'
