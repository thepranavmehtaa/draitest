-- DML Operations for CatalogDB_product
-- Generated on: 2025-08-29T10:02:07.799Z

-- Insert new records into curated table
INSERT INTO curated.CatalogDB_product (
  prod_id,
  svc_id,
  prod_name,
  prod_type,
  bundle,
  plan,
  discount,
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
  prod_id as prod_id,
  svc_id as svc_id,
  prod_name as prod_name,
  prod_type as prod_type,
  bundle as bundle,
  plan as plan,
  discount as discount
FROM raw.CatalogDB_product;

-- Update existing records
UPDATE curated.CatalogDB_product 
SET 
  updated_at = CURRENT_TIMESTAMP,
  version = version + 1
WHERE id IN (
  SELECT id FROM raw.CatalogDB_product
);

-- Soft delete records
UPDATE curated.CatalogDB_product 
SET 
  is_deleted = true,
  updated_at = CURRENT_TIMESTAMP
WHERE id NOT IN (
  SELECT id FROM raw.CatalogDB_product
);
