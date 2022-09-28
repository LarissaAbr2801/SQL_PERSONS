create TABLE CUSTOMERS
(id SERIAL PRIMARY KEY, 
name VARCHAR(100) not null,
surname VARCHAR(100) not null,
age int,
phone_number int)

create TABLE ORDERS
(id SERIAL PRIMARY KEY, 
 date TIMESTAMP not null,
customer_id int not null,
product_name VARCHAR,
amount DECIMAL,
 FOREIGN KEY (customer_id) REFERENCES customers (id))

create INDEX prod_name_index
on orders (product_name)

select product_name from orders o
join customers c ON o.customer_id = c.id
where c.name like 'alexey'