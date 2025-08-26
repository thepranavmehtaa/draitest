-- SQL Code for Entity: Provisioning_device_resource
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS Provisioning_device_resource (
    dev_id BIGINT,
    dev_type VARCHAR(255),
    make VARCHAR(255),
    model VARCHAR(255),
    imei VARCHAR(255),
    os VARCHAR(255),
    activated VARCHAR(255),
    warranty VARCHAR(255),
    updated_at TIMESTAMP,
    version VARCHAR(255),
    is_deleted BOOLEAN
);

-- Insert transformed data
INSERT INTO Provisioning_device_resource
SELECT
    dev_id as dev_id,
    dev_type as dev_type,
    make as make,
    model as model,
    imei as imei,
    os as os,
    activated as activated,
    warranty as warranty
FROM raw_Provisioning_device_resource;

