-- SQL Code for Entity: BillingSystem_customer_kpi
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS BillingSystem_customer_kpi (
    id BIGINT,
    name VARCHAR(255),
    description VARCHAR(255),
    created_at VARCHAR(255),
    updated_at TIMESTAMP
);

-- Insert transformed data
INSERT INTO BillingSystem_customer_kpi
SELECT
    id as id,
    name as name,
    description as description,
    created_at as created_at,
    updated_at as updated_at
FROM raw_BillingSystem_customer_kpi;

