-- Total Sales & Profit
SELECT 
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM orders;

-- Sales by Region
SELECT 
    Region,
    SUM(Sales) AS revenue
FROM orders
GROUP BY Region
ORDER BY revenue DESC;

-- Monthly Sales Trend
SELECT 
    DATE_FORMAT(Order_Date, '%Y-%m') AS month,
    SUM(Sales) AS monthly_sales
FROM orders
GROUP BY month
ORDER BY month;

-- Top 5 Products
SELECT 
    Product_Name,
    SUM(Sales) AS revenue
FROM orders
GROUP BY Product_Name
ORDER BY revenue DESC
LIMIT 5;
