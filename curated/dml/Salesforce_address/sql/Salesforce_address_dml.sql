-- DML Operations for Salesforce_address
-- Generated on: 2025-08-26T09:01:50.691Z

-- Insert new records into curated table
INSERT INTO curated.Salesforce_address (
  
)
SELECT 

FROM raw.Salesforce_address;

-- Update existing records
UPDATE curated.Salesforce_address 
SET 
  updated_at = CURRENT_TIMESTAMP,
  version = version + 1
WHERE id IN (
  SELECT id FROM raw.Salesforce_address
);

-- Soft delete records
UPDATE curated.Salesforce_address 
SET 
  is_deleted = true,
  updated_at = CURRENT_TIMESTAMP
WHERE id NOT IN (
  SELECT id FROM raw.Salesforce_address
);
