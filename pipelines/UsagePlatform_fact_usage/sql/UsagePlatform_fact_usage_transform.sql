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
    is_deleted BOOLEAN
);

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
    roaming as roaming
FROM raw_UsagePlatform_fact_usage;

