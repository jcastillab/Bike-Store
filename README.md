# 🚴‍♂️ Bike Store SQL Analytics

> 💼 Análisis de datos de una tienda de bicicletas usando PostgreSQL y Power BI  
> 💼 Bike store sales and inventory analytics using PostgreSQL and Power BI

---

## 📋 Descripción / Description

Este proyecto es parte de mi portafolio de análisis de datos. Utiliza una base de datos transaccional ficticia de una tienda de bicicletas para explorar, analizar y visualizar datos de ventas, inventario y rendimiento por tienda, categoría y cliente.

This project is part of my data analytics portfolio. It uses a fictional transactional database of a bike store to explore, analyze, and visualize sales, inventory, and performance data by store, category, and customer.
You can watch the interactive dashboard in: https://app.powerbi.com/view?r=eyJrIjoiNDE5Zjg2NWQtOWYzYy00NjlkLWJiYzAtMjU2MjFkOTI4YjI0IiwidCI6IjAzYzIzNTFjLTIxMzgtNDIxYi04YjNjLTI4N2E5Y2QwNTExOSIsImMiOjR9&embedImagePlaceholder=true
---

## 🎯 Objetivos / Objectives

- Consultar, explorar y analizar datos relacionales en PostgreSQL.
- Calcular métricas clave como ventas, descuentos y stock.
- Diseñar dashboards interactivos con Power BI.
- Construir una narrativa analítica basada en datos reales.

- Query, explore and analyze relational data using PostgreSQL.
- Calculate key metrics like sales, discounts, and stock.
- Design interactive dashboards with Power BI.
- Build a data-driven business narrative.

---

## 🧠 Tecnologías utilizadas / Tech Stack

| Herramienta / Tool     | Uso / Purpose                          |
|------------------------|----------------------------------------|
| PostgreSQL             | Consulta y modelado relacional         |
| pgAdmin 4              | Visualización y administración de BD   |
| Power BI               | Dashboard interactivo                  |
| Git + GitHub           | Control de versiones y portafolio      |
| Markdown               | Documentación técnica (`README.md`)    |

---

## 🗂️ Estructura del repositorio / Repository Structure

```<code>
bike-store-sql-analytics/

├── querys/
│ ├── basic querys.sql
│ ├── intermediate querys.sql
│ └── advanced querys.sql
├── Tables/
│ ├── brands.csv
│ ├── categories.csv
│ ├── customers.csv
│ ├── order_items.csv
│ ├── orders.csv
│ ├── products.csv
│ ├── staffs.csv
│ ├── stocks.csv
│ ├── stores.csv
├── powerbi/
│ └── bike-store-dashboard.pbix
├── README.md
└── diagrama_bike_store.png

```


---

## 📊 DAZ y KPIs / KPIs & Analytical Design

**Dimensiones y hechos clave del modelo:**

- **Tiendas** (`stores`)  
- **Productos** (`products`, `categories`, `brands`)  
- **Clientes** (`customers`)  
- **Empleados** (`staffs`)  
- **Órdenes y ventas** (`orders`, `order_items`, `stocks`)

**Principales KPIs calculados:**

| KPI (Español)                         | KPI (English)                      |
|--------------------------------------|------------------------------------|
| Total de ventas                      | Total sales                        |
| Descuento promedio por orden         | Average discount per order         |
| Productos en stock por tienda        | Products in stock per store        |
| Ticket promedio por cliente          | Average ticket per customer        |
| Ventas por categoría y marca         | Sales by category and brand        |
| Empleados por tienda                 | Employees per store                |

---

## 📈 Dashboard en Power BI / Power BI Dashboard

📌 El archivo `.pbix` se encuentra en la carpeta `/dashboard`.

📌 The archive `.pbix` is on the `/dashboard` fold.
### Conexión a PostgreSQL:

1. Abre Power BI Desktop.
2. Elige **Get Data** → PostgreSQL.
3. Ingresa las credenciales de tu servidor local o remoto.
4. Selecciona las tablas necesarias (ej. `orders`, `order_items`, `products`, etc).
5. Crea relaciones siguiendo el modelo entidad-relación.
6. Aplica medidas DAX y construye visualizaciones.

### Connection to PostgreSQL:

1. Open Power BI Desktop.
2. Choose **Get Data** → PostgreSQL.
3. Enter the credentials for your local or remote server.
4. Select the necessary tables (e.g. `orders`, `order_items`, `products`, etc).
5. Create relationships following the entity-relationship model.6. Apply DAX measures and build visualizations.

---

## 🛠 Cómo usar / How to use

```bash
-- 1. Crear la base de datos (create database)
CREATE DATABASE bikestore;

-- 2. Ejecutar scripts para crear tablas (execute scripts to create tables)
querys/database creation.sql

-- 3. Cargar datos desde CSV (copy data from CSV
\COPY products FROM 'ruta/del/archivo.csv' WITH CSV HEADER;

-- 4. Ejecutar consultas desde la carpeta /querys (execute querys from /querys folder)


