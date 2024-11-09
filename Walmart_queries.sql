USE  Walmart_sales_db;

SELECT * FROM Walmart_sales_db.walmart_sales;

-- Total Sales by Store

SELECT Store, SUM(Weekly_Sales) AS Total_Sales
FROM walmart_sales
GROUP BY Store
ORDER BY Total_Sales DESC;


-- Average Weekly Sales Across All Stores

SELECT AVG(Weekly_Sales) AS Avg_Weekly_Sales
FROM Walmart_Sales;


-- Sales by Date and Store

SELECT Date, Store, SUM(Weekly_Sales) AS Sales_Per_Store
FROM Walmart_Sales
GROUP BY Date, Store
ORDER BY Date, Store;


-- Monthly Sales

SELECT DATE_FORMAT(STR_TO_DATE(Date, '%d-%m-%Y'), '%Y-%m') AS Month_Year,
       SUM(Weekly_Sales) AS Monthly_Sales
FROM Walmart_Sales
GROUP BY Month_Year
ORDER BY Month_Year;


-- Weekly Sales on Holiday vs. Non-Holiday Weeks

SELECT Holiday_Flag,
       AVG(Weekly_Sales) AS Avg_Weekly_Sales
FROM Walmart_Sales
GROUP BY Holiday_Flag;


-- Sales Impact of Temperature

SELECT Temperature, AVG(Weekly_Sales) AS Avg_Sales
FROM Walmart_Sales
GROUP BY Temperature
ORDER BY Temperature;


-- Sales Impact of Fuel Prices

SELECT Fuel_Price, AVG(Weekly_Sales) AS Avg_Sales
FROM Walmart_Sales
GROUP BY Fuel_Price
ORDER BY Fuel_Price;


--  Correlation between CPI and Sales
    
    SELECT CPI, AVG(Weekly_Sales) AS Avg_Sales
FROM Walmart_Sales
GROUP BY CPI
ORDER BY CPI;



--  Correlation between Unemployment Rate and Sales

SELECT Unemployment, AVG(Weekly_Sales) AS Avg_Sales
FROM Walmart_Sales
GROUP BY Unemployment
ORDER BY Unemployment;


