-- SQL Code for Entity: fact_invoice
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS consumption.fact_invoice (
    InvoiceID VARCHAR(255),
    AccountID INTEGER,
    CustomerID VARCHAR(255),
    InvoiceDate VARCHAR(255),
    AmountBilled VARCHAR(255),
    Tax VARCHAR(255),
    Discount INTEGER,
    AmountPaid BIGINT,
    PaymentStatus VARCHAR(255),
    updated_at TIMESTAMP,
    version VARCHAR(255),
    is_deleted BOOLEAN
);

-- Insert transformed data
INSERT INTO consumption.fact_invoice
SELECT
    InvoiceID as InvoiceID,
    AccountID as AccountID,
    CustomerID as CustomerID,
    InvoiceDate as InvoiceDate,
    AmountBilled as AmountBilled,
    Tax as Tax,
    Discount as Discount,
    AmountPaid as AmountPaid,
    PaymentStatus as PaymentStatus
FROM raw_fact_invoice;

