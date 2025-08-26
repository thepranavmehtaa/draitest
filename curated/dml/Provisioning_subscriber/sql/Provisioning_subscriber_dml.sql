-- DML Operations for Provisioning_subscriber
-- Generated on: 2025-08-26T09:01:54.716Z

-- Insert new records into curated table
INSERT INTO curated.Provisioning_subscriber (
  
)
SELECT 

FROM raw.Provisioning_subscriber;

-- Update existing records
UPDATE curated.Provisioning_subscriber 
SET 
  updated_at = CURRENT_TIMESTAMP,
  version = version + 1
WHERE id IN (
  SELECT id FROM raw.Provisioning_subscriber
);

-- Soft delete records
UPDATE curated.Provisioning_subscriber 
SET 
  is_deleted = true,
  updated_at = CURRENT_TIMESTAMP
WHERE id NOT IN (
  SELECT id FROM raw.Provisioning_subscriber
);
