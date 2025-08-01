-- SQL Code for Entity: dimorderitem
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS consumption.dimorderitem (
    OrderItemID VARCHAR(255),
    OrderID VARCHAR(255),
    ProductID VARCHAR(255),
    Quantity VARCHAR(255),
    UnitPrice VARCHAR(255),
    LineAmount VARCHAR(255),
    Status VARCHAR(255),
    updated_at TIMESTAMP,
    version VARCHAR(255),
    is_deleted BOOLEAN
);

-- Insert transformed data
INSERT INTO consumption.dimorderitem
SELECT
    OrderItemID as OrderItemID,
    OrderID as OrderID,
    ProductID as ProductID,
    Quantity as Quantity,
    UnitPrice as UnitPrice,
    LineAmount as LineAmount,
    Status as Status
FROM raw_dimorderitem;

