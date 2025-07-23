-- SQL Code for Entity: Salesforce_customer_party
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS Salesforce_customer_party (
    customer_id BIGINT,
    customer_name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    zip_code VARCHAR(255),
    country INTEGER,
    created_date TIMESTAMP,
    updated_date TIMESTAMP,
    status VARCHAR(255),
    customer_type VARCHAR(255),
    credit_limit VARCHAR(255),
    preferred_contact_method VARCHAR(255)
);

-- Insert transformed data
INSERT INTO Salesforce_customer_party
SELECT
    customer_id as customer_id,
    customer_name as customer_name,
    email as email,
    phone as phone,
    address as address,
    city as city,
    state as state,
    zip_code as zip_code,
    country as country,
    created_date as created_date,
    updated_date as updated_date,
    status as status,
    customer_type as customer_type,
    credit_limit as credit_limit,
    preferred_contact_method as preferred_contact_method
FROM raw_Salesforce_customer_party;

