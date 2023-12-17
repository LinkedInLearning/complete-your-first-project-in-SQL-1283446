-- Find sales by month
SELECT
MONTHNAME(CreationDate) as MonthName,
COUNT(Orders.OrderID) as TotalOrders,
SUM(Quantity) as TotalQuantity,
SUM(TotalDue) as TotalAmount
FROM Orders
LEFT JOIN OrderItem
ON Orders.OrderID = OrderItem.OrderID
GROUP BY MonthName
ORDER BY MONTH(CreationDate);