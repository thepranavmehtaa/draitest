-- DML Operations for BillingSystem_DimOrderItem
-- Generated on: 2025-08-26T09:02:07.183Z

-- Insert new records into curated table
INSERT INTO curated.BillingSystem_DimOrderItem (
  
)
SELECT 

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
