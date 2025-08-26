-- DML Operations for UsagePlatform_fact_usage
-- Generated on: 2025-08-26T13:04:20.008Z

-- Add new columns to existing table
ALTER TABLE curated.UsagePlatform_fact_usage ADD COLUMN IF NOT EXISTS plan_name VARCHAR(255);

-- Insert new records into curated table
INSERT INTO curated.UsagePlatform_fact_usage (
  usage_id,
  sub_id,
  usage_date,
  type,
  volume,
  minutes,
  sms,
  region,
  roaming,
  updated_at,
  version,
  is_deleted,
  new column,
  new column 2,
  test 2,
  column 1,
  plan_name
)
SELECT 
  usage_id as usage_id,
  sub_id as sub_id,
  usage_date as usage_date,
  type as type,
  volume as volume,
  minutes as minutes,
  sms as sms,
  region as region,
  roaming as roaming,
  _ingest_timestamp,
  _source_system,
  _record_status,
  _update_timestamp,
  _batch_id,
  _created_by,
  _updated_by,
  NULL as plan_name
FROM raw.UsagePlatform_fact_usage;

-- Update existing records
UPDATE curated.UsagePlatform_fact_usage 
SET 
  updated_at = CURRENT_TIMESTAMP,
  version = version + 1
WHERE id IN (
  SELECT id FROM raw.UsagePlatform_fact_usage
);

-- Soft delete records
UPDATE curated.UsagePlatform_fact_usage 
SET 
  is_deleted = true,
  updated_at = CURRENT_TIMESTAMP
WHERE id NOT IN (
  SELECT id FROM raw.UsagePlatform_fact_usage
);
