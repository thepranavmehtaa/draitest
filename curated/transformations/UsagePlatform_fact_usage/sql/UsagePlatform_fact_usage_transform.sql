-- Generated SQL for Entity: curated.UsagePlatform_fact_usage
-- NLP Description: test 2

SELECT 
    *,
    UPPER(name) as upper_name,
    LOWER(name) as lower_name,
    TRIM(name) as trimmed_name
FROM curated.UsagePlatform_fact_usage
WHERE name != ''
GROUP BY name;