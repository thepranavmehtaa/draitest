-- DML Operations for UsagePlatform_fact_usage
-- Generated on: 2025-08-26T09:01:04.482Z

-- Insert new records into curated table
INSERT INTO curated.UsagePlatform_fact_usage (
  
)
SELECT 

FROM raw.UsagePlatform_fact_usage;

-- Update existing records
UPDATE curated.UsagePlatform_fact_usage 
SET 
  updated_at = CURRENT_TIMESTAMP,
  version = version + 1
WHERE id IN (
  SELECT id FROM raw.UsagePlatform_fact_usage
);

-- Soft delete records
UPDATE curated.UsagePlatform_fact_usage 
SET 
  is_deleted = true,
  updated_at = CURRENT_TIMESTAMP
WHERE id NOT IN (
  SELECT id FROM raw.UsagePlatform_fact_usage
);
