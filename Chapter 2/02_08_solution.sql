-- Find average daily sales
SELECT 
SUM(Quantity) /
COUNT(DISTINCT CreationDate) as AverageDailySales
FROM Orders
LEFT OUTER JOIN OrderItem
ON Orders.OrderID = OrderItem.OrderID;