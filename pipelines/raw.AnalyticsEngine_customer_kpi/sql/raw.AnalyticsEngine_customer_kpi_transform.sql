-- SQL Code for Entity: raw.AnalyticsEngine_customer_kpi
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS curated.AnalyticsEngine_customer_kpi (
    cust1_id BIGINT,
    arpu VARCHAR(255),
    ltv VARCHAR(255),
    churn_score VARCHAR(255),
    nps VARCHAR(255),
    tenure VARCHAR(255),
    last_updated TIMESTAMP,
    updated_at TIMESTAMP,
    version VARCHAR(255),
    is_deleted BOOLEAN,
    test 1 VARCHAR(255)
);

-- Insert transformed data
INSERT INTO curated.AnalyticsEngine_customer_kpi
SELECT
    cust_id as cust_id,
    arpu as arpu,
    ltv as ltv,
    churn_score as churn_score,
    nps as nps,
    tenure as tenure,
    last_updated as last_updated,
    NULL as test 1
FROM raw_AnalyticsEngine_customer_kpi;

