-- SQL Code for Entity: account
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS consumption.account (
    AccountID INTEGER,
    CustomerID VARCHAR(255),
    AccountType INTEGER,
    BillingCycle VARCHAR(255),
    Currency VARCHAR(255),
    AccountStatus INTEGER,
    CreatedDate VARCHAR(255),
    updated_at TIMESTAMP,
    version VARCHAR(255),
    is_deleted BOOLEAN
);

-- Insert transformed data
INSERT INTO consumption.account
SELECT
    AccountID as AccountID,
    CustomerID as CustomerID,
    AccountType as AccountType,
    BillingCycle as BillingCycle,
    Currency as Currency,
    AccountStatus as AccountStatus,
    CreatedDate as CreatedDate
FROM raw_account;

