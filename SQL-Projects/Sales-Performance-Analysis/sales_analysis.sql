 -- Total Sales by Year
SELECT YEAR(orderDate) AS year, SUM(sales) AS total_sales
FROM sales_data
GROUP BY year
ORDER BY year;

-- Top 5 Products by Revenue
SELECT productLine, SUM(sales) AS revenue
FROM sales_data
GROUP BY productLine
ORDER BY revenue DESC
LIMIT 5;

-- Best Performing Country
SELECT country, SUM(sales) AS total_sales
FROM sales_data
GROUP BY country
ORDER BY total_sales DESC;

-- Monthly Sales Trend
SELECT MONTH(orderDate) AS month, SUM(sales) AS total_sales
FROM sales_data
GROUP BY month
ORDER BY month;

-- Top Customers
SELECT customerName, SUM(sales) AS total_spent
FROM sales_data
GROUP BY customerName
ORDER BY total_spent DESC
LIMIT 10;

