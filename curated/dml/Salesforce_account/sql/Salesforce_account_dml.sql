-- DML Operations for Salesforce_account
-- Generated on: 2025-08-26T09:43:00.847Z

-- Insert new records into curated table
INSERT INTO curated.Salesforce_account (
  account_id,
  customer_id,
  acct_type,
  billing_cycle,
  currency,
  status,
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
  account_id as account_id,
  customer_id as customer_id,
  acct_type as acct_type,
  billing_cycle as billing_cycle,
  currency as currency,
  status as status,
  created_at as created_at
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
