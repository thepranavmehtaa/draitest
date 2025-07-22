-- SQL Code for Entity: Salesforce_account
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS Salesforce_account (
    id BIGINT,
    name VARCHAR(255),
    description VARCHAR(255),
    created_at VARCHAR(255),
    updated_at TIMESTAMP
);

-- Insert transformed data
INSERT INTO Salesforce_account
SELECT
    id as id,
    name as name,
    description as description,
    created_at as created_at,
    updated_at as updated_at
FROM raw_Salesforce_account;

