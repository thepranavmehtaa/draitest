-- SQL Code for Entity: BillingSystem_DimOrder
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS BillingSystem_DimOrder (
    id BIGINT,
    custom VARCHAR(255),
    date TIMESTAMP,
    status VARCHAR(255),
    type VARCHAR(255),
    origin VARCHAR(255),
    updated TIMESTAMP,
    updated_at TIMESTAMP,
    version VARCHAR(255),
    is_deleted BOOLEAN
);

-- Insert transformed data
INSERT INTO BillingSystem_DimOrder
SELECT
    id as id,
    custom as custom,
    date as date,
    status as status,
    type as type,
    origin as origin,
    updated as updated
FROM raw_BillingSystem_DimOrder;

