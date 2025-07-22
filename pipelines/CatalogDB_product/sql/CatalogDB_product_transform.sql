-- SQL Code for Entity: CatalogDB_product
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS CatalogDB_product (
    product_id BIGINT,
    product_name VARCHAR(255),
    description VARCHAR(255),
    category VARCHAR(255),
    subcategory VARCHAR(255),
    brand VARCHAR(255),
    price DECIMAL(10,2),
    cost DECIMAL(10,2),
    sku VARCHAR(255),
    weight VARCHAR(255),
    dimensions VARCHAR(255),
    created_date TIMESTAMP,
    updated_date TIMESTAMP,
    status VARCHAR(255),
    inventory_level VARCHAR(255)
);

-- Insert transformed data
INSERT INTO CatalogDB_product
SELECT
    product_id as product_id,
    product_name as product_name,
    description as description,
    category as category,
    subcategory as subcategory,
    brand as brand,
    price as price,
    cost as cost,
    sku as sku,
    weight as weight,
    dimensions as dimensions,
    created_date as created_date,
    updated_date as updated_date,
    status as status,
    inventory_level as inventory_level
FROM raw_CatalogDB_product;

