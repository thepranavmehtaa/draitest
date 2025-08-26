-- DML Operations for Salesforce_address
-- Generated on: 2025-08-26T11:42:05.313Z

-- Insert new records into curated table
INSERT INTO curated.Salesforce_address (
  AddressID,
  CustomerID,
  Street,
  City,
  State,
  Postcode,
  Country,
  AddressType,
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
  AddressID as AddressID,
  CustomerID as CustomerID,
  Street as Street,
  City as City,
  State as State,
  Postcode as Postcode,
  Country as Country,
  AddressType as AddressType
FROM raw.Salesforce_address;

-- Update existing records
UPDATE curated.Salesforce_address 
SET 
  updated_at = CURRENT_TIMESTAMP,
  version = version + 1
WHERE id IN (
  SELECT id FROM raw.Salesforce_address
);

-- Soft delete records
UPDATE curated.Salesforce_address 
SET 
  is_deleted = true,
  updated_at = CURRENT_TIMESTAMP
WHERE id NOT IN (
  SELECT id FROM raw.Salesforce_address
);
