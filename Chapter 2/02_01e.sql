-- Find how many products sold
SELECT 
COUNT(DISTINCT ProductID) as TotalUniqueProducts,
SUM(Quantity) as TotalQuantity
FROM OrderItem;