-- SQL Code for Entity: UsagePlatform_fact_usage
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS UsagePlatform_fact_usage (
    usage_id BIGINT,
    sub_id BIGINT,
    usage_date TIMESTAMP,
    type VARCHAR(255),
    volume VARCHAR(255),
    minutes VARCHAR(255),
    sms VARCHAR(255),
    region VARCHAR(255),
    roaming VARCHAR(255),
    updated_at TIMESTAMP,
    version VARCHAR(255),
    is_deleted BOOLEAN,
    new column VARCHAR(255),
    new column 2 VARCHAR(255),
    test 2 VARCHAR(255),
    column 1 VARCHAR(255),
    plan_name VARCHAR(255),
    column2_test VARCHAR(255)
);

-- Add new columns to existing table
ALTER TABLE UsagePlatform_fact_usage ADD COLUMN plan_name VARCHAR(255);
ALTER TABLE UsagePlatform_fact_usage ADD COLUMN column2_test VARCHAR(255);

-- Insert transformed data
INSERT INTO UsagePlatform_fact_usage
SELECT
    usage_id as usage_id,
    sub_id as sub_id,
    usage_date as usage_date,
    type as type,
    volume as volume,
    minutes as minutes,
    sms as sms,
    region as region,
    roaming as roaming,
    NULL as plan_name,
    NULL as column2_test
FROM raw_UsagePlatform_fact_usage;

