-- Find top customers
SELECT
FirstName,
LastName,
COUNT(DISTINCT Orders.OrderID) as TotalOrders,
SUM(Quantity) as TotalQuantity,
SUM(TotalDue) as TotalAmount
FROM Orders
LEFT OUTER JOIN OrderItem
ON Orders.OrderID = OrderItem.OrderID
LEFT OUTER JOIN Customer
ON Orders.CustomerID = Customer.CustomerID
GROUP BY Customer.CustomerID
ORDER BY TotalAmount DESC;