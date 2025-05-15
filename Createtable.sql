CREATE TABLE IF NOT EXISTS retail_dw.factorder (
    order_id INT NOT NULL,
    order_date_id INT NOT NULL,
    ship_date_id INT NOT NULL,
    ship_mode_id INT NOT NULL,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    order_priority_id INT NOT NULL,
    order_date DATE NOT NULL,
    sales 
    quantity INT NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (order_id),
    FOREIGN KEY (order_date_id) REFERENCES retail_dw.dimdate(date_id),
    FOREIGN KEY (ship_date_id) REFERENCES retail_dw.dimdate(date_id),
    FOREIGN KEY (ship_mode_id) REFERENCES retail_dw.dimshipmode(ship_mode_id),
    FOREIGN KEY (customer_id) REFERENCES retail_dw.dimcustomer(customer_id),
    FOREIGN KEY (product_id) REFERENCES retail_dw.dimproduct(product_id),
    FOREIGN KEY (order_priority_id) REFERENCES retail_dw.dimorderpriority(order_priority_id)
);