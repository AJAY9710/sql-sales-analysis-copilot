CREATE TABLE sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    region VARCHAR(50),
    product VARCHAR(50),
    sales_amount INT,
    sale_date DATE
);
INSERT INTO sales (region, product, sales_amount, sale_date) VALUES
('North', 'Laptop', 60000, '2025-01-10'),
('North', 'Mobile', 30000, '2025-02-15'),
('South', 'Laptop', 55000, '2025-01-20'),
('South', 'Mobile', 28000, '2025-02-18'),
('East', 'Laptop', 50000, '2025-01-25'),
('West', 'Mobile', 35000, '2025-02-22');

SELECT region, SUM(sales_amount) AS total_sales
FROM sales
GROUP BY region;

SELECT product, AVG(sales_amount) AS avg_sales
FROM sales
GROUP BY product;

SELECT MONTH(sale_date) AS month, SUM(sales_amount) AS total_sales
FROM sales
GROUP BY MONTH(sale_date);

SELECT region, SUM(sales_amount) AS total_sales
FROM sales
GROUP BY region
ORDER BY total_sales DESC
LIMIT 1;
