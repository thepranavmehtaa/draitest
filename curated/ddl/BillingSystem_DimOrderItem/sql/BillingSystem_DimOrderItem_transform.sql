-- SQL Code for Entity: BillingSystem_DimOrderItem
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS BillingSystem_DimOrderItem (
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
INSERT INTO BillingSystem_DimOrderItem
SELECT
    OrderItemID as OrderItemID,
    OrderID as OrderID,
    ProductID as ProductID,
    Quantity as Quantity,
    UnitPrice as UnitPrice,
    LineAmount as LineAmount,
    Status as Status
FROM raw_BillingSystem_DimOrderItem;

