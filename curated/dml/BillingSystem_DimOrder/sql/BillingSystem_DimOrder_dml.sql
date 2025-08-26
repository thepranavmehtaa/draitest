-- DML Operations for BillingSystem_DimOrder
-- Generated on: 2025-08-26T11:38:39.435Z

-- Insert new records into curated table
INSERT INTO curated.BillingSystem_DimOrder (
  id,
  custom,
  date,
  status,
  type,
  origin,
  value,
  updated,
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
  id as id,
  custom as custom,
  date as date,
  status as status,
  type as type,
  origin as origin,
  value as value,
  updated as updated
FROM raw.BillingSystem_DimOrder;

-- Update existing records
UPDATE curated.BillingSystem_DimOrder 
SET 
  updated_at = CURRENT_TIMESTAMP,
  version = version + 1
WHERE id IN (
  SELECT id FROM raw.BillingSystem_DimOrder
);

-- Soft delete records
UPDATE curated.BillingSystem_DimOrder 
SET 
  is_deleted = true,
  updated_at = CURRENT_TIMESTAMP
WHERE id NOT IN (
  SELECT id FROM raw.BillingSystem_DimOrder
);
