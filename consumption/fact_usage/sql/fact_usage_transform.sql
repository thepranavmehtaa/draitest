-- SQL Code for Entity: fact_usage
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS consumption.fact_usage (
    UsageID VARCHAR(255),
    SubscriberID VARCHAR(255),
    UsageDate VARCHAR(255),
    UsageType VARCHAR(255),
    VolumeMB VARCHAR(255),
    MinutesUsed VARCHAR(255),
    SMSCount VARCHAR(255),
    Region VARCHAR(255),
    Roaming VARCHAR(255),
    updated_at TIMESTAMP,
    version VARCHAR(255),
    is_deleted BOOLEAN
);

-- Insert transformed data
INSERT INTO consumption.fact_usage
SELECT
    UsageID as UsageID,
    SubscriberID as SubscriberID,
    UsageDate as UsageDate,
    UsageType as UsageType,
    VolumeMB as VolumeMB,
    MinutesUsed as MinutesUsed,
    SMSCount as SMSCount,
    Region as Region,
    Roaming as Roaming
FROM raw_fact_usage;

