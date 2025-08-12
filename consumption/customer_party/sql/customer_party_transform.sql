-- SQL Code for Entity: customer_party
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS consumption.customer_party (
    CustomerID VARCHAR(255),
    PartyType VARCHAR(255),
    Name VARCHAR(255),
    DOB VARCHAR(255),
    Gender VARCHAR(255),
    KYCStatus VARCHAR(255),
    CustomerSegment VARCHAR(255),
    CreatedDate VARCHAR(255),
    updated_at TIMESTAMP,
    version VARCHAR(255),
    is_deleted BOOLEAN
);

-- Insert transformed data
INSERT INTO consumption.customer_party
SELECT
    CustomerID as CustomerID,
    PartyType as PartyType,
    Name as Name,
    DOB as DOB,
    Gender as Gender,
    KYCStatus as KYCStatus,
    CustomerSegment as CustomerSegment,
    CreatedDate as CreatedDate
FROM raw_customer_party;

