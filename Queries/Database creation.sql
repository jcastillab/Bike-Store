/*tables creation */
create table customers (
customer_id SERIAL primary key,
first_name varchar(255),
last_name varchar(255),
phone varchar(50),
email varchar(256),
street varchar(256),
city varchar(50),
state varchar(50),
zip_code varchar(15)
);

CREATE TABLE staffs (
    staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(25),
    active BOOLEAN,
    store_id INT,
    manager_id INT,
    FOREIGN KEY (store_id) REFERENCES stores(store_id),
    FOREIGN KEY (manager_id) REFERENCES staffs(staff_id)
);

CREATE TABLE stores (
    store_id SERIAL PRIMARY KEY,
    store_name VARCHAR(100),
    phone VARCHAR(25),
    email VARCHAR(100),
    street VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(25),
    zip_code VARCHAR(15)
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_status SMALLINT,
    order_date DATE,
    required_date DATE,
    shipped_date DATE,
    store_id INT,
    staff_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (store_id) REFERENCES stores(store_id),
    FOREIGN KEY (staff_id) REFERENCES staffs(staff_id)
);

CREATE TABLE order_items (
    order_id INT,
    item_id INT,
    product_id INT,
    quantity INT,
    list_price NUMERIC(10,2),
    discount NUMERIC(4,2),
    PRIMARY KEY (order_id, item_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(50)
);

CREATE TABLE brands (
    brand_id SERIAL PRIMARY KEY,
    brand_name VARCHAR(50)
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(255),
    brand_id INT,
    category_id INT,
    model_year INT,
    list_price NUMERIC(10,2),
    FOREIGN KEY (brand_id) REFERENCES brands(brand_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

CREATE TABLE stocks (
    store_id INT,
    product_id INT,
    quantity INT,
    PRIMARY KEY (store_id, product_id),
    FOREIGN KEY (store_id) REFERENCES stores(store_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);


/* llenado de datos */
copy customers (customer_id,first_name,last_name,phone,email,street, city,state,zip_code) 
from 'C:\Program Files\PostgreSQL\17\data\Data_copy\Tables\customers.csv' 
delimiter ',' csv header;

copy staffs (staff_id, first_name, last_name, email, phone, active, store_id, manager_id)
from 'C:\Program Files\PostgreSQL\17\data\Data_copy\Tables\staffs.csv'
delimiter ',' csv header null 'NULL';

copy stores (store_id, store_name, phone, email, street, city,state,zip_code)
from 'C:\Program Files\PostgreSQL\17\data\Data_copy\Tables\stores.csv'
delimiter ',' csv header null 'NULL';

copy orders (order_id,customer_id, order_status, order_date, required_date, shipped_date, store_id, staff_id)
from 'C:\Program Files\PostgreSQL\17\data\Data_copy\Tables\orders.csv'
delimiter ',' csv header null 'NULL';

copy order_items (order_id, item_id, product_id, quantity, list_price, discount)
from 'C:\Program Files\PostgreSQL\17\data\Data_copy\Tables\order_items.csv'
delimiter ',' csv header null 'NULL';

copy categories (category_id,category_name)
from 'C:\Program Files\PostgreSQL\17\data\Data_copy\Tables\categories.csv'
delimiter ',' csv header null 'NULL';

copy brands (brand_id, brand_name)
from 'C:\Program Files\PostgreSQL\17\data\Data_copy\Tables\brands.csv'
delimiter ',' csv header null 'NULL';

copy products (product_id,product_name,brand_id,category_id,model_year,list_price)
from 'C:\Program Files\PostgreSQL\17\data\Data_copy\Tables\products.csv'
delimiter ',' csv header null 'NULL';

copy stocks (store_id, product_id, quantity)
from 'C:\Program Files\PostgreSQL\17\data\Data_copy\Tables\stocks .csv'
delimiter ',' csv header null 'NULL';