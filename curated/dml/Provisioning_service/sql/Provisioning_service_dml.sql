-- DML Operations for Provisioning_service
-- Generated on: 2025-08-26T13:00:46.059Z

-- Insert new records into curated table
INSERT INTO curated.Provisioning_service (
  svc_id,
  sub_ref,
  svc_type,
  svc_status,
  start,
  end,
  qos,
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
  svc_id as svc_id,
  sub_ref as sub_ref,
  svc_type as svc_type,
  svc_status as svc_status,
  start as start,
  end as end,
  qos as qos
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
