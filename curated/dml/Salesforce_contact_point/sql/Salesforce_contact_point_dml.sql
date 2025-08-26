-- DML Operations for Salesforce_contact_point
-- Generated on: 2025-08-26T09:43:00.839Z

-- Insert new records into curated table
INSERT INTO curated.Salesforce_contact_point (
  ContactPointID,
  CustomerID,
  ContactType,
  Value,
  Preferred,
  Verified,
  LastUpdated,
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
  ContactPointID as ContactPointID,
  CustomerID as CustomerID,
  ContactType as ContactType,
  Value as Value,
  Preferred as Preferred,
  Verified as Verified,
  LastUpdated as LastUpdated
FROM raw.Salesforce_contact_point;

-- Update existing records
UPDATE curated.Salesforce_contact_point 
SET 
  updated_at = CURRENT_TIMESTAMP,
  version = version + 1
WHERE id IN (
  SELECT id FROM raw.Salesforce_contact_point
);

-- Soft delete records
UPDATE curated.Salesforce_contact_point 
SET 
  is_deleted = true,
  updated_at = CURRENT_TIMESTAMP
WHERE id NOT IN (
  SELECT id FROM raw.Salesforce_contact_point
);
