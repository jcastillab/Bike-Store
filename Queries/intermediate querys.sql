/*Intermediate querys*/

--How many orders made each customer

select a.first_name, a.last_name, count(b.order_id) as total_orders
from customers a
left join orders b
on a.customer_id = b.customer_id
group by a.first_name, a.last_name
order by total_orders desc;

-- Toltal sold by each staff

select a.first_name, a.last_name, sum(b.quantity * b.list_price) as total_sold
from staffs a
join orders o on a.staff_id = o.staff_id
join order_items b on b.order_id = o.order_id
group by a.first_name, a.last_name
order by total_sold desc;