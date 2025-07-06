-- Basic querys

-- Show all available products

select * from products;

-- Show name and price of products ordenados de menos a mayor

select product_name, list_price from products
order by list_price desc;

-- How many brands are registered
select count(distinct brand_name) from brands;

-- name and email from active personal
select first_name,last_name,email from staffs
where active = true;

-- 5 more recents orders
select order_id,order_date from orders
order by shipped_date desc
limit 5;

-- how many product by category
select b.category_name, count(a.product_name) as total_products
from products a
left join categories b
on a.category_id = b.category_id
group by b.category_name
order by total_products desc;

-- how many customer by state
select state, count(customer_id) as total_customers
from customers
group by state
order by total_customers desc;

--What stores exist and where are they?
select state, city, store_name from stores;






