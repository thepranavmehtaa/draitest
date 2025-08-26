-- SQL Code for Entity: UsagePlatform_fact_usage
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS UsagePlatform_fact_usage (
    usage_id BIGINT,
    sub_id BIGINT,
    usage_date TIMESTAMP,
    type VARCHAR(255),
    volume VARCHAR(255),
    minutes VARCHAR(255),
    version VARCHAR(255),
    is_deleted BOOLEAN
);

-- Insert transformed data
INSERT INTO UsagePlatform_fact_usage
SELECT
    usage_id as usage_id,
FROM raw_UsagePlatform_fact_usage;

