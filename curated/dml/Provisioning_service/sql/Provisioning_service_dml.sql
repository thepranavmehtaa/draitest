-- DML Operations for Provisioning_service
-- Generated on: 2025-08-26T09:01:56.835Z

-- Insert new records into curated table
INSERT INTO curated.Provisioning_service (
  
)
SELECT 

FROM raw.Provisioning_service;

-- Update existing records
UPDATE curated.Provisioning_service 
SET 
  updated_at = CURRENT_TIMESTAMP,
  version = version + 1
WHERE id IN (
  SELECT id FROM raw.Provisioning_service
);

-- Soft delete records
UPDATE curated.Provisioning_service 
SET 
  is_deleted = true,
  updated_at = CURRENT_TIMESTAMP
WHERE id NOT IN (
  SELECT id FROM raw.Provisioning_service
);
