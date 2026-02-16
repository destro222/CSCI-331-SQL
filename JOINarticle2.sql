-- ARTICLE: Understand SQL Join with this simple tutorial with examples
-- Proposition 1: Show all customers and the orders they have placed, even if some customers have never ordered anything.

USE Northwinds2024Student

SELECT
    c.CustomerId,
    c.CustomerCompanyName,
    o.OrderID,
    o.OrderDate

FROM Sales.Customer AS c
LEFT JOIN sales.[Order] AS o
    ON c.CustomerID = o.CustomerId
ORDER BY c.CustomerCompanyName;

/* Proposition 2 - RIGHT JOIN
Show all products and their related orders,
including products that were never ordered.
*/
SELECT 
    p.ProductID,
    p.ProductName,
    od.OrderID,
    o.OrderDate
FROM Sales.OrderDetail AS od -- used od as a nickname 
RIGHT JOIN Production.Product AS p
    ON od.ProductID = p.ProductID
LEFT JOIN Sales.[Order] AS o
    ON od.OrderID = o.OrderID
ORDER BY 
    p.ProductName;

/* Proposition 3 - FULL OUTER JOIN
Show all customers and all orders,
including unmatched records on both sides.
*/

SELECT 
    c.CustomerID,
    c.CustomerCompanyName,
    o.OrderID,
    o.OrderDate
FROM Sales.Customer AS c
FULL OUTER JOIN Sales.[Order] AS o
    ON c.CustomerID = o.CustomerID
ORDER BY 
    c.CustomerID;