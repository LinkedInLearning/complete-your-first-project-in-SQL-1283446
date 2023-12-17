-- Find average daily sales
SELECT 
SUM(Quantity) / COUNT(DISTINCT DAY(CreationDate))
FROM Orders
LEFT JOIN OrderItem
ON Orders.OrderID = OrderItem.OrderID;