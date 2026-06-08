CREATE DATABASE retail_project;

use retail_project;

CREATE TABLE retail_sales (
    transaction_id INT,
    sales_date VARCHAR(20),
    customer_id VARCHAR(20),
    gender VARCHAR(10),
    age INT,
    product_category VARCHAR(100),
    quantity INT,
    price_per_unit INT,
    total_amount INT
);

SELECT COUNT(*) FROM retail_sales;

SELECT SUM(total_amount) FROM retail_sales;

/* SELECT month_name,
       SUM(total_amount) AS sales
FROM retail_sales
GROUP BY month_name; */

SELECT product_category, SUM(total_amount) AS sales FROM retail_sales GROUP BY product_category;


