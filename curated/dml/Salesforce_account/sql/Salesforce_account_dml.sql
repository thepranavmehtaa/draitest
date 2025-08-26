-- DML Operations for Salesforce_account
-- Generated on: 2025-08-26T09:01:52.661Z

-- Insert new records into curated table
INSERT INTO curated.Salesforce_account (
  
)
SELECT 

FROM raw.Salesforce_account;

-- Update existing records
UPDATE curated.Salesforce_account 
SET 
  updated_at = CURRENT_TIMESTAMP,
  version = version + 1
WHERE id IN (
  SELECT id FROM raw.Salesforce_account
);

-- Soft delete records
UPDATE curated.Salesforce_account 
SET 
  is_deleted = true,
  updated_at = CURRENT_TIMESTAMP
WHERE id NOT IN (
  SELECT id FROM raw.Salesforce_account
);
