# Relational Data Warehouse for Retail Sales
## Overview
This project builds a Relational data warehouse to simulates a real-world retail analytics pipeline with data modeling, ETL, and SQL.


## Dataset used
I analyze the data by using the following dataset:
[Global Super Store Dataset(Kaggle)](https://www.kaggle.com/datasets/apoorvaappz/global-super-store-dataset)

To download this data, I do the following steps:
1. Install kaggle package
<pre>pip install kaggle</pre>

2. Generate [Kaggle](kaggle.com) API Token
<pre>Go to your profile → Settings
Under "API", click "Create New Token" to download kaggle.json</pre>

### Download dataset by shell script file:
kaggle_download.sh:
<pre>#!/bin/bash</pre>
3. Set up Kaggle API credentials
<pre>mkdir ~/.kaggle 
mv /path/to/kaggle.json ~/.kaggle/
chmod 600 ~/.kaggle/kaggle.json</pre>
4. Download and Extract Only the CSV File
<pre>kaggle datasets download -d apoorvaappz/global-super-store-dataset
# I only want to extract the csv file right there
unzip global-super-store-dataset.zip '*.csv' -d data/</pre>

## Objectives
- Design a normalized star schema
- Design a ETL pipeline by Python
- Load Data into SQL
- Analyze the data by writing SQL queries
- Build a simple BI dashboard (Maybe)

## Tools
PostgreSQL: To create RDBMS, Data modeling and analysis by queries
Python: ETL script (Pandas,SQL)
Pandas: Data cleaning and transformation
Tableau / Power BI / Metabase: Create Dashboards for my data

## Database(retail_dw) design:
I decided to design a star schema based on the dataset:

### Fact table: factorder
- order_id (primary key)
- order_date_id (FK to dim_date)
- ship_date_id (FK to dim_date)
- ship_mode_id (FK to dim_ship_mode)
- customer_id (FK to dim_customer)
- product_id (FK to dim_product)
- order_priority_id (FK to dim_order_priority)
-  Sales
- Quantity
- Discount
- Profit
- Shipping Cost

### Dimension Tables:

1. dimdate (including order_date,ship_date):
- date_id (pk)
- full_date
- day
- month
- quarter
- year

2. dimshipmode
- ship_mode_id
- ship_mode

3. dimcustomer
- customer_id (PK)
- customer_name
- segment
- city
- state
- country
- postal_code
- region

4. dimproduct
- product_id(pk)
- category
- sub_category
- product_name

5. dimorderpriority
- order_priority_id(pk)
- order_priority

