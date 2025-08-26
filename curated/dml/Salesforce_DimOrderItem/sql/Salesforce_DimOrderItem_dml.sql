-- DML Operations for Salesforce_DimOrderItem
-- Generated on: 2025-08-26T09:01:06.391Z

-- Insert new records into curated table
INSERT INTO curated.Salesforce_DimOrderItem (
  
)
SELECT 

FROM raw.Salesforce_DimOrderItem;

-- Update existing records
UPDATE curated.Salesforce_DimOrderItem 
SET 
  updated_at = CURRENT_TIMESTAMP,
  version = version + 1
WHERE id IN (
  SELECT id FROM raw.Salesforce_DimOrderItem
);

-- Soft delete records
UPDATE curated.Salesforce_DimOrderItem 
SET 
  is_deleted = true,
  updated_at = CURRENT_TIMESTAMP
WHERE id NOT IN (
  SELECT id FROM raw.Salesforce_DimOrderItem
);
