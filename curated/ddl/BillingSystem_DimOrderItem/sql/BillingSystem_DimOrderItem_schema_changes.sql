-- ALTER Commands for Entity: BillingSystem_DimOrderItem
-- Generated on: 2025-08-26T09:11:15.891Z
-- These commands handle schema changes when new columns are added or existing columns are modified

-- Add control columns for data lineage (if not already present)
-- ALTER TABLE BillingSystem_DimOrderItem ADD COLUMN _ingest_timestamp VARCHAR(255); -- Uncomment if needed
-- ALTER TABLE BillingSystem_DimOrderItem ADD COLUMN _source_system VARCHAR(255); -- Uncomment if needed
-- ALTER TABLE BillingSystem_DimOrderItem ADD COLUMN _record_status VARCHAR(255); -- Uncomment if needed
-- ALTER TABLE BillingSystem_DimOrderItem ADD COLUMN _update_timestamp VARCHAR(255); -- Uncomment if needed
-- ALTER TABLE BillingSystem_DimOrderItem ADD COLUMN _batch_id VARCHAR(255); -- Uncomment if needed
-- ALTER TABLE BillingSystem_DimOrderItem ADD COLUMN _created_by VARCHAR(255); -- Uncomment if needed
-- ALTER TABLE BillingSystem_DimOrderItem ADD COLUMN _updated_by VARCHAR(255); -- Uncomment if needed

-- Column modifications (uncomment and modify as needed)
-- ALTER TABLE BillingSystem_DimOrderItem MODIFY COLUMN column_name new_data_type;
-- ALTER TABLE BillingSystem_DimOrderItem CHANGE COLUMN old_name new_name new_data_type;

-- Column constraints (uncomment and modify as needed)
-- ALTER TABLE BillingSystem_DimOrderItem ADD CONSTRAINT constraint_name CHECK (condition);
-- ALTER TABLE BillingSystem_DimOrderItem ADD INDEX index_name (column_name);

-- Drop columns (commented out for safety - uncomment and modify as needed)
-- ALTER TABLE BillingSystem_DimOrderItem DROP COLUMN column_name;

-- Note: Review and modify these commands before executing in production
-- Some databases may require different syntax for ALTER operations
