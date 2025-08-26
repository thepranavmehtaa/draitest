-- DML Operations for Provisioning_device_resource
-- Generated on: 2025-08-26T09:01:59.144Z

-- Insert new records into curated table
INSERT INTO curated.Provisioning_device_resource (
  
)
SELECT 

FROM raw.Provisioning_device_resource;

-- Update existing records
UPDATE curated.Provisioning_device_resource 
SET 
  updated_at = CURRENT_TIMESTAMP,
  version = version + 1
WHERE id IN (
  SELECT id FROM raw.Provisioning_device_resource
);

-- Soft delete records
UPDATE curated.Provisioning_device_resource 
SET 
  is_deleted = true,
  updated_at = CURRENT_TIMESTAMP
WHERE id NOT IN (
  SELECT id FROM raw.Provisioning_device_resource
);
