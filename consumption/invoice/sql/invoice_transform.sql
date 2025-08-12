-- SQL Code for Entity: invoice
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS consumption.invoice (
    InvoiceID VARCHAR(255),
    AccountID INTEGER,
    InvoiceDate VARCHAR(255),
    DueDate VARCHAR(255),
    TotalAmount VARCHAR(255),
    Status VARCHAR(255),
    PaidDate BIGINT,
    updated_at TIMESTAMP,
    version VARCHAR(255),
    is_deleted BOOLEAN
);

-- Insert transformed data
INSERT INTO consumption.invoice
SELECT
    InvoiceID as InvoiceID,
    AccountID as AccountID,
    InvoiceDate as InvoiceDate,
    DueDate as DueDate,
    TotalAmount as TotalAmount,
    Status as Status,
    PaidDate as PaidDate
FROM raw_invoice;

