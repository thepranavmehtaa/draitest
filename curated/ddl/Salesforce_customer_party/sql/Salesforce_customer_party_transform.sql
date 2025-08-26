-- SQL Code for Entity: Salesforce_customer_party
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS Salesforce_customer_party (
    customer_id BIGINT,
    full_name VARCHAR(255),
    dob VARCHAR(255),
    gender VARCHAR(255),
    kyc_status VARCHAR(255),
    segment VARCHAR(255),
    created_at VARCHAR(255),
    updated_at TIMESTAMP,
    version VARCHAR(255),
    is_deleted BOOLEAN
);

-- Insert transformed data
INSERT INTO Salesforce_customer_party
SELECT
    customer_id as customer_id,
    full_name as full_name,
    dob as dob,
    gender as gender,
    kyc_status as kyc_status,
    segment as segment,
    created_at as created_at
FROM raw_Salesforce_customer_party;

