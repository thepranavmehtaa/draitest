-- DML Operations for Salesforce_DimOrder
-- Generated on: 2025-08-26T13:04:20.035Z

-- Insert new records into curated table
INSERT INTO curated.Salesforce_DimOrder (
  order_id,
  customer_id,
  order_date,
  order_status,
  order_type,
  channel,
  amount,
  last_updated,
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
  order_id as order_id,
  customer_id as customer_id,
  order_date as order_date,
  order_status as order_status,
  order_type as order_type,
  channel as channel,
  amount as amount,
  last_updated as last_updated
FROM raw.Salesforce_DimOrder;

-- Update existing records
UPDATE curated.Salesforce_DimOrder 
SET 
  updated_at = CURRENT_TIMESTAMP,
  version = version + 1
WHERE id IN (
  SELECT id FROM raw.Salesforce_DimOrder
);

-- Soft delete records
UPDATE curated.Salesforce_DimOrder 
SET 
  is_deleted = true,
  updated_at = CURRENT_TIMESTAMP
WHERE id NOT IN (
  SELECT id FROM raw.Salesforce_DimOrder
);
