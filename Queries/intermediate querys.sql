/*Intermediate querys*/

--How many orders made each customer

select a.first_name, a.last_name, count(b.order_id) as total_orders
from customers a
left join orders b
on a.customer_id = b.customer_id
group by a.first_name, a.last_name
order by total_orders desc;

-- Total sold by each staff

select a.first_name, a.last_name, sum(b.quantity * b.list_price) as total_sold
from staffs a
join orders o on a.staff_id = o.staff_id
join order_items b on b.order_id = o.order_id
group by a.first_name, a.last_name
order by total_sold desc;

-- most sold product by quantity

select a.product_name, sum(b.quantity) as total_sold
from order_items b
join products a on b.product_id = a.product_id
group by a.product_name
limit 1;

-- Product in stock by shop

select a.store_name,c.product_name, b.quantity as total_stock
from stores a
join stocks b on a.store_id = b.store_id
join products c on b.product_id = c.product_id
order by a.store_name,c.product_name desc;

-- Average price by category

select a.category_name, round(avg(b.list_price),2) as average_price
from products b
join categories a on a.category_id =b.category_id
group by a.category_name
order by average_price desc;

-- shops with more than 100 products on stock

select a.store_name, sum(b.quantity) as total_stock
from stores a
join stocks b on a.store_id = b.store_id
group by a.store_name
having sum(b.quantity) >100
order by total_stock desc;

-- Total vents by store

select a.store_name, sum(b.quantity * b.list_price) as total_sold
from stores a
join orders o on a.store_id = o.store_id
join order_items b on b.order_id = o.order_id
group by a.store_name
order by total_sold desc;

-- Frecuent customers (3 or more orders)
select a.first_name, a.last_name, count(b.order_id) as total_orders
from customers a
left join orders b
on a.customer_id =b.customer_id
group by a.first_name, a.last_name
having count(b.order_id)>=3;


