-- DML Operations for BillingSystem_payment_method
-- Generated on: 2025-08-26T11:37:31.853Z

-- Insert new records into curated table
INSERT INTO curated.BillingSystem_payment_method (
  PaymentMethodID,
  AccountID,
  PaymentType,
  CardType,
  MaskedCardNumber,
  ExpiryDate,
  Preferred,
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
  PaymentMethodID as PaymentMethodID,
  AccountID as AccountID,
  PaymentType as PaymentType,
  CardType as CardType,
  MaskedCardNumber as MaskedCardNumber,
  ExpiryDate as ExpiryDate,
  Preferred as Preferred
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
