# Relational Data Warehouse for Retail Sales

## Overview
This project implements a robust relational data warehouse designed to simulate a real-world retail analytics pipeline. It covers the end-to-end process of data modeling, ETL (Extract, Transform, Load), data warehousing, and analytical querying. The objective is to provide a scalable framework for retail sales data analysis, reporting, and business intelligence.

## Dataset

- **Source:** [Global Super Store Dataset (Kaggle)](https://www.kaggle.com/datasets/apoorvaappz/global-super-store-dataset)

To download and use the dataset:

1. **Install Kaggle CLI:**
   ```bash
   pip install kaggle
   ```
2. **Generate Kaggle API Token:**
   - Go to your Kaggle profile → Settings
   - Under "API," click "Create New Token" to download `kaggle.json`

3. **Set up Kaggle API credentials:**
   ```bash
   mkdir ~/.kaggle
   mv /path/to/kaggle.json ~/.kaggle/
   chmod 600 ~/.kaggle/kaggle.json
   ```

4. **Download and extract the CSV file:**
   ```bash
   kaggle datasets download -d apoorvaappz/global-super-store-dataset
   unzip global-super-store-dataset.zip '*.csv' -d data/
   ```

## Project Objectives

- Design a normalized star schema for retail analytics
- Implement an ETL pipeline in Python
- Load cleansed data into a PostgreSQL database
- Perform data analysis using SQL queries
- (Optional) Build a simple BI dashboard for analytics

## Tools & Technologies

- **PostgreSQL:** Relational database modeling and analytics
- **Python (Pandas, SQLAlchemy):** ETL scripting, data transformation
- **Pandas:** Data cleaning and manipulation
- **Tableau / Power BI / Metabase:** Dashboard and data visualization

## Data Warehouse Schema

### Fact Table: `fact_order`
- `order_id` (Primary Key)
- `order_date_id` (FK to `dim_date`)
- `ship_date_id` (FK to `dim_date`)
- `ship_mode_id` (FK to `dim_ship_mode`)
- `customer_id` (FK to `dim_customer`)
- `product_id` (FK to `dim_product`)
- `order_priority_id` (FK to `dim_order_priority`)
- `sales`
- `quantity`
- `discount`
- `profit`
- `shipping_cost`

### Dimension Tables

1. **`dim_date`** (includes order and ship dates)
   - `date_id` (PK)
   - `full_date`
   - `day`
   - `month`
   - `quarter`
   - `year`

2. **`dim_ship_mode`**
   - `ship_mode_id` (PK)
   - `ship_mode`

3. **`dim_customer`**
   - `customer_id` (PK)
   - `customer_name`
   - `segment`
   - `city`
   - `state`
   - `country`
   - `postal_code`
   - `region`

4. **`dim_product`**
   - `product_id` (PK)
   - `category`
   - `sub_category`
   - `product_name`

5. **`dim_order_priority`**
   - `order_priority_id` (PK)
   - `order_priority`

## Getting Started

1. **Clone this repository:**
   ```bash
   git clone https://github.com/Matt5428/Relational-Data-Warehouse-for-Retail-Sales.git
   cd Relational-Data-Warehouse-for-Retail-Sales
   ```

2. **Set up your Python environment and dependencies.**

3. **Download the dataset (see above).**

4. **Run the ETL pipeline scripts to load data into PostgreSQL.**

5. **Query the data warehouse for analytics or connect your BI tool for visualization.**