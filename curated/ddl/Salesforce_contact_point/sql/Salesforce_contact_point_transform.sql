-- SQL Code for Entity: Salesforce_contact_point
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS Salesforce_contact_point (
    ContactPointID VARCHAR(255),
    CustomerID VARCHAR(255),
    ContactType VARCHAR(255),
    Value VARCHAR(255),
    Preferred VARCHAR(255),
    Verified VARCHAR(255),
    LastUpdated TIMESTAMP,
    updated_at TIMESTAMP,
    version VARCHAR(255),
    is_deleted BOOLEAN
);

-- Insert transformed data
INSERT INTO Salesforce_contact_point
SELECT
    ContactPointID as ContactPointID,
    CustomerID as CustomerID,
    ContactType as ContactType,
    Value as Value,
    Preferred as Preferred,
    Verified as Verified,
    LastUpdated as LastUpdated
FROM raw_Salesforce_contact_point;

