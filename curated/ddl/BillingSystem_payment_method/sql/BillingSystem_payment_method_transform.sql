-- SQL Code for Entity: BillingSystem_payment_method
-- Create curated table with transformations

CREATE TABLE IF NOT EXISTS BillingSystem_payment_method (
    PaymentMethodID VARCHAR(255),
    AccountID INTEGER,
    PaymentType VARCHAR(255),
    CardType VARCHAR(255),
    MaskedCardNumber VARCHAR(255),
    ExpiryDate VARCHAR(255),
    Preferred VARCHAR(255),
    updated_at TIMESTAMP,
    version VARCHAR(255),
    is_deleted BOOLEAN
);

-- Insert transformed data
INSERT INTO BillingSystem_payment_method
SELECT
    PaymentMethodID as PaymentMethodID,
    AccountID as AccountID,
    PaymentType as PaymentType,
    CardType as CardType,
    MaskedCardNumber as MaskedCardNumber,
    ExpiryDate as ExpiryDate,
    Preferred as Preferred
FROM raw_BillingSystem_payment_method;

