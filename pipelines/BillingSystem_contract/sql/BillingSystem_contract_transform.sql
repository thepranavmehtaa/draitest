-- SQL Code for Entity: BillingSystem_contract
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS BillingSystem_contract (
    ContractID VARCHAR(255),
    AccountID INTEGER,
    ContractType VARCHAR(255),
    StartDate VARCHAR(255),
    EndDate VARCHAR(255),
    Status VARCHAR(255),
    RenewalTerms VARCHAR(255),
    updated_at TIMESTAMP,
    version VARCHAR(255),
    is_deleted BOOLEAN
);

-- Insert transformed data
INSERT INTO BillingSystem_contract
SELECT
    ContractID as ContractID,
    AccountID as AccountID,
    ContractType as ContractType,
    StartDate as StartDate,
    EndDate as EndDate,
    Status as Status,
    RenewalTerms as RenewalTerms
FROM raw_BillingSystem_contract;

