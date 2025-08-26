-- DML Operations for CatalogDB_product
-- Generated on: 2025-08-26T09:02:01.299Z

-- Insert new records into curated table
INSERT INTO curated.CatalogDB_product (
  
)
SELECT 

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
