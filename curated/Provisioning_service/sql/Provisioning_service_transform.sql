-- SQL Code for Entity: Provisioning_service
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS Provisioning_service (
    svc_id BIGINT,
    sub_ref VARCHAR(255),
    svc_type VARCHAR(255),
    svc_status VARCHAR(255),
    start VARCHAR(255),
    end VARCHAR(255),
    qos VARCHAR(255),
    updated_at TIMESTAMP,
    version VARCHAR(255),
    is_deleted BOOLEAN
);

-- Insert transformed data
INSERT INTO Provisioning_service
SELECT
    svc_id as svc_id,
    sub_ref as sub_ref,
    svc_type as svc_type,
    svc_status as svc_status,
    start as start,
    end as end,
    qos as qos
FROM raw_Provisioning_service;

