-- SQL Code for Entity: dimorder
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS consumption.dimorder (
    OrderID VARCHAR(255),
    CustomerID VARCHAR(255),
    OrderDate VARCHAR(255),
    OrderStatus VARCHAR(255),
    OrderType VARCHAR(255),
    Channel VARCHAR(255),
    TotalAmount VARCHAR(255),
    LastUpdated TIMESTAMP,
    updated_at TIMESTAMP,
    version VARCHAR(255),
    is_deleted BOOLEAN
);

-- Insert transformed data
INSERT INTO consumption.dimorder
SELECT
    OrderID as OrderID,
    CustomerID as CustomerID,
    OrderDate as OrderDate,
    OrderStatus as OrderStatus,
    OrderType as OrderType,
    Channel as Channel,
    TotalAmount as TotalAmount,
    LastUpdated as LastUpdated
FROM raw_dimorder;

