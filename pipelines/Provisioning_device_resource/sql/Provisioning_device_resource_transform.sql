-- SQL Code for Entity: Provisioning_device_resource
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS Provisioning_device_resource (
    id BIGINT,
    name VARCHAR(255),
    description VARCHAR(255),
    status VARCHAR(255),
    created_date TIMESTAMP,
    updated_date TIMESTAMP,
    created_by VARCHAR(255),
    updated_by TIMESTAMP
);

-- Insert transformed data
INSERT INTO Provisioning_device_resource
SELECT
    id as id,
    name as name,
    description as description,
    status as status,
    created_date as created_date,
    updated_date as updated_date,
    created_by as created_by,
    updated_by as updated_by
FROM raw_Provisioning_device_resource;

