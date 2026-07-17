## Total Number of Countries
SELECT COUNT(*) AS Total_Countries
FROM covid_dataset;

## Display Country and Confirmed Cases
SELECT
country,
confirmed
FROM covid_dataset;

## Top 10 Countries by Confirmed Cases
SELECT
country,
confirmed
FROM covid_dataset
ORDER BY confirmed DESC
LIMIT 10;

## Top 10 Countries by Deaths
SELECT
country,
deaths
FROM covid_dataset
ORDER BY deaths DESC
LIMIT 10;

## Top 10 Countries by Recovered Cases
SELECT
country,
recovered
FROM covid_dataset
ORDER BY recovered DESC
LIMIT 10;

Countries with Highest Critical Cases
SELECT
country,
critical
FROM covid_dataset
ORDER BY critical DESC
LIMIT 10;

## Death Rate (%)
SELECT
country,
confirmed,
deaths,
ROUND((deaths/confirmed)*100,2) AS Death_Rate
FROM covid_dataset
ORDER BY Death_Rate DESC;

## Recovery Rate (%)
SELECT
country,
confirmed,
recovered,
ROUND((recovered/confirmed)*100,2) AS Recovery_Rate
FROM covid_dataset
ORDER BY Recovery_Rate DESC;

## Active Cases
SELECT
country,
confirmed,
recovered,
deaths,
(confirmed-recovered-deaths) AS Active_Cases
FROM covid_dataset
ORDER BY Active_Cases DESC;

## Countries Having More Than 10 Lakh Cases
SELECT
country,
confirmed
FROM covid_dataset
WHERE confirmed>1000000
ORDER BY confirmed DESC;

## Countries Having More Than 50,000 Deaths
SELECT
country,
deaths
FROM covid_dataset
WHERE deaths>50000
ORDER BY deaths DESC;

## Countries with Zero Critical Cases
SELECT
country
FROM covid_dataset
WHERE critical=0;

## Average Confirmed Cases
SELECT
AVG(confirmed) AS Average_Confirmed
FROM covid_dataset;

## Maximum Confirmed Cases
SELECT
MAX(confirmed) AS Highest_Confirmed
FROM covid_dataset;

## Minimum Confirmed Cases
SELECT
MIN(confirmed) AS Lowest_Confirmed
FROM covid_dataset;

## Total Confirmed Cases Worldwide
SELECT
SUM(confirmed) AS World_Confirmed
FROM covid_dataset;

## Total Deaths Worldwide
SELECT
SUM(deaths) AS World_Deaths
FROM covid_dataset;

## Total Recoveries Worldwide
SELECT
SUM(recovered) AS World_Recovered
FROM covid_dataset;

## Countries Starting with 'A'
SELECT
country
FROM covid_dataset
WHERE country LIKE 'A%';

## Countries Ending with 'a'
SELECT
country
FROM covid_dataset
WHERE country LIKE '%a';

## Search for India
SELECT *
FROM covid_dataset
WHERE country='India';

## Rank Countries by Confirmed Cases
SELECT
country,
confirmed,
RANK() OVER(ORDER BY confirmed DESC) AS Ranking
FROM covid_dataset;

## Dense Rank
SELECT
country,
confirmed,
DENSE_RANK() OVER(ORDER BY confirmed DESC) AS Ranking
FROM covid_dataset;

## Row Number
SELECT
country,
confirmed,
ROW_NUMBER() OVER(ORDER BY confirmed DESC) AS RowNum
FROM covid_dataset;

## Countries Above Average Confirmed Cases
SELECT
country,
confirmed
FROM covid_dataset
WHERE confirmed>
(
SELECT AVG(confirmed)
FROM covid_dataset
);

