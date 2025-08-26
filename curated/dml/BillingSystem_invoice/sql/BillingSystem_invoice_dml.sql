-- DML Operations for BillingSystem_invoice
-- Generated on: 2025-08-26T08:40:04.943Z

-- Insert new records into curated table
INSERT INTO curated.BillingSystem_invoice (
  InvoiceID,
  AccountID,
  InvoiceDate,
  DueDate,
  TotalAmount,
  Status,
  PaidDate,
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
  InvoiceID as InvoiceID,
  AccountID as AccountID,
  InvoiceDate as InvoiceDate,
  DueDate as DueDate,
  TotalAmount as TotalAmount,
  Status as Status,
  PaidDate as PaidDate
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
