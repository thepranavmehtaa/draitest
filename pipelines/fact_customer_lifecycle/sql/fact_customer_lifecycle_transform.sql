-- SQL Code for Entity: fact_customer_lifecycle
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS consumption.fact_customer_lifecycle (
    LifecycleEventID VARCHAR(255),
    CustomerID VARCHAR(255),
    EventType VARCHAR(255),
    EventDate VARCHAR(255),
    ReasonCode VARCHAR(255),
    Channel VARCHAR(255),
    Notes VARCHAR(255),
    updated_at TIMESTAMP,
    version VARCHAR(255),
    is_deleted BOOLEAN
);

-- Insert transformed data
INSERT INTO consumption.fact_customer_lifecycle
SELECT
    LifecycleEventID as LifecycleEventID,
    CustomerID as CustomerID,
    EventType as EventType,
    EventDate as EventDate,
    ReasonCode as ReasonCode,
    Channel as Channel,
    Notes as Notes
FROM raw_fact_customer_lifecycle;

