-- SQL Code for Entity: fact_subscriber_lifecycle
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS consumption.fact_subscriber_lifecycle (
    LifecycleEventID VARCHAR(255),
    SubscriberID VARCHAR(255),
    EventType VARCHAR(255),
    EventDate VARCHAR(255),
    ReasonCode VARCHAR(255),
    Channel VARCHAR(255),
    ServiceID VARCHAR(255),
    updated_at TIMESTAMP,
    version VARCHAR(255),
    is_deleted BOOLEAN
);

-- Insert transformed data
INSERT INTO consumption.fact_subscriber_lifecycle
SELECT
    LifecycleEventID as LifecycleEventID,
    SubscriberID as SubscriberID,
    EventType as EventType,
    EventDate as EventDate,
    ReasonCode as ReasonCode,
    Channel as Channel,
    ServiceID as ServiceID
FROM raw_fact_subscriber_lifecycle;

