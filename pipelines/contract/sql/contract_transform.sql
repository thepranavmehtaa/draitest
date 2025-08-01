-- SQL Code for Entity: contract
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS consumption.contract (
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
INSERT INTO consumption.contract
SELECT
    ContractID as ContractID,
    AccountID as AccountID,
    ContractType as ContractType,
    StartDate as StartDate,
    EndDate as EndDate,
    Status as Status,
    RenewalTerms as RenewalTerms
FROM raw_contract;

