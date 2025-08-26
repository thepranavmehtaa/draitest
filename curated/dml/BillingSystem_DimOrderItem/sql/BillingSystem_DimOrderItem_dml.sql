-- DML Operations for BillingSystem_DimOrderItem
-- Generated on: 2025-08-26T09:30:54.461Z

-- Insert new records into curated table
INSERT INTO curated.BillingSystem_DimOrderItem (
  OrderItemID,
  OrderID,
  ProductID,
  Quantity,
  UnitPrice,
  LineAmount,
  Status,
  updated_at,
  version,
  is_deleted,
  _ingest_timestamp,
  _source_system,
  _record_status,
  _update_timestamp,
  _batch_id,
  _created_by,
  _updated_by
)
SELECT 
  OrderItemID as OrderItemID,
  OrderID as OrderID,
  ProductID as ProductID,
  Quantity as Quantity,
  UnitPrice as UnitPrice,
  LineAmount as LineAmount,
  Status as Status
FROM raw.BillingSystem_DimOrderItem;

-- Update existing records
UPDATE curated.BillingSystem_DimOrderItem 
SET 
  updated_at = CURRENT_TIMESTAMP,
  version = version + 1
WHERE id IN (
  SELECT id FROM raw.BillingSystem_DimOrderItem
);

-- Soft delete records
UPDATE curated.BillingSystem_DimOrderItem 
SET 
  is_deleted = true,
  updated_at = CURRENT_TIMESTAMP
WHERE id NOT IN (
  SELECT id FROM raw.BillingSystem_DimOrderItem
);
