-- SQL Code for Entity: AnalyticsEngine_subscriber_kpi
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS AnalyticsEngine_subscriber_kpi (
    sub_id BIGINT,
    avg_data VARCHAR(255),
    avg_voice VARCHAR(255),
    drop_rate VARCHAR(255),
    sms VARCHAR(255),
    region VARCHAR(255),
    last_updated TIMESTAMP,
    updated_at TIMESTAMP,
    version VARCHAR(255),
    is_deleted BOOLEAN
);

-- Insert transformed data
INSERT INTO AnalyticsEngine_subscriber_kpi
SELECT
    sub_id as sub_id,
    avg_data as avg_data,
    avg_voice as avg_voice,
    drop_rate as drop_rate,
    sms as sms,
    region as region,
    last_updated as last_updated
FROM raw_AnalyticsEngine_subscriber_kpi;

