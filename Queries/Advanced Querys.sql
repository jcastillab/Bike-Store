-- Advanced querys
-- More sold products (by quantity)

with product_sales as (
	select 
		product_id,
		sum(quantity) as total_sold
	from order_items
	group by product_id
)
select p.product_name, ps.total_sold
from product_sales ps
join products p 
on ps.product_id = p.product_id
order by ps.total_sold desc
limit 5;

-- Product ranking by store

with store_product_sales as (
	select
		o.store_id,
		p.product_name,
		sum(oi.quantity) as total_sold
	from order_items oi
	join orders o on oi.order_id =o.order_id
	join products p on oi.product_id = p.product_id
	group by o.store_id, p.product_name
)
select
	s.store_name,
	sps.product_name,
	sps.total_sold,
	dense_rank() over(partition by sps.store_id order by sps.total_sold desc) as product_rank
from store_product_sales sps
join stores s on sps.store_id =s.store_id
order by s.store_name, product_rank;

-- Most valuable customer
SELECT 
  c.customer_id,
  c.first_name,
  c.last_name,
  ROUND(SUM(oi.quantity * oi.list_price * (1 - oi.discount)), 2) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.customer_id, c.first_name, c.last_name
ORDER BY total_spent DESC
LIMIT 1;

-- Total sales by month in each store
SELECT s.store_name,
  to_char(DATE_TRUNC('month', o.order_date),'YYYY-MM') AS month,
  ROUND(SUM(oi.quantity * oi.list_price * (1 - oi.discount)), 2) AS total_sales
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
left join stores s on o.store_id = s.store_id
GROUP BY s.store_name, month
ORDER BY month;

-- Orders with an average discount greater to 10%
SELECT 
  o.order_id,
  ROUND(AVG(oi.discount), 2) AS avg_discount
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.order_id
HAVING AVG(oi.discount) > 0.10
ORDER BY avg_discount DESC;

-- Low stock by store
SELECT 
  s.store_name,
  p.product_name,
  st.quantity
FROM stocks st
JOIN stores s ON st.store_id = s.store_id
JOIN products p ON st.product_id = p.product_id
WHERE st.quantity < 5
ORDER BY s.store_name, st.quantity ASC;

--Sales by category

SELECT 
  c.category_name,
  ROUND(SUM(oi.quantity * oi.list_price * (1 - oi.discount)), 2) AS category_sales
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY category_sales DESC;