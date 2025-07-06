# 🚴‍♂️ Bike Store Analytics – SQL + Power BI (En progreso)

Este proyecto consiste en el análisis completo de una base de datos relacional de una tienda de bicicletas. Se trabajó con SQL para extraer y transformar la información, y con Power BI para visualizar métricas clave del negocio como ventas, inventario, desempeño del personal y comportamiento de clientes.

---

## 🧠 Objetivos del Proyecto

- Analizar el rendimiento de ventas por producto, tienda, marca y categoría.
- Identificar a los clientes más frecuentes y sus patrones de compra.
- Visualizar el inventario por tienda y detectar productos agotados.
- Evaluar el desempeño del equipo de ventas.
- Generar KPIs accionables mediante dashboards en Power BI.

---

## 🗃️ Base de Datos

- Nombre: **Bike Store**
- Fuente: Kaggle
- Tipo: Relacional (Modelo entidad-relación)
- Tablas clave: `orders`, `customers`, `products`, `order_items`, `staffs`, `stocks`

![Diagrama Entidad-Relación](https://github.com/jcastillab/Bike-Store/blob/main/Bike%20store-db.png)

---

## 🛠️ Herramientas Utilizadas

- PostgreSQL (para ejecución de queries SQL)
- Power BI (para visualizaciones interactivas)
- GitHub (para control de versiones y documentación del proyecto)

---

## 🧩 Consultas SQL por Nivel

### 🔰 Básico
- Listado de clientes
- Productos disponibles y sus precios
- Empleados activos por tienda

### 🟡 Intermedio
- Total de ventas por producto y tienda
- Órdenes por cliente
- Productos con descuento aplicado

### 🔴 Avanzado
- Clientes más rentables
- Ranking mensual de ventas
- Tiempo promedio de entrega
- Inventario bajo por tienda

Todas las consultas están documentadas en los archivos de la carpeta Queries

---

## 📊 Dashboard en Power BI

Se construyó un dashboard con los siguientes elementos clave:

- **Ventas totales mensuales**
- **Productos más vendidos**
- **Clientes frecuentes**
- **Estado del inventario por tienda**
- **Desempeño por empleado**

📎 Enlace al reporte interactivo (Power BI Service):  
👉 [Ver el Dashboard](https://app.powerbi.com/...)

---

## 🔌 ¿Cómo se conectó Power BI a PostgreSQL?

1. **Abrir Power BI Desktop**
2. Ir a `Inicio > Obtener datos > PostgreSQL`
3. Ingresar los datos de conexión:
   - Servidor: `localhost` (o la IP de tu servidor)
   - Base de datos: `bike_store`
4. Ingresar usuario y contraseña
5. Seleccionar las tablas requeridas (`orders`, `products`, `order_items`, etc.)
6. Cargar datos al modelo
7. Crear relaciones entre tablas en el panel de `Modelo`
8. Comenzar a construir visualizaciones

✅ *Nota: Asegúrate de tener instalado el conector de PostgreSQL para Power BI.*

---

## 📌 Lecciones Aprendidas

- Cómo estructurar consultas SQL desde lo simple a lo avanzado
- Aplicación de CTEs, subconsultas, agregaciones y funciones ventana
- Modelado de datos para visualización en Power BI
- Diseño de dashboards atractivos e informativos

---

## 📁 Estructura del repositorio
```<code>
bike-store-sql-analytics/

├── consultas/
│ ├── consultas_basicas.sql
│ ├── consultas_intermedias.sql
│ └── consultas_avanzadas.sql
├── screenshots/
│ ├── dashboard_ventas.png
│ └── inventario.png
├── powerbi/
│ └── bike-store-dashboard.pbix
├── README.md
└── diagrama_bike_store.png

```
