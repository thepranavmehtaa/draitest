-- SQL Code for Entity: address
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS consumption.address (
    AddressID VARCHAR(255),
    CustomerID VARCHAR(255),
    Street VARCHAR(255),
    City VARCHAR(255),
    State VARCHAR(255),
    Postcode VARCHAR(255),
    Country VARCHAR(255),
    AddressType VARCHAR(255),
    updated_at TIMESTAMP,
    version VARCHAR(255),
    is_deleted BOOLEAN
);

-- Insert transformed data
INSERT INTO consumption.address
SELECT
    AddressID as AddressID,
    CustomerID as CustomerID,
    Street as Street,
    City as City,
    State as State,
    Postcode as Postcode,
    Country as Country,
    AddressType as AddressType
FROM raw_address;

