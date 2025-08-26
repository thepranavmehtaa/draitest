-- DML Operations for Salesforce_DimOrder
-- Generated on: 2025-08-26T09:01:08.339Z

-- Insert new records into curated table
INSERT INTO curated.Salesforce_DimOrder (
  
)
SELECT 

FROM raw.Salesforce_DimOrder;

-- Update existing records
UPDATE curated.Salesforce_DimOrder 
SET 
  updated_at = CURRENT_TIMESTAMP,
  version = version + 1
WHERE id IN (
  SELECT id FROM raw.Salesforce_DimOrder
);

-- Soft delete records
UPDATE curated.Salesforce_DimOrder 
SET 
  is_deleted = true,
  updated_at = CURRENT_TIMESTAMP
WHERE id NOT IN (
  SELECT id FROM raw.Salesforce_DimOrder
);
