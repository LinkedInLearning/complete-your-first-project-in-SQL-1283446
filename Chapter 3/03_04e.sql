-- Determine what products sold together
SELECT a.ProductID AS ProductID1,
b.ProductID AS ProductID2,
COUNT(*) as TimesPurchased
FROM OrderItem AS a
INNER JOIN OrderItem AS b
ON a.OrderID = b.OrderID
AND a.ProductID < b.ProductID
GROUP BY a.ProductID, b.ProductID
ORDER BY TimesPurchased DESC;