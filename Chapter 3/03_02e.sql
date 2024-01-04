-- Find infrequent customers
SELECT
FirstName,
LastName,
COUNT(OrderID) as TotalOrders
FROM Orders
LEFT OUTER JOIN Customer
ON Orders.CustomerID = Customer.CustomerID
GROUP BY Customer.CustomerID
HAVING COUNT(OrderID) = 1;