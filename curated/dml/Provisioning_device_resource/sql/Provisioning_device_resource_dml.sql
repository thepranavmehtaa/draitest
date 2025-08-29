-- DML Operations for Provisioning_device_resource
-- Generated on: 2025-08-29T10:02:07.777Z

-- Insert new records into curated table
INSERT INTO curated.Provisioning_device_resource (
  dev_id,
  dev_type,
  make,
  model,
  imei,
  os,
  activated,
  warranty,
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
  dev_id as dev_id,
  dev_type as dev_type,
  make as make,
  model as model,
  imei as imei,
  os as os,
  activated as activated,
  warranty as warranty
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
