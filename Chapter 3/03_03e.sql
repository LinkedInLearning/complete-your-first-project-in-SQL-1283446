-- Determine top customer state
SELECT
State,
SUM(Quantity) as TotalQuantity
FROM Orders
LEFT OUTER JOIN OrderItem
ON Orders.OrderID = OrderItem.OrderID
LEFT OUTER JOIN Customer
ON Orders.CustomerID = Customer.CustomerID
GROUP BY State
ORDER BY TotalQuantity DESC
LIMIT 1;