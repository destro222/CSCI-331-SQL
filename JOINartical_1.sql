USE Northwinds2024Student
-- Chapter3 Joins
-- ARTICLE 1: Mastering SQL Joins: Understanding Inner, Outer, and Cross Joins


/* Proposition 1: get all the customer and their orders, showing only who have placed at least one order 
*/
SELECT
    c.CustomerId,
    c.CustomerCompanyName,
    o.OrderID,
    o.OrderDate

FROM Sales.Customer AS c
INNER JOIN sales.[Order] AS o
    ON c.CustomerID = o.CustomerId


-- Proposition 2: get all the customers and there total number of order, including customers who never placed an order 
SELECT
    c.CustomerId,
    c.CustomerCompanyName,
    COUNT(o.OrderID) AS total_order   
FROM Sales.Customer AS c 
LEFT JOIN sales.[Order] AS o
ON c.CustomerId = o.CustomerId
GROUP BY
    c.CustomerId,
    c.CustomerCompanyName;

--Proposition 3: get all the customers along with their order, including orders without matching customers.
 SELECT
    c.CustomerId,
    c.CustomerContactName,
    c.CustomerCompanyName,
    o.OrderID,
    o.OrderDate

FROM Sales.Customer AS c
RIGHT JOIN sales.[Order] AS o
ON c.CustomerId = o.CustomerId






