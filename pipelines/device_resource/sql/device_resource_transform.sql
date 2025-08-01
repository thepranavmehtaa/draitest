-- SQL Code for Entity: device_resource
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS consumption.device_resource (
    DeviceID VARCHAR(255),
    DeviceType VARCHAR(255),
    Make VARCHAR(255),
    Model VARCHAR(255),
    IMEI VARCHAR(255),
    OS VARCHAR(255),
    ActivationDate VARCHAR(255),
    WarrantyExpiry VARCHAR(255),
    updated_at TIMESTAMP,
    version VARCHAR(255),
    is_deleted BOOLEAN
);

-- Insert transformed data
INSERT INTO consumption.device_resource
SELECT
    DeviceID as DeviceID,
    DeviceType as DeviceType,
    Make as Make,
    Model as Model,
    IMEI as IMEI,
    OS as OS,
    ActivationDate as ActivationDate,
    WarrantyExpiry as WarrantyExpiry
FROM raw_device_resource;

