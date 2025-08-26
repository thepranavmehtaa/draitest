-- DML Operations for BillingSystem_invoice
-- Generated on: 2025-08-26T09:02:05.148Z

-- Insert new records into curated table
INSERT INTO curated.BillingSystem_invoice (
  
)
SELECT 

FROM raw.BillingSystem_invoice;

-- Update existing records
UPDATE curated.BillingSystem_invoice 
SET 
  updated_at = CURRENT_TIMESTAMP,
  version = version + 1
WHERE id IN (
  SELECT id FROM raw.BillingSystem_invoice
);

-- Soft delete records
UPDATE curated.BillingSystem_invoice 
SET 
  is_deleted = true,
  updated_at = CURRENT_TIMESTAMP
WHERE id NOT IN (
  SELECT id FROM raw.BillingSystem_invoice
);
