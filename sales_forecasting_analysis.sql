select count(*)
from walmart;


SELECT
  ROUND(SUM(Weekly_Sales), 2) AS total_sales
FROM walmart;

SELECT
  ROUND(AVG(Weekly_Sales), 2) AS avg_weekly_sales
FROM walmart;

SELECT
  Store,
  ROUND(SUM(Weekly_Sales), 2) AS total_sales
FROM walmart
GROUP BY Store
ORDER BY total_sales DESC;

SELECT
  Holiday_Flag,
  ROUND(SUM(Weekly_Sales), 2) AS total_sales,
  ROUND(AVG(Weekly_Sales), 2) AS avg_weekly_sales
FROM walmart
GROUP BY Holiday_Flag;

SELECT
  DATE_FORMAT(STR_TO_DATE(`Date`, '%d-%m-%Y'), '%Y-%m') AS month,
  ROUND(SUM(Weekly_Sales), 2) AS monthly_sales
FROM walmart
GROUP BY month
ORDER BY month;





SELECT
  ROUND(AVG(Weekly_Sales), 2) AS avg_sales,
  ROUND(AVG(Temperature), 2) AS avg_temperature,
  ROUND(AVG(Fuel_Price), 2) AS avg_fuel_price,
  ROUND(AVG(CPI), 2) AS avg_cpi,
  ROUND(AVG(Unemployment), 2) AS avg_unemployment
FROM walmart;


SELECT
  CASE
    WHEN Unemployment >= (SELECT AVG(Unemployment) FROM walmart)
    THEN 'High Unemployment'
    
    ELSE 'Low Unemployment'
  END AS unemployment_level,
  ROUND(AVG(Weekly_Sales), 2) AS avg_weekly_sales
FROM walmart
GROUP BY unemployment_level;


select `date` 
from walmart;
