-- SQL Code for Entity: Salesforce_contact_point
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS Salesforce_contact_point (
    id BIGINT,
    name VARCHAR(255),
    description VARCHAR(255),
    created_at VARCHAR(255),
    updated_at TIMESTAMP
);

-- Insert transformed data
INSERT INTO Salesforce_contact_point
SELECT
    id as id,
    name as name,
    description as description,
    created_at as created_at,
    updated_at as updated_at
FROM raw_Salesforce_contact_point;

