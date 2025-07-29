-- SQL Code for Entity: BillingSystem_customer_party
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS BillingSystem_customer_party (
    custom VARCHAR(255),
    name VARCHAR(255),
    birth_date TIMESTAMP,
    sex VARCHAR(255),
    kyc VARCHAR(255),
    plan VARCHAR(255),
    created_on VARCHAR(255),
    updated_at TIMESTAMP,
    version VARCHAR(255),
    is_deleted BOOLEAN
);

-- Insert transformed data
INSERT INTO BillingSystem_customer_party
SELECT
    custom as custom,
    name as name,
    birth_date as birth_date,
    sex as sex,
    kyc as kyc,
    plan as plan,
    created_on as created_on
FROM raw_BillingSystem_customer_party;

