select*from customers;

SELECT Country,count(CustomerID) FROM customers
GROUP BY Country;

-- question 3
SELECT ContactTitle,Region,count(CustomerID) FROM Customers
GROUP BY ContactTitle,Region;

-- orders volume


SELECT*FROM orders;
-- orders over time
SELECT YEAR(OrderDate),count(OrderID) FROM orders
GROUP BY YEAR(OrderDate);

SELECT*FROM`order details`;
SELECT OrderID,sum(UnitPrice*Quantity) AS Sales_Volume FROM `order details`
GROUP BY OrderID;

-- 7
SELECT*FROM employees;
SELECT Title,Region,Count(EmployeeID) from employees
Group BY Title,Region;

select*from categories; 
SELECT CategoryName,sum(p.UnitPrice*p.QuantityperUnit) as sales_volume from categories c
join products p on p.CategoryID=c.CategoryID
GROUP BY CategoryName;

SELECT ProductName,sum(UnitPrice*QuantityperUnit) AS sales_Volume FROM products
GROUP BY ProductName
ORDER BY sum(UnitPrice*QuantityperUnit) DESC;

-- 6 avg order shipping
SELECT AVG(DATEDIFF(ShippedDate,OrderDate)) AS avg_Shipping_Duration FROM orders;


-- 13 products by 
SELECT*from products;
SELECT*from suppliers;
SELECT CompanyName,count(ProductName) FROM products p
JOIN suppliers s ON s.SupplierID=p.SupplierID
GROUP BY CompanyName;






