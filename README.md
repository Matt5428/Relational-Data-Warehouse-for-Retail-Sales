# Relational Data Warehouse for Retail Sales
## Overview
This project builds a Relational data warehouse to simulates a real-world retail analytics pipeline with data modeling, ETL, and SQL.


## Dataset used
I analyze the data by using the following dataset:
[Global Super Store Dataset(Kaggle)](https://www.kaggle.com/datasets/apoorvaappz/global-super-store-dataset)

To download this data, I do the following steps:
1. Install kaggle package
<pre>pip install kaggle</pre>

2. Create new token on [kaggle.com](kaggle.com)
<pre>Your profile -> setting 
under API you can find Create new token</pre>

### Download dataset by shell script file:
kaggle_download.sh:
<pre>#!/bin/bash</pre>
3. Set up Kaggle API credentials
<pre>mkdir ~/.kaggle 
mv /path/to/kaggle.json ~/.kaggle/
chmod 600 ~/.kaggle/kaggle.json</pre>
4. download and unzip the dataset 
<pre>kaggle datasets download -d apoorvaappz/global-super-store-dataset
# I only want to extract the csv file right there
unzip global-super-store-dataset.zip '*.csv' -d data/</pre>

## Objectives
- Design a normalized star schema database
- Design a ETL pipeline by Python
- Load Data into SQL
- Analyze the data by writing SQL queries
- Build a simple BI dashboard