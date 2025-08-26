-- SQL Code for Entity: Provisioning_subscriber
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS Provisioning_subscriber (
    sub_id BIGINT,
    contract_ref VARCHAR(255),
    msisdn VARCHAR(255),
    sim VARCHAR(255),
    device_ref VARCHAR(255),
    sub_type VARCHAR(255),
    sub_status VARCHAR(255),
    activated VARCHAR(255),
    updated_at TIMESTAMP,
    version VARCHAR(255),
    is_deleted BOOLEAN
);

-- Insert transformed data
INSERT INTO Provisioning_subscriber
SELECT
    sub_id as sub_id,
    contract_ref as contract_ref,
    msisdn as msisdn,
    sim as sim,
    device_ref as device_ref,
    sub_type as sub_type,
    sub_status as sub_status,
    activated as activated
FROM raw_Provisioning_subscriber;

