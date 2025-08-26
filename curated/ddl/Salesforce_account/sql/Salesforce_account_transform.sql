-- SQL Code for Entity: Salesforce_account
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS Salesforce_account (
    account_id BIGINT,
    customer_id BIGINT,
    acct_type VARCHAR(255),
    billing_cycle VARCHAR(255),
    currency VARCHAR(255),
    status VARCHAR(255),
    created_at VARCHAR(255),
    updated_at TIMESTAMP,
    version VARCHAR(255),
    is_deleted BOOLEAN
);

-- Insert transformed data
INSERT INTO Salesforce_account
SELECT
    account_id as account_id,
    customer_id as customer_id,
    acct_type as acct_type,
    billing_cycle as billing_cycle,
    currency as currency,
    status as status,
    created_at as created_at
FROM raw_Salesforce_account;

