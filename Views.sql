CREATE VIEW Top10Countries AS
SELECT
    country,
    confirmed,
    deaths,
    recovered
FROM covid_dataset
ORDER BY confirmed DESC
LIMIT 10;
