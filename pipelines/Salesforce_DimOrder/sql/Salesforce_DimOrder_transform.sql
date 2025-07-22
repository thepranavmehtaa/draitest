-- SQL Code for Entity: Salesforce_DimOrder
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS Salesforce_DimOrder (
    order_id BIGINT,
    customer_id BIGINT,
    order_date TIMESTAMP,
    status VARCHAR(255),
    total_amount DECIMAL(10,2),
    tax_amount DECIMAL(10,2),
    shipping_amount DECIMAL(10,2),
    discount_amount DECIMAL(10,2),
    payment_method VARCHAR(255),
    shipping_address VARCHAR(255),
    billing_address VARCHAR(255),
    created_date TIMESTAMP,
    updated_date TIMESTAMP,
    order_priority VARCHAR(255),
    delivery_date TIMESTAMP
);

-- Insert transformed data
INSERT INTO Salesforce_DimOrder
SELECT
    order_id as order_id,
    customer_id as customer_id,
    order_date as order_date,
    status as status,
    total_amount as total_amount,
    tax_amount as tax_amount,
    shipping_amount as shipping_amount,
    discount_amount as discount_amount,
    payment_method as payment_method,
    shipping_address as shipping_address,
    billing_address as billing_address,
    created_date as created_date,
    updated_date as updated_date,
    order_priority as order_priority,
    delivery_date as delivery_date
FROM raw_Salesforce_DimOrder;

