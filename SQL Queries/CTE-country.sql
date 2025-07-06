WITH DistinctCountries AS (
    SELECT DISTINCT country FROM dbo.[Lung Cancer]
)
INSERT INTO Country (country_id, country_name)
SELECT 
    ROW_NUMBER() OVER (ORDER BY country) AS country_id,
    country
FROM DistinctCountries;

SELECT * FROM Country;