-- DML Operations for BillingSystem_payment_method
-- Generated on: 2025-08-26T09:02:03.308Z

-- Insert new records into curated table
INSERT INTO curated.BillingSystem_payment_method (
  
)
SELECT 

FROM raw.BillingSystem_payment_method;

-- Update existing records
UPDATE curated.BillingSystem_payment_method 
SET 
  updated_at = CURRENT_TIMESTAMP,
  version = version + 1
WHERE id IN (
  SELECT id FROM raw.BillingSystem_payment_method
);

-- Soft delete records
UPDATE curated.BillingSystem_payment_method 
SET 
  is_deleted = true,
  updated_at = CURRENT_TIMESTAMP
WHERE id NOT IN (
  SELECT id FROM raw.BillingSystem_payment_method
);
