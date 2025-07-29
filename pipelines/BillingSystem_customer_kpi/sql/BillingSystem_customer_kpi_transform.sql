-- SQL Code for Entity: BillingSystem_customer_kpi
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS BillingSystem_customer_kpi (
    CustomerID VARCHAR(255),
    ARPU VARCHAR(255),
    LTV VARCHAR(255),
    ChurnRiskScore VARCHAR(255),
    NPSScore VARCHAR(255),
    CustomerTenure VARCHAR(255),
    LastUpdated TIMESTAMP,
    updated_at TIMESTAMP,
    version VARCHAR(255),
    is_deleted BOOLEAN
);

-- Insert transformed data
INSERT INTO BillingSystem_customer_kpi
SELECT
    CustomerID as CustomerID,
    ARPU as ARPU,
    LTV as LTV,
    ChurnRiskScore as ChurnRiskScore,
    NPSScore as NPSScore,
    CustomerTenure as CustomerTenure,
    LastUpdated as LastUpdated
FROM raw_BillingSystem_customer_kpi;

