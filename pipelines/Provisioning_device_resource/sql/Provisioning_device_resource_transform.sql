-- SQL Code for Entity: Provisioning_device_resource
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS Provisioning_device_resource (
    id BIGINT,
    name VARCHAR(255),
    description VARCHAR(255),
    created_at VARCHAR(255),
    updated_at TIMESTAMP
);

-- Insert transformed data
INSERT INTO Provisioning_device_resource
SELECT
    id as id,
    name as name,
    description as description,
    created_at as created_at,
    updated_at as updated_at
FROM raw_Provisioning_device_resource;

