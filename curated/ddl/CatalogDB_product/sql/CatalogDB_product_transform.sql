-- SQL Code for Entity: CatalogDB_product
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS CatalogDB_product (
    prod_id BIGINT,
    svc_id BIGINT,
    prod_name VARCHAR(255),
    prod_type VARCHAR(255),
    bundle VARCHAR(255),
    plan VARCHAR(255),
    discount INTEGER,
    updated_at TIMESTAMP,
    version VARCHAR(255),
    is_deleted BOOLEAN
);

-- Insert transformed data
INSERT INTO CatalogDB_product
SELECT
    prod_id as prod_id,
    svc_id as svc_id,
    prod_name as prod_name,
    prod_type as prod_type,
    bundle as bundle,
    plan as plan,
    discount as discount
FROM raw_CatalogDB_product;

