-- DML Operations for BillingSystem_DimOrder
-- Generated on: 2025-08-26T09:02:09.158Z

-- Insert new records into curated table
INSERT INTO curated.BillingSystem_DimOrder (
  
)
SELECT 

FROM raw.BillingSystem_DimOrder;

-- Update existing records
UPDATE curated.BillingSystem_DimOrder 
SET 
  updated_at = CURRENT_TIMESTAMP,
  version = version + 1
WHERE id IN (
  SELECT id FROM raw.BillingSystem_DimOrder
);

-- Soft delete records
UPDATE curated.BillingSystem_DimOrder 
SET 
  is_deleted = true,
  updated_at = CURRENT_TIMESTAMP
WHERE id NOT IN (
  SELECT id FROM raw.BillingSystem_DimOrder
);
