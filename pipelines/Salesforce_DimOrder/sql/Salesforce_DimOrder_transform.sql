-- SQL Code for Entity: Salesforce_DimOrder
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS Salesforce_DimOrder (
    order_id BIGINT,
    customer_id BIGINT,
    order_date TIMESTAMP,
    order_status VARCHAR(255),
    order_type VARCHAR(255),
    channel VARCHAR(255),
    amount DECIMAL(10,2),
    last_updated TIMESTAMP,
    updated_at TIMESTAMP,
    version VARCHAR(255),
    is_deleted BOOLEAN
);

-- Insert transformed data
INSERT INTO Salesforce_DimOrder
SELECT
    order_id as order_id,
    customer_id as customer_id,
    order_date as order_date,
    order_status as order_status,
    order_type as order_type,
    channel as channel,
    amount as amount,
    last_updated as last_updated
FROM raw_Salesforce_DimOrder;

