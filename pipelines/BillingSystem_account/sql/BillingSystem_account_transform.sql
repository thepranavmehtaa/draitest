-- SQL Code for Entity: BillingSystem_account
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS BillingSystem_account (
    acct_id BIGINT,
    custom VARCHAR(255),
    type VARCHAR(255),
    cycle VARCHAR(255),
    cur VARCHAR(255),
    state VARCHAR(255),
    created VARCHAR(255),
    updated_at TIMESTAMP,
    version VARCHAR(255),
    is_deleted BOOLEAN
);

-- Insert transformed data
INSERT INTO BillingSystem_account
SELECT
    acct_id as acct_id,
    custom as custom,
    type as type,
    cycle as cycle,
    cur as cur,
    state as state,
    created as created
FROM raw_BillingSystem_account;

