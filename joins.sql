

USE sql_store;

SELECT order_id, o.customer_id, first_name, last_name 
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id;
    

 CREATE Table orders_archived as
 select * from orders;
 
    


SELECT * 
FROM order_items oi
JOIN sql_inventory.products p
ON oi.product_id = p.product_id;



SELECT
    e.employee_id,
    e.first_name,
    m.first_name AS manager
 FROM employees e
 JOIN employees m
    ON  e.reports_to = m.employee_id;
    



SELECT order_id,
order_date,
'Active' As Status
FROM orders
WHERE order_date >= '2019-01-01'
UNION 
SELECT order_id,
order_date,
'Archived' As Status
FROM orders
WHERE order_date < '2019-01-01';



INSERT into Customers(first_name, last_name, birth_date, address, city, state)
Values ('nkdebug', 'blr', '1992-01-01', 'bengaluru','city', 'IN');


create table order_archived as
select * from orders;



update customers
set city = 'Delhi' 
where customer_id=11; 

select * from orders where customer_id  IN (select customer_id from customers where customer_id=5);


delete from customers
where customer_id = 11;


alter table sql_inventory.products add seller varchar(50);