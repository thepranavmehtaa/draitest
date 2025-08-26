-- DML Operations for Provisioning_subscriber
-- Generated on: 2025-08-26T08:43:06.067Z

-- Insert new records into curated table
INSERT INTO curated.Provisioning_subscriber (
  sub_id,
  contract_ref,
  msisdn,
  sim,
  device_ref,
  sub_type,
  sub_status,
  activated,
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
  sub_id as sub_id,
  contract_ref as contract_ref,
  msisdn as msisdn,
  sim as sim,
  device_ref as device_ref,
  sub_type as sub_type,
  sub_status as sub_status,
  activated as activated
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
