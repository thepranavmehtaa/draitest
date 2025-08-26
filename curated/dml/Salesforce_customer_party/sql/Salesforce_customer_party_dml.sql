-- DML Operations for Salesforce_customer_party
-- Generated on: 2025-08-26T11:31:20.272Z

-- Insert new records into curated table
INSERT INTO curated.Salesforce_customer_party (
  customer_id,
  full_name,
  dob,
  gender,
  kyc_status,
  segment,
  created_at,
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
  customer_id as customer_id,
  full_name as full_name,
  dob as dob,
  gender as gender,
  kyc_status as kyc_status,
  segment as segment,
  created_at as created_at
FROM raw.Salesforce_customer_party;

-- Update existing records
UPDATE curated.Salesforce_customer_party 
SET 
  updated_at = CURRENT_TIMESTAMP,
  version = version + 1
WHERE id IN (
  SELECT id FROM raw.Salesforce_customer_party
);

-- Soft delete records
UPDATE curated.Salesforce_customer_party 
SET 
  is_deleted = true,
  updated_at = CURRENT_TIMESTAMP
WHERE id NOT IN (
  SELECT id FROM raw.Salesforce_customer_party
);
