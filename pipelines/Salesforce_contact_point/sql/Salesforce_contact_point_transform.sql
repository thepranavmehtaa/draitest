-- SQL Code for Entity: Salesforce_contact_point
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS Salesforce_contact_point (
    id BIGINT,
    name VARCHAR(255),
    description VARCHAR(255),
    status VARCHAR(255),
    created_date TIMESTAMP,
    updated_date TIMESTAMP,
    created_by VARCHAR(255),
    updated_by TIMESTAMP
);

-- Insert transformed data
INSERT INTO Salesforce_contact_point
SELECT
    id as id,
    name as name,
    description as description,
    status as status,
    created_date as created_date,
    updated_date as updated_date,
    created_by as created_by,
    updated_by as updated_by
FROM raw_Salesforce_contact_point;

