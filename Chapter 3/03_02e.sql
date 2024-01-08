-- Find infrequent customers
SELECT
Customer.CustomerID,
FirstName,
LastName,
COUNT(DISTINCT OrderID) as TotalOrders
FROM Orders
LEFT OUTER JOIN Customer
ON Orders.CustomerID = Customer.CustomerID
GROUP BY Customer.CustomerID
HAVING COUNT(DISTINCT OrderID) = 1;